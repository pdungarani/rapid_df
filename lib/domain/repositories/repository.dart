import 'dart:async';

import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/data/repositories/repositories.dart';
import 'package:final_df/device/device.dart';
import 'package:final_df/domain/entities/entities.dart';
import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/downloadKot_model.dart';
import 'package:final_df/domain/models/getOneCategory_model.dart';
import 'package:final_df/domain/models/getKot_model.dart';
import 'package:final_df/domain/models/models.dart';

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

  Future<GetAssignModel?> getAssignedTables({
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.getAssignedTables(
        isLoading: isLoading,
      );
      var getProfileModel = getAssignModelFromJson(response.data);
      if (getProfileModel.status == 200) {
        return getProfileModel;
      } else {
        return getProfileModel;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<GetKotModel?> getAllKots({
    required String tableId,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
      );
      var getAllKots = getKotModelFromJson(response.data);
      if (getAllKots.status == 200) {
        return getAllKots;
      } else {
        Utility.showMessage(
            getAllKots.message.toString(), MessageType.error, () => null, '');
        return getAllKots;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<GetOneKotModel?> getOneKots({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.getOneKots(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );
      var getOneKot = getOneKotModelFromJson(response.data);
      if (getOneKot.status == 200) {
        return getOneKot;
      } else {
        Utility.showMessage(
            getOneKot.message.toString(), MessageType.error, () => null, '');
        return getOneKot;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<DownloadKotModel?> downloadKot({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.downloadKot(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );
      var downloadKot = downloadKotModelFromJson(response.data);
      if (downloadKot.status == 200) {
        return downloadKot;
      } else {
        Utility.showMessage(
            downloadKot.message.toString(), MessageType.error, () => null, '');
        return downloadKot;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<GetCategoryModel?> getAllCategory({
    required String search,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.getAllCategory(
        isLoading: isLoading,
        search: search,
      );
      var getAllCategory = getCategoryModelFromJson(response.data);
      if (getAllCategory.status == 200) {
        return getAllCategory;
      } else {
        Utility.showMessage(getAllCategory.message.toString(),
            MessageType.error, () => null, '');
        return getAllCategory;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<GetOneCategoryModel?> getOneCategory({
    bool isLoading = false,
    required String search,
    required String categoryId,
  }) async {
    try {
      var response = await _dataRepository.getOneCategory(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );
      var getOneCategory = getOneCategoryModelFromJson(response.data);
      if (getOneCategory.status == 200) {
        return getOneCategory;
      } else {
        Utility.showMessage(getOneCategory.message.toString(),
            MessageType.error, () => null, '');
        return getOneCategory;
      }
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<CreateKotModel?> createKot({
    bool isLoading = false,
    required String tableId,
    required List<Item> items,
  }) async {
    try {
      var response = await _dataRepository.createKot(
        isLoading: isLoading,
        tableId: tableId,
        items: items,
      );
      var createKotModel = createKotModelFromJson(response.data);
      if (createKotModel.status == 200) {
        return createKotModel;
      } else {
        Utility.showMessage(createKotModel.message.toString(),
            MessageType.error, () => null, '');
        return createKotModel;
      }
    } catch (e) {
      print(e);
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<ResponseModel?> postShiftOrder({
    required String from,
    required String to,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.postShiftOrder(
        from: from,
        to: to,
        isLoading: isLoading,
      );
      return response;
    } catch (_) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }

  Future<CategoryItemModel?> postCategoryItem({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async {
    try {
      var response = await _dataRepository.postCategoryItem(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );
      var createKotModel = categoryItemModelFromJson(response.data);
      if (createKotModel.status == 200) {
        return createKotModel;
      } else {
        Utility.showMessage(createKotModel.message.toString(),
            MessageType.error, () => null, '');
        return createKotModel;
      }
    } catch (e) {
      Utility.closeDialog();
      UnimplementedError();
      return null;
    }
  }
}
