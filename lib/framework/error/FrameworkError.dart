// ignore_for_file: file_names

import '../ViewState.dart';

class ViewStateError extends Error{
  ViewStateError({required String errorInfo, String? errorMsg, required StateErrorType errorType});
}