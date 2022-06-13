package com.tencent.thumbplayer.api;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPTimeRange {
    private long mEndTimeMs;
    private long mStartTimeMs;

    public TPTimeRange(long j, long j2) {
        this.mStartTimeMs = j;
        this.mEndTimeMs = j2;
    }

    public long getEndTimeMs() {
        return this.mEndTimeMs;
    }

    public long getStartTimeMs() {
        return this.mStartTimeMs;
    }

    public void setEndTimeMs(long j) {
        this.mEndTimeMs = j;
    }

    public void setStartTimeMs(long j) {
        this.mStartTimeMs = j;
    }
}
