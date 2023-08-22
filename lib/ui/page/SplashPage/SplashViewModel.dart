// ignore_for_file: file_names
//

import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/SplashPage/SplashModel.dart';

class SplashViewModel extends BaseViewModel{
  late SplashModel model;

  bool ifLogin = false;

  var youName = "你的名字";

  @override
  onCreate() {
    model = SplashModel();
  }

  login(){
     return model.login();
  }

  changeYourName() {
    print(youName);
    youName = "王阿吉";
    notifyListeners();
  }

}