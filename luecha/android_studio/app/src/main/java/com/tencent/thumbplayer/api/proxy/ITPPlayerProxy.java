package com.tencent.thumbplayer.api.proxy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPPlayerProxy {
    void pushEvent(int i);

    void setIsActive(boolean z);

    void setProxyServiceType(int i);

    void setTPPlayerProxyListener(ITPPlayerProxyListener iTPPlayerProxyListener);
}
