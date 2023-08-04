// ignore_for_file: file_names
//

import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/SplashPage/SplashViewModel.dart';

import '../../../main.dart';

class SplashPage extends BasePage<SplashViewModel> {
  SplashPage();

  @override
  BasePageState<BaseViewModel> createState() {
    return _SplashState();
  }
}

class _SplashState extends BasePageState<SplashViewModel> {
  bool ifLogin = false;

  @override
  SplashViewModel initViewModel() {
    return SplashViewModel();
  }

  @override
  void initData() {
    setState(() {
      ifLogin = viewModel.login();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ifLogin
          ? const MyHomePage(title: 'Flutter Demo Home Page1')
          : const MyHomePage(title: 'Flutter Demo Home Page2'),
    );
  }
}
