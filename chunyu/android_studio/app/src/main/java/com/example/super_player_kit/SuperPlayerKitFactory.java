package com.example.super_player_kit;

import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;

/* loaded from: classes4.dex */
public class SuperPlayerKitFactory extends PlatformViewFactory {
    private final BinaryMessenger messenger;

    public SuperPlayerKitFactory(BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.messenger = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i, Object obj) {
        return new SuperPlayerkit(SuperPlayerKitPlugin.getActivity(), this.messenger, i, (Map) obj);
    }
}
