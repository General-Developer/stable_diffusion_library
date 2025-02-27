// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class ApplicationStableDiffusionLibraryDatabase extends JsonScheme {

  /// Generated
  ApplicationStableDiffusionLibraryDatabase(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"applicationStableDiffusionLibraryDatabase","stable_diffusion_model_path":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == applicationStableDiffusionLibraryDatabase
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

  

  /// create [ApplicationStableDiffusionLibraryDatabase]
  /// Empty  
  static ApplicationStableDiffusionLibraryDatabase empty() {
    return ApplicationStableDiffusionLibraryDatabase({});
  }

  

  /// Generated
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_type(String? value) {
    rawData["@type"] = value;
  }


  /// Generated
  String? get stable_diffusion_model_path {
    try {
      if (rawData["stable_diffusion_model_path"] is String == false){
        return null;
      }
      return rawData["stable_diffusion_model_path"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set stable_diffusion_model_path(String? value) {
    rawData["stable_diffusion_model_path"] = value;
  }


  /// Generated
  static ApplicationStableDiffusionLibraryDatabase create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "applicationStableDiffusionLibraryDatabase",
    String? stable_diffusion_model_path,
})  {
    // ApplicationStableDiffusionLibraryDatabase applicationStableDiffusionLibraryDatabase = ApplicationStableDiffusionLibraryDatabase({
final Map applicationStableDiffusionLibraryDatabase_data_create_json = {
  
      "@type": special_type,
      "stable_diffusion_model_path": stable_diffusion_model_path,


};


          applicationStableDiffusionLibraryDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (applicationStableDiffusionLibraryDatabase_data_create_json.containsKey(key) == false) {
          applicationStableDiffusionLibraryDatabase_data_create_json[key] = value;
        }
      });
    }
return ApplicationStableDiffusionLibraryDatabase(applicationStableDiffusionLibraryDatabase_data_create_json);


      }
}