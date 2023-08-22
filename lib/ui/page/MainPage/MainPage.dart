
import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';

import 'MainViewModel.dart';

class MainPage extends BasePage<MainViewModel>{
  static const name = "/MainPage";
  @override
  BasePageState<BaseViewModel> createState() {
    return _MainState();
  }

}


class _MainState extends BasePageState<MainViewModel>{
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Main"),
    );
  }

  _body() {
    return Center(
      child: Text("welcome to the main page"),
    );
  }

  @override
  MainViewModel createViewModel() {
    return MainViewModel();
  }


}

