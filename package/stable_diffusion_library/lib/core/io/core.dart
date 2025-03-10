// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps

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

library;

import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ffi_universe/ffi_universe.dart';

import 'package:general_lib/general_lib.dart';
import 'package:general_schema/base/core.dart';

import 'package:stable_diffusion_library/base.dart';
import 'package:stable_diffusion_library/core/ffi/bindings.dart';
import 'package:stable_diffusion_library/scheme/scheme/api/api.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/ok.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/respond.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/update_stable_diffusion_log_message_stable_diffusion_library.dart';

part "load_stable_diffusion_model_from_file/load_stable_diffusion_model_from_file.dart";
part "text_to_image_stable_diffusion/text_to_image_stable_diffusion.dart";

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class _StableDiffusionLibraryIsolateData {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String sharedLibraryPath;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final SendPort sendPort;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  // final String modelPath;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final StableDiffusionLibraryInvokeOptions invokeParametersStableDiffusionLibraryDataOptions;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  _StableDiffusionLibraryIsolateData({
    required this.sharedLibraryPath,
    required this.sendPort,
    // required this.modelPath,
    required this.invokeParametersStableDiffusionLibraryDataOptions,
  });
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum StableDiffusionLibraryActionType {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  close,

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  clear,

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  test;
}

///

