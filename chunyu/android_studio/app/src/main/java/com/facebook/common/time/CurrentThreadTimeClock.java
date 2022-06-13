package com.facebook.common.time;

import android.os.SystemClock;

/* loaded from: classes4.dex */
public class CurrentThreadTimeClock implements Clock {
    @Override // com.facebook.common.time.Clock
    public long now() {
        return SystemClock.currentThreadTimeMillis();
    }
}
