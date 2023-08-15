// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:papp/service/DioClient.dart';

class BaseService {

  DioClient createClient() {
    DioClient client = DioClient();
    client.getDio();
    client.addInterceptor(LogInterceptor(responseBody: false));
    return client;
  }

}
