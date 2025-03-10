import 'dart:async';

import 'package:general_lib/event_emitter/event_emitter.dart';
import 'package:general_lib/json_scheme/json_scheme.dart';
import 'package:general_schema/base/core.dart';
import 'package:stable_diffusion_library/base.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class StableDiffusionLibrary extends StableDiffusionLibraryBase {
  @override
  FutureOr<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  void emit({required String eventType, required data}) {
    // TODO: implement emit
  }

  @override
  FutureOr<void> ensureInitialized(
      {required StableDiffusionLibraryEnsureInitialized
          generalSchemaEnsureInitialized}) {
    // TODO: implement ensureInitialized
    throw UnimplementedError();
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType>
      getDetailStatusDeviceSupportAsync() {
    // TODO: implement getDetailStatusDeviceSupportAsync
    throw UnimplementedError();
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    // TODO: implement getDetailStatusDeviceSupportSync
    throw UnimplementedError();
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    // TODO: implement getLibraryStatusTypeAsync
    throw UnimplementedError();
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    // TODO: implement getLibraryStatusTypeSync
    throw UnimplementedError();
  }

  @override
  FutureOr<void> initialized() {
    // TODO: implement initialized
    throw UnimplementedError();
  }

  @override
  FutureOr<JsonScheme> invokeRaw(
      {required JsonScheme invokeParameters,
      required StableDiffusionLibraryInvokeOptions? invokeOptions}) {
    // TODO: implement invokeRaw
    throw UnimplementedError();
  }

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    // TODO: implement isDeviceSupportAsync
    throw UnimplementedError();
  }

  @override
  bool isDeviceSupportSync() {
    // TODO: implement isDeviceSupportSync
    throw UnimplementedError();
  }

  @override
  EventEmitterListener on(
      {required String eventType,
      required FutureOr Function(
              UpdateStableDiffusionLibraryData<StableDiffusionLibraryBase,
                      JsonScheme>
                  updateStableDiffusionLibrary)
          onUpdate}) {
    // TODO: implement on
    throw UnimplementedError();
  }
}
