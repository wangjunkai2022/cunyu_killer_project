package com.tencent.thumbplayer.api.connection;

import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.connection.TPPlayerConnectionConstant;
import com.tencent.thumbplayer.core.connection.TPNativePlayerConnectionNode;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPPlayerConnectionNode {
    private TPNativePlayerConnectionNode nativeNode = new TPNativePlayerConnectionNode();

    public boolean addAction(@TPPlayerConnectionConstant.Action int i) {
        return this.nativeNode.addAction(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i));
    }

    public TPNativePlayerConnectionNode getNativeNode() {
        return this.nativeNode;
    }

    public void removeAction(@TPPlayerConnectionConstant.Action int i) {
        this.nativeNode.removeAction(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i));
    }

    public boolean setLongActionConfig(@TPPlayerConnectionConstant.Action int i, int i2, long j) {
        return this.nativeNode.setLongActionConfig(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i), TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionConfig.class, i2), j);
    }
}
