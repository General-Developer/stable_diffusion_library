/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

// import 'package:ffi_universe/ffi_universe.dart';

import 'base.dart';
import 'ffi/bindings.dart';

///
class StableDiffusionLibrary extends StableDiffusionLibraryBase {
  // ignore: prefer_final_fields
  bool _isInIsolate = true;

  ///
  StableDiffusionLibrary({super.sharedLibraryPath});

  ///
  static late final StableDiffusionLibrarySharedBindingsByGeneralDeveloper _stableDiffusionLibrary;

  static bool _isEnsureInitialized = false;

  @override
  Future<void> ensureInitialized() async {
    if (_isEnsureInitialized) {
      return;
    }

    try {
      _stableDiffusionLibrary = StableDiffusionLibrarySharedBindingsByGeneralDeveloper(
        DynamicLibrary.open(
          "/home/galaxeus/Documents/github/general-developer/stable_diffusion_library/package/stable_diffusion_library_flutter/linux/libstable-diffusion.so",
        ),
      );
      _isDeviceSupport = true;
      print("loaded");
    } catch (e) {
      print(e);
      _isCrash = true;
    }

    _isEnsureInitialized = true;
    return;
  }

  bool _isCrash = false;
  bool _isDeviceSupport = false;
  @override
  bool isCrash() {
    return _isCrash;
  }

  @override
  bool isDeviceSupport() {
    if (_isCrash) {
      return false;
    }
    return _isDeviceSupport;
  }

  @override
  Future<void> initialized() async {
    // Isolate isolate = await Isolate.spawn(entryPoint, message);
    //
    return;
  }

  @override
  FutureOr<void> dispose() {}

  @override
  FutureOr<bool> invokeRaw({
    required List<String> arguments,
  }) async {
    if (_isInIsolate == false) {
      return await Isolate.run(() async {
        final StableDiffusionLibrary stableDiffusionLibrary = StableDiffusionLibrary();
        stableDiffusionLibrary._isInIsolate = true;
        await stableDiffusionLibrary.ensureInitialized();
        await stableDiffusionLibrary.initialized();
        final result = await stableDiffusionLibrary.invokeRaw(
          arguments: arguments,
        );
        await stableDiffusionLibrary.dispose();
        return result;
      });
    }
    final stableDiffusionLibrary = StableDiffusionLibrary._stableDiffusionLibrary;

    // final Pointer<Pointer<Char>> argv = arguments.toNativeVectorChar();
    // return stableDiffusionLibrary.stable_diffusion_start(arguments.length, argv) == 0;
    return false;
  }

  @override
  FutureOr<String> textToImage({
    required String modelPath,
    required String prompt,
    required String negativePrompt,
  }) async {
    final result = await invokeRaw(
      arguments: [
        Platform.executable,
        // "--mode",
        // "txt2img",
        // "--threads",
        // "1",
        // "--batch-count",
        // "1",
        "--model",
        modelPath,
        "--height",
        "512",
        "--width",
        "512",
        "--prompt",
        prompt,
      ],
    );
    if (result != true) {
      return "";
    }
    return modelPath;
  }

  @override
  FutureOr<String> imageToImage({
    required String modelPath,
    required String prompt,
    required String negativePrompt,
  }) async {
    final result = await invokeRaw(
      arguments: [
        "--model",
        modelPath,
        "--prompt",
        prompt,
        "",
      ],
    );
    if (result != true) {
      return "";
    }
    return modelPath;
  }

  @override
  int getCores() {
    return StableDiffusionLibrary._stableDiffusionLibrary.get_num_physical_cores();
  }

  @override
  Pointer<Uint8> preprocessCanny(Pointer<Uint8> img, int width, int height, double high_threshold, double low_threshold, double weak, double strong, bool inverse) {
    return StableDiffusionLibrary._stableDiffusionLibrary.preprocess_canny(img, width, height, high_threshold, low_threshold, weak, strong, inverse);
  }

  @override
  void setLogCallback(sd_log_cb_t sd_log_cb, Pointer<Void> data) {
    return StableDiffusionLibrary._stableDiffusionLibrary.sd_set_log_callback(sd_log_cb, data);
  }

