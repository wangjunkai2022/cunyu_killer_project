package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class a extends d implements ITPMediaTrackClip, Serializable {
    private int a;
    private int b;
    private long c = 0;
    private long d = 0;
    private long e;

    public a(int i) {
        this.a = i;
        this.b = f.a(this.a);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public ITPMediaTrackClip clone(int i) {
        if (i != 3 && i != 2 && i != 1) {
            return null;
        }
        a aVar = new a(i);
        aVar.b = f.a(i);
        aVar.c = this.c;
        aVar.d = this.d;
        return aVar;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.b == aVar.getClipId() && this.a == aVar.getMediaType();
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public int getClipId() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getEndTimeMs() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public String getFilePath() {
        return null;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getOriginalDurationMs() {
        return this.d - this.c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartPositionMs() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartTimeMs() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return null;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setCutTimeRange(long j, long j2) {
        if (j < 0) {
            j = 0;
        }
        if (j < j2) {
            this.c = j;
            this.d = j2;
            return;
        }
        throw new IllegalArgumentException("setCutTimeRange: Start time is greater than end time");
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setOriginalDurationMs(long j) {
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setStartPositionMs(long j) {
        this.e = j;
    }
}
