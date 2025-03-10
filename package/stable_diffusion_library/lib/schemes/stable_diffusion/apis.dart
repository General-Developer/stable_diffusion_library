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
import 'default.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final List<Map<String, dynamic>> stableDiffusionLibraryApiSchemes = () {
  return <Map<String, dynamic>>[
    {
      "@type":
          "send${StableDiffusionLibrarySchemeDefaultData.namespace}Message",
      "text": "",
      "is_stream": false,
    },
    {
      "@type":
          "load${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}ModelFromFile${StableDiffusionLibrarySchemeDefaultData.namespace}",
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
      "@type":
          "textToImage${StableDiffusionLibrarySchemeDefaultData.namespaceStableDiffusion}ModelFromFile${StableDiffusionLibrarySchemeDefaultData.namespace}",

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
