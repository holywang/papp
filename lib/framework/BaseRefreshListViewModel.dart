// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:papp/framework/BaseViewModel.dart';

abstract class BaseRefreshListViewModel<T,M> extends BaseViewModel{
  int pageIndex = 1;
  // 设置页面大小
  int pageSize = 10;
  //获取到的Model
  late T model;
  // Model中的list
  List<M> lists = [];
 //当前是否正在加载 
  bool isLoading = false;
  //滚动控制器 用来实现上拉加载
  ScrollController controller = ScrollController();

  //添加监听
  addScrollListener() {
    controller.addListener(() {
      double fis =
          controller.position.maxScrollExtent - controller.position.pixels;
      //当前没有加载 且上拉一定距离并当列表高度不满屏幕高度时不执行加载更多
      if (fis < 300 && !isLoading && controller.position.maxScrollExtent != 0) {
        loadMore(loadMore: true);
      }
    });
  }
  
  scrollDispose() {
    controller.dispose();
  }

  initData() async {
    setBusy();
    await loadMore(loadMore: false);
  }

  loadMore({bool loadMore = false}) async {
    if (isLoading) {
      return;
    }
    isLoading = true;

    try {
    //获取当前model
      model=(await loadData(loadMore: loadMore)) as T;
      //获取当前List
      List<M> data = getList();
      if (data.isEmpty) {
        if (loadMore) {
          // ToastUtil().showBottomToast("没有更多数据了");
        } else {
          lists.clear();
          setEmpty();
        }
      } else {
        if (loadMore) {
          lists .addAll(data);
          pageIndex++;
        } else {
          lists.clear();
          lists = List.of(data);
        }
        isLoading = false;
        setIdle();
      }
    } catch (e,s) {
      if (!loadMore) {
        lists.clear();
        setError(e, s);
      }
      // ToastUtil().showCenterToast(e.toString());
    }
  }

  Future<T>? loadData({loadMore = false});


  List<M> getList();
}