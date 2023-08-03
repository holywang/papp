// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:papp/framework/BaseViewModel.dart';
import 'package:papp/framework/BaseWidget.dart';
import 'package:provider/provider.dart';

abstract class BasePage<T extends BaseViewModel> extends BaseWidget{
  // ChangeNotifierProvider需要的model
  final T model;
   // Consumer需要的builder
  final ValueWidgetBuilder<T> builder;
  final Function(T model) onModelReady;
  //Consumer需要的child 这里chil是指不需要notify的组件
  final Widget? child;
  final bool autoDispose;

  const BasePage(
      {Key? key,
      required this.model,
      required this.onModelReady,
      required this.builder,
      this.child,
      this.autoDispose = false})
      : super(key: key);
}

abstract class BasePageState<T extends BaseViewModel> extends BaseViewModelState<BasePage<T>,T>{
 late final T model;

  @override
  void initState() {
    model = widget.model;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => model,
      child: Consumer(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}