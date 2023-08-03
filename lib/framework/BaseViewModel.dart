// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:papp/framework/ViewState.dart';
import 'error/FrameworkError.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state;
   ///是否被销毁
  bool _disposed = false;
  ViewStateError? _viewStateError;

  BaseViewModel({ViewState? state}) : _state = state ?? ViewState.busy;

  ViewState get viewState => _state;
  ViewStateError? get viewStateError => _viewStateError;

  set viewState(ViewState state) {
    // _viewStateError = null;
    _state = state;
    notifyListeners();
  }

  //判断是否是忙碌状态
  bool isBusy() => _state == ViewState.busy;
  //判断是否是获取到的是空
  bool isEmpty() => _state == ViewState.empty;
  //判断是否是出错
  bool isError() => _state == ViewState.error;
  //判断是否加载完成
  bool isIdly() => _state == ViewState.idle;
  //设置空闲状态
  void setIdle() => viewState = ViewState.idle;
  //设置为空状态
  void setEmpty() => viewState = ViewState.empty;
  //设置出错状态(主要是由Dio 接口返回的DioErrorType)
  void setError(e, stackTrace, {String? message}) {
    StateErrorType errorType =
        FormatUtil.dioErrorFormat(e).errorType ?? StateErrorType.defaultError;
    message = FormatUtil.dioErrorFormat(e).message ?? "出错鸟~~~";
    debugPrint(" errorType: $errorType, errorMsg: $message, errorInfo: ${e.toString()}");
    viewState = ViewState.error;
    _viewStateError = ViewStateError(
        errorType: errorType, errorMsg: message, errorInfo: e.toString());
  }
  //设置繁忙状态
  void setBusy() => viewState = ViewState.busy;

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
}

class FormatUtil {
  static dioErrorFormat(e) {}
}
