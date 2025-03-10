import 'default.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final List<Map<String, dynamic>> stableDiffusionLibraryApiSchemes = () {
  return <Map<String, dynamic>>[
    {
      "@type": "send${StableDiffusionLibrarySchemeDefaultData.namespace}Message",
      "text": "",
      "is_stream": false,
    },
    {
      "@type": "load${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}ModelFromFile${StableDiffusionLibrarySchemeDefaultData.namespace}",
      "model_file_path": "",
      'lora_path': "",
      'taesd_path': "",
      'use_tiny_autoencoder': false,
      'use_flash_attention': false,
      'model_type': 0,
      'schedule': 0,
      'clip_l_path': "",
      'clip_g_path': "",
      't5xxl_path': "",
      'vae_path': "",
      'embed_dir_path': "",
      'stacked_id_embed_dir': "",
      'clip_skip': 0,
      'vae_tiling': false,
      'control_net_path': "", // Add this
    },
    {
      "@type": "textToImage${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}ModelFromFile${StableDiffusionLibrarySchemeDefaultData.namespace}",

      'prompt': "",
      'negative_prompt': "",
      'clip_skip': 1,
      'cfg_scale': 7.0.toDouble(),
      'guidance': 1.0.toDouble(),
      'width': 512,
      'height': 512,
      'sample_method': 0,
      'sample_steps': 20,
      'seed': 42,
      'batch_count': 1,
      'input_id_images_path': "",
      'style_strength': 1.0.toDouble(),
      'control_image_data': [0], // Add this
      'control_image_width': 0, // Add this
      'control_image_height': 0, // Add this // Add this
      'control_strength': 0.9.toDouble(), // Add this
    },
  ];
}();
