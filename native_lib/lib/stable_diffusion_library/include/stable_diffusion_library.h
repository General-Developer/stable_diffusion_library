#ifndef STABLE_DIFFUSION_LIBRARY_H
#define STABLE_DIFFUSION_LIBRARY_H

#ifdef __cplusplus
extern "C" {
#endif

#ifdef WIN32
#define STABLE_DIFFUSION_LIBRARY_EXPORT __declspec(dllexport)
#else
#define STABLE_DIFFUSION_LIBRARY_EXPORT __attribute__((visibility("default"))) __attribute__((used))
#endif


    // typedef enum {
    //     TEXT_TO_IMAGE,
    //     IMAGE_TO_IMAGE,
    //     IMAGE_TO_VIDEO,
    //     CONVERT,
    //     MODE_COUNT
    // } StableDiffusionModeType;

    // // struct SDParams {
    // //     int n_threads = -1;
    // //     // SDMode mode = TXT2IMG;
    // // };

    // typedef struct {
    //     const StableDiffusionModeType stableDiffusionModeType;
    //     const int n_threads;
    //     const int width;
    //     const int height;
    //     const char* text_prompt;
    //     const char* text_negative_prompt;
    //     const char* input_path;
    //     const char* output_path;
    //     const char* model_vocoder_path;
    //     const char* model_path;
    //     const char* clip_l_path;
    //     const char* clip_g_path;
    //     const char* t5xxl_path;
    //     const char* diffusion_model_path;
    //     const char* vae_path;
    //     const char* taesd_path;
    //     const char* esrgan_path;
    //     const char* controlnet_path;
    //     const char* embeddings_path;
    //     const char* stacked_id_embeddings_path;
    //     const char* input_id_images_path;
    //     const char* lora_model_dir;
    //     const char* control_image_path;
    //     const char* mask_path;
    //     const char* slg_scale;
    //     const char* cfg_scale;
    //     const int use_canny_preprocess;

    //     const int sample_steps;
    //     const int use_verbose;
    //     const int use_vae_tiling;
    //     const int use_control_net_cpu;
    //     const int use_normalize_input;
    //     const int use_clip_on_cpu;
    //     const int use_vae_on_cpu;
    // } StableDiffusionParameters;


    // // typedef struct {
    // //     int n_threads = -1;
    // //     StableDiffusionModeType mode = TEXT_TO_IMAGE;
    // //     char* model_path;
    // //     char* clip_l_path;
    // //     char* clip_g_path;
    // //     char* t5xxl_path;
    // //     char* diffusion_model_path;
    // //     char* vae_path;
    // //     char* taesd_path;
    // //     char* esrgan_path;
    // //     char* controlnet_path;
    // //     char* embeddings_path;
    // //     char* stacked_id_embeddings_path;
    // //     char* input_id_images_path;
    // //     sd_type_t wtype = SD_TYPE_COUNT;
    // //     char* lora_model_dir;
    // //     char* output_path = "output.png";
    // //     char* input_path;
    // //     char* mask_path;
    // //     char* control_image_path;

    // //     char* prompt;
    // //     char* negative_prompt;
    // //     float min_cfg = 1.0f;
    // //     float cfg_scale = 7.0f;
    // //     float guidance = 3.5f;
    // //     float style_ratio = 20.f;
    // //     int clip_skip = -1;  // <= 0 represents unspecified
    // //     int width = 512;
    // //     int height = 512;
    // //     int batch_count = 1;

    // //     int video_frames = 6;
    // //     int motion_bucket_id = 127;
    // //     int fps = 6;
    // //     float augmentation_level = 0.f;

    // //     sample_method_t sample_method = EULER_A;
    // //     schedule_t schedule = DEFAULT;
    // //     int sample_steps = 20;
    // //     float strength = 0.75f;
    // //     float control_strength = 0.9f;
    // //     rng_type_t rng_type = CUDA_RNG;
    // //     int64_t seed = 42;
    // //     bool verbose = false;
    // //     bool vae_tiling = false;
    // //     bool control_net_cpu = false;
    // //     bool normalize_input = false;
    // //     bool clip_on_cpu = false;
    // //     bool vae_on_cpu = false;
    // //     bool diffusion_flash_attn = false;
    // //     bool canny_preprocess = false;
    // //     bool color = false;
    // //     int upscale_repeats = 1;

    // //     std::vector<int> skip_layers = { 7, 8, 9 };
    // //     float slg_scale = 0.;
    // //     float skip_layer_start = 0.01;
    // //     float skip_layer_end = 0.2;
    // // } StableDiffusionParameters;


    // // STABLE_DIFFUSION_LIBRARY_EXPORT int outetts_load_model_vocoder(const char* model_vocoder_path);
    // // STABLE_DIFFUSION_LIBRARY_EXPORT int outetts_load_model_vocoder_free(void);

    // // STABLE_DIFFUSION_LIBRARY_EXPORT int outetts_load_model(const char* model_path);
    // // STABLE_DIFFUSION_LIBRARY_EXPORT int outetts_load_model_free(void);

    // // STABLE_DIFFUSION_LIBRARY_EXPORT int outetts_ensureInitialized(outetts_options_t options);

    // STABLE_DIFFUSION_LIBRARY_EXPORT int stable_diffusion_inference(StableDiffusionParameters parameters);

    STABLE_DIFFUSION_LIBRARY_EXPORT int stable_diffusion_start(int argc, const char* argv[]);

#ifdef __cplusplus
}
#endif

#endif 