// ignore_for_file: non_constant_identifier_names

import 'package:papp/service/Api.dart';
import 'package:papp/service/BaseService.dart';

class UserService extends BaseService {


  SD_001(String email, String pwd) {
    final params = {
      'email': email,
      'pwd': pwd
    };
    return createClient().post(Api.SD_001, params);
  }

}