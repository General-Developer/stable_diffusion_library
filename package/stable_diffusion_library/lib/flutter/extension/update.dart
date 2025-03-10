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
