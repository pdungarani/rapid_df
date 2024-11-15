// coverage:ignore-file
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:final_df/app/app.dart';
import 'package:final_df/data/helpers/helpers.dart';
import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:get/get.dart';

/// The helper class which will connect to the world to get the data.
class ConnectHelper {
  ConnectHelper() {
    _init();
  }

  late Dio dio;

  /// Api wrapper initialization
  final apiWrapper = ApiWrapper();

  /// Device info plugin initialization
  final deviceinfo = DeviceInfoPlugin();

  /// To get android device info
  AndroidDeviceInfo? androidDeviceInfo;

  /// To get iOS device info
  IosDeviceInfo? iosDeviceInfo;

  // IosDeviceInfo? iosDeviceInfo;

  // coverage:ignore-start
  /// initialize the andorid device information
  void _init() async {
    if (GetPlatform.isAndroid) {
      androidDeviceInfo = await deviceinfo.androidInfo;
    } else {
      iosDeviceInfo = await deviceinfo.iosInfo;
    }
    dio = Dio();
  }

  // coverage:ignore-end

  /// Device id
  String? get deviceId => GetPlatform.isAndroid
      ? androidDeviceInfo?.id
      : iosDeviceInfo?.identifierForVendor;

  /// Device make brand
  String? get deviceMake =>
      GetPlatform.isAndroid ? androidDeviceInfo?.brand : 'Apple';

  /// Device Model
  String? get deviceModel =>
      GetPlatform.isAndroid ? androidDeviceInfo?.model : iosDeviceInfo?.model;

  /// Device is a type of 1 for Android and 2 for iOS
  String get deviceTypeCode => GetPlatform.isAndroid ? '1' : '2';

  /// Device OS
  String get deviceOs => GetPlatform.isAndroid ? 'ANDROID' : 'IOS';

  /// API to get the IP of the user
  Future<String> getIp() async {
    var ip = '';
    if (await Utility.isNetworkAvailable()) {
      for (var interface in await NetworkInterface.list()) {
        for (var addr in interface.addresses) {
          ip = addr.address;
        }
      }
      return ip.isNotEmpty ? ip : '0.0.0.0';
    }
    return '0.0.0.0';
  }

  Future<ResponseModel> login({
    required String username,
    required String password,
    required String fcmToken,
    bool isLoading = false,
  }) async {
    var data = {
      'username': username,
      'password': password,
      // 'fcm_token': fcmToken,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.loging,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(isDefaultAuthorizationKeyAdd: false),
    );
    return response;
  }

  Future<ResponseModel> getProfile({
    bool isLoading = false,
  }) async {
    var response = await apiWrapper.makeRequest(
      EndPoints.getProfile,
      Request.get,
      null,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> getAssignedTables({
    bool isLoading = false,
  }) async {
    var response = await apiWrapper.makeRequest(
      EndPoints.getAssignedTables,
      Request.get,
      null,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> getAllKots({
    required String tableId,
    bool isLoading = false,
  }) async {
    var data = {
      'tableId': tableId,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.getAllKot,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> getOneKots({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async {
    var data = {
      'tableId': tableId,
      'kotId': kotId,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.getOneKot,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> downloadKot({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async {
    var data = {
      'tableId': tableId,
      'kotId': kotId,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.downloadKot,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> getAllCategory({
    required String search,
    bool isLoading = false,
  }) async {
    var data = {
      'search': search,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.getallCategory,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> getOneCategory({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async {
    var data = {
      'search': search,
      'categoryId': categoryId,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.getOneCategory,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> createKot({
    required String tableId,
    required List<Item> items,
    bool isLoading = false,
  }) async {
    var data = {
      'tableId': tableId,
      'items': items,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.createKot,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> postShiftOrder({
    required String from,
    required String to,
    bool isLoading = false,
  }) async {
    var data = {
      'from': from,
      'to': to,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.postShiftOrder,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> postCategoryItem({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async {
    var data = {
      'search': search,
      'categoryId': categoryId,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.postCategoryItem,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }

  Future<ResponseModel> postJointTable({
    required List<String> tables,
    bool isLoading = false,
  }) async {
    var data = {
      'tables': tables,
    };
    var response = await apiWrapper.makeRequest(
      EndPoints.postJointTable,
      Request.post,
      data,
      isLoading,
      Utility.commonHeader(),
    );
    return response;
  }
}
