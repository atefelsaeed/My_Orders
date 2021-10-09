import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.inoutdesigners.com/talabat/public/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': token,
    };
    return await dio.get(
      url,
      queryParameters: query ?? query,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic>? data,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
    };
    return dio.post(url,
        data: data,
        options: Options(
          validateStatus: (state) => state! < 500,
        ));
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': token,
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
