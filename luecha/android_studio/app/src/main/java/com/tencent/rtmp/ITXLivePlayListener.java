package com.tencent.rtmp;

import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITXLivePlayListener {
    void onNetStatus(Bundle bundle);

    void onPlayEvent(int i, Bundle bundle);
}
