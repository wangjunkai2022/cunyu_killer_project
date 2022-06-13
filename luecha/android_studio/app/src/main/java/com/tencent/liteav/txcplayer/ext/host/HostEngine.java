package com.tencent.liteav.txcplayer.ext.host;

import android.content.Context;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import java.util.Map;

/* loaded from: classes5.dex */
public class HostEngine {
    public static final String TAG = "HostEngine";
    private static HostEngine mInstance;
    private Context mAppContext;
    private boolean mIsInit = false;

    private HostEngine() {
    }

    public static HostEngine getInstance() {
        if (mInstance == null) {
            synchronized (HostEngine.class) {
                if (mInstance == null) {
                    mInstance = new HostEngine();
                }
            }
        }
        return mInstance;
    }

    public synchronized void init(Context context) {
        TXCLog.d("HostEngine", "[init], appContext=" + context + " ,mIsInit=" + this.mIsInit);
        if (!this.mIsInit) {
            this.mAppContext = context;
            onCreate();
            this.mIsInit = true;
        }
    }

    public Context getAppContext() {
        return this.mAppContext;
    }

    public void onCreate() {
        TXCLog.d("HostEngine", "[onCreate]");
        PluginManger.getInstance().loadPlugin();
    }

    public void onDestroy() {
        TXCLog.d("HostEngine", "[onDestroy]");
        PluginManger.getInstance().unLoadPlugin();
    }

    public void sendSyncRequestToPlugin(int i, int i2, Map<String, Object> map, Map<String, Object> map2) {
        IPluginBase pluginInstance = PluginManger.getInstance().getPluginInstance(i);
        if (pluginInstance != null) {
            pluginInstance.handleSyncRequest(i, i2, map, map2);
            return;
        }
        TXCLog.w("HostEngine", "[sendSyncRequestToPlugin], destPluginId=" + i + " is not loaded");
    }

    public void sendAsyncRequestToPlugin(int i, int i2, Map<String, Object> map, PluginCallback pluginCallback) {
        IPluginBase pluginInstance = PluginManger.getInstance().getPluginInstance(i);
        if (pluginInstance != null) {
            pluginInstance.handleAsyncRequest(i, i2, map, pluginCallback);
            return;
        }
        TXCLog.w("HostEngine", "[sendAsyncRequestToPlugin], destPluginId=" + i + " is not loaded");
    }

    public void sendSyncRequestHandleByHost(int i, Map<String, Object> map, Map<String, Object> map2) {
        handleSyncRequestHandleByHost(i, map, map2);
    }

    public void handleSyncRequestHandleByHost(int i, Map<String, Object> map, Map<String, Object> map2) {
        TXCLog.w("HostEngine", "[handleSyncRequestHandleByHost], functionId=" + i + " ,inParams=" + map + " ,outParams=" + map2);
        if (i == 1) {
            int vodLicenseFeature = RenderProcessService.getInstance().getVodLicenseFeature();
            if (map2 != null) {
                map2.put("KEY_RET_PARAM1", Integer.valueOf(vodLicenseFeature));
            }
        } else if (i == 2 && map2 != null) {
            map2.put("KEY_RET_PARAM1", 3);
        }
    }

    public boolean checkAndLoadPlugin(int i) {
        TXCLog.i("HostEngine", "[checkAndLoadPlugin], pluginId=" + i);
        return PluginManger.getInstance().checkAndLoadPlugin(i);
    }
}
