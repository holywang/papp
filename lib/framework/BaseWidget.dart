 // ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

import 'BaseViewModel.dart';

///定义ViewModelWidget基类
abstract class BaseWidget<VM extends BaseViewModel> extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);


  @override
  BaseViewModelState<BaseWidget,VM> createState();
  
}

abstract class BaseViewModelState<T extends StatefulWidget,
    VM extends BaseViewModel> extends State<T> {

  @override
  void initState() {
    super.initState();
  }



}