  @override
  void setProgressCallback(sd_progress_cb_t cb, Pointer<Void> data) {
    return StableDiffusionLibrary._stableDiffusionLibrary.sd_set_progress_callback(cb, data);
  }

  // @override
  // Pointer<sd_image_t> txt2img(Pointer<sd_ctx_t> sd_ctx, Pointer<Char> prompt, Pointer<Char> negative_prompt, int clip_skip, double cfg_scale, double guidance, int width, int height, sample_method_t sample_method, int sample_steps, int seed, int batch_count, Pointer<sd_image_t> control_cond, double control_strength, double style_strength, bool normalize_input, Pointer<Char> input_id_images_path, Pointer<Int> skip_layers, int skip_layers_count, double slg_scale, double skip_layer_start, double skip_layer_end) {
  //   return StableDiffusionLibrary._stableDiffusionLibrary.txt2img(
  //     sd_ctx,
  //     prompt,
  //     negative_prompt,
  //     clip_skip,
  //     cfg_scale,
  //     guidance,
  //     width,
  //     height,
  //     sample_method,
  //     sample_steps,
  //     seed,
  //     batch_count,
  //     control_cond,
  //     control_strength,
  //     style_strength,
  //     normalize_input,
  //     input_id_images_path,
  //     skip_layers,
  //     skip_layers_count,
  //     slg_scale,
  //     skip_layer_start,
  //     skip_layer_end,
  //   );
  // }

  @override
  Pointer<sd_ctx_t> newSdCtx(Pointer<Char> model_path, Pointer<Char> clip_l_path, Pointer<Char> clip_g_path, Pointer<Char> t5xxl_path, Pointer<Char> diffusion_model_path, Pointer<Char> vae_path, Pointer<Char> taesd_path, Pointer<Char> control_net_path_c_str, Pointer<Char> lora_model_dir, Pointer<Char> embed_dir_c_str, Pointer<Char> stacked_id_embed_dir_c_str, bool vae_decode_only, bool vae_tiling, bool free_params_immediately, int n_threads, sd_type_t wtype, rng_type_t rng_type, schedule_t s, bool keep_clip_on_cpu, bool keep_control_net_cpu, bool keep_vae_on_cpu, bool diffusion_flash_attn) {
    return StableDiffusionLibrary._stableDiffusionLibrary.new_sd_ctx(model_path, clip_l_path, clip_g_path, t5xxl_path, diffusion_model_path, vae_path, taesd_path, control_net_path_c_str, lora_model_dir, embed_dir_c_str, stacked_id_embed_dir_c_str, vae_decode_only, vae_tiling, free_params_immediately, n_threads, wtype, rng_type, s, keep_clip_on_cpu, keep_control_net_cpu, keep_vae_on_cpu, diffusion_flash_attn);
  }

  @override
  void freeSdCtx(Pointer<sd_ctx_t> sd_ctx) {
    return StableDiffusionLibrary._stableDiffusionLibrary.free_sd_ctx(sd_ctx);
  }

  @override
  Pointer<sd_image_t> txt2img(Pointer<sd_ctx_t> sd_ctx, Pointer<Char> prompt, Pointer<Char> negative_prompt, int clip_skip, double cfg_scale, double guidance, double eta, int width, int height, sample_method_t sample_method, int sample_steps, int seed, int batch_count, Pointer<sd_image_t> control_cond, double control_strength, double style_strength, bool normalize_input, Pointer<Char> input_id_images_path, Pointer<Int> skip_layers, int skip_layers_count, double slg_scale, double skip_layer_start, double skip_layer_end) {
    return StableDiffusionLibrary._stableDiffusionLibrary.txt2img(sd_ctx, prompt, negative_prompt, clip_skip, cfg_scale, guidance, eta, width, height, sample_method, sample_steps, seed, batch_count, control_cond, control_strength, style_strength, normalize_input, input_id_images_path, skip_layers, skip_layers_count, slg_scale, skip_layer_start, skip_layer_end);
  }
}
