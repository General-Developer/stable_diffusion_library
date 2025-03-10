import 'default.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final List<Map<String, dynamic>> stableDiffusionLibraryRespondSchemes = () {
  return <Map<String, dynamic>>[
    {
      "@type":
          "update${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}LogMessage${StableDiffusionLibrarySchemeDefaultData.namespace}",
      "level": 0,
      "message": "",
      "seed": 0,
      "@extra": "",
    },
    {
      "@type":
          "update${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}Progress${StableDiffusionLibrarySchemeDefaultData.namespace}",
      "is_done": false,
      'step': 0,
      'steps': 0,
      'time': 0.0.toDouble(),
      'progress': 0.0.toDouble(),
      "@extra": "",
    },
    {
      "@type":
          "update${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}GeneratedImage${StableDiffusionLibrarySchemeDefaultData.namespace}",
      "is_done": false,
      "image_rgba_bytes": <int>[0],
      "width": 0,
      "height": 0,
      "@extra": "",
    },
    {
      "@type": "ok",
      "@extra": "",
    },
    {
      "@type": "error",
      "message": "",
      "description": "",
      "@extra": "",
    },
  ];
}();
