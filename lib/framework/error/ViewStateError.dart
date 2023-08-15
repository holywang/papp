import '../ViewState.dart';
import '../FrameworkError.dart';

class ViewStateError extends FrameworkError{
  ViewStateError({required String errorInfo,
    String? errorMsg,
    required StateErrorType errorType});
}