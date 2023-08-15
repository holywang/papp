// ignore_for_file: file_names
//

import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/PappRouter.dart';
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
  var youName = "你的名字";

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
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _floatingBtn(),
    );
  }

  _appBar() {
    return AppBar(
      title: Text("First"),
    );
  }

  _body() {
    return Center(
        child: Text("you send is $youName"),
    );
  }

  _floatingBtn() {
    return FloatingActionButton(onPressed: () => {Navigator.of(context).pushNamed("/main")});

  }
}
