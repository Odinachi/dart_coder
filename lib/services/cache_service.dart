import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static final CacheService instance = CacheService._internal();

  factory CacheService() => instance;

  CacheService._internal();

  late final SharedPreferences sharedPreferences;
  final _codeKey = "code";

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveCode(String code) async {
    await sharedPreferences.setString(_codeKey, code);
  }

  void deleteCode() async => await sharedPreferences.remove(_codeKey);

  String? getCode() => sharedPreferences.getString(_codeKey);
}
