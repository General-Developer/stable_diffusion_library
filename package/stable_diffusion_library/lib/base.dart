// ignore_for_file: non_constant_identifier_names, public_member_api_docs, constant_identifier_names

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

import 'package:general_lib/general_lib.dart';
import 'package:general_schema/base/core.dart';
import "dart:ffi" as ffi;
// import "package:ffi/ffi.dart" as ffi;
import 'package:stable_diffusion_library/core/ffi/bindings.dart' show StableDiffusionLibrarySharedBindingsByGeneralDeveloper, rng_type_t, sample_method_t, schedule_t, sd_ctx_t, sd_image_t, sd_log_cb_t, sd_progress_cb_t, sd_type_t;

class StableDiffusionLibraryEnsureInitialized {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class StableDiffusionLibraryInvokeOptions {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Duration invokeTimeOut;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool isThrowOnError;
  bool isVoid;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  StableDiffusionLibraryInvokeOptions({
    required this.invokeTimeOut,
    required this.isThrowOnError,
    required this.isVoid,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static StableDiffusionLibraryInvokeOptions defaultData() {
    return StableDiffusionLibraryInvokeOptions(
      invokeTimeOut: Duration(
        hours: 1,
      ),
      isVoid: false,
      isThrowOnError: false,
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  StableDiffusionLibraryInvokeOptions copyWith({
    Duration? invokeTimeOut,
    bool? isThrowOnError,
    bool? isVoid,
  }) {
    return StableDiffusionLibraryInvokeOptions(
      invokeTimeOut: invokeTimeOut ?? this.invokeTimeOut,
      isThrowOnError: isThrowOnError ?? this.isThrowOnError,
      isVoid: isVoid ?? this.isVoid,
    );
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class InvokeParametersStableDiffusionLibraryData<D extends JsonScheme> {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final D parameters;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String? extra;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  final StableDiffusionLibraryInvokeOptions? invokeParametersStableDiffusionLibraryDataOptions;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  InvokeParametersStableDiffusionLibraryData({
    required this.parameters,
    required this.extra,
    required this.invokeParametersStableDiffusionLibraryDataOptions,
  }) {
    if (extra != null) {
      parameters["@extra"] = extra;
    }
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  InvokeParametersStableDiffusionLibraryData copyWith({
    JsonScheme? parameters,
    bool? isVoid,
    String? extra,
    StableDiffusionLibraryInvokeOptions? invokeParametersStableDiffusionLibraryDataOptions,
  }) {
    return InvokeParametersStableDiffusionLibraryData(
      parameters: parameters ?? this.parameters,
      extra: extra ?? this.extra,
      invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions ?? this.invokeParametersStableDiffusionLibraryDataOptions,
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static RS send<RS extends JsonScheme>({
    required RS data,
    required final Map<String, dynamic> patchData,
    required StableDiffusionLibraryInvokeOptions invokeParametersStableDiffusionLibraryDataOptions,
  }) {
    data.rawData.general_lib_extension_updateForce(data: patchData);
    if (data["@type"] == "error") {
      if (invokeParametersStableDiffusionLibraryDataOptions.isThrowOnError) {
        throw data;
      }
    }
    return data;
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class UpdateStableDiffusionLibraryData<C extends StableDiffusionLibraryBase, U extends JsonScheme> {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final U update;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final C stableDiffusionLibrary;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  UpdateStableDiffusionLibraryData({
    required this.update,
    required this.stableDiffusionLibrary,
  });
}

/// Check Out: https://www.youtube.com/@GENERAL_DEV
abstract class StableDiffusionLibraryBase extends GeneralSchemaBaseCore<StableDiffusionLibraryEnsureInitialized> with GeneralSchemaInvokeRequestBaseCore<JsonScheme, StableDiffusionLibraryInvokeOptions> {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EventEmitter eventEmitter;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String eventUpdate;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String eventInvoke;

  final String sharedLibraryPath;
  final StableDiffusionLibraryInvokeOptions defaultInvokeOptions;

  ///
  StableDiffusionLibraryBase({
    EventEmitter? eventEmitter,
    this.eventUpdate = "update",
    this.eventInvoke = "invoke",
    String? sharedLibraryPath,
    StableDiffusionLibraryInvokeOptions? defaultInvokeOptions,
  })  : sharedLibraryPath = sharedLibraryPath ?? getLibraryWhisperPathDefault(),
        eventEmitter = EventEmitter(), 
        defaultInvokeOptions = defaultInvokeOptions ?? StableDiffusionLibraryInvokeOptions.defaultData();

  ///
  static String getLibraryWhisperPathDefault() {
    return "libstable-diffusion.so";
  }

  // void send(dynamic data);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void emit({
    required String eventType,
    required dynamic data,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  EventEmitterListener on({
    required String eventType,
    required FutureOr<dynamic> Function(UpdateStableDiffusionLibraryData updateStableDiffusionLibrary) onUpdate,
  });

  StableDiffusionLibrarySharedBindingsByGeneralDeveloper get bindings; 
}

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

enum Schedule {
  DEFAULT,
  DISCRETE,
  KARRAS,
  EXPONENTIAL,
  AYS,
  GITS,
}

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
