 

extern "C" {

    int stable_diffusion_inference(StableDiffusionParameters parameters) {
 
 

        if (parameters.use_verbose) {
            printf("%s", sd_get_system_info());
        }

        if (parameters.stableDiffusionModeType == CONVERT) {
            bool success = convert(parameters.model_path.c_str(), parameters.vae_path.c_str(), parameters.output_path.c_str(), parameters.wtype);
            if (!success) {
                fprintf(stderr,
                    "convert '%s'/'%s' to '%s' failed\n",
                    parameters.model_path.c_str(),
                    parameters.vae_path.c_str(),
                    parameters.output_path.c_str());
                return 1;
            } else {
                printf("convert '%s'/'%s' to '%s' success\n",
                    parameters.model_path.c_str(),
                    parameters.vae_path.c_str(),
                    parameters.output_path.c_str());
                return 0;
            }
        }

        if (parameters.mode == IMAGE_TO_VIDEO) {
            fprintf(stderr, "SVD support is broken, do not use it!!!\n");
            return 1;
        }

        bool vae_decode_only = true;
        uint8_t* input_image_buffer = NULL;
        uint8_t* control_image_buffer = NULL;
        uint8_t* mask_image_buffer = NULL;

        if (parameters.mode == IMAGE_TO_IMAGE || parameters.mode == IMAGE_TO_VIDEO) {
            vae_decode_only = false;

            int c = 0;
            int width = 0;
            int height = 0;
            input_image_buffer = stbi_load(parameters.input_path.c_str(), &width, &height, &c, 3);
            if (input_image_buffer == NULL) {
                fprintf(stderr, "load image from '%s' failed\n", parameters.input_path.c_str());
                return 1;
            }
            if (c < 3) {
                fprintf(stderr, "the number of channels for the input image must be >= 3, but got %d channels\n", c);
                free(input_image_buffer);
                return 1;
            }
            if (width <= 0) {
                fprintf(stderr, "error: the width of image must be greater than 0\n");
                free(input_image_buffer);
                return 1;
            }
            if (height <= 0) {
                fprintf(stderr, "error: the height of image must be greater than 0\n");
                free(input_image_buffer);
                return 1;
            }

            // Resize input image ...
            if (parameters.height != height || parameters.width != width) {
                printf("resize input image from %dx%d to %dx%d\n", width, height, parameters.width, parameters.height);
                int resized_height = parameters.height;
                int resized_width = parameters.width;

                uint8_t* resized_image_buffer = (uint8_t*)malloc(resized_height * resized_width * 3);
                if (resized_image_buffer == NULL) {
                    fprintf(stderr, "error: allocate memory for resize input image\n");
                    free(input_image_buffer);
                    return 1;
                }
                stbir_resize(input_image_buffer, width, height, 0,
                    resized_image_buffer, resized_width, resized_height, 0, STBIR_TYPE_UINT8,
                    3 /*RGB channel*/, STBIR_ALPHA_CHANNEL_NONE, 0,
                    STBIR_EDGE_CLAMP, STBIR_EDGE_CLAMP,
                    STBIR_FILTER_BOX, STBIR_FILTER_BOX,
                    STBIR_COLORSPACE_SRGB, nullptr);

                // Save resized result
                free(input_image_buffer);
                input_image_buffer = resized_image_buffer;
            }
        }

        sd_ctx_t* sd_ctx = new_sd_ctx(parameters.model_path.c_str(),
            parameters.clip_l_path.c_str(),
            parameters.clip_g_path.c_str(),
            parameters.t5xxl_path.c_str(),
            parameters.diffusion_model_path.c_str(),
            parameters.vae_path.c_str(),
            parameters.taesd_path.c_str(),
            parameters.controlnet_path.c_str(),
            parameters.lora_model_dir.c_str(),
            parameters.embeddings_path.c_str(),
            parameters.stacked_id_embeddings_path.c_str(),
            vae_decode_only,
            parameters.vae_tiling,
            true,
            parameters.n_threads,
            parameters.wtype,
            parameters.rng_type,
            parameters.schedule,
            parameters.clip_on_cpu,
            parameters.control_net_cpu,
            parameters.vae_on_cpu,
            parameters.diffusion_flash_attn);

        if (sd_ctx == NULL) {
            printf("new_sd_ctx_t failed\n");
            return 1;
        }

        sd_image_t* control_image = NULL;
        if (parameters.controlnet_path.size() > 0 && parameters.control_image_path.size() > 0) {
            int c = 0;
            control_image_buffer = stbi_load(parameters.control_image_path.c_str(), &parameters.width, &parameters.height, &c, 3);
            if (control_image_buffer == NULL) {
                fprintf(stderr, "load image from '%s' failed\n", parameters.control_image_path.c_str());
                return 1;
            }
            control_image = new sd_image_t{ (uint32_t)parameters.width,
                                           (uint32_t)parameters.height,
                                           3,
                                           control_image_buffer };
            if (parameters.canny_preprocess) {  // apply preprocessor
                control_image->data = preprocess_canny(control_image->data,
                    control_image->width,
                    control_image->height,
                    0.08f,
                    0.08f,
                    0.8f,
                    1.0f,
                    false);
            }
        }

        if (parameters.mask_path != "") {
            int c = 0;
            mask_image_buffer = stbi_load(parameters.mask_path.c_str(), &parameters.width, &parameters.height, &c, 1);
        } else {
            std::vector<uint8_t> arr(parameters.width * parameters.height, 255);
            mask_image_buffer = arr.data();
        }
        sd_image_t mask_image = { (uint32_t)parameters.width,
                                 (uint32_t)parameters.height,
                                 1,
                                 mask_image_buffer };

        sd_image_t* results;
        if (parameters.mode == TEXT_TO_IMAGE) {
            results = txt2img(sd_ctx,
                parameters.prompt.c_str(),
                parameters.negative_prompt.c_str(),
                parameters.clip_skip,
                parameters.cfg_scale,
                parameters.guidance,
                parameters.width,
                parameters.height,
                parameters.sample_method,
                parameters.sample_steps,
                parameters.seed,
                parameters.batch_count,
                control_image,
                parameters.control_strength,
                parameters.style_ratio,
                parameters.normalize_input,
                parameters.input_id_images_path.c_str(),
                parameters.skip_layers.data(),
                parameters.skip_layers.size(),
                parameters.slg_scale,
                parameters.skip_layer_start,
                parameters.skip_layer_end);
        } else {
            sd_image_t input_image = { (uint32_t)parameters.width,
                                      (uint32_t)parameters.height,
                                      3,
                                      input_image_buffer };

            if (parameters.mode == IMAGE_TO_IMAGE) {
                results = img2vid(sd_ctx,
                    input_image,
                    parameters.width,
                    parameters.height,
                    parameters.video_frames,
                    parameters.motion_bucket_id,
                    parameters.fps,
                    parameters.augmentation_level,
                    parameters.min_cfg,
                    parameters.cfg_scale,
                    parameters.sample_method,
                    parameters.sample_steps,
                    parameters.strength,
                    parameters.seed);
                if (results == NULL) {
                    printf("generate failed\n");
                    free_sd_ctx(sd_ctx);
                    return 1;
                }
                size_t last = parameters.output_path.find_last_of(".");
                std::string dummy_name = last != std::string::npos ? parameters.output_path.substr(0, last) : parameters.output_path;
                for (int i = 0; i < parameters.video_frames; i++) {
                    if (results[i].data == NULL) {
                        continue;
                    }
                    std::string final_image_path = i > 0 ? dummy_name + "_" + std::to_string(i + 1) + ".png" : dummy_name + ".png";
                    stbi_write_png(final_image_path.c_str(), results[i].width, results[i].height, results[i].channel,
                        results[i].data, 0, get_image_params(parameters, parameters.seed + i).c_str());
                    printf("save result image to '%s'\n", final_image_path.c_str());
                    free(results[i].data);
                    results[i].data = NULL;
                }
                free(results);
                free_sd_ctx(sd_ctx);
                return 0;
            } else {
                results = img2img(sd_ctx,
                    input_image,
                    mask_image,
                    parameters.prompt.c_str(),
                    parameters.negative_prompt.c_str(),
                    parameters.clip_skip,
                    parameters.cfg_scale,
                    parameters.guidance,
                    parameters.width,
                    parameters.height,
                    parameters.sample_method,
                    parameters.sample_steps,
                    parameters.strength,
                    parameters.seed,
                    parameters.batch_count,
                    control_image,
                    parameters.control_strength,
                    parameters.style_ratio,
                    parameters.normalize_input,
                    parameters.input_id_images_path.c_str(),
                    parameters.skip_layers.data(),
                    parameters.skip_layers.size(),
                    parameters.slg_scale,
                    parameters.skip_layer_start,
                    parameters.skip_layer_end);
            }
        }

        if (results == NULL) {
            printf("generate failed\n");
            free_sd_ctx(sd_ctx);
            return 1;
        }

        int upscale_factor = 4;  // unused for RealESRGAN_x4plus_anime_6B.pth
        if (parameters.esrgan_path.size() > 0 && parameters.upscale_repeats > 0) {
            upscaler_ctx_t* upscaler_ctx = new_upscaler_ctx(parameters.esrgan_path.c_str(),
                parameters.n_threads);

            if (upscaler_ctx == NULL) {
                printf("new_upscaler_ctx failed\n");
            } else {
                for (int i = 0; i < parameters.batch_count; i++) {
                    if (results[i].data == NULL) {
                        continue;
                    }
                    sd_image_t current_image = results[i];
                    for (int u = 0; u < parameters.upscale_repeats; ++u) {
                        sd_image_t upscaled_image = upscale(upscaler_ctx, current_image, upscale_factor);
                        if (upscaled_image.data == NULL) {
                            printf("upscale failed\n");
                            break;
                        }
                        free(current_image.data);
                        current_image = upscaled_image;
                    }
                    results[i] = current_image;  // Set the final upscaled image as the result
                }
            }
        }

        std::string dummy_name, ext, lc_ext;
        bool is_jpg;
        size_t last = parameters.output_path.find_last_of(".");
        size_t last_path = std::min(parameters.output_path.find_last_of("/"),
            parameters.output_path.find_last_of("\\"));
        if (last != std::string::npos // filename has extension
            && (last_path == std::string::npos || last > last_path)) {
            dummy_name = parameters.output_path.substr(0, last);
            ext = lc_ext = parameters.output_path.substr(last);
            std::transform(ext.begin(), ext.end(), lc_ext.begin(), ::tolower);
            is_jpg = lc_ext == ".jpg" || lc_ext == ".jpeg" || lc_ext == ".jpe";
        } else {
            dummy_name = parameters.output_path;
            ext = lc_ext = "";
            is_jpg = false;
        }
        // appending ".png" to absent or unknown extension
        if (!is_jpg && lc_ext != ".png") {
            dummy_name += ext;
            ext = ".png";
        }
        for (int i = 0; i < parameters.batch_count; i++) {
            if (results[i].data == NULL) {
                continue;
            }
            std::string final_image_path = i > 0 ? dummy_name + "_" + std::to_string(i + 1) + ext : dummy_name + ext;
            if (is_jpg) {
                stbi_write_jpg(final_image_path.c_str(), results[i].width, results[i].height, results[i].channel,
                    results[i].data, 90, get_image_params(parameters, parameters.seed + i).c_str());
                printf("save result JPEG image to '%s'\n", final_image_path.c_str());
            } else {
                stbi_write_png(final_image_path.c_str(), results[i].width, results[i].height, results[i].channel,
                    results[i].data, 0, get_image_params(parameters, parameters.seed + i).c_str());
                printf("save result PNG image to '%s'\n", final_image_path.c_str());
            }
            free(results[i].data);
            results[i].data = NULL;
        }
        free(results);
        free_sd_ctx(sd_ctx);
        free(control_image_buffer);
        free(input_image_buffer);

        return 0;
    }
}