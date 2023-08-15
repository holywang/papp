// ignore_for_file: file_names
//

import 'package:flutter/material.dart';
import 'package:papp/ui/page/MainPage/MainPage.dart';
import 'package:papp/ui/page/SplashPage/SplashPage.dart';

class PappRouter {

  Map<String, Widget Function(BuildContext)> routes = {
    "/splash": (context) => SplashPage(),
    "/main": (context) => MainPage(),
  };

}