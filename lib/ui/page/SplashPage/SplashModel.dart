import 'package:papp/service/ResponseBean.dart';
import 'package:papp/service/beans/LoginBean.dart';
import '../../../service/UserService.dart';

class SplashModel {

  login() {
    ResponseBean<LoginBean> resp = UserService().SD_001("email", "pwd");
    if(resp.respCode == 0){
      return true;
    }else{
      return false;
    }
  }
}