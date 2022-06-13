package io.flutter.embedding.engine.dart;

import android.os.Handler;
import android.os.Looper;
import io.flutter.embedding.engine.dart.DartMessenger;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class PlatformTaskQueue implements DartMessenger.DartMessengerTaskQueue {
    private final Handler handler = new Handler(Looper.getMainLooper());

    @Override // io.flutter.embedding.engine.dart.DartMessenger.DartMessengerTaskQueue
    public void dispatch(Runnable runnable) {
        this.handler.post(runnable);
    }
}
