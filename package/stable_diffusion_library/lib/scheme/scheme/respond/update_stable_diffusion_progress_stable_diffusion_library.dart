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
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class UpdateStableDiffusionProgressStableDiffusionLibrary extends JsonScheme {
  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  UpdateStableDiffusionProgressStableDiffusionLibrary(super.rawData);

  /// return default special type @type
  /// "updateStableDiffusionProgressStableDiffusionLibrary"
  static String get defaultDataSpecialType {
    return "updateStableDiffusionProgressStableDiffusionLibrary";
  }

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "updateStableDiffusionProgressStableDiffusionLibrary",
      "is_done": false,
      "step": 0,
      "steps": 0,
      "time": 0.0,
      "progress": 0.0,
      "@extra": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == updateStableDiffusionProgressStableDiffusionLibrary
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [UpdateStableDiffusionProgressStableDiffusionLibrary]
  /// Empty
  static UpdateStableDiffusionProgressStableDiffusionLibrary empty() {
    return UpdateStableDiffusionProgressStableDiffusionLibrary({});
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set special_type(String? value) {
    rawData["@type"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool? get is_done {
    try {
      if (rawData["is_done"] is bool == false) {
        return null;
      }
      return rawData["is_done"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set is_done(bool? value) {
    rawData["is_done"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  num? get step {
    try {
      if (rawData["step"] is num == false) {
        return null;
      }
      return rawData["step"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set step(num? value) {
    rawData["step"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  num? get steps {
    try {
      if (rawData["steps"] is num == false) {
        return null;
      }
      return rawData["steps"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set steps(num? value) {
    rawData["steps"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  double? get time {
    try {
      if (rawData["time"] is double == false) {
        return null;
      }
      return rawData["time"] as double;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set time(double? value) {
    rawData["time"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  double? get progress {
    try {
      if (rawData["progress"] is double == false) {
        return null;
      }
      return rawData["progress"] as double;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set progress(double? value) {
    rawData["progress"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  /// Generated By General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static UpdateStableDiffusionProgressStableDiffusionLibrary create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "updateStableDiffusionProgressStableDiffusionLibrary",
    bool? is_done,
    num? step,
    num? steps,
    double? time,
    double? progress,
    String special_extra = "",
  }) {
    // UpdateStableDiffusionProgressStableDiffusionLibrary updateStableDiffusionProgressStableDiffusionLibrary = UpdateStableDiffusionProgressStableDiffusionLibrary({
    final Map
        updateStableDiffusionProgressStableDiffusionLibrary_data_create_json = {
      "@type": special_type,
      "is_done": is_done,
      "step": step,
      "steps": steps,
      "time": time,
      "progress": progress,
      "@extra": special_extra,
    };

    updateStableDiffusionProgressStableDiffusionLibrary_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (updateStableDiffusionProgressStableDiffusionLibrary_data_create_json
                .containsKey(key) ==
            false) {
          updateStableDiffusionProgressStableDiffusionLibrary_data_create_json[
              key] = value;
        }
      });
    }
    return UpdateStableDiffusionProgressStableDiffusionLibrary(
        updateStableDiffusionProgressStableDiffusionLibrary_data_create_json);
  }
}
