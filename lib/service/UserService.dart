// ignore_for_file: non_constant_identifier_names

import 'package:papp/framework/FrameworkError.dart';
import 'package:papp/service/Api.dart';
import 'package:papp/service/BaseService.dart';
import 'package:papp/service/DealErrorFactory.dart';
import 'package:papp/service/ResponseBean.dart';
import 'package:papp/service/beans/LoginBean.dart';

class UserService extends BaseService {

  /// SD_001
  /// 登录接口
  /// email
  /// pwd
  SD_001(String email, String pwd) {
    final params = {'email': email, 'pwd': pwd};
    ResponseBean<LoginBean>? resp;
    try {
      resp = createClient().post(Api.SD_001, params) as ResponseBean<LoginBean>?;
      DealErrorFactory.dealErrorWithErrorCode(resp?.respCode);
    } on FrameworkError catch (error) {
      DealErrorFactory.dealErrorWithFrameworkError(error);
    } catch (e) {
      DealErrorFactory.dealErrorWithErrorType(e);
    }
    if (resp != null){
      return resp;
    }
  }


}
