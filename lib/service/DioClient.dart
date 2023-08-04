// ignore_for_file: file_names

import 'package:dio/dio.dart';

import 'ResponseBean.dart';

class DioClient {
  Dio? _dio;

  Dio? getDio() {
    _dio ??= Dio(BaseOptions(
      baseUrl: "https://example.com/api",
      // connectTimeout: 5000,
      // receiveTimeout: 3000,
    ));
    return _dio;
  }

  Dio? addInterceptor(Interceptor interceptor) {
    _dio?.interceptors.add(interceptor);
    return _dio;
  }

  Future<ResponseBean<T>> get<T> (String path,Map<String,dynamic> params) async {
    Response? response = await _dio?.get(path,queryParameters: params);
    return paresJson<T>(response?.data);
  }

  Future<ResponseBean<T>> post<T> (String path,Map<String,dynamic> params) async {
    Response? response = await _dio?.post(path,data: params);
    return paresJson<T>(response?.data);
  }

  ResponseBean<T> paresJson<T>(dynamic data) {
    ResponseBean<T> bean = ResponseBean().fromJson(data);
    return bean;
  }
}
