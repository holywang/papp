// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/framework/BaseWidget.dart';

abstract class BasePage<T extends BaseViewModel> extends BaseWidget{
  const BasePage({Key? key}) : super(key: key);

  @override
  BasePageState createState();
}

abstract class BasePageState<T extends BaseViewModel> extends BaseViewModelState<BasePage<T>,T>{

}