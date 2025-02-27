// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: non_constant_identifier_names

import 'package:ffi_universe/ffi_universe.dart' as ffi;

/// GeneralAiSpeechToTextLibraryWhisper Binding By General Corporation & Global Corporation & General Developer
class StableDiffusionLibrarySharedBindingsByGeneralDeveloper {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  StableDiffusionLibrarySharedBindingsByGeneralDeveloper(
      ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  StableDiffusionLibrarySharedBindingsByGeneralDeveloper.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int stable_diffusion_start(
      int argc, ffi.Pointer<ffi.Pointer<ffi.Char>> argv) {
    return _stable_diffusion_start(argc, argv);
  }

  late final _stable_diffusion_startPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Int,
              ffi.Pointer<ffi.Pointer<ffi.Char>>)>>('stable_diffusion_start');
  late final _stable_diffusion_start = _stable_diffusion_startPtr
      .asFunction<int Function(int, ffi.Pointer<ffi.Pointer<ffi.Char>>)>();
}
