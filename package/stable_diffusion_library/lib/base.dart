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
 
import 'package:general_lib/dynamic_library/core.dart';
import "dart:ffi" as ffi;
// import "package:ffi/ffi.dart" as ffi;
import 'package:stable_diffusion_library/ffi/bindings.dart' show Dartsd_log_cb_tFunction, Dartsd_progress_cb_tFunction, rng_type_t, sample_method_t, schedule_t, sd_ctx_t, sd_image_t, sd_log_cb_t, sd_log_cb_tFunction, sd_progress_cb_t, sd_progress_cb_tFunction, sd_type_t;

/// Check Out: https://www.youtube.com/@GENERAL_DEV
abstract class StableDiffusionLibraryBaseCore extends GeneralLibraryDynamicLibraryBase {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  FutureOr<bool> invokeRaw({
    required final List<String> arguments,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  FutureOr<String> imageToImage({
    required final String modelPath,
    required final String prompt,
    required final String negativePrompt,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  FutureOr<String> textToImage({
    required final String modelPath,
    required final String prompt,
    required final String negativePrompt,
  });
}

/// Check Out: https://www.youtube.com/@GENERAL_DEV
abstract class StableDiffusionLibraryBase implements StableDiffusionLibraryBaseCore {
  ///
  final String sharedLibraryPath;

  ///
  StableDiffusionLibraryBase({
    String? sharedLibraryPath,
  }) : sharedLibraryPath = sharedLibraryPath ?? getLibraryWhisperPathDefault();

  ///
  static String getLibraryWhisperPathDefault() {
    return "libstable_diffusion_library.so";
  }

  int getCores();

  ffi.Pointer<ffi.Uint8> preprocessCanny(
    ffi.Pointer<ffi.Uint8> img,
    int width,
    int height,
    double high_threshold,
    double low_threshold,
    double weak,
    double strong,
    bool inverse,
  );
  void setLogCallback(
    sd_log_cb_t sd_log_cb,
    ffi.Pointer<ffi.Void> data,
  );
  void setProgressCallback(
    sd_progress_cb_t cb,
    ffi.Pointer<ffi.Void> data,
  );
  ffi.Pointer<sd_image_t> txt2img(
    ffi.Pointer<sd_ctx_t> sd_ctx,
    ffi.Pointer<ffi.Char> prompt,
    ffi.Pointer<ffi.Char> negative_prompt,
    int clip_skip,
    double cfg_scale,
    double guidance,
    int width,
    int height,
    sample_method_t sample_method,
    int sample_steps,
    int seed,
    int batch_count,
    ffi.Pointer<sd_image_t> control_cond,
    double control_strength,
    double style_strength,
    bool normalize_input,
    ffi.Pointer<ffi.Char> input_id_images_path,
    ffi.Pointer<ffi.Int> skip_layers,
    int skip_layers_count,
    double slg_scale,
    double skip_layer_start,
    double skip_layer_end,
  );
  ffi.Pointer<sd_ctx_t> newSdCtx(
    ffi.Pointer<ffi.Char> model_path,
    ffi.Pointer<ffi.Char> clip_l_path,
    ffi.Pointer<ffi.Char> clip_g_path,
    ffi.Pointer<ffi.Char> t5xxl_path,
    ffi.Pointer<ffi.Char> diffusion_model_path,
    ffi.Pointer<ffi.Char> vae_path,
    ffi.Pointer<ffi.Char> taesd_path,
    ffi.Pointer<ffi.Char> control_net_path_c_str,
    ffi.Pointer<ffi.Char> lora_model_dir,
    ffi.Pointer<ffi.Char> embed_dir_c_str,
    ffi.Pointer<ffi.Char> stacked_id_embed_dir_c_str,
    bool vae_decode_only,
    bool vae_tiling,
    bool free_params_immediately,
    int n_threads,
    sd_type_t wtype,
    rng_type_t rng_type,
    schedule_t s,
    bool keep_clip_on_cpu,
    bool keep_control_net_cpu,
    bool keep_vae_on_cpu,
    bool diffusion_flash_attn,
  );
  void freeSdCtx(
    ffi.Pointer<sd_ctx_t> sd_ctx,
  );
}

// base class SDImage extends ffi.Struct {
//   @ffi.Uint32()
//   external int width;

//   @ffi.Uint32()
//   external int height;

//   @ffi.Uint32()
//   external int channel;

//   external ffi.Pointer<ffi.Uint8> data;

//   external ffi.Pointer<ffi.Void> userdata;
// }

enum SDType {
  NONE, // No quantization
  SD_TYPE_Q8_0,
  SD_TYPE_Q8_1,
  SD_TYPE_Q8_K,
  SD_TYPE_Q6_K,
  SD_TYPE_Q5_0,
  SD_TYPE_Q5_1,
  SD_TYPE_Q5_K,
  SD_TYPE_Q4_0,
  SD_TYPE_Q4_1,
  SD_TYPE_Q4_K,
  SD_TYPE_Q3_K,
  SD_TYPE_Q2_K,
}

enum SampleMethod {
  EULER_A,
  EULER,
  HEUN,
  DPM2,
  DPMPP2S_A,
  DPMPP2M,
  DPMPP2Mv2,
  IPNDM,
  IPNDM_V,
  LCM,
  DDIM_TRAILING, // New sampler
  TCD // New sampler
}

enum Schedule { DEFAULT, DISCRETE, KARRAS, EXPONENTIAL, AYS, GITS }

extension SDTypeExtension on SDType {
  String get displayName {
    switch (this) {
      case SDType.NONE:
        return 'None';
      case SDType.SD_TYPE_Q8_0:
        return 'Q8_0';
      case SDType.SD_TYPE_Q8_1:
        return 'Q8_1';
      case SDType.SD_TYPE_Q8_K:
        return 'Q8_K';
      case SDType.SD_TYPE_Q6_K:
        return 'Q6_K';
      case SDType.SD_TYPE_Q5_0:
        return 'Q5_0';
      case SDType.SD_TYPE_Q5_1:
        return 'Q5_1';
      case SDType.SD_TYPE_Q5_K:
        return 'Q5_K';
      case SDType.SD_TYPE_Q4_0:
        return 'Q4_0';
      case SDType.SD_TYPE_Q4_1:
        return 'Q4_1';
      case SDType.SD_TYPE_Q4_K:
        return 'Q4_K';
      case SDType.SD_TYPE_Q3_K:
        return 'Q3_K';
      case SDType.SD_TYPE_Q2_K:
        return 'Q2_K';
    }
  }
}

extension SampleMethodExtension on SampleMethod {
  String get displayName {
    return toString().split('.').last;
  }
}

extension ScheduleExtension on Schedule {
  String get displayName {
    return toString().split('.').last;
  }
}
