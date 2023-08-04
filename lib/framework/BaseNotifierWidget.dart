// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class BaseNotifierWidget<T extends ChangeNotifier> extends StatefulWidget{

  ///需要监听的数据观察类
  final T data;
  ///构建UI的Builder，类似ListView的ItemBuilder
  final Widget Function(BuildContext context, T data) builder;

  const BaseNotifierWidget(this.data, this.builder, {Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _BaseNotifierState<T>();
}

class _BaseNotifierState<T extends ChangeNotifier> extends State<BaseNotifierWidget<T>> {
  ///刷新UI
  refreshState() {
    setState(() {});
  }

  ///initState时会对data进行监听
  @override
  void initState() {
    super.initState();
    //先清空一次已注册的Listener,防止重复触发
    widget.data.removeListener(refreshState);
    //添加监听，数据源改变时或者事件触发时，都会调用我们的refreshState函数，刷新ui，达到局部刷新的效果
    widget.data.addListener(refreshState);
  }

  ///build的时候，调用我们的builder，绘制对应的视图，并且将data回传
  @override
  Widget build(BuildContext context) {
    T data = widget.data;
    return widget.builder(context, data);
  }

  ///自动反注册监听，防止内存泄漏
  @override
  void dispose() {
    super.dispose();
    //销毁时,反注册
    widget.data.removeListener(refreshState);
  }
}