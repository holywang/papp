// ignore_for_file: file_names
//

import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/SplashPage/SplashViewModel.dart';

class SplashPage extends BasePage<SplashViewModel> {
  SplashPage();

  @override
  BasePageState<BaseViewModel> createState() {
    return _SplashState();
  }
}

class _SplashState extends BasePageState<SplashViewModel> {

  @override
  void initData() {

  }

  @override
  SplashViewModel initViewModel() {
    return SplashViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

}
