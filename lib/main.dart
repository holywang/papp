import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papp/ui/page/PappRouter.dart';
import 'package:papp/ui/page/SplashPage/SplashPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
  SystemChrome.setPreferredOrientations([
    // 强制竖屏
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

var routes = PappRouter().routes;

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes:routes,
        home: SplashPage()
    );
  }
}

