// ignore_for_file: file_names
//

import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/SplashPage/SplashModel.dart';

class SplashViewModel extends BaseViewModel{
  late SplashModel model;

  @override
  onCreate() {
    model = SplashModel();
  }

  login(){
    return model.login();
  }

}