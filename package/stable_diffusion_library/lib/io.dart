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

import 'package:ffi/ffi.dart';
import 'package:general_lib/event_emitter/event_emitter.dart';
import 'package:stable_diffusion_library/raw/lcpp.dart';

import 'base.dart';
import 'ffi/bindings.dart';

///
class StableDiffusionLibrary extends StableDiffusionLibraryBase {
  // ignore: prefer_final_fields
  bool _isInIsolate = true;

  ///
  StableDiffusionLibrary({
    String? sharedLibraryPath,
  }) : super(
          sharedLibraryPath: sharedLibraryPath ??
              StableDiffusionLibraryBase.getLibraryWhisperPathDefault(),
        );

  ///
  static late final StableDiffusionLibrarySharedBindingsByGeneralDeveloper
      _stableDiffusionLibrary;
  // ignore: prefer_final_fields
  static Pointer<llama_model> _modelContext = nullptr;
  // ignore: prefer_final_fields
  static Pointer<llama_context> _llamaContext = nullptr;
  // ignore: prefer_final_fields
  static Pointer<llama_sampler> _llamaSampler = nullptr;

  static bool _isEnsureInitialized = false;

  static String _modelPath = "";

  @override
  Future<void> ensureInitialized() async {
    if (_isEnsureInitialized) {
      return;
    }

    try {
      _stableDiffusionLibrary =
          StableDiffusionLibrarySharedBindingsByGeneralDeveloper(
        DynamicLibrary.open(
          sharedLibraryPath,
        ),
      );
      _isDeviceSupport = true;
    } catch (e) {
      _isCrash = true;
    }

    _isEnsureInitialized = true;
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
  bool loadModel({
    required String modelPath,
  }) {
    if (_isInIsolate) {}
    {
      StableDiffusionLibrary._modelPath = modelPath;
    }
    if (_isInIsolate == false) {
      return true;
    }

    if (isDeviceSupport() == false || isCrash()) {
      return false;
    }
    _stableDiffusionLibrary.ggml_backend_load_all();
    _stableDiffusionLibrary.llama_backend_init();

    {
      final modelContext = StableDiffusionLibrary._modelContext;
      if (modelContext != nullptr) {
        /// release memory
        _stableDiffusionLibrary.llama_free_model(modelContext);
      }
    }
    final modelParams = ModelParams(path: StableDiffusionLibrary._modelPath);
    final nativeModelParams = modelParams.toNative(
      generalAiLLamaLibrary: StableDiffusionLibrary._stableDiffusionLibrary,
    );
    final nativeModelPath = modelParams.path.toNativeUtf8().cast<Char>();

    final modelContext = _stableDiffusionLibrary.llama_load_model_from_file(
        nativeModelPath, nativeModelParams);
    StableDiffusionLibrary._modelContext = modelContext;

    if (modelContext.address == 0) {
      _stableDiffusionLibrary.llama_free_model(modelContext);
      return false;
    }

    /// init context
    {
      final contextParams = const ContextParams(
        nCtx: 2048,
        nBatch: 2048,
        // nCtx: 64,
        // nBatch: 64,

        nThreads: 4,
      );

      final nativeContextParams = contextParams.toNative(
        generalAiLLamaLibrary: StableDiffusionLibrary._stableDiffusionLibrary,
      );
      {
        final llamaContext = StableDiffusionLibrary._llamaContext;
        if (llamaContext != nullptr) {
          /// release memory
          _stableDiffusionLibrary.llama_free(llamaContext);
        }
      }
      final llamaContext = _stableDiffusionLibrary.llama_init_from_model(
          modelContext, nativeContextParams);
      StableDiffusionLibrary._llamaContext = llamaContext;
    }

    {
      final samplingParams = const SamplingParams(
        greedy: true,
      );

      {
        final llamaSampler = StableDiffusionLibrary._llamaSampler;
        if (llamaSampler != nullptr) {
          _stableDiffusionLibrary.llama_sampler_free(llamaSampler);
        }
      }

      final vocab = _stableDiffusionLibrary.llama_model_get_vocab(modelContext);
      final llamaSampler = samplingParams.toNative(
        vocab: vocab,
        generalAiLLamaLibrary: StableDiffusionLibrary._stableDiffusionLibrary,
      );
      StableDiffusionLibrary._llamaSampler = llamaSampler;
    }

    return true;
  }

  @override
  Future<void> initialized() async {
    // Isolate isolate = await Isolate.spawn(entryPoint, message);
  }

  @override
  FutureOr<void> close() async {
    if (_isInIsolate == false) {
      return;
    }

    if (_modelContext != nullptr) {
      _stableDiffusionLibrary.llama_free_model(_modelContext);
    }
    if (_llamaSampler != nullptr) {
      _stableDiffusionLibrary.llama_sampler_free(_llamaSampler);
    }
    if (_llamaContext != nullptr) {
      _stableDiffusionLibrary.llama_free(_llamaContext);
    }
    return;
  }

  @override
  void stop() {}

  @override
  void emit({required String eventType, required data}) {}

  @override
  EventEmitterListener on(
      {required String eventType,
      required FutureOr Function(dynamic data) onUpdate}) {
    throw UnimplementedError();
  }

  Completer _completer = Completer();

  int _contextLength = 0;
  @override
  Stream<String> prompt({required List<ChatMessage> messages}) async* {
    final messagesCopy = messages.copy();

    _completer = Completer();

    final nCtx = _stableDiffusionLibrary
        .llama_n_ctx(StableDiffusionLibrary._llamaContext);

    Pointer<Char> formatted = calloc<Char>(nCtx);

    final template = _stableDiffusionLibrary.llama_model_chat_template(
        StableDiffusionLibrary._modelContext, nullptr);

    Pointer<llama_chat_message> messagesPtr = messagesCopy.toNative();

    int newContextLength = _stableDiffusionLibrary.llama_chat_apply_template(
        template, messagesPtr, messagesCopy.length, true, formatted, nCtx);

    if (newContextLength > nCtx) {
      // calloc.free(formatted);
      formatted = calloc<Char>(newContextLength);
      newContextLength = _stableDiffusionLibrary.llama_chat_apply_template(
          template,
          messagesPtr,
          messagesCopy.length,
          true,
          formatted,
          newContextLength);
    }

    // messagesPtr.free(messagesCopy.length);

    if (newContextLength < 0) {
      throw Exception('Failed to apply template');
    }

    final prompt =
        formatted.cast<Utf8>().toDartString().substring(_contextLength);
    // calloc.free(formatted);

    final vocab = _stableDiffusionLibrary
        .llama_model_get_vocab(StableDiffusionLibrary._modelContext);
    final isFirst = _stableDiffusionLibrary.llama_get_kv_cache_used_cells(
            StableDiffusionLibrary._llamaContext) ==
        0;

    final promptPtr = prompt.toNativeUtf8().cast<Char>();

    final nPromptTokens = -_stableDiffusionLibrary.llama_tokenize(
        vocab, promptPtr, prompt.length, nullptr, 0, isFirst, true);
    Pointer<llama_token> promptTokens = calloc<llama_token>(nPromptTokens);

    if (_stableDiffusionLibrary.llama_tokenize(vocab, promptPtr, prompt.length,
            promptTokens, nPromptTokens, isFirst, true) <
        0) {
      throw Exception('Failed to tokenize');
    }

    // calloc.free(promptPtr);

    llama_batch batch = _stableDiffusionLibrary.llama_batch_get_one(
        promptTokens, nPromptTokens);
    Pointer<llama_token> newTokenId = calloc<llama_token>(1);

    String response = '';

    while (!_completer.isCompleted) {
      final nCtx = _stableDiffusionLibrary
          .llama_n_ctx(StableDiffusionLibrary._llamaContext);
      final nCtxUsed = _stableDiffusionLibrary
          .llama_get_kv_cache_used_cells(StableDiffusionLibrary._llamaContext);

      if (nCtxUsed + batch.n_tokens > nCtx) {
        throw Exception('Context size exceeded');
      }

      if (_stableDiffusionLibrary.llama_decode(
              StableDiffusionLibrary._llamaContext, batch) !=
          0) {
        throw Exception('Failed to decode');
      }

      newTokenId.value = _stableDiffusionLibrary.llama_sampler_sample(
          StableDiffusionLibrary._llamaSampler,
          StableDiffusionLibrary._llamaContext,
          -1);

      // is it an end of generation?
      if (_stableDiffusionLibrary.llama_vocab_is_eog(vocab, newTokenId.value)) {
        break;
      }

      final buffer = calloc<Char>(256);
      final n = _stableDiffusionLibrary.llama_token_to_piece(
          vocab, newTokenId.value, buffer, 256, 0, true);
      if (n < 0) {
        throw Exception('Failed to convert token to piece');
      }

      final piece = buffer.cast<Utf8>().toDartString();
      // calloc.free(buffer);
      response += piece;
      yield piece;

      batch = _stableDiffusionLibrary.llama_batch_get_one(newTokenId, 1);
    }

    messagesCopy.add(ChatMessage(role: 'assistant', content: response));

    messagesPtr = messagesCopy.toNative();

    _contextLength = _stableDiffusionLibrary.llama_chat_apply_template(
        template, messagesPtr, messagesCopy.length, false, nullptr, 0);

    // messagesPtr.free(messagesCopy.length);

    // calloc.free(promptTokens);
    // _stableDiffusionLibrary.llama_batch_free(batch);
  }

  @override
  FutureOr<void> dispose() async {}
}
