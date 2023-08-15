import 'dart:js_interop';

import 'package:papp/framework/error/ViewStateError.dart';

import '../framework/FrameworkError.dart';

class DealErrorFactory{
  static dealErrorWithErrorCode(errorCode){
    switch(errorCode){
      case "": break;
      default:
    }
    
  }

  static dealErrorWithErrorType(e){
    if(e.isNull){

    }
  }

  static dealErrorWithFrameworkError(e){
    if(e is ViewStateError){

    }
  }

}