package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.view.View;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterWebViewFactory extends PlatformViewFactory {
    private final View containerView;
    private final BinaryMessenger messenger;

    public FlutterWebViewFactory(BinaryMessenger binaryMessenger, View view) {
        super(StandardMessageCodec.INSTANCE);
        this.containerView = view;
        this.messenger = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i, Object obj) {
        return new FlutterWebView(this.messenger, context, Integer.valueOf(i), (HashMap) obj, this.containerView);
    }
}
