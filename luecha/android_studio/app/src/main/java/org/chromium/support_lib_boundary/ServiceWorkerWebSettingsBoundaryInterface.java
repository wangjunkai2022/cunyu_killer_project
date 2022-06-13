package org.chromium.support_lib_boundary;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ServiceWorkerWebSettingsBoundaryInterface {
    boolean getAllowContentAccess();

    boolean getAllowFileAccess();

    boolean getBlockNetworkLoads();

    int getCacheMode();

    void setAllowContentAccess(boolean z);

    void setAllowFileAccess(boolean z);

    void setBlockNetworkLoads(boolean z);

    void setCacheMode(int i);
}
