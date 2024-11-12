import 'package:final_df/data/data.dart';
import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/create_model.dart';

/// Repositories (retrieve data, heavy processing etc..)
class DataRepository extends DomainRepository {
  /// [connectHelper] : A connection helper which will connect to the
  /// remote to get the data.
  DataRepository(this.connectHelper);

  final ConnectHelper connectHelper;

  @override
  void clearData(dynamic key) {
    throw UnimplementedError();
  }

  /// Delete the box
  @override
  void deleteBox() {
    throw UnimplementedError();
  }

  /// returns stored string value
  @override
  String getStringValue(String key) {
    throw UnimplementedError();
  }

  /// store the data
  @override
  void saveValue(dynamic key, dynamic value) {
    throw UnimplementedError();
  }

  /// return bool value
  @override
  bool getBoolValue(String key) => throw UnimplementedError();

  /// Get data from secure storage
  @override
  Future<String> getSecuredValue(String key) async {
    throw UnimplementedError();
  }

  /// Save data in secure storage
  @override
  void saveValueSecurely(String key, String value) {
    throw UnimplementedError();
  }

  /// Delete data from secure storage
  @override
  void deleteSecuredValue(String key) {
    throw UnimplementedError();
  }

  /// Delete all data from secure storage
  @override
  void deleteAllSecuredValues() {
    throw UnimplementedError();
  }

  /// API to get the IP of the user
  @override
  Future<String> getIp() async => await connectHelper.getIp();

  Future<ResponseModel> login({
    required String username,
    required String password,
    required String fcmToken,
    bool isLoading = false,
  }) async =>
      connectHelper.login(
        username: username,
        password: password,
        fcmToken: fcmToken,
        isLoading: isLoading,
      );

  Future<ResponseModel> getProfile({
    bool isLoading = false,
  }) async =>
      connectHelper.getProfile(
        isLoading: isLoading,
      );

  Future<ResponseModel> getAssignedTables({
    bool isLoading = false,
  }) async =>
      connectHelper.getAssignedTables(
        isLoading: isLoading,
      );

  Future<ResponseModel> getAllKots({
    bool isLoading = false,
    required String tableId,
  }) async =>
      connectHelper.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
      );

  Future<ResponseModel> getOneKots({
    bool isLoading = false,
    required String tableId,
    required String kotId,
  }) async =>
      connectHelper.getOneKots(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );

  Future<ResponseModel> downloadKot({
    bool isLoading = false,
    required String tableId,
    required String kotId,
  }) async =>
      connectHelper.downloadKot(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );

  Future<ResponseModel> getAllCategory({
    bool isLoading = false,
    required String search,
  }) async =>
      connectHelper.getAllCategory(
        isLoading: isLoading,
        search: search,
      );

  Future<ResponseModel> getOneCategory({
    bool isLoading = false,
    required String search,
    required String categoryId,
  }) async =>
      connectHelper.getOneCategory(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<ResponseModel> createKot({
    bool isLoading = false,
    required String tableId,
    required List<Item> items,
  }) async =>
      connectHelper.createKot(
        isLoading: isLoading,
        tableId: tableId,
        items: items,
      );

  Future<ResponseModel> postShiftOrder({
    required String from,
    required String to,
    bool isLoading = false,
  }) async =>
      connectHelper.postShiftOrder(
        from: from,
        to: to,
        isLoading: isLoading,
      );

  Future<ResponseModel> postCategoryItem({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async =>
      connectHelper.postCategoryItem(
        search: search,
        categoryId: categoryId,
        isLoading: isLoading,
      );
}
