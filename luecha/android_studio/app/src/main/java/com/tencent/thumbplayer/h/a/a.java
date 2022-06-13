package com.tencent.thumbplayer.h.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface a {
    void onCreate(Boolean bool);

    void onRealRelease();

    void onReuseCodecAPIException(String str, Throwable th);

    void onStarted(Boolean bool, String str);

    void onTransToKeepPool();

    void onTransToRunningPool();
}
