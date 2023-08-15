import 'package:flutter/services.dart';

class ThirdPartyLoginNative{
  static const MethodChannel platform = MethodChannel('com.invexer.papp/third_party_login');
  static const BasicMessageChannel basicMessageChannel = BasicMessageChannel('flutter_demo_jiaohu.flutter.io/basic_message_channel', StandardMessageCodec());
  static const EventChannel eventChannel = EventChannel('flutter_demo_jiaohu.flutter.io/event_channel');

  forExample1() async {
    String reply = await basicMessageChannel.send("error");
  }
  forExample2() async {
    await platform.invokeMethod('getBatteryLevel');
  }
  forExample3() async {
    eventChannel.receiveBroadcastStream().listen(_onEvent, onError: _onError);
  }

  void _onError(Object error) {
    print('Flutter - 返回的错误');
  }


  void _onEvent(event) {
    print('Flutter - 返回的内容: $event');
  }
}