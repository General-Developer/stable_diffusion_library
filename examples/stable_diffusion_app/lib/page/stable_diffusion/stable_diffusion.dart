// ignore_for_file: public_member_api_docs, use_build_context_synchronously, empty_catches, unnecessary_brace_in_string_interps

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

import 'package:general_framework/flutter/image/image_core.dart';
import 'package:stable_diffusion_app/core/core.dart';
import 'package:stable_diffusion_app/scheme/scheme/application_stable_diffusion_library_database.dart';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/alert/core.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import "package:path/path.dart" as path;

class StableDiffusionPage extends StatefulWidget {
  const StableDiffusionPage({
    super.key,
  });

  @override
  State<StableDiffusionPage> createState() => _SpeechToTextPageState();
}

class _SpeechToTextPageState extends State<StableDiffusionPage> with GeneralLibFlutterStatefulWidget {
  final TextEditingController textEditingController = TextEditingController(
    text: "Cat With Blue eye",
  );
  @override
  void initState() {
    //  initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ensureInitialized();
      await initialized();
      await refresh();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> initialized() async {
    setState(() {
      isLoading = true;
    });
    await Future(() async {
      final ApplicationStableDiffusionLibraryDatabase applicationStableDiffusionLibraryDatabase = getApplicationStableDiffusionLibraryDatabase();

      updateModel(
        stableDiffusionModel: File(applicationStableDiffusionLibraryDatabase.stable_diffusion_model_path ?? ""),
      );
    });
    setState(() {
      isLoading = false;
    });
  }

  int modelSize = 0;
  String modelName = "";

  void updateModel({
    required File stableDiffusionModel,
  }) {
    setState(() {
      modelSize = stableDiffusionModel.statSync().size;
      modelName = path.basename(stableDiffusionModel.path);
    });
    return;
  }

  @override
  Future<void> refresh() async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    await Future(() async {});
    setState(() {
      isLoading = false;
    });
  }

  final File fileStableDiffusionGenerated = () {
    return File(
      path.join(StableDiffusionAppClientFlutter.generalFrameworkClientFlutterAppDirectory.app_support_directory.path, "output.jpg"),
    );
  }();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: appBarGlobalKey,
        title: Text(
          "Stable Diffusion Library - General Developer",
          style: context.theme.textTheme.titleLarge,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: context.height, minWidth: context.width),
            child: Column(
              children: [
                MenuContainerResponsiveGeneralFrameworkWidget(
                  isLoading: isLoading,
                  decorationBuilder: (context, decoration) {
                    return decoration.copyWith(
                      borderRadius: BorderRadius.circular(15),
                    );
                  },
                  titleBuilder: (context) {
                    return MenuContainerGeneralFrameworkWidget.title(
                      context: context,
                      title: "Information",
                    );
                  },
                  menuBuilder: (context) {
                    return [
                      MenuContainerGeneralFrameworkWidget.lisTile(
                        context: context,
                        contentPadding: EdgeInsets.all(5),
                        title: "Support",
                        trailing: Icon(
                          (StableDiffusionAppClientFlutter.stableDiffusionLibrary.isDeviceSupport() == true) ? Icons.verified : Icons.close,
                        ),
                      ),
                      MenuContainerGeneralFrameworkWidget.lisTile(
                        context: context,
                        contentPadding: EdgeInsets.all(5),
                        title: "Model",
                        subtitle: [
                          "- Model Name: ${modelName}",
                          "- Model Size: ${FileSize.filesize(
                            size: modelSize,
                          )}",
                        ].join("\n"),
                        trailing: IconButton(
                          onPressed: () {
                            handleFunction(
                              onFunction: (context, statefulWidget) async {
                                final file = await StableDiffusionAppClientFlutter.pickFile(
                                  dialogTitle: "Stable Diffusion Model",
                                );
                                if (file == null) {
                                  context.showAlertGeneralFramework(
                                    alertGeneralFrameworkOptions: AlertGeneralFrameworkOptions(
                                      title: "Failed Load Model Stable Diffusion",
                                      builder: (context, alertGeneralFrameworkOptions) {
                                        return "Coba lagi";
                                      },
                                    ),
                                  );
                                  return;
                                }

                                /// save to application settings
                                {
                                  final ApplicationStableDiffusionLibraryDatabase applicationStableDiffusionLibraryDatabase = getApplicationStableDiffusionLibraryDatabase();
                                  applicationStableDiffusionLibraryDatabase.stable_diffusion_model_path = file.path;
                                  saveApplicationStableDiffusionLibraryDatabase();
                                  updateModel(stableDiffusionModel: File(applicationStableDiffusionLibraryDatabase.stable_diffusion_model_path ?? ""));
                                }
                              },
                            );
                          },
                          icon: Icon(Icons.create),
                        ),
                      ),
                    ];
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormFieldGeneralFrameworkWidget(
                    controller: textEditingController,
                    minLines: 1,
                    maxLines: 10,
                    inputDecorationBuilder: (context, inputDecoration) {
                      return InputDecoration(
                        labelText: "Prompt",
                        border: inputDecoration.border,
                        errorBorder: inputDecoration.errorBorder,
                        enabledBorder: inputDecoration.enabledBorder,
                        focusedBorder: inputDecoration.focusedBorder,
                        disabledBorder: inputDecoration.disabledBorder,
                        focusedErrorBorder: inputDecoration.focusedErrorBorder,
                      );
                    },
                    onChanged: (value) {},
                  ),
                ),
                ButtonContainerMaterialGeneralFrameworkWidget(
                  width: context.width,
                  margin: EdgeInsets.all(5),
                  decorationBuilder: (context, decoration) {
                    return decoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      border: context.extensionGeneralLibFlutterBorderAll(),
                      boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                    );
                  },
                  onPressed: () {
                    handleFunction(
                      onFunction: (context, statefulWidget) async {},
                    );
                  },
                  builder: (context) {
                    return Text(
                      "Generate",
                      style: context.theme.textTheme.bodyMedium,
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: context.width,
                  height: 512,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: ImageGeneralUiGeneralFramework.decorationImageOrNull(
                      pathImage: fileStableDiffusionGenerated,
                      imageGeneralUiOptions: ImageGeneralUiGeneralFrameworkOptions(
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.mediaQueryData.padding.bottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
