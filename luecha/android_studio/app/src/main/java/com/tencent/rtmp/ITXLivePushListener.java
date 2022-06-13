package com.tencent.rtmp;

import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITXLivePushListener {
    void onNetStatus(Bundle bundle);

    void onPushEvent(int i, Bundle bundle);
}
