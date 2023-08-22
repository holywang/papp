// ignore_for_file: file_names

abstract class FrameworkError extends Error{
  late String errorCode;
  late String errorMsg;
  FrameworkError(this.errorCode, this.errorMsg);
}

