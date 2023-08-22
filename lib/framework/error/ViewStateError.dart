import '../FrameworkError.dart';

class ViewStateError extends FrameworkError{
  ViewStateError(String errorCode, String errorMsg) : super(errorCode, errorMsg);
}