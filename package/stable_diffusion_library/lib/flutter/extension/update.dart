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
import "dart:async";
import "dart:typed_data";
import "dart:ui" as ui;

import "package:stable_diffusion_library/scheme/scheme/respond/update_stable_diffusion_generated_image_stable_diffusion_library.dart";

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension UpdateStableDiffusionGeneratedImageStableDiffusionLibraryExtension
    on UpdateStableDiffusionGeneratedImageStableDiffusionLibrary {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  FutureOr<Uint8List?> toFlutter() async {
    final Completer<ui.Image> completer = Completer<ui.Image>();
    ui.decodeImageFromPixels(
      Uint8List.fromList(image_rgba_bytes.cast<int>()),
      (width ?? 0).toInt(),
      (height ?? 0).toInt(),
      ui.PixelFormat.rgba8888,
      completer.complete,
    );
    final image = await completer.future;

    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) {
      return null;
    }
    return bytes.buffer.asUint8List();
  }
}
