import 'package:digital_academy/constants/app_constants.dart';
import 'package:digital_academy/services/common_service.dart';
import 'package:dio/dio.dart';

class HttpUtils {
  /// global dio object
  static Dio dio = Dio();

  /// default options
  static String apiPrefix = AppConstants.BASE_URL;
  static const int CONNECT_TIMEOUT = 100000;
  static const int RECEIVE_TIMEOUT = 5000;

  static setToken() {
    dio = Dio();
    getInstance();
  }

  static Dio getInstance() {
    if (dio == null) {
      dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';

      dio.options.headers["authorization"] =
          "Bearer ${CommonService.instance.token}";
      dio.options.baseUrl = apiPrefix;
      dio.options.connectTimeout = CONNECT_TIMEOUT;
      dio.options.receiveTimeout = RECEIVE_TIMEOUT;

      // dio.interceptors
      //     .add(InterceptorsWrapper(onRequest: (options, handler) async {
      //   // print('InterceptorsWrapper ${options}');

      //   // print('InterceptorsWrapper $handler');
      //   return options;
      // }));
      // dio.interceptors
      //     .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      //   return options; //continue
      // }, onResponse: (Response response) async {
      //   if (response.statusCode == 404 || response.statusCode == 500) {
      //    // CommonUtil.showOopsPopUp();
      //   }
      //   if (response.statusCode == 401) {
      //     // navigate to login screen.

      //   }
      //   return response; // continue
      // }, onError: (DioError e) async {
      //   return e; //continue
      // }));

    }
    return dio;
  }

  static Dio postInstance() {
    dio = new Dio();
    // dio.options.headers["authorization"] = "Bearer ${CommonService.instance.token}";
    dio.options.baseUrl = apiPrefix;
    dio.options.connectTimeout = CONNECT_TIMEOUT;
    dio.options.receiveTimeout = RECEIVE_TIMEOUT;

    dio.interceptors.add(LogInterceptor(responseBody: false));
    return dio;
  }
}
