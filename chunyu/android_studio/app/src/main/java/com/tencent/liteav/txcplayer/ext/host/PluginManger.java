package com.tencent.liteav.txcplayer.ext.host;

import android.text.TextUtils;
import android.util.Log;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.txcplayer.ext.config.PluginConfigCenter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class PluginManger {
    private static final String TAG = "HostEngine-PluginManger";
    private static PluginManger mInstance;
    private List<PluginInfo> mPluginConfigList;
    private ConcurrentHashMap<Integer, IPluginBase> mPluginMap = new ConcurrentHashMap<>();

    private PluginManger() {
    }

    public static PluginManger getInstance() {
        if (mInstance == null) {
            synchronized (PluginManger.class) {
                if (mInstance == null) {
                    mInstance = new PluginManger();
                }
            }
        }
        return mInstance;
    }

    public void loadPlugin() {
        loadPluginConfig();
        doLoadPlugin();
    }

    public void unLoadPlugin() {
        for (PluginInfo pluginInfo : this.mPluginConfigList) {
            int i = pluginInfo.mPluginId;
            Log.w(TAG, "[unLoadPlugin], unLoadPlugin=" + i);
            IPluginBase iPluginBase = this.mPluginMap.get(Integer.valueOf(i));
            if (iPluginBase != null) {
                iPluginBase.onDestroy();
                this.mPluginMap.remove(Integer.valueOf(i));
            }
        }
    }

    public IPluginBase getPluginInstance(int i) {
        return this.mPluginMap.get(Integer.valueOf(i));
    }

    public boolean checkAndLoadPlugin(int i) {
        if (this.mPluginMap.containsKey(Integer.valueOf(i))) {
            return true;
        }
        PluginInfo pluginInfo = null;
        Iterator<PluginInfo> it = this.mPluginConfigList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PluginInfo next = it.next();
            if (next.mPluginId == i) {
                pluginInfo = next;
                break;
            }
        }
        if (pluginInfo != null) {
            return _doLoadPlugin(pluginInfo);
        }
        return false;
    }

    private void doLoadPlugin() {
        for (PluginInfo pluginInfo : this.mPluginConfigList) {
            TXCLog.d(TAG, "[loadPlugin], pluginId=" + pluginInfo.mPluginId + " ,pluginClazzName=" + pluginInfo.mPluginClazzName);
            if (pluginInfo.mIsCorePlugin) {
                _doLoadPlugin(pluginInfo);
            } else {
                TXCLog.d(TAG, "[loadPlugin], pluginId=" + pluginInfo.mPluginId + " is not core plugin, do not load by default");
            }
        }
    }

    private boolean _doLoadPlugin(PluginInfo pluginInfo) {
        int i = pluginInfo.mPluginId;
        if (this.mPluginMap.containsKey(Integer.valueOf(i))) {
            TXCLog.w(TAG, "[loadPlugin], pluginId has been loaded!!, pluginId=" + i);
            return true;
        }
        IPluginBase createPluginInstance = createPluginInstance(i, pluginInfo.mPluginClazzName);
        if (createPluginInstance != null) {
            createPluginInstance.onCreate(HostEngine.getInstance().getAppContext());
            this.mPluginMap.put(Integer.valueOf(i), createPluginInstance);
            TXCLog.d(TAG, "[loadPlugin], succeed loading pluginId=" + i + " ,pluginClazzName=" + pluginInfo.mPluginClazzName);
            return true;
        }
        TXCLog.w(TAG, "[loadPlugin], pluginId=" + i + " is not exist, do not load!!");
        return false;
    }

    private IPluginBase createPluginInstance(int i, String str) {
        Log.i(TAG, "[createPluginInstance],pluginId|" + i + "|clazzName|" + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(str);
            if (cls != null) {
                return (IPluginBase) cls.newInstance();
            }
            return null;
        } catch (Exception unused) {
            Log.e(TAG, "create pluginInstance exception, pluginId|" + i + "|clazzName|" + str + " is not install in dex!!");
            return null;
        }
    }

    private void loadPluginConfig() {
        if (this.mPluginConfigList == null) {
            this.mPluginConfigList = new ArrayList();
        }
        PluginConfigCenter.loadPluginConfig(this.mPluginConfigList);
    }
}
