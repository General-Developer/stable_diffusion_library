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

import 'dart:io';
import 'package:stable_diffusion_library/scheme/scheme/api/api.dart';
import 'package:stable_diffusion_library/stable_diffusion_library.dart';

void main(List<String> args) async {
  print("start");

  File modelFile = File(
    "../../../../../big-data/stable-diffusion/sd-v1-4.ckpt",
  );
  if (modelFile.existsSync() == false) {
    print("model not found");
    exit(1);
  }

  final StableDiffusionLibrary stableDiffusionLibrary = StableDiffusionLibrary(
    sharedLibraryPath: "libstable_diffusion_library.so",
    defaultInvokeOptions: StableDiffusionLibraryInvokeOptions(
        invokeTimeOut: Duration(hours: 1),
        isThrowOnError: false,
        isVoid: false),
  );

  await stableDiffusionLibrary.ensureInitialized(
      generalSchemaEnsureInitialized:
          StableDiffusionLibraryEnsureInitialized());
  await stableDiffusionLibrary.initialized();
  await stableDiffusionLibrary.invoke(
    invokeParameters:
        LoadStableDiffusionModelFromFileStableDiffusionLibrary.create(
      model_file_path: modelFile.path,
    ),
    invokeOptions: null,
  );
  await stableDiffusionLibrary.invoke(
    invokeParameters:
        TextToImageStableDiffusionModelFromFileStableDiffusionLibrary.create(
      prompt: "Cat with cute eye",
    ),
    invokeOptions: null,
  );

  await stableDiffusionLibrary.dispose();
  print("done");
  exit(0);
}
