import 'dart:io';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_application/data/dto/dto.dart';
import 'package:path_provider/path_provider.dart';
import 'base_api_service.dart';
import 'package:cookie_jar/cookie_jar.dart';

class AuthApiService extends BaseApiService {
  Future<String> login(String userName, String passWord) async {
    Map<String, dynamic> _data = {'usr': userName, 'pwd': passWord};
    try {
      // var cookieJar=PersistCookieJar();
      // dio.interceptors.add(CookieManager(cookieJar));
      final response =
          await dio.post('/freshdi.data.farm_company.login', data: _data);
      return response.data['message'];
    } catch (err) {
      rethrow;
      // throw getErrorAuth(err);
    }
  }

  Future<ProfileDto> profile() async {
    return ProfileDto('abc');
  }

  Future logout() async {}
}
