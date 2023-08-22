// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/framework/BaseWidget.dart';
import 'package:provider/provider.dart';

abstract class BasePage<T extends BaseViewModel> extends BaseWidget{
  const BasePage({Key? key}) : super(key: key);

  @override
  BasePageState createState();

}

abstract class BasePageState<T extends BaseViewModel> extends BaseViewModelState<BasePage<T>,T>{
  late T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = createViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => viewModel,
        child:buildPage(context)
    );
  }

  push(target){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return target;
    }));
  }

  pushName(String name){
    Navigator.pushNamed(context, name);
  }

  pop(){
    Navigator.pop(context);
  }

  T createViewModel();

  Widget buildPage(BuildContext context);

  


}