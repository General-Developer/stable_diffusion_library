# Stable Diffusion Library
 
**Stable Diffusion Library** Stable Diffusion Is Library for generated text to Image

[![](https://raw.githubusercontent.com/General-Developer/stable_diffusion_library/refs/heads/main/assets/demo_background.png)](https://youtu.be/drlqUwJEOg4)

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**

## 📚️ Docs

1. [Documentation](https://youtube.com/@GENERAL_DEV)
2. [Youtube](https://youtube.com/@GENERAL_DEV)
3. [Telegram Support Group](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
4. [Contact Developer](https://github.com/General-Developer) (check social media or readme profile github)

## 🔖️ Features

1. [x] 📱️ **Cross Platform** support (Device, Edge Severless functions)
2. [x] 📜️ **Standarization** Style Code
3. [x] ⌨️ **Cli** (Terminal for help you use this library or create project)
4. [x] 🔥️ **Api** (If you developer bot / userbot you can use this library without interact cli just add library and use 🚀️)
5. [x] 🧩️ **Customizable Extension** (if you want add extension so you can more speed up on development)
6. [x] ✨️ **Pretty Information** (user friendly for newbie)
 
## ❔️ Fun Fact

- **This library 100%** use on every my create project (**App, Server, Bot, Userbot**)

- **This library 100%** support all models from [stable-diffusion.cpp](https://github.com/leejet/stable-diffusion.cpp) (depending on your device specs, if high then it can be up to turbo, but if low, just choose tiny/small)
 
## 📈️ Proggres
 
- **10-02-2025**
  Starting **Release Stable** With core Features

## Resources

1. [MODEL](https://huggingface.co/ggml-org/Meta-Llama-3.1-8B-Instruct-Q4_0-GGUF)

### 📥️ Install Library

1. **Dart**

```bash
dart pub add stable_diffusion_library
```

2. **Flutter**

```bash
flutter pub add stable_diffusion_library_flutter
```

## 🚀️ Quick Start

Example Quickstart script minimal for insight you or make you use this library because very simple

```dart
import 'dart:io';
import 'package:stable_diffusion_library/stable_diffusion_library.dart'; 

void main(List<String> args) async {
  print("start");

  File modelFile = File(
    "../../../../../big-data/stable-diffusion/model.ckpt",
  );

  final StableDiffusionLibrary stableDiffusionLibrary = StableDiffusionLibrary(
    sharedLibraryPath: "../stable_diffusion_library_flutter/linux/libstable_diffusion_library.so",
  );
  await stableDiffusionLibrary.ensureInitialized();
  await stableDiffusionLibrary.initialized();

  await stableDiffusionLibrary.textToImage(
    modelPath: modelFile.path,
    prompt: "Cat",
    negativePrompt: "",
  );

  await stableDiffusionLibrary.dispose();
  exit(0);
}
```

## Reference
 
1. [stable-diffusion.cpp](https://github.com/leejet/stable-diffusion.cpp)
  ffi bridge main script so that this program can run


**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**

 
- [Stable Diffusion](https://github.com/General-Developer/stable_diffusion_library/tree/main/examples/stable_diffusion_app)
    
Minimal simple application example of Stable Diffusion [Youtube Video](https://youtu.be/U-5EDMk0UgE) 
| Mobile                                                                                                                                  | Desktop |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------|
| [![](https://raw.githubusercontent.com/General-Developer/stable_diffusion_library/refs/heads/main/assets/examples/stable_diffusion_app/mobile.png)](https://youtu.be/U-5EDMk0UgE) | [![](https://raw.githubusercontent.com/General-Developer/stable_diffusion_library/refs/heads/main/assets/examples/stable_diffusion_app/desktop.png)](https://youtu.be/U-5EDMk0UgE)        |