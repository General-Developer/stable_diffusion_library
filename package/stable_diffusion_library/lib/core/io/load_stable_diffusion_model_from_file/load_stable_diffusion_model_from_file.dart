part of 'package:stable_diffusion_library/core/io/core.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension LoadStableDiffusionModelFromFileStableDiffusionLibraryExtensionStableDiffusionLibrary
    on StableDiffusionLibrary {
  Future<Ok> _loadStableDiffusionModelFromFileStableDiffusionLibrary({
    required LoadStableDiffusionModelFromFileStableDiffusionLibrary parameters,
    required final String extra,
    required StableDiffusionLibraryInvokeOptions
        invokeParametersLlamaLibraryDataOptions,
  }) async {
    if (_isInIsolate == false) {
      return Ok({
        "@type": "error",
      });
    }

    if (StableDiffusionLibrary._sd_ctx != nullptr) {
      StableDiffusionLibrary._stableDiffusionLibrarySharedBindings
          .free_sd_ctx(StableDiffusionLibrary._sd_ctx);
      StableDiffusionLibrary._sd_ctx = nullptr;
    }

    try {
      final modelPathUtf8 = (parameters.model_file_path ?? "")
          .toString()
          .toNativeUtf8()
          .cast<Char>();
      final clipLPathUtf8 = (parameters.clip_l_path ?? "").isNotEmpty
          ? (parameters.clip_l_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final clipGPathUtf8 = (parameters.clip_g_path ?? "").isNotEmpty
          ? (parameters.clip_g_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final t5xxlPathUtf8 = (parameters.t5xxl_path ?? "").isNotEmpty
          ? (parameters.t5xxl_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final vaePathUtf8 = (parameters.vae_path ?? "").isNotEmpty
          ? (parameters.vae_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final emptyUtf8 = "".toNativeUtf8().cast<Char>();
      final loraDirUtf8 = (parameters.lora_path ?? "").isNotEmpty
          ? (parameters.lora_path ?? "").toNativeUtf8().cast<Char>()
          : "/".toNativeUtf8().cast<
              Char>(); // Provide a valid default path instead of empty string
      final taesdPathUtf8 = (parameters.use_tiny_autoencoder == true &&
              (parameters.taesd_path ?? "").isNotEmpty)
          ? (parameters.taesd_path ?? "").toNativeUtf8().cast<Char>()
          : emptyUtf8;
      final stackedIdEmbedDirUtf8 = (parameters.stacked_id_embed_dir ?? "")
              .isNotEmpty
          ? (parameters.stacked_id_embed_dir ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final embedDirUtf8 = (parameters.embed_dir_path ?? "").isNotEmpty
          ? (parameters.embed_dir_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();
      final controlNetPathUtf8 = (parameters.control_net_path ?? "").isNotEmpty
          ? (parameters.embed_dir_path ?? "").toNativeUtf8().cast<Char>()
          : "".toNativeUtf8().cast<Char>();

      StableDiffusionLibrary._sd_ctx = StableDiffusionLibrary
          ._stableDiffusionLibrarySharedBindings
          .new_sd_ctx(
        modelPathUtf8,
        clipLPathUtf8,
        clipGPathUtf8,
        t5xxlPathUtf8,
        emptyUtf8,
        vaePathUtf8,
        taesdPathUtf8,
        controlNetPathUtf8,
        loraDirUtf8,
        embedDirUtf8,
        stackedIdEmbedDirUtf8,
        parameters.use_flash_attention == true,
        parameters.vae_tiling == true,
        false,
        StableDiffusionLibrary._stableDiffusionLibrarySharedBindings
                .get_num_physical_cores() *
            2,
        sd_type_t.fromValue((parameters.model_type ?? 0).toInt()),
        rng_type_t.fromValue(0),
        schedule_t.fromValue((parameters.schedule ?? 0).toInt()),
        false,
        false,
        false,
        parameters.clip_skip == 1,
      );

      calloc.free(modelPathUtf8);
      calloc.free(loraDirUtf8);
      calloc.free(clipLPathUtf8);
      calloc.free(clipGPathUtf8);
      calloc.free(t5xxlPathUtf8);
      calloc.free(vaePathUtf8);
      calloc.free(embedDirUtf8);
      calloc.free(controlNetPathUtf8); // Add this
      if (stackedIdEmbedDirUtf8 != emptyUtf8) {
        calloc.free(stackedIdEmbedDirUtf8);
      }
      if (parameters.use_tiny_autoencoder == true &&
          parameters.taesd_path != null &&
          taesdPathUtf8 != emptyUtf8) {
        calloc.free(taesdPathUtf8);
      }
      calloc.free(emptyUtf8);

      if (StableDiffusionLibrary._sd_ctx != nullptr &&
          StableDiffusionLibrary._sd_ctx.address != 0) {
        return Ok.create();
      } else {
        return Ok({
          "@type": "error",
          'message': 'Failed to initialize model',
        });
      }
    } catch (e) {
      return Ok({
        "@type": "error",
        "message": e.toString(),
      });
    }
  }
}
