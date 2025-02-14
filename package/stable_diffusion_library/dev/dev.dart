import 'dart:ffi';
import 'dart:io';

import 'package:stable_diffusion_library/ffi/bindings.dart';

void main(List<String> args) async {
  StableDiffusionLibrarySharedBindingsByGeneralDeveloper sharedBindingsByGeneralDeveloper = StableDiffusionLibrarySharedBindingsByGeneralDeveloper(
    DynamicLibrary.open("../stable_diffusion_library_flutter/linux/libstable-diffusion.so"),
  );

  sharedBindingsByGeneralDeveloper;
  exit(0);
}
