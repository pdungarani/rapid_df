import 'dart:async';

import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/data/repositories/repositories.dart';
import 'package:final_df/device/device.dart';
import 'package:final_df/domain/entities/entities.dart';
import 'package:final_df/domain/models/login_model.dart';
import 'package:final_df/domain/models/profile_model.dart';

/// The main repository which will get the data from [DeviceRepository] or the
/// [DataRepository].
class Repository {
  /// [_deviceRepository] : the local repository.
  /// [_dataRepository] : the data repository like api and all.
  Repository(this._deviceRepository, this._dataRepository);

  final DeviceRepository _deviceRepository;
  final DataRepository _dataRepository;

  /// Clear data from local storage for [key].
  void clearData(dynamic key) {
    try {
      _deviceRepository.clearData(
        key,
      );
    } catch (_) {
      _dataRepository.clearData(
        key,
      );
    }
  }

  /// Get the string value for the [key].
  ///
  /// [key] : The key whose value is needed.
  String getStringValue(String key) {
    try {
      return _deviceRepository.getStringValue(
        key,
      );
    } catch (_) {
      return _dataRepository.getStringValue(
        key,
      );
    }
  }

  /// Save the value to the string.
  ///
  /// [key] : The key to which [value] will be saved.
  /// [value] : The value which needs to be saved.
  void saveValue(dynamic key, dynamic value) {
    try {
      _deviceRepository.saveValue(
        key,
        value,
      );
    } catch (_) {
      _dataRepository.saveValue(
        key,
        value,
      );
    }
  }

  /// Get the bool value for the [key].
  ///
  /// [key] : The key whose value is needed.
  bool getBoolValue(String key) {
    try {
      return _deviceRepository.getBoolValue(
        key,
      );
    } catch (_) {
      return _dataRepository.getBoolValue(
        key,
      );
    }
  }

  /// Get the stored value for the [key].
  ///
  /// [key] : The key whose value is needed.
  bool getStoredValue(String key) {
    try {
      return _deviceRepository.getBoolValue(
        key,
      );
    } catch (_) {
      return _dataRepository.getBoolValue(
        key,
      );
    }
  }

  /// Get the secure value for the [key].
  /// [key] : The key whose value is needed.
  Future<String> getSecureValue(String key) async {
    try {
      return await _deviceRepository.getSecuredValue(key);
    } catch (_) {
      return await _dataRepository.getSecuredValue(key);
    }
  }

  /// Save the value to the string.
  ///
  /// [key] : The key to which [value] will be saved.
  /// [value] : The value which needs to be saved.
  void saveSecureValue(String key, String value) {
    try {
      _deviceRepository.saveValueSecurely(
        key,
        value,
      );
    } catch (_) {
      _dataRepository.saveValueSecurely(
        key,
        value,
      );
    }
  }

  /// Clear data from secure storage for [key].
  void deleteSecuredValue(String key) {
    try {
      _deviceRepository.deleteSecuredValue(
        key,
      );
    } catch (_) {
      _dataRepository.deleteSecuredValue(
        key,
      );
    }
  }

  /// Clear all data from secure storage .
  void deleteAllSecuredValues() {
    try {
      _deviceRepository.deleteAllSecuredValues();
    } catch (_) {
      _dataRepository.deleteAllSecuredValues();
    }
  }

  Future<LoginModel?> login({
    required String username,
    required String password,
    required String fcmToken,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.login(
        username: username,
        password: password,
        fcmToken: fcmToken,
        isLoading: isLoading,
      );
      var logingModel = loginModelFromJson(response.data);
      if (logingModel.status == 200) {
        return logingModel;
      } else {
        Utility.showMessage(
            logingModel.message.toString(), MessageType.error, () => null, '');
        return logingModel;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<GetProfileModel?> getProfile({
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.getProfile(
        isLoading: isLoading,
      );
      var getProfileModel = getProfileModelFromJson(response.data);
      if (getProfileModel.status == 200) {
        return getProfileModel;
      } else {
        return null;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }
}
