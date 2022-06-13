package org.chromium.support_lib_boundary;

import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ProxyControllerBoundaryInterface {
    void clearProxyOverride(Runnable runnable, Executor executor);

    void setProxyOverride(String[][] strArr, String[] strArr2, Runnable runnable, Executor executor);
}
