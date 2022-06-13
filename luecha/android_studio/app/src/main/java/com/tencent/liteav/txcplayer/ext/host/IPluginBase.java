package com.tencent.liteav.txcplayer.ext.host;

import android.content.Context;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface IPluginBase {
    PluginInfo getPluginInfo();

    void handleAsyncRequest(int i, int i2, Map<String, Object> map, PluginCallback pluginCallback);

    void handleSyncRequest(int i, int i2, Map<String, Object> map, Map<String, Object> map2);

    void onCreate(Context context);

    void onDestroy();
}