class StableDiffusionLibrary extends StableDiffusionLibraryBase {
  bool _isInIsolate = false;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  StableDiffusionLibrary({
    super.eventEmitter,
    super.sharedLibraryPath,
    super.eventInvoke,
    super.eventUpdate,
    super.defaultInvokeOptions,
  }) {
    StableDiffusionLibrary._receivePort.listen(
      (event) async {
        try {
          if (_isInIsolate == true) {
            if (event is SendPort) {
              if (_completerSendPortInitialized.isCompleted == false) {
                _completerSendPortInitialized.complete(true);
              }
              _sendPort = event;
            } else if (event == StableDiffusionLibraryActionType.close) {
              dispose();
            } else if (event is InvokeParametersStableDiffusionLibraryData) {
              // await invokeRaw(
              //   invokeParametersStableDiffusionLibraryData: event.copyWith(
              //     isVoid: true,
              //     invokeParametersStableDiffusionLibraryDataOptions: (event.invokeParametersStableDiffusionLibraryDataOptions ?? invokeParametersStableDiffusionLibraryDataOptions).copyWith(
              //       isThrowOnError: false,
              //     ),
              //   ),
              // );
              //
              await invokeRaw(
                invokeOptions: event.invokeParametersStableDiffusionLibraryDataOptions,
                invokeParameters: event.parameters,
              );
            }
          } else {
            if (event is SendPort) {
              if (_completerSendPortInitialized.isCompleted == false) {
                _completerSendPortInitialized.complete(true);
              }
              _sendPort = event;
            } else if (event == StableDiffusionLibraryActionType.close) {
              if (StableDiffusionLibrary._isolate != Isolate.current) {
                StableDiffusionLibrary._isolate.kill();
              }
            } else if (event is JsonScheme) {
              emit(
                eventType: eventUpdate,
                data: event,
              );
            }
          }
        } catch (e) {}
      },
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static final ReceivePort _receivePort = ReceivePort();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static late SendPort _sendPort;

  static final Completer<bool> _completerSendPortInitialized = Completer<bool>();

  static Pointer<sd_ctx_t> _sd_ctx = nullptr;

  ///
  static late final StableDiffusionLibrarySharedBindingsByGeneralDeveloper _stableDiffusionLibrarySharedBindings;

  @override
  StableDiffusionLibrarySharedBindingsByGeneralDeveloper get bindings {
     return StableDiffusionLibrary._stableDiffusionLibrarySharedBindings;
  }

  static bool _isEnsureInitialized = false;

  static void _send(dynamic data) async {
    try {
      // await _completerSendPortInitialized.future;
      _sendPort.send(data);
    } catch (e) {}
  }

  static void _staticLogCallback(int level, Pointer<Char> text, Pointer<Void> data) {
    final message = text.cast<Utf8>().toDartString();

    if (message.contains("generating image")) {
      final seedMatch = RegExp(r'seed (\d+)').firstMatch(message);
      if (seedMatch != null) {
        final extractedSeed = int.parse(seedMatch.group(1)!);
        StableDiffusionLibrary._send(UpdateStableDiffusionLogMessageStableDiffusionLibrary.create(
          level: level,
          message: message,
          seed: extractedSeed,
        ));
        return;
      }
    }

    StableDiffusionLibrary._send(UpdateStableDiffusionLogMessageStableDiffusionLibrary.create(
      level: level,
      message: message,
    ));
  }

  static void _staticProgressCallback(int step, int steps, double time, Pointer<Void> data) {
    // print("SD Progress: $step/$steps - ${time}s");
    StableDiffusionLibrary._send(UpdateStableDiffusionProgressStableDiffusionLibrary.create(
      step: step,
      steps: steps,
      time: time,
      progress: step / steps,
    ));
  }

  @override
  Future<void> ensureInitialized({required StableDiffusionLibraryEnsureInitialized generalSchemaEnsureInitialized}) async {
    if (_isEnsureInitialized) {
      return;
    } 
    try {
      StableDiffusionLibrary._stableDiffusionLibrarySharedBindings = StableDiffusionLibrarySharedBindingsByGeneralDeveloper(
        await FFIUniverse.open(
          path: sharedLibraryPath,
        ),
      );
      _isDeviceSupport = true;
      if (_isInIsolate) {
        final logCallbackNativeFunction = Pointer.fromFunction<sd_log_cb_tFunction>(StableDiffusionLibrary._staticLogCallback);
        final proggresCallbackNativeFunction = Pointer.fromFunction<sd_progress_cb_tFunction>(StableDiffusionLibrary._staticProgressCallback);

        StableDiffusionLibrary._stableDiffusionLibrarySharedBindings.sd_set_log_callback(logCallbackNativeFunction, nullptr);
        StableDiffusionLibrary._stableDiffusionLibrarySharedBindings.sd_set_progress_callback(proggresCallbackNativeFunction, nullptr);
      }
    } catch (e) {
      _isCrash = true;
    }

    _isEnsureInitialized = true;
    return;
  }

  bool _isCrash = false;
  bool _isDeviceSupport = false;
  @override
  void emit({
    required String eventType,
    required data,
  }) {
    return eventEmitter.emit(
      eventName: eventType,
      value: data,
    );
  }

  @override
  EventEmitterListener on({
    required String eventType,
    required FutureOr Function(UpdateStableDiffusionLibraryData<StableDiffusionLibrary, JsonScheme> updateStableDiffusionLibrary) onUpdate,
  }) {
    return eventEmitter.on(
      eventName: eventType,
      onCallback: (listener, update) {
        if (update is JsonScheme) {
          onUpdate(UpdateStableDiffusionLibraryData(
            update: update,
            stableDiffusionLibrary: this,
          ));
        }
      },
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static Isolate _isolate = Isolate.current;

  @override
  Future<void> initialized() async {
    if (_isInIsolate == true) {
      return;
    }
    if (StableDiffusionLibrary._isolate != Isolate.current) {
      StableDiffusionLibrary._isolate.kill();
    }
    if (StableDiffusionLibrary._isolate == Isolate.current) {
      StableDiffusionLibrary._isolate = await Isolate.spawn(
        (_StableDiffusionLibraryIsolateData stableDiffusionLibraryIsolateData) async {
          final StableDiffusionLibrary stableDiffusionLibrary = StableDiffusionLibrary(
            sharedLibraryPath: stableDiffusionLibraryIsolateData.sharedLibraryPath,
            defaultInvokeOptions: stableDiffusionLibraryIsolateData.invokeParametersStableDiffusionLibraryDataOptions,
          );
          stableDiffusionLibrary._isInIsolate = true;
          await stableDiffusionLibrary.ensureInitialized(
            generalSchemaEnsureInitialized: StableDiffusionLibraryEnsureInitialized(),
          );
          await stableDiffusionLibrary.initialized();
          StableDiffusionLibrary._receivePort.sendPort.send(stableDiffusionLibraryIsolateData.sendPort);
          stableDiffusionLibraryIsolateData.sendPort.send(StableDiffusionLibrary._receivePort.sendPort);
        },
        _StableDiffusionLibraryIsolateData(
          sharedLibraryPath: sharedLibraryPath,
          // modelPath: StableDiffusionLibrary._modelPath,
          sendPort: StableDiffusionLibrary._receivePort.sendPort,
          invokeParametersStableDiffusionLibraryDataOptions: defaultInvokeOptions,
        ),
      );
    }
    return;
    // Isolate isolate = await Isolate.spawn(entryPoint, message);
  }

  /// Disposes of all resources held by this instance
  @override
  void dispose() {
    eventEmitter.clear();
    if (_isInIsolate == false) {
      StableDiffusionLibrary._send(StableDiffusionLibraryActionType.close);
      return;
    }

    if (isDeviceSupportSync() == false) {
      return;
    }
    if (StableDiffusionLibrary._sd_ctx != nullptr) {
      StableDiffusionLibrary._stableDiffusionLibrarySharedBindings.free_sd_ctx(StableDiffusionLibrary._sd_ctx);
      StableDiffusionLibrary._sd_ctx = nullptr;
    }
    StableDiffusionLibrary._send(StableDiffusionLibraryActionType.close);
  }

  @override
  FutureOr<JsonScheme> invokeRaw({
    required JsonScheme invokeParameters,
    required StableDiffusionLibraryInvokeOptions? invokeOptions,
  }) async {
    await _completerSendPortInitialized.future;
    final invokeParametersStableDiffusionLibraryDataOptions = invokeOptions ?? defaultInvokeOptions;
    if (_isInIsolate == true) {
      invokeParametersStableDiffusionLibraryDataOptions.isThrowOnError = false;
    }

    final String extra = () {
      if (invokeParameters["@extra"] is String == false) {
        invokeParameters["@extra"] = "";
      }
      String extraProcces = (invokeParameters["@extra"] as String).trim();
      if (extraProcces.isEmpty) {
        extraProcces = generateUuid(10);
      }
      invokeParameters["@extra"] = extraProcces;
      invokeParameters["@extra"] = extraProcces;
      return extraProcces;
    }();
    if (invokeParameters["@type"] is String == false) {
      invokeParameters["@type"] = "";
    }
    final String method = (invokeParameters["@type"] as String).trim();
    final Map<String, dynamic> patchData = {
      "@extra": extra,
    };
    if (method.isEmpty) {
      return InvokeParametersStableDiffusionLibraryData.send(
        data: JsonScheme({
          "@type": "error",
          "message": "method_empty",
        }),
        patchData: patchData,
        invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
      );
    }

    if (_isInIsolate == false) {
      StableDiffusionLibrary._send(
        InvokeParametersStableDiffusionLibraryData(
          parameters: invokeParameters,
          extra: extra,
          invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
        ),
      );

      if (invokeParametersStableDiffusionLibraryDataOptions.isVoid == true) {
        return InvokeParametersStableDiffusionLibraryData.send(
          data: JsonScheme({
            "@type": "ok",
          }),
          patchData: patchData,
          invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
        );
      }
      final Completer<JsonScheme> completerResult = Completer();
      final listener = on(
        eventType: eventUpdate,
        onUpdate: (updateStableDiffusionLibrary) {
          if (completerResult.isCompleted) {
            return;
          }
          final update = updateStableDiffusionLibrary.update;
          if (update["@extra"] == extra) {
            if (update.rawData.containsKey("is_stream")) {
              if (update["is_stream"] == true) {
                completerResult.complete(update);
              } else {
                if (update["is_done"] == true) {
                  completerResult.complete(update);
                }
              }
            } else {
              completerResult.complete(update);
            }
          }
        },
      );

      final result = await completerResult.future.timeout(
        invokeParametersStableDiffusionLibraryDataOptions.invokeTimeOut,
        onTimeout: () {
          return JsonScheme({
            "@type": "error",
            "message": "timeout",
          });
        },
      );
      try {
        listener.close();
      } catch (e) {}
      try {
        eventEmitter.off(listener: listener);
      } catch (e) {}
      return InvokeParametersStableDiffusionLibraryData.send(
        data: result,
        patchData: patchData,
        invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
      );

      ///
    } else {
      final result = await Future(() async {
        if (invokeParameters is LoadStableDiffusionModelFromFileStableDiffusionLibrary) {
          return await _loadStableDiffusionModelFromFileStableDiffusionLibrary(
            parameters: invokeParameters,
            extra: extra,
            invokeParametersLlamaLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
          );
        }
        if (invokeParameters is TextToImageStableDiffusionModelFromFileStableDiffusionLibrary) {
          return await _textToImageStableDiffusionModelFromFileStableDiffusionLibrary(
            invokeParameters: invokeParameters,
            extra: extra,
            invokeParametersLlamaLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
          );
        }
        return JsonScheme({
          "@type": "error",
          "message": "unimplmented",
        });
      });

      final resultPatch = InvokeParametersStableDiffusionLibraryData.send(
        data: result,
        patchData: patchData,
        invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
      );

      StableDiffusionLibrary._send(resultPatch);
      return resultPatch;
      // if (parameters is SendStableDiffusionLibraryMessage) {
      //   sendMessage(
      //     parameters: parameters,
      //     invokeParametersStableDiffusionLibraryDataOptions: invokeParametersStableDiffusionLibraryDataOptions,
      //   );
      //   {
      //     clear();
      //     final chatHistory = StableDiffusionLibraryChatHistory();

      //     // Initialize system prompt
      //     chatHistory.addMessage(
      //       role: StableDiffusionLibraryRole.assistant,
      //       content: """""".trim(),
      //     );

      //     chatHistory.addMessage(role: StableDiffusionLibraryRole.user, content: parameters.text ?? "");
      //     final strm = sendPromptAndStream(
      //       prompt: chatHistory.exportFormat(
      //         StableDiffusionLibraryChatFormat.chatml,
      //       ),
      //     );
      //     StringBuffer stringBuffer = StringBuffer();
      //     strm.stream.listen(
      //       (LLamaResponse element) {
      //         send(UpdateStableDiffusionLibraryMessage.create(
      //           is_done: false,
      //           text: element.result,
      //           special_extra: extra,
      //         ));
      //         stringBuffer.write(element.result);
      //         if (element.isDone) {
      //           return;
      //         }
      //       },
      //       onError: (e, stack) {},
      //     );
      //     await strm.done;
      //     send(UpdateStableDiffusionLibraryMessage.create(
      //       is_done: true,
      //       text: stringBuffer.toString().trim(),
      //       special_extra: extra,
      //     ));
      //     chatHistory.addMessage(
      //       role: StableDiffusionLibraryRole.assistant,
      //       content: stringBuffer.toString().trim(),
      //     );
      //   }
      // }
    }
  }

  @override
  Pointer<Uint8> preprocessCanny(Pointer<Uint8> img, int width, int height, double high_threshold, double low_threshold, double weak, double strong, bool inverse) {
    // TODO: implement preprocessCanny
    throw UnimplementedError();
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType> getDetailStatusDeviceSupportAsync() {
    // TODO: implement getDetailStatusDeviceSupportAsync
    throw UnimplementedError();
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    // TODO: implement getDetailStatusDeviceSupportSync
    throw UnimplementedError();
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    // TODO: implement getLibraryStatusTypeAsync
    throw UnimplementedError();
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    // TODO: implement getLibraryStatusTypeSync
    throw UnimplementedError();
  }

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return isDeviceSupportSync();
  }

  @override
  bool isDeviceSupportSync() {
    if (_isCrash) {
      return false;
    }
    return _isDeviceSupport;
  }
}
