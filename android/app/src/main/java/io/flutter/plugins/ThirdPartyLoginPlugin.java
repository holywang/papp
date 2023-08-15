package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMessageCodec;

/**
 * @author rg wang
 * created on  2023/8/11
 */
@Keep
public class ThirdPartyLoginPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler{

    private MethodChannel mChannel;
    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        //创建通道对象，通道名称与Flutter端通道的名称一致
        mChannel = new  MethodChannel(binding.getBinaryMessenger(),"com.invexer.papp/third_party_login");
        //注册此通道的监听
        mChannel.setMethodCallHandler(this);
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {

    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {

    }
}
