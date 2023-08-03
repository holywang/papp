// ignore_for_file: file_names

enum ViewState {
  idle, //空闲的(执行完毕)
  error, //出错了
  empty, //返回空值
  busy, //繁忙的
}

enum StateErrorType {
  defaultError,
  networkTimeoutError, //网络错误
  unauthorizedError, //授权错误
  responseException, //响应异常
}
