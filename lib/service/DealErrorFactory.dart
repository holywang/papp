import 'package:papp/framework/error/ViewStateError.dart';

class DealErrorFactory {
  static dealErrorWithErrorCode(errorCode) {
    switch (errorCode) {
      case "":
        break;
      default:
    }
  }

  static dealErrorWithErrorType(e) {
    print(e.toString());
  }

  static dealErrorWithFrameworkError(e) {
    if (e is ViewStateError) {
      print(e.stackTrace);
    }
  }
}
