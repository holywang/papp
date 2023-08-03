// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'BaseViewModel.dart';

///定义ViewModelWidget基类
abstract class BaseWidget<VM extends BaseViewModel> extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);


  @override
  BaseViewModelState<BaseWidget,VM> createState();
  
}

///定义ViewModelState（相关逻辑在这里）
abstract class BaseViewModelState<T extends StatefulWidget,
    VM extends BaseViewModel> extends State<T> {
    
  ///定义其ViewModel
  late VM viewModel;

  ///进行初始化ViewModel相关操作
  @override
  void initState() {
    super.initState();
    ///初始化ViewModel，并同步生命周期
    viewModel = initViewModel();
    //延迟初始化,避免在initState中对context进行了操作，此时context可能为空
    Future.delayed(Duration.zero).then((value) {
      ///此刻可以进行一些绑定操作
      initObserver();
      ///调用ViewModel的生命周期，此时可以进行一些初始化，比如网络请求等
      // viewModel.onCreate();
      ///Widget本身的一些数据初始化，比如参数之类的
      initData();
    });
  }

  ///
  @override
  void dispose() {
    super.dispose();
    viewModel.dispose();
  }

  //初始化ViewModel
  VM initViewModel();

  ///子类重写，初始化数据
  void initData();

  ///子类重写，初始化监听
  void initObserver() {}

}

