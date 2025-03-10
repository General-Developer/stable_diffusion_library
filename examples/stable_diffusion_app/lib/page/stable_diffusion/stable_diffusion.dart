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

import 'package:general_framework/flutter/fork/skeletonizer/lib/src/widgets/skeletonizer.dart';
import 'package:stable_diffusion_app/core/core.dart';
import 'package:stable_diffusion_app/scheme/scheme/application_stable_diffusion_library_database.dart';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/alert/core.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import "package:path/path.dart" as path;
import 'package:stable_diffusion_library/flutter/flutter.dart';
import 'package:stable_diffusion_library/scheme/scheme/api/api.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/update_stable_diffusion_generated_image_stable_diffusion_library.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/update_stable_diffusion_log_message_stable_diffusion_library.dart';
import 'package:stable_diffusion_library/scheme/scheme/respond/update_stable_diffusion_progress_stable_diffusion_library.dart';
import 'package:stable_diffusion_library/stable_diffusion_library.dart';

class StableDiffusionPage extends StatefulWidget {
  const StableDiffusionPage({
    super.key,
  });

  @override
  State<StableDiffusionPage> createState() => _SpeechToTextPageState();
}

class _SpeechToTextPageState extends State<StableDiffusionPage> with GeneralLibFlutterStatefulWidget {
  final TextEditingController promptTextEditingController = TextEditingController(
    text: "Cat With Blue eye",
  );
  final TextEditingController negativePromptTextEditingController = TextEditingController(
    text: "",
  );

  late final EventEmitterListener emitterListener;

  final LoadStableDiffusionModelFromFileStableDiffusionLibrary loadStableDiffusionModelFromFileStableDiffusionLibrary = LoadStableDiffusionModelFromFileStableDiffusionLibrary.create(
    // this.loraPath,
    // this.taesdPath,
    // this.useTinyAutoencoder = false,
    // this.onModelLoaded,
    // this.clipLPath,
    // this.clipGPath,
    // this.t5xxlPath,
    // this.vaePath,
    // this.embedDirPath,
    // this.stackedIdEmbedDir,
    // this.clipSkip = 1,
    // this.vaeTiling = false,
    // this.controlNetPath, // Add this
    // this.controlImageData, // Add this
    // this.controlImageWidth, // Add this
    // this.controlImageHeight, // Add this
    // this.controlStrength = 0.9, // Add this
    model_type: 0,
    schedule: 0,
    use_flash_attention: false,
    clip_skip: 1,
    use_tiny_autoencoder: false,
  );

  final TextToImageStableDiffusionModelFromFileStableDiffusionLibrary textToImageStableDiffusionModelFromFileStableDiffusionLibrary = TextToImageStableDiffusionModelFromFileStableDiffusionLibrary.create(
    prompt: "",
    negative_prompt: "",
    clip_skip: 1,
    cfg_scale: 7.0,
    guidance: 1.0,
    width: 512,
    height: 512,
    sample_method: SampleMethod.values.indexWhere(
      (e) => e == SampleMethod.EULER_A,
    ),
    sample_steps: 25,
    seed: -1,
    batch_count: 1,
    style_strength: 1.0,
    control_strength: 0.9,
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
    try {
      emitterListener.dispose();
    } catch (e) {}
    super.dispose();
  }

  Future<void> initialized() async {
    setState(() {
      isLoading = true;
    });
    await Future(() async {
      StableDiffusionAppClientFlutter.stableDiffusionLibrary.on(
        eventType: StableDiffusionAppClientFlutter.stableDiffusionLibrary.eventUpdate,
        onUpdate: (updateStableDiffusionLibrary) async {
          try {
            await onUpdateStableDiffusionLibraryData(updateStableDiffusionLibrary);
          } catch (e) {
            print("error: ${e}");
          }
        },
      );

      final ApplicationStableDiffusionLibraryDatabase applicationStableDiffusionLibraryDatabase = getApplicationStableDiffusionLibraryDatabase();

      updateModel(
        stableDiffusionModel: File(applicationStableDiffusionLibraryDatabase.stable_diffusion_model_path ?? ""),
      );
    });
    setState(() {
      isLoading = false;
    });
  }

  double progress = 0.0;
  String status = "";
  String ramUsage = "";

  Future<void> onUpdateStableDiffusionLibraryData(UpdateStableDiffusionLibraryData updateStableDiffusionLibrary) async {
    final update = updateStableDiffusionLibrary.update;
    if (update is UpdateStableDiffusionLogMessageStableDiffusionLibrary) {
      if ((update.message ?? "").contains('total params memory size')) {
        final regex = RegExp(r'total params memory size = ([\d.]+)MB');
        final match = regex.firstMatch(update.message ?? "");
        if (match != null) {
          setState(() {
            ramUsage = 'Total RAM: ${match.group(1)}MB';
          });
        }
      }
    }
    if (update is UpdateStableDiffusionProgressStableDiffusionLibrary) {
      setState(() {
        progress = update.progress ?? 0;

        status = '${(isLoadedModel) ? "Generating image" : "Load Models"}... ${((update.progress ?? 0) * 100).toInt()}% • Step ${update.step}/${update.steps} • ${(update.time ?? 0).toStringAsFixed(1)}s';
      });
    }
  }

  bool isLoadedModel = false;

  int modelSize = 0;
  String modelName = "";

  void updateModel({
    required File stableDiffusionModel,
  }) {
    setState(() {
      modelSize = stableDiffusionModel.statSync().size;
      modelName = path.basename(stableDiffusionModel.path);
      loadStableDiffusionModelFromFileStableDiffusionLibrary.model_file_path = stableDiffusionModel.path;
      isLoadedModel = false;
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

  Image? generatedImage;

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
            constraints: BoxConstraints(
              minHeight: context.height,
              minWidth: context.width,
            ),
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
                          (StableDiffusionAppClientFlutter.stableDiffusionLibrary.isDeviceSupportSync() == true) ? Icons.verified : Icons.close,
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
                if (ramUsage.isNotEmpty) ...[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      ramUsage,
                      style: context.theme.textTheme.bodySmall,
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: context.theme.colorScheme.surface,
                  color: context.theme.colorScheme.primary,
                ),
                const SizedBox(height: 8),
                Text(
                  status,
                  style: context.theme.textTheme.bodySmall,
                ),
                ButtonContainerMaterialGeneralFrameworkWidget(
                  width: context.width,
                  margin: EdgeInsets.all(5),
                  isLoading: isLoading,
                  decorationBuilder: (context, decoration) {
                    return decoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      border: context.extensionGeneralLibFlutterBorderAll(),
                      boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                    );
                  },
                  onPressed: () {
                    handleFunction(
                      onFunction: (context, statefulWidget) async {
                        setState(() {
                          isLoading = true;
                          isLoadedModel = false;
                        });
                        try {
                          final result = await StableDiffusionAppClientFlutter.stableDiffusionLibrary.invoke(
                            invokeParameters: loadStableDiffusionModelFromFileStableDiffusionLibrary,
                            invokeOptions: null,
                          );
                          result.rawData.printPretty();
                          setState(() {
                            isLoadedModel = true;
                          });
                        } catch (e) {}
                        setState(() {
                          isLoading = false;
                        });
                      },
                    );
                  },
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        (isLoadedModel) ? "Reload Moddel" : "Load Model",
                        style: context.theme.textTheme.bodyMedium,
                      ),
                    );
                  },
                ),
                if (isLoadedModel) ...[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormFieldGeneralFrameworkWidget(
                      controller: promptTextEditingController,
                      minLines: 1,
                      maxLines: 10,
                      inputDecorationBuilder: (context, inputDecoration) {
                        return InputDecoration(
                          labelText: "Prompt",
                          enabled: !isLoading,
                          border: inputDecoration.border,
                          errorBorder: inputDecoration.errorBorder,
                          enabledBorder: inputDecoration.enabledBorder,
                          focusedBorder: inputDecoration.focusedBorder,
                          disabledBorder: inputDecoration.disabledBorder,
                          focusedErrorBorder: inputDecoration.focusedErrorBorder,
                        );
                      },
                      onChanged: (value) {
                        textToImageStableDiffusionModelFromFileStableDiffusionLibrary.prompt = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormFieldGeneralFrameworkWidget(
                      controller: negativePromptTextEditingController,
                      minLines: 1,
                      maxLines: 10,
                      inputDecorationBuilder: (context, inputDecoration) {
                        return InputDecoration(
                          labelText: "Negative Prompt",
                          enabled: !isLoading,
                          border: inputDecoration.border,
                          errorBorder: inputDecoration.errorBorder,
                          enabledBorder: inputDecoration.enabledBorder,
                          focusedBorder: inputDecoration.focusedBorder,
                          disabledBorder: inputDecoration.disabledBorder,
                          focusedErrorBorder: inputDecoration.focusedErrorBorder,
                        );
                      },
                      onChanged: (value) {
                        textToImageStableDiffusionModelFromFileStableDiffusionLibrary.negative_prompt = value;
                      },
                    ),
                  ),
                  SkeletonizerGeneralFramework(
                    enabled: isLoading,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Text(
                            "Cfg Scale",
                            style: context.theme.textTheme.bodyMedium,
                          ),
                          Expanded(
                            child: Slider(
                              value: () {
                                final value = (textToImageStableDiffusionModelFromFileStableDiffusionLibrary.cfg_scale ?? 0).toDouble();
                                if (value < 1) {
                                  return 1;
                                }
                                return value;
                              }()
                                  .toDouble(),
                              min: 1,
                              max: 50,
                              divisions: 49,
                              onChanged: (value) {
                                setState(() {
                                  textToImageStableDiffusionModelFromFileStableDiffusionLibrary.cfg_scale = value;
                                });
                              },
                            ),
                          ),
                          Text(
                            "${(textToImageStableDiffusionModelFromFileStableDiffusionLibrary.cfg_scale ?? 0).toStringAsFixed(1)}",
                            style: context.theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SkeletonizerGeneralFramework(
                    enabled: isLoading,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Text(
                            "Sample Steps",
                            style: context.theme.textTheme.bodyMedium,
                          ),
                          Expanded(
                            child: Slider(
                              value: () {
                                final value = (textToImageStableDiffusionModelFromFileStableDiffusionLibrary.sample_steps ?? 0).toDouble();
                                if (value < 1) {
                                  return 1;
                                }
                                return value;
                              }()
                                  .toDouble(),
                              min: 1,
                              max: 50,
                              divisions: 49,
                              onChanged: (value) {
                                setState(() {
                                  textToImageStableDiffusionModelFromFileStableDiffusionLibrary.sample_steps = value;
                                });
                              },
                            ),
                          ),
                          Text(
                            "${(textToImageStableDiffusionModelFromFileStableDiffusionLibrary.sample_steps ?? 0).toStringAsFixed(0)}",
                            style: context.theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SkeletonizerGeneralFramework(
                    enabled: isLoading,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: PopupMenuButton(
                        position: PopupMenuPosition.under,
                        itemBuilder: (context) {
                          return SampleMethod.values.map((SampleMethod sampleMethod) {
                            return PopupMenuItem(
                              onTap: () {
                                handleFunction(
                                  onFunction: (context, statefulWidget) {
                                    setState(() {
                                      textToImageStableDiffusionModelFromFileStableDiffusionLibrary.sample_method = SampleMethod.values.indexWhere((e) => e == sampleMethod);
                                    });
                                  },
                                );
                              },
                              child: Text(
                                sampleMethod.displayName,
                                style: context.theme.textTheme.bodySmall,
                              ),
                            );
                          }).toList();
                        },
                        child: ButtonContainerMaterialGeneralFrameworkWidget(
                          width: context.width,
                          decorationBuilder: (context, decoration) {
                            return decoration.copyWith(
                              borderRadius: BorderRadius.circular(10),
                              border: context.extensionGeneralLibFlutterBorderAll(),
                              boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                            );
                          },
                          builder: (context) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: context.theme.indicatorColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Sample Method ${SampleMethod.values[(textToImageStableDiffusionModelFromFileStableDiffusionLibrary.sample_method ?? 0).toInt()].displayName}",
                                  style: context.theme.textTheme.bodyMedium,
                                ),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: context.theme.indicatorColor,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SkeletonizerGeneralFramework(
                    enabled: isLoading,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: PopupMenuButton(
                        position: PopupMenuPosition.under,
                        itemBuilder: (context) {
                          List<int> sizesOptions = [];
                          for (int i = 128; i <= 4080; i += 64) {
                            sizesOptions.add(i);
                          }
                          return sizesOptions.map((e) {
                            return PopupMenuItem(
                              onTap: () {
                                handleFunction(
                                  onFunction: (context, statefulWidget) {
                                    setState(() {
                                      textToImageStableDiffusionModelFromFileStableDiffusionLibrary.width = e;
                                      textToImageStableDiffusionModelFromFileStableDiffusionLibrary.height = e;
                                    });
                                  },
                                );
                              },
                              child: Text(
                                "Size: ${e} W  * ${e} H",
                                style: context.theme.textTheme.bodySmall,
                              ),
                            );
                          }).toList();
                        },
                        child: ButtonContainerMaterialGeneralFrameworkWidget(
                          width: context.width,
                          decorationBuilder: (context, decoration) {
                            return decoration.copyWith(
                              borderRadius: BorderRadius.circular(10),
                              border: context.extensionGeneralLibFlutterBorderAll(),
                              boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                            );
                          },
                          builder: (context) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: context.theme.indicatorColor,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.calculate,
                                        color: context.theme.indicatorColor,
                                      ),
                                    ),
                                    Text(
                                      "Size: ${textToImageStableDiffusionModelFromFileStableDiffusionLibrary.width} W  * ${textToImageStableDiffusionModelFromFileStableDiffusionLibrary.height} H",
                                      style: context.theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: context.theme.indicatorColor,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  ButtonContainerMaterialGeneralFrameworkWidget(
                    width: context.width,
                    isLoading: isLoading,
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
                        onFunction: (context, statefulWidget) async {
                          textToImageStableDiffusionModelFromFileStableDiffusionLibrary.prompt = promptTextEditingController.text;
                          textToImageStableDiffusionModelFromFileStableDiffusionLibrary.negative_prompt = negativePromptTextEditingController.text;
                          setState(() {
                            isLoading = true;
                            generatedImage = null;
                          });
                          try {
                            final result = await StableDiffusionAppClientFlutter.stableDiffusionLibrary.invoke(
                              invokeParameters: textToImageStableDiffusionModelFromFileStableDiffusionLibrary,
                              invokeOptions: null,
                            );
                            if (result is UpdateStableDiffusionGeneratedImageStableDiffusionLibrary && result["@type"] != "error") {
                              final imageBytes = await result.toFlutter();
                              if (imageBytes != null) {
                                setState(() {
                                  generatedImage = Image.memory(imageBytes);
                                });
                              }
                            }
                          } catch (e) {}
                          setState(() {
                            isLoading = false;
                          });
                        },
                      );
                    },
                    builder: (context) {
                      return Text(
                        "Generate",
                        style: context.theme.textTheme.bodyMedium,
                      );
                    },
                  ),
                  if (generatedImage != null) ...[
                    generatedImage!,
                  ],
                ],
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
