package org.chromium.support_lib_boundary;

import android.os.Handler;
import java.lang.reflect.InvocationHandler;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebMessagePortBoundaryInterface {
    void close();

    void postMessage(InvocationHandler invocationHandler);

    void setWebMessageCallback(InvocationHandler invocationHandler);

    void setWebMessageCallback(InvocationHandler invocationHandler, Handler handler);
}
