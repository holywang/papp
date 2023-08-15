
import 'package:flutter/material.dart';
import 'package:papp/framework/BasePage.dart';
import 'package:papp/framework/BaseViewModel.dart';

import 'MainViewModel.dart';

class MainPage extends BasePage<MainViewModel>{
  @override
  BasePageState<BaseViewModel> createState() {
    return _MainState();
  }

}


class _MainState extends BasePageState<MainViewModel>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }

  @override
  MainViewModel initViewModel() {
    // TODO: implement initViewModel
    throw UnimplementedError();
  }

  _appBar() {
    return Row(); }

}

