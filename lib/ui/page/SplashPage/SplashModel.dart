import 'dart:math';

import 'package:papp/service/ResponseBean.dart';
import 'package:papp/service/beans/LoginBean.dart';
import '../../../service/UserService.dart';

class SplashModel {

  login() {
      LoginBean data = UserService().SD_001("email", "pwd");
    
    
  }
}