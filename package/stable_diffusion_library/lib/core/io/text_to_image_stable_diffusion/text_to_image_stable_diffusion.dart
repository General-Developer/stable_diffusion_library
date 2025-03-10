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
part of 'package:stable_diffusion_library/core/io/core.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension TextToImageStableDiffusionModelFromFileStableDiffusionLibraryExtensionStableDiffusionLibrary
    on StableDiffusionLibrary {
  Future<UpdateStableDiffusionGeneratedImageStableDiffusionLibrary>
      _textToImageStableDiffusionModelFromFileStableDiffusionLibrary({
    required TextToImageStableDiffusionModelFromFileStableDiffusionLibrary
        invokeParameters,
    required final String extra,
    required StableDiffusionLibraryInvokeOptions
        invokeParametersLlamaLibraryDataOptions,
  }) async {
    if (_isInIsolate == false) {
      return UpdateStableDiffusionGeneratedImageStableDiffusionLibrary({
        "@type": "error",
      });
    }

    if (StableDiffusionLibrary._sd_ctx != nullptr) {
      try {
        final promptUtf8 =
            (invokeParameters.prompt ?? "").toNativeUtf8().cast<Char>();
        final negPromptUtf8 = (invokeParameters.negative_prompt ?? "")
            .toNativeUtf8()
            .cast<Char>();
        final inputIdImagesPathUtf8 =
            (invokeParameters.input_id_images_path ?? "")
                .toNativeUtf8()
                .cast<Char>();
        final emptyUtf8 = "".toNativeUtf8().cast<Char>();

        Pointer<sd_image_t> controlCondPtr = nullptr;
        if (invokeParameters.control_image_data.isNotEmpty) {
          final controlImageData =
              invokeParameters.control_image_data.cast<int>();
          final controlWidth =
              (invokeParameters.control_image_width ?? 0).toInt();
          final controlHeight =
              (invokeParameters.control_image_height ?? 0).toInt();
          final controlDataPtr = malloc<Uint8>(controlImageData.length);
          controlDataPtr
              .asTypedList(controlImageData.length)
              .setAll(0, controlImageData);

          // In the _isolateEntryPoint function, modify the code for Canny processing:

          controlCondPtr = malloc<sd_image_t>();
          controlCondPtr.ref.width = controlWidth;
          controlCondPtr.ref.height = controlHeight;
          controlCondPtr.ref.channel = 3;
          controlCondPtr.ref.data = controlDataPtr;
        }

        final result = StableDiffusionLibrary
            ._stableDiffusionLibrarySharedBindings
            .txt2img(
          StableDiffusionLibrary._sd_ctx,
          promptUtf8,
          negPromptUtf8,
          (invokeParameters.clip_skip ?? 0).toInt(),
          (invokeParameters.cfg_scale ?? 0).toDouble(),
          (invokeParameters.guidance ?? 0).toDouble(),
          0.0, // eta (new parameter)
          (invokeParameters.width ?? 0).toInt(),
          (invokeParameters.height ?? 0).toInt(),
          sample_method_t
              .fromValue(((invokeParameters.sample_method ?? 0).toInt())),
          (invokeParameters.sample_steps ?? 0).toInt(),
          (invokeParameters.seed ?? 0).toInt(),
          (invokeParameters.batch_count ?? 0).toInt(),
          controlCondPtr,
          (invokeParameters.control_strength ?? 0.0).toDouble(),
          (invokeParameters.style_strength ?? 0).toDouble(),
          false,
          inputIdImagesPathUtf8,
          nullptr, // skip_layers
          0, // skip_layers_count
          0.0, // slg_scale
          0.0, // skip_layer_start
          0.0, // skip_layer_end
        );

        if (controlCondPtr != nullptr) {
          calloc.free(controlCondPtr.ref.data);
          malloc.free(controlCondPtr);
        }

        calloc.free(promptUtf8);
        calloc.free(negPromptUtf8);
        calloc.free(inputIdImagesPathUtf8);
        calloc.free(emptyUtf8);

        // print("Generation result address: ${result.address}");

        if (result.address != 0) {
          final image = result.cast<sd_image_t>().ref;
          final bytes = image.data.asTypedList(
              (invokeParameters.width ?? 0).toInt() *
                  (invokeParameters.height ?? 0).toInt() *
                  image.channel);
          final rgbaBytes = Uint8List((invokeParameters.width ?? 0).toInt() *
              (invokeParameters.height ?? 0).toInt() *
              4);

          for (var i = 0;
              i <
                  (invokeParameters.width ?? 0).toInt() *
                      (invokeParameters.height ?? 0).toInt();
              i++) {
            rgbaBytes[i * 4] = bytes[i * 3];
            rgbaBytes[i * 4 + 1] = bytes[i * 3 + 1];
            rgbaBytes[i * 4 + 2] = bytes[i * 3 + 2];
            rgbaBytes[i * 4 + 3] = 255;
          }

          try {
            return UpdateStableDiffusionGeneratedImageStableDiffusionLibrary
                .create(
              image_rgba_bytes: rgbaBytes,
              width: invokeParameters.width,
              height: invokeParameters.height,
            );
          } finally {
            calloc.free(image.data);
            calloc.free(result.cast<Void>());
          }
        } else {
          return UpdateStableDiffusionGeneratedImageStableDiffusionLibrary({
            '@type': 'error',
            'message': 'Failed Generate Image',
          });
        }
      } catch (e) {
        // print("Error generating image: ${e} ${stack}");
        return UpdateStableDiffusionGeneratedImageStableDiffusionLibrary({
          '@type': 'error',
          'message': e.toString(),
        });
      }
    } else {
      // print("Context is null, cannot generate image");
      return UpdateStableDiffusionGeneratedImageStableDiffusionLibrary({
        '@type': 'error',
        'message': 'Model not initialized',
      });
    }
  }
}
