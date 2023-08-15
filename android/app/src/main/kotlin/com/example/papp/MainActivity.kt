package com.example.papp

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.ThirdPartyLoginPlugin

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        addPlugin(flutterEngine);
    }

    private fun addPlugin(flutterEngine: FlutterEngine) {
        flutterEngine.plugins.add(ThirdPartyLoginPlugin())//第三方登录
    }
}
