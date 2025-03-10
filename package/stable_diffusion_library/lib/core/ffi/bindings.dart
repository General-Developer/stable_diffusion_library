// ignore_for_file: constant_identifier_names, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element, camel_case_types, unused_field

import 'dart:ffi' as ffi;

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
  ffi.Pointer<ffi.Void> memcpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    return _memcpy(
      __dest,
      __src,
      __n,
    );
  }

  late final _memcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Size)>>('memcpy');
  late final _memcpy = _memcpyPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> memmove(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    return _memmove(
      __dest,
      __src,
      __n,
    );
  }

  late final _memmovePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Size)>>('memmove');
  late final _memmove = _memmovePtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> memccpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __c,
    int __n,
  ) {
    return _memccpy(
      __dest,
      __src,
      __c,
      __n,
    );
  }

  late final _memccpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Int, ffi.Size)>>('memccpy');
  late final _memccpy = _memccpyPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> memset(
    ffi.Pointer<ffi.Void> __s,
    int __c,
    int __n,
  ) {
    return _memset(
      __s,
      __c,
      __n,
    );
  }

  late final _memsetPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>, ffi.Int, ffi.Size)>>('memset');
  late final _memset = _memsetPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, int, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int memcmp(
    ffi.Pointer<ffi.Void> __s1,
    ffi.Pointer<ffi.Void> __s2,
    int __n,
  ) {
    return _memcmp(
      __s1,
      __s2,
      __n,
    );
  }

  late final _memcmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Size)>>('memcmp');
  late final _memcmp = _memcmpPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  int __memcmpeq(
    ffi.Pointer<ffi.Void> __s1,
    ffi.Pointer<ffi.Void> __s2,
    int __n,
  ) {
    return ___memcmpeq(
      __s1,
      __s2,
      __n,
    );
  }

  late final ___memcmpeqPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Size)>>('__memcmpeq');
  late final ___memcmpeq = ___memcmpeqPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> memchr(
    ffi.Pointer<ffi.Void> __s,
    int __c,
    int __n,
  ) {
    return _memchr(
      __s,
      __c,
      __n,
    );
  }

  late final _memchrPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>, ffi.Int, ffi.Size)>>('memchr');
  late final _memchr = _memchrPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, int, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strcpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
  ) {
    return _strcpy(
      __dest,
      __src,
    );
  }

  late final _strcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcpy');
  late final _strcpy = _strcpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strncpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _strncpy(
      __dest,
      __src,
      __n,
    );
  }

  late final _strncpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('strncpy');
  late final _strncpy = _strncpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strcat(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
  ) {
    return _strcat(
      __dest,
      __src,
    );
  }

  late final _strcatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcat');
  late final _strcat = _strcatPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strncat(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _strncat(
      __dest,
      __src,
      __n,
    );
  }

  late final _strncatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('strncat');
  late final _strncat = _strncatPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcmp(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
  ) {
    return _strcmp(
      __s1,
      __s2,
    );
  }

  late final _strcmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcmp');
  late final _strcmp = _strcmpPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strncmp(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
    int __n,
  ) {
    return _strncmp(
      __s1,
      __s2,
      __n,
    );
  }

  late final _strncmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size)>>('strncmp');
  late final _strncmp = _strncmpPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcoll(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
  ) {
    return _strcoll(
      __s1,
      __s2,
    );
  }

  late final _strcollPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcoll');
  late final _strcoll = _strcollPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strxfrm(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _strxfrm(
      __dest,
      __src,
      __n,
    );
  }

  late final _strxfrmPtr = _lookup<
      ffi.NativeFunction<
          ffi.UnsignedLong Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('strxfrm');
  late final _strxfrm = _strxfrmPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcoll_l(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
    locale_t __l,
  ) {
    return _strcoll_l(
      __s1,
      __s2,
      __l,
    );
  }

  late final _strcoll_lPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              locale_t)>>('strcoll_l');
  late final _strcoll_l = _strcoll_lPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, locale_t)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strxfrm_l(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
    locale_t __l,
  ) {
    return _strxfrm_l(
      __dest,
      __src,
      __n,
      __l,
    );
  }

  late final _strxfrm_lPtr = _lookup<
      ffi.NativeFunction<
          ffi.Size Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size, locale_t)>>('strxfrm_l');
  late final _strxfrm_l = _strxfrm_lPtr.asFunction<
      int Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int, locale_t)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strdup(
    ffi.Pointer<ffi.Char> __s,
  ) {
    return _strdup(
      __s,
    );
  }

  late final _strdupPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>>('strdup');
  late final _strdup = _strdupPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strndup(
    ffi.Pointer<ffi.Char> __string,
    int __n,
  ) {
    return _strndup(
      __string,
      __n,
    );
  }

  late final _strndupPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Size)>>('strndup');
  late final _strndup = _strndupPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strchr(
    ffi.Pointer<ffi.Char> __s,
    int __c,
  ) {
    return _strchr(
      __s,
      __c,
    );
  }

  late final _strchrPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('strchr');
  late final _strchr = _strchrPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strrchr(
    ffi.Pointer<ffi.Char> __s,
    int __c,
  ) {
    return _strrchr(
      __s,
      __c,
    );
  }

  late final _strrchrPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('strrchr');
  late final _strrchr = _strrchrPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strchrnul(
    ffi.Pointer<ffi.Char> __s,
    int __c,
  ) {
    return _strchrnul(
      __s,
      __c,
    );
  }

  late final _strchrnulPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('strchrnul');
  late final _strchrnul = _strchrnulPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcspn(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __reject,
  ) {
    return _strcspn(
      __s,
      __reject,
    );
  }

  late final _strcspnPtr = _lookup<
      ffi.NativeFunction<
          ffi.UnsignedLong Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcspn');
  late final _strcspn = _strcspnPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strspn(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __accept,
  ) {
    return _strspn(
      __s,
      __accept,
    );
  }

  late final _strspnPtr = _lookup<
      ffi.NativeFunction<
          ffi.UnsignedLong Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strspn');
  late final _strspn = _strspnPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strpbrk(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __accept,
  ) {
    return _strpbrk(
      __s,
      __accept,
    );
  }

  late final _strpbrkPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strpbrk');
  late final _strpbrk = _strpbrkPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strstr(
    ffi.Pointer<ffi.Char> __haystack,
    ffi.Pointer<ffi.Char> __needle,
  ) {
    return _strstr(
      __haystack,
      __needle,
    );
  }

  late final _strstrPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strstr');
  late final _strstr = _strstrPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strtok(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __delim,
  ) {
    return _strtok(
      __s,
      __delim,
    );
  }

  late final _strtokPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strtok');
  late final _strtok = _strtokPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> __strtok_r(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __delim,
    ffi.Pointer<ffi.Pointer<ffi.Char>> __save_ptr,
  ) {
    return ___strtok_r(
      __s,
      __delim,
      __save_ptr,
    );
  }

  late final ___strtok_rPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Pointer<ffi.Char>>)>>('__strtok_r');
  late final ___strtok_r = ___strtok_rPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Pointer<ffi.Char>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strtok_r(
    ffi.Pointer<ffi.Char> __s,
    ffi.Pointer<ffi.Char> __delim,
    ffi.Pointer<ffi.Pointer<ffi.Char>> __save_ptr,
  ) {
    return _strtok_r(
      __s,
      __delim,
      __save_ptr,
    );
  }

  late final _strtok_rPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Pointer<ffi.Char>>)>>('strtok_r');
  late final _strtok_r = _strtok_rPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Pointer<ffi.Char>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strcasestr(
    ffi.Pointer<ffi.Char> __haystack,
    ffi.Pointer<ffi.Char> __needle,
  ) {
    return _strcasestr(
      __haystack,
      __needle,
    );
  }

  late final _strcasestrPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcasestr');
  late final _strcasestr = _strcasestrPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> memmem(
    ffi.Pointer<ffi.Void> __haystack,
    int __haystacklen,
    ffi.Pointer<ffi.Void> __needle,
    int __needlelen,
  ) {
    return _memmem(
      __haystack,
      __haystacklen,
      __needle,
      __needlelen,
    );
  }

  late final _memmemPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, ffi.Size,
              ffi.Pointer<ffi.Void>, ffi.Size)>>('memmem');
  late final _memmem = _memmemPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Void>, int)>();

  ffi.Pointer<ffi.Void> __mempcpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    return ___mempcpy(
      __dest,
      __src,
      __n,
    );
  }

  late final ___mempcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Size)>>('__mempcpy');
  late final ___mempcpy = ___mempcpyPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Void> mempcpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    return _mempcpy(
      __dest,
      __src,
      __n,
    );
  }

  late final _mempcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Size)>>('mempcpy');
  late final _mempcpy = _mempcpyPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strlen(
    ffi.Pointer<ffi.Char> __s,
  ) {
    return _strlen(
      __s,
    );
  }

  late final _strlenPtr = _lookup<
          ffi.NativeFunction<ffi.UnsignedLong Function(ffi.Pointer<ffi.Char>)>>(
      'strlen');
  late final _strlen =
      _strlenPtr.asFunction<int Function(ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strnlen(
    ffi.Pointer<ffi.Char> __string,
    int __maxlen,
  ) {
    return _strnlen(
      __string,
      __maxlen,
    );
  }

  late final _strnlenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Size Function(ffi.Pointer<ffi.Char>, ffi.Size)>>('strnlen');
  late final _strnlen =
      _strnlenPtr.asFunction<int Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strerror(
    int __errnum,
  ) {
    return _strerror(
      __errnum,
    );
  }

  late final _strerrorPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'strerror');
  late final _strerror =
      _strerrorPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strerror_r(
    int __errnum,
    ffi.Pointer<ffi.Char> __buf,
    int __buflen,
  ) {
    return _strerror_r(
      __errnum,
      __buf,
      __buflen,
    );
  }

  late final _strerror_rPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Int, ffi.Pointer<ffi.Char>, ffi.Size)>>('strerror_r');
  late final _strerror_r = _strerror_rPtr
      .asFunction<int Function(int, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strerror_l(
    int __errnum,
    locale_t __l,
  ) {
    return _strerror_l(
      __errnum,
      __l,
    );
  }

  late final _strerror_lPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Int, locale_t)>>('strerror_l');
  late final _strerror_l = _strerror_lPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(int, locale_t)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int bcmp(
    ffi.Pointer<ffi.Void> __s1,
    ffi.Pointer<ffi.Void> __s2,
    int __n,
  ) {
    return _bcmp(
      __s1,
      __s2,
      __n,
    );
  }

  late final _bcmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Size)>>('bcmp');
  late final _bcmp = _bcmpPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void bcopy(
    ffi.Pointer<ffi.Void> __src,
    ffi.Pointer<ffi.Void> __dest,
    int __n,
  ) {
    return _bcopy(
      __src,
      __dest,
      __n,
    );
  }

  late final _bcopyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Size)>>('bcopy');
  late final _bcopy = _bcopyPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void bzero(
    ffi.Pointer<ffi.Void> __s,
    int __n,
  ) {
    return _bzero(
      __s,
      __n,
    );
  }

  late final _bzeroPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Size)>>('bzero');
  late final _bzero =
      _bzeroPtr.asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> index(
    ffi.Pointer<ffi.Char> __s,
    int __c,
  ) {
    return _index(
      __s,
      __c,
    );
  }

  late final _indexPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('index');
  late final _index = _indexPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> rindex(
    ffi.Pointer<ffi.Char> __s,
    int __c,
  ) {
    return _rindex(
      __s,
      __c,
    );
  }

  late final _rindexPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('rindex');
  late final _rindex = _rindexPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int ffs(
    int __i,
  ) {
    return _ffs(
      __i,
    );
  }

  late final _ffsPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int)>>('ffs');
  late final _ffs = _ffsPtr.asFunction<int Function(int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int ffsl(
    int __l,
  ) {
    return _ffsl(
      __l,
    );
  }

  late final _ffslPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Long)>>('ffsl');
  late final _ffsl = _ffslPtr.asFunction<int Function(int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int ffsll(
    int __ll,
  ) {
    return _ffsll(
      __ll,
    );
  }

  late final _ffsllPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.LongLong)>>('ffsll');
  late final _ffsll = _ffsllPtr.asFunction<int Function(int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcasecmp(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
  ) {
    return _strcasecmp(
      __s1,
      __s2,
    );
  }

  late final _strcasecmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('strcasecmp');
  late final _strcasecmp = _strcasecmpPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strncasecmp(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
    int __n,
  ) {
    return _strncasecmp(
      __s1,
      __s2,
      __n,
    );
  }

  late final _strncasecmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size)>>('strncasecmp');
  late final _strncasecmp = _strncasecmpPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strcasecmp_l(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
    locale_t __loc,
  ) {
    return _strcasecmp_l(
      __s1,
      __s2,
      __loc,
    );
  }

  late final _strcasecmp_lPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              locale_t)>>('strcasecmp_l');
  late final _strcasecmp_l = _strcasecmp_lPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, locale_t)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strncasecmp_l(
    ffi.Pointer<ffi.Char> __s1,
    ffi.Pointer<ffi.Char> __s2,
    int __n,
    locale_t __loc,
  ) {
    return _strncasecmp_l(
      __s1,
      __s2,
      __n,
      __loc,
    );
  }

  late final _strncasecmp_lPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size, locale_t)>>('strncasecmp_l');
  late final _strncasecmp_l = _strncasecmp_lPtr.asFunction<
      int Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int, locale_t)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void explicit_bzero(
    ffi.Pointer<ffi.Void> __s,
    int __n,
  ) {
    return _explicit_bzero(
      __s,
      __n,
    );
  }

  late final _explicit_bzeroPtr = _lookup<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Size)>>(
      'explicit_bzero');
  late final _explicit_bzero = _explicit_bzeroPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strsep(
    ffi.Pointer<ffi.Pointer<ffi.Char>> __stringp,
    ffi.Pointer<ffi.Char> __delim,
  ) {
    return _strsep(
      __stringp,
      __delim,
    );
  }

  late final _strsepPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Pointer<ffi.Char>>,
              ffi.Pointer<ffi.Char>)>>('strsep');
  late final _strsep = _strsepPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Pointer<ffi.Char>>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> strsignal(
    int __sig,
  ) {
    return _strsignal(
      __sig,
    );
  }

  late final _strsignalPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'strsignal');
  late final _strsignal =
      _strsignalPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> __stpcpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
  ) {
    return ___stpcpy(
      __dest,
      __src,
    );
  }

  late final ___stpcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('__stpcpy');
  late final ___stpcpy = ___stpcpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> stpcpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
  ) {
    return _stpcpy(
      __dest,
      __src,
    );
  }

  late final _stpcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('stpcpy');
  late final _stpcpy = _stpcpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> __stpncpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return ___stpncpy(
      __dest,
      __src,
      __n,
    );
  }

  late final ___stpncpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('__stpncpy');
  late final ___stpncpy = ___stpncpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> stpncpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _stpncpy(
      __dest,
      __src,
      __n,
    );
  }

  late final _stpncpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('stpncpy');
  late final _stpncpy = _stpncpyPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strlcpy(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _strlcpy(
      __dest,
      __src,
      __n,
    );
  }

  late final _strlcpyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Size Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size)>>('strlcpy');
  late final _strlcpy = _strlcpyPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int strlcat(
    ffi.Pointer<ffi.Char> __dest,
    ffi.Pointer<ffi.Char> __src,
    int __n,
  ) {
    return _strlcat(
      __dest,
      __src,
      __n,
    );
  }

  late final _strlcatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Size Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Size)>>('strlcat');
  late final _strlcat = _strlcatPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> sd_type_name(
    sd_type_t type,
  ) {
    return _sd_type_name(
      type.value,
    );
  }

  late final _sd_type_namePtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.UnsignedInt)>>(
      'sd_type_name');
  late final _sd_type_name =
      _sd_type_namePtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void sd_set_log_callback(
    sd_log_cb_t sd_log_cb,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _sd_set_log_callback(
      sd_log_cb,
      data,
    );
  }

  late final _sd_set_log_callbackPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              sd_log_cb_t, ffi.Pointer<ffi.Void>)>>('sd_set_log_callback');
  late final _sd_set_log_callback = _sd_set_log_callbackPtr
      .asFunction<void Function(sd_log_cb_t, ffi.Pointer<ffi.Void>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void sd_set_progress_callback(
    sd_progress_cb_t cb,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _sd_set_progress_callback(
      cb,
      data,
    );
  }

  late final _sd_set_progress_callbackPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(sd_progress_cb_t,
              ffi.Pointer<ffi.Void>)>>('sd_set_progress_callback');
  late final _sd_set_progress_callback = _sd_set_progress_callbackPtr
      .asFunction<void Function(sd_progress_cb_t, ffi.Pointer<ffi.Void>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int get_num_physical_cores() {
    return _get_num_physical_cores();
  }

  late final _get_num_physical_coresPtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>(
          'get_num_physical_cores');
  late final _get_num_physical_cores =
      _get_num_physical_coresPtr.asFunction<int Function()>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> sd_get_system_info() {
    return _sd_get_system_info();
  }

  late final _sd_get_system_infoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'sd_get_system_info');
  late final _sd_get_system_info =
      _sd_get_system_infoPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<sd_ctx_t> new_sd_ctx(
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
  ) {
    return _new_sd_ctx(
      model_path,
      clip_l_path,
      clip_g_path,
      t5xxl_path,
      diffusion_model_path,
      vae_path,
      taesd_path,
      control_net_path_c_str,
      lora_model_dir,
      embed_dir_c_str,
      stacked_id_embed_dir_c_str,
      vae_decode_only,
      vae_tiling,
      free_params_immediately,
      n_threads,
      wtype.value,
      rng_type.value,
      s.value,
      keep_clip_on_cpu,
      keep_control_net_cpu,
      keep_vae_on_cpu,
      diffusion_flash_attn,
    );
  }

  late final _new_sd_ctxPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<sd_ctx_t> Function(
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Bool,
              ffi.Bool,
              ffi.Bool,
              ffi.Int,
              ffi.UnsignedInt,
              ffi.UnsignedInt,
              ffi.UnsignedInt,
              ffi.Bool,
              ffi.Bool,
              ffi.Bool,
              ffi.Bool)>>('new_sd_ctx');
  late final _new_sd_ctx = _new_sd_ctxPtr.asFunction<
      ffi.Pointer<sd_ctx_t> Function(
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          bool,
          bool,
          bool,
          int,
          int,
          int,
          int,
          bool,
          bool,
          bool,
          bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void free_sd_ctx(
    ffi.Pointer<sd_ctx_t> sd_ctx,
  ) {
    return _free_sd_ctx(
      sd_ctx,
    );
  }

  late final _free_sd_ctxPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<sd_ctx_t>)>>(
          'free_sd_ctx');
  late final _free_sd_ctx =
      _free_sd_ctxPtr.asFunction<void Function(ffi.Pointer<sd_ctx_t>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<sd_image_t> txt2img(
    ffi.Pointer<sd_ctx_t> sd_ctx,
    ffi.Pointer<ffi.Char> prompt,
    ffi.Pointer<ffi.Char> negative_prompt,
    int clip_skip,
    double cfg_scale,
    double guidance,
    double eta,
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
  ) {
    return _txt2img(
      sd_ctx,
      prompt,
      negative_prompt,
      clip_skip,
      cfg_scale,
      guidance,
      eta,
      width,
      height,
      sample_method.value,
      sample_steps,
      seed,
      batch_count,
      control_cond,
      control_strength,
      style_strength,
      normalize_input,
      input_id_images_path,
      skip_layers,
      skip_layers_count,
      slg_scale,
      skip_layer_start,
      skip_layer_end,
    );
  }

  late final _txt2imgPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<sd_image_t> Function(
              ffi.Pointer<sd_ctx_t>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Int,
              ffi.Int,
              ffi.UnsignedInt,
              ffi.Int,
              ffi.Int64,
              ffi.Int,
              ffi.Pointer<sd_image_t>,
              ffi.Float,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Int>,
              ffi.Size,
              ffi.Float,
              ffi.Float,
              ffi.Float)>>('txt2img');
  late final _txt2img = _txt2imgPtr.asFunction<
      ffi.Pointer<sd_image_t> Function(
          ffi.Pointer<sd_ctx_t>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          int,
          double,
          double,
          double,
          int,
          int,
          int,
          int,
          int,
          int,
          ffi.Pointer<sd_image_t>,
          double,
          double,
          bool,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Int>,
          int,
          double,
          double,
          double)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<sd_image_t> img2img(
    ffi.Pointer<sd_ctx_t> sd_ctx,
    sd_image_t init_image,
    sd_image_t mask_image,
    ffi.Pointer<ffi.Char> prompt,
    ffi.Pointer<ffi.Char> negative_prompt,
    int clip_skip,
    double cfg_scale,
    double guidance,
    double eta,
    int width,
    int height,
    sample_method_t sample_method,
    int sample_steps,
    double strength,
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
  ) {
    return _img2img(
      sd_ctx,
      init_image,
      mask_image,
      prompt,
      negative_prompt,
      clip_skip,
      cfg_scale,
      guidance,
      eta,
      width,
      height,
      sample_method.value,
      sample_steps,
      strength,
      seed,
      batch_count,
      control_cond,
      control_strength,
      style_strength,
      normalize_input,
      input_id_images_path,
      skip_layers,
      skip_layers_count,
      slg_scale,
      skip_layer_start,
      skip_layer_end,
    );
  }

  late final _img2imgPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<sd_image_t> Function(
              ffi.Pointer<sd_ctx_t>,
              sd_image_t,
              sd_image_t,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Int,
              ffi.Int,
              ffi.UnsignedInt,
              ffi.Int,
              ffi.Float,
              ffi.Int64,
              ffi.Int,
              ffi.Pointer<sd_image_t>,
              ffi.Float,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Int>,
              ffi.Size,
              ffi.Float,
              ffi.Float,
              ffi.Float)>>('img2img');
  late final _img2img = _img2imgPtr.asFunction<
      ffi.Pointer<sd_image_t> Function(
          ffi.Pointer<sd_ctx_t>,
          sd_image_t,
          sd_image_t,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          int,
          double,
          double,
          double,
          int,
          int,
          int,
          int,
          double,
          int,
          int,
          ffi.Pointer<sd_image_t>,
          double,
          double,
          bool,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Int>,
          int,
          double,
          double,
          double)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<sd_image_t> img2vid(
    ffi.Pointer<sd_ctx_t> sd_ctx,
    sd_image_t init_image,
    int width,
    int height,
    int video_frames,
    int motion_bucket_id,
    int fps,
    double augmentation_level,
    double min_cfg,
    double cfg_scale,
    sample_method_t sample_method,
    int sample_steps,
    double strength,
    int seed,
  ) {
    return _img2vid(
      sd_ctx,
      init_image,
      width,
      height,
      video_frames,
      motion_bucket_id,
      fps,
      augmentation_level,
      min_cfg,
      cfg_scale,
      sample_method.value,
      sample_steps,
      strength,
      seed,
    );
  }

  late final _img2vidPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<sd_image_t> Function(
              ffi.Pointer<sd_ctx_t>,
              sd_image_t,
              ffi.Int,
              ffi.Int,
              ffi.Int,
              ffi.Int,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.UnsignedInt,
              ffi.Int,
              ffi.Float,
              ffi.Int64)>>('img2vid');
  late final _img2vid = _img2vidPtr.asFunction<
      ffi.Pointer<sd_image_t> Function(ffi.Pointer<sd_ctx_t>, sd_image_t, int,
          int, int, int, int, double, double, double, int, int, double, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<upscaler_ctx_t> new_upscaler_ctx(
    ffi.Pointer<ffi.Char> esrgan_path,
    int n_threads,
  ) {
    return _new_upscaler_ctx(
      esrgan_path,
      n_threads,
    );
  }

  late final _new_upscaler_ctxPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<upscaler_ctx_t> Function(
              ffi.Pointer<ffi.Char>, ffi.Int)>>('new_upscaler_ctx');
  late final _new_upscaler_ctx = _new_upscaler_ctxPtr.asFunction<
      ffi.Pointer<upscaler_ctx_t> Function(ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void free_upscaler_ctx(
    ffi.Pointer<upscaler_ctx_t> upscaler_ctx,
  ) {
    return _free_upscaler_ctx(
      upscaler_ctx,
    );
  }

  late final _free_upscaler_ctxPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<upscaler_ctx_t>)>>(
      'free_upscaler_ctx');
  late final _free_upscaler_ctx = _free_upscaler_ctxPtr
      .asFunction<void Function(ffi.Pointer<upscaler_ctx_t>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  sd_image_t upscale(
    ffi.Pointer<upscaler_ctx_t> upscaler_ctx,
    sd_image_t input_image,
    int upscale_factor,
  ) {
    return _upscale(
      upscaler_ctx,
      input_image,
      upscale_factor,
    );
  }

  late final _upscalePtr = _lookup<
      ffi.NativeFunction<
          sd_image_t Function(
              ffi.Pointer<upscaler_ctx_t>, sd_image_t, ffi.Uint32)>>('upscale');
  late final _upscale = _upscalePtr.asFunction<
      sd_image_t Function(ffi.Pointer<upscaler_ctx_t>, sd_image_t, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool convert(
    ffi.Pointer<ffi.Char> input_path,
    ffi.Pointer<ffi.Char> vae_path,
    ffi.Pointer<ffi.Char> output_path,
    sd_type_t output_type,
  ) {
    return _convert(
      input_path,
      vae_path,
      output_path,
      output_type.value,
    );
  }

  late final _convertPtr = _lookup<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>, ffi.UnsignedInt)>>('convert');
  late final _convert = _convertPtr.asFunction<
      bool Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Uint8> preprocess_canny(
    ffi.Pointer<ffi.Uint8> img,
    int width,
    int height,
    double high_threshold,
    double low_threshold,
    double weak,
    double strong,
    bool inverse,
  ) {
    return _preprocess_canny(
      img,
      width,
      height,
      high_threshold,
      low_threshold,
      weak,
      strong,
      inverse,
    );
  }

  late final _preprocess_cannyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Uint8> Function(
              ffi.Pointer<ffi.Uint8>,
              ffi.Int,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Bool)>>('preprocess_canny');
  late final _preprocess_canny = _preprocess_cannyPtr.asFunction<
      ffi.Pointer<ffi.Uint8> Function(ffi.Pointer<ffi.Uint8>, int, int, double,
          double, double, double, bool)>();
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef ptrdiff_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartptrdiff_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class max_align_t extends ffi.Opaque {}

typedef __u_char = ffi.UnsignedChar;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__u_char = int;
typedef __u_short = ffi.UnsignedShort;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__u_short = int;
typedef __u_int = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__u_int = int;
typedef __u_long = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__u_long = int;
typedef __int8_t = ffi.SignedChar;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__int8_t = int;
typedef __uint8_t = ffi.UnsignedChar;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uint8_t = int;
typedef __int16_t = ffi.Short;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__int16_t = int;
typedef __uint16_t = ffi.UnsignedShort;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uint16_t = int;
typedef __int32_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__int32_t = int;
typedef __uint32_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uint32_t = int;
typedef __int64_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__int64_t = int;
typedef __uint64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uint64_t = int;
typedef __int_least8_t = __int8_t;
typedef __uint_least8_t = __uint8_t;
typedef __int_least16_t = __int16_t;
typedef __uint_least16_t = __uint16_t;
typedef __int_least32_t = __int32_t;
typedef __uint_least32_t = __uint32_t;
typedef __int_least64_t = __int64_t;
typedef __uint_least64_t = __uint64_t;
typedef __quad_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__quad_t = int;
typedef __u_quad_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__u_quad_t = int;
typedef __intmax_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__intmax_t = int;
typedef __uintmax_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uintmax_t = int;
typedef __dev_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__dev_t = int;
typedef __uid_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__uid_t = int;
typedef __gid_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__gid_t = int;
typedef __ino_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__ino_t = int;
typedef __ino64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__ino64_t = int;
typedef __mode_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__mode_t = int;
typedef __nlink_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__nlink_t = int;
typedef __off_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__off_t = int;
typedef __off64_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__off64_t = int;
typedef __pid_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__pid_t = int;

final class __fsid_t extends ffi.Struct {
  @ffi.Array.multi([2])
  external ffi.Array<ffi.Int> __val;
}

typedef __clock_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__clock_t = int;
typedef __rlim_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__rlim_t = int;
typedef __rlim64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__rlim64_t = int;
typedef __id_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__id_t = int;
typedef __time_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__time_t = int;
typedef __useconds_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__useconds_t = int;
typedef __suseconds_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__suseconds_t = int;
typedef __suseconds64_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__suseconds64_t = int;
typedef __daddr_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__daddr_t = int;
typedef __key_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__key_t = int;
typedef __clockid_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__clockid_t = int;
typedef __timer_t = ffi.Pointer<ffi.Void>;
typedef __blksize_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__blksize_t = int;
typedef __blkcnt_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__blkcnt_t = int;
typedef __blkcnt64_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__blkcnt64_t = int;
typedef __fsblkcnt_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__fsblkcnt_t = int;
typedef __fsblkcnt64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__fsblkcnt64_t = int;
typedef __fsfilcnt_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__fsfilcnt_t = int;
typedef __fsfilcnt64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__fsfilcnt64_t = int;
typedef __fsword_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__fsword_t = int;
typedef __ssize_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__ssize_t = int;
typedef __syscall_slong_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__syscall_slong_t = int;
typedef __syscall_ulong_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__syscall_ulong_t = int;
typedef __loff_t = __off64_t;
typedef __caddr_t = ffi.Pointer<ffi.Char>;
typedef __intptr_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__intptr_t = int;
typedef __socklen_t = ffi.UnsignedInt;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__socklen_t = int;
typedef __sig_atomic_t = ffi.Int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dart__sig_atomic_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_least8_t = __int_least8_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_least16_t = __int_least16_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_least32_t = __int_least32_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_least64_t = __int_least64_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_least8_t = __uint_least8_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_least16_t = __uint_least16_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_least32_t = __uint_least32_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_least64_t = __uint_least64_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_fast8_t = ffi.SignedChar;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartint_fast8_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_fast16_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartint_fast16_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_fast32_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartint_fast32_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef int_fast64_t = ffi.Long;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartint_fast64_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_fast8_t = ffi.UnsignedChar;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartuint_fast8_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_fast16_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartuint_fast16_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_fast32_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartuint_fast32_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uint_fast64_t = ffi.UnsignedLong;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartuint_fast64_t = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef intmax_t = __intmax_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef uintmax_t = __uintmax_t;

final class __locale_data extends ffi.Opaque {}

final class __locale_struct extends ffi.Struct {
  @ffi.Array.multi([13])
  external ffi.Array<ffi.Pointer<__locale_data>> __locales;

  external ffi.Pointer<ffi.UnsignedShort> __ctype_b;

  external ffi.Pointer<ffi.Int> __ctype_tolower;

  external ffi.Pointer<ffi.Int> __ctype_toupper;

  @ffi.Array.multi([13])
  external ffi.Array<ffi.Pointer<ffi.Char>> __names;
}

typedef __locale_t = ffi.Pointer<__locale_struct>;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef locale_t = __locale_t;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum rng_type_t {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  STD_DEFAULT_RNG(0),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CUDA_RNG(1);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final int value;
  const rng_type_t(this.value);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static rng_type_t fromValue(int value) => switch (value) {
        0 => STD_DEFAULT_RNG,
        1 => CUDA_RNG,
        _ => throw ArgumentError("Unknown value for rng_type_t: $value"),
      };
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum sample_method_t {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  EULER_A(0),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  EULER(1),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HEUN(2),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DPM2(3),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DPMPP2S_A(4),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DPMPP2M(5),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DPMPP2Mv2(6),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  IPNDM(7),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  IPNDM_V(8),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  LCM(9),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DDIM_TRAILING(10),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TCD(11),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  N_SAMPLE_METHODS(12);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final int value;
  const sample_method_t(this.value);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static sample_method_t fromValue(int value) => switch (value) {
        0 => EULER_A,
        1 => EULER,
        2 => HEUN,
        3 => DPM2,
        4 => DPMPP2S_A,
        5 => DPMPP2M,
        6 => DPMPP2Mv2,
        7 => IPNDM,
        8 => IPNDM_V,
        9 => LCM,
        10 => DDIM_TRAILING,
        11 => TCD,
        12 => N_SAMPLE_METHODS,
        _ => throw ArgumentError("Unknown value for sample_method_t: $value"),
      };
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum schedule_t {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DEFAULT(0),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DISCRETE(1),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  KARRAS(2),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  EXPONENTIAL(3),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  AYS(4),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  GITS(5),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  N_SCHEDULES(6);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final int value;
  const schedule_t(this.value);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static schedule_t fromValue(int value) => switch (value) {
        0 => DEFAULT,
        1 => DISCRETE,
        2 => KARRAS,
        3 => EXPONENTIAL,
        4 => AYS,
        5 => GITS,
        6 => N_SCHEDULES,
        _ => throw ArgumentError("Unknown value for schedule_t: $value"),
      };
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum sd_type_t {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_F32(0),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_F16(1),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q4_0(2),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q4_1(3),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q5_0(6),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q5_1(7),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q8_0(8),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q8_1(9),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q2_K(10),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q3_K(11),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q4_K(12),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q5_K(13),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q6_K(14),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_Q8_K(15),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ2_XXS(16),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ2_XS(17),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ3_XXS(18),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ1_S(19),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ4_NL(20),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ3_S(21),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ2_S(22),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ4_XS(23),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_I8(24),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_I16(25),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_I32(26),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_I64(27),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_F64(28),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_IQ1_M(29),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_BF16(30),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_TQ1_0(34),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_TQ2_0(35),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_TYPE_COUNT(39);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final int value;
  const sd_type_t(this.value);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static sd_type_t fromValue(int value) => switch (value) {
        0 => SD_TYPE_F32,
        1 => SD_TYPE_F16,
        2 => SD_TYPE_Q4_0,
        3 => SD_TYPE_Q4_1,
        6 => SD_TYPE_Q5_0,
        7 => SD_TYPE_Q5_1,
        8 => SD_TYPE_Q8_0,
        9 => SD_TYPE_Q8_1,
        10 => SD_TYPE_Q2_K,
        11 => SD_TYPE_Q3_K,
        12 => SD_TYPE_Q4_K,
        13 => SD_TYPE_Q5_K,
        14 => SD_TYPE_Q6_K,
        15 => SD_TYPE_Q8_K,
        16 => SD_TYPE_IQ2_XXS,
        17 => SD_TYPE_IQ2_XS,
        18 => SD_TYPE_IQ3_XXS,
        19 => SD_TYPE_IQ1_S,
        20 => SD_TYPE_IQ4_NL,
        21 => SD_TYPE_IQ3_S,
        22 => SD_TYPE_IQ2_S,
        23 => SD_TYPE_IQ4_XS,
        24 => SD_TYPE_I8,
        25 => SD_TYPE_I16,
        26 => SD_TYPE_I32,
        27 => SD_TYPE_I64,
        28 => SD_TYPE_F64,
        29 => SD_TYPE_IQ1_M,
        30 => SD_TYPE_BF16,
        34 => SD_TYPE_TQ1_0,
        35 => SD_TYPE_TQ2_0,
        39 => SD_TYPE_COUNT,
        _ => throw ArgumentError("Unknown value for sd_type_t: $value"),
      };
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum sd_log_level_t {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_LOG_DEBUG(0),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_LOG_INFO(1),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_LOG_WARN(2),

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SD_LOG_ERROR(3);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final int value;
  const sd_log_level_t(this.value);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static sd_log_level_t fromValue(int value) => switch (value) {
        0 => SD_LOG_DEBUG,
        1 => SD_LOG_INFO,
        2 => SD_LOG_WARN,
        3 => SD_LOG_ERROR,
        _ => throw ArgumentError("Unknown value for sd_log_level_t: $value"),
      };
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef sd_log_cb_tFunction = ffi.Void Function(ffi.UnsignedInt level,
    ffi.Pointer<ffi.Char> text, ffi.Pointer<ffi.Void> data);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartsd_log_cb_tFunction = void Function(sd_log_level_t level,
    ffi.Pointer<ffi.Char> text, ffi.Pointer<ffi.Void> data);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef sd_log_cb_t = ffi.Pointer<ffi.NativeFunction<sd_log_cb_tFunction>>;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef sd_progress_cb_tFunction = ffi.Void Function(
    ffi.Int step, ffi.Int steps, ffi.Float time, ffi.Pointer<ffi.Void> data);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef Dartsd_progress_cb_tFunction = void Function(
    int step, int steps, double time, ffi.Pointer<ffi.Void> data);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef sd_progress_cb_t
    = ffi.Pointer<ffi.NativeFunction<sd_progress_cb_tFunction>>;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class sd_image_t extends ffi.Struct {
  @ffi.Uint32()

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external int width;

  @ffi.Uint32()

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external int height;

  @ffi.Uint32()

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external int channel;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external ffi.Pointer<ffi.Uint8> data;
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class sd_ctx_t extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class upscaler_ctx_t extends ffi.Opaque {}

const int __bool_true_false_are_defined = 1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int true1 = 1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int false1 = 0;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int NULL = 0;

const int _STDINT_H = 1;

const int _FEATURES_H = 1;

const int _DEFAULT_SOURCE = 1;

const int __GLIBC_USE_ISOC23 = 1;

const int __USE_ISOC11 = 1;

const int __USE_ISOC99 = 1;

const int __USE_ISOC95 = 1;

const int _POSIX_SOURCE = 1;

const int _POSIX_C_SOURCE = 200809;

const int __USE_POSIX = 1;

const int __USE_POSIX2 = 1;

const int __USE_POSIX199309 = 1;

const int __USE_POSIX199506 = 1;

const int __USE_XOPEN2K = 1;

const int __USE_XOPEN2K8 = 1;

const int _ATFILE_SOURCE = 1;

const int __WORDSIZE = 64;

const int __WORDSIZE_TIME64_COMPAT32 = 1;

const int __SYSCALL_WORDSIZE = 64;

const int __TIMESIZE = 64;

const int __USE_TIME_BITS64 = 1;

const int __USE_MISC = 1;

const int __USE_ATFILE = 1;

const int __USE_FORTIFY_LEVEL = 0;

const int __GLIBC_USE_DEPRECATED_GETS = 0;

const int __GLIBC_USE_DEPRECATED_SCANF = 0;

const int __GLIBC_USE_C23_STRTOL = 1;

const int _STDC_PREDEF_H = 1;

const int __STDC_IEC_559__ = 1;

const int __STDC_IEC_60559_BFP__ = 201404;

const int __STDC_IEC_559_COMPLEX__ = 1;

const int __STDC_IEC_60559_COMPLEX__ = 201404;

const int __STDC_ISO_10646__ = 201706;

const int __GNU_LIBRARY__ = 6;

const int __GLIBC__ = 2;

const int __GLIBC_MINOR__ = 40;

const int _SYS_CDEFS_H = 1;

const int __THROW = 1;

const int __THROWNL = 1;

const int __glibc_c99_flexarr_available = 1;

const int __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0;

const int __HAVE_GENERIC_SELECTION = 0;

const int __GLIBC_USE_LIB_EXT2 = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT_C23 = 1;

const int __GLIBC_USE_IEC_60559_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = 1;

const int __GLIBC_USE_IEC_60559_TYPES_EXT = 1;

const int _BITS_TYPES_H = 1;

const int _BITS_TYPESIZES_H = 1;

const int __OFF_T_MATCHES_OFF64_T = 1;

const int __INO_T_MATCHES_INO64_T = 1;

const int __RLIM_T_MATCHES_RLIM64_T = 1;

const int __STATFS_MATCHES_STATFS64 = 1;

const int __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1;

const int __FD_SETSIZE = 1024;

const int _BITS_TIME64_H = 1;

const int _BITS_WCHAR_H = 1;

const int __WCHAR_MAX = 2147483647;

const int __WCHAR_MIN = -2147483648;

const int _BITS_STDINT_INTN_H = 1;

const int _BITS_STDINT_UINTN_H = 1;

const int _BITS_STDINT_LEAST_H = 1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT8_MIN = -128;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT16_MIN = -32768;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT32_MIN = -2147483648;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT64_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT8_MAX = 127;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT16_MAX = 32767;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT32_MAX = 2147483647;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT64_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT8_MAX = 255;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT16_MAX = 65535;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT32_MAX = 4294967295;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT64_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST8_MIN = -128;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST16_MIN = -32768;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST32_MIN = -2147483648;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST64_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST8_MAX = 127;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST16_MAX = 32767;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST32_MAX = 2147483647;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_LEAST64_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_LEAST8_MAX = 255;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_LEAST16_MAX = 65535;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_LEAST32_MAX = 4294967295;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_LEAST64_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST8_MIN = -128;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST16_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST32_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST64_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST8_MAX = 127;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST16_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST32_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INT_FAST64_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_FAST8_MAX = 255;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_FAST16_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_FAST32_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINT_FAST64_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INTPTR_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INTPTR_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINTPTR_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INTMAX_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int INTMAX_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int UINTMAX_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int PTRDIFF_MIN = -9223372036854775808;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int PTRDIFF_MAX = 9223372036854775807;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int SIG_ATOMIC_MIN = -2147483648;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int SIG_ATOMIC_MAX = 2147483647;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int SIZE_MAX = -1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int WCHAR_MIN = -2147483648;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int WCHAR_MAX = 2147483647;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int WINT_MIN = 0;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int WINT_MAX = 4294967295;

const int _STRING_H = 1;

const int _BITS_TYPES_LOCALE_T_H = 1;

const int _BITS_TYPES___LOCALE_T_H = 1;

const int _STRINGS_H = 1;
