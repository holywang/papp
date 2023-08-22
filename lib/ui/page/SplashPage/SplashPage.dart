// ignore_for_file: file_names
//

import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/ui/page/SplashPage/SplashViewModel.dart';
import 'package:provider/provider.dart';

import '../MainPage/MainPage.dart';

class SplashPage extends BasePage<SplashViewModel> {
  static const name = "/SplashPage";
  SplashPage();

  @override
  BasePageState<BaseViewModel> createState() {
    return _SplashState();
  }
}

class _SplashState extends BasePageState<SplashViewModel> {
  @override
  SplashViewModel createViewModel() {
    return SplashViewModel();
  }

  @override
  Widget buildPage(BuildContext context) {
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
    return Consumer<SplashViewModel>(builder: (context, model, child) {
      return Text('you send is ${model.youName}');
    });
  }

  _floatingBtn() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        if (viewModel.youName == "王阿吉") {
          pushName(MainPage.name);
          // push(MainPage());
        }
        viewModel.changeYourName();
      },
    );
  }
}
