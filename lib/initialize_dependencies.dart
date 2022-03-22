import 'package:auth_nav/auth_nav.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application/data/repositories/base_repository_impl.dart';
import 'package:flutter_application/domain/repository/base_repository.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:oauth2_dio/oauth2_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/local/local_service.dart';
import 'data/dto/dto.dart';
import 'data/repositories/repositories.dart';
import 'env.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

Future initializeDependencies() async {
  Dio dio = Dio(BaseOptions(baseUrl: baseURL, contentType: 'application/json'));
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
    client.badCertificateCallback = (cert, host, port) {
      return true;
    };
  };
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  GetIt.instance.registerSingleton(dio);

  GetIt.instance.registerSingleton(AuthRepository());
  GetIt.instance.registerSingleton<BaseRepository>(BaseRepositoryImpl());
  var cookieJar=CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  //region Local Service
  GetIt.instance.registerSingleton(await SharedPreferences.getInstance());

  GetIt.instance.registerSingleton(LocalService());
  //endregion

  //region OAuth Manager
  Oauth2Manager<String> _oauth2manager =
      Oauth2Manager<String>(
          currentValue:
              GetIt.instance.get<LocalService>().getInfo(),
          onSave: (value) {
            if (value == null) {
              GetIt.instance.get<SharedPreferences>().clear();
            } else {
              GetIt.instance
                  .get<LocalService>()
                  .saveInfo(value);
            }
          });

  GetIt.instance
      .registerSingleton<Oauth2Manager<String>>(_oauth2manager);

  dio.interceptors.add(
    Oauth2Interceptor(
      dio: GetIt.instance.get<Dio>(),
      oauth2Dio: Dio(BaseOptions(baseUrl: dio.options.baseUrl)),
      pathRefreshToken: 'auth/refresh-token',
      parserJson: (json) {
        return AuthenticationDto.fromJson(json as Map<String, dynamic>);
      },
      tokenProvider: Oauth2Manager<OAuthInfoMixin>(),
    ),
  );
  //endregion

  GetIt.instance.registerSingleton(AuthNavigationBloc());

  GetIt.instance.registerSingleton(AuthBloc());
}
