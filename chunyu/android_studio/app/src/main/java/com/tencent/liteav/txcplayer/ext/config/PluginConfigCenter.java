package com.tencent.liteav.txcplayer.ext.config;

import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import com.tencent.liteav.txcplayer.ext.host.PluginInfo;
import java.util.List;

/* loaded from: classes2.dex */
public class PluginConfigCenter {
    private static final int[] sPluginIds = {2};
    private static final String[] sPluginName = {EngineConst.PluginName.sMonetPluginName};
    private static final int[] sPluginVersion = {1};
    private static final String[] sPluginClazzName = {EngineConst.PluginClazzName.sMonetPluginClazzName};
    private static final boolean[] sIsCorePlugin = {true};

    public static void loadPluginConfig(List<PluginInfo> list) {
        for (int i = 0; i < sPluginIds.length; i++) {
            PluginInfo pluginInfo = new PluginInfo();
            pluginInfo.mPluginId = sPluginIds[i];
            pluginInfo.mPluginName = sPluginName[i];
            pluginInfo.mPluginVersion = sPluginVersion[i];
            pluginInfo.mPluginClazzName = sPluginClazzName[i];
            pluginInfo.mIsCorePlugin = sIsCorePlugin[i];
            list.add(pluginInfo);
        }
    }
}
