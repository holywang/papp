// ignore_for_file: file_names

class ResponseBean<T> {
  T? data;
  List<T>? listData;
  int? respCode;
  String? respMsg;
  ListPage<T>? listPageData;

  fromJson(dynamic json) {
    respCode = json['respCode'];
    respMsg = json['respMsg'];
  }
}

class ListPage<T> {
  List<T>? listData;
  int? page;
  int? pageSize;
  int? total;
}
