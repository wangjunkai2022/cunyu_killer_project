package com.tencent.thumbplayer.c;

import android.text.TextUtils;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class h extends d implements ITPMediaTrackClip, Serializable {
    private int a;
    private int b;
    private long c;
    private long d;
    private String e;
    private long f;
    private long g;

    private h() {
    }

    public h(String str, int i) {
        this(str, i, 0, -1);
    }

    public h(String str, int i, long j, long j2) {
        if (!TextUtils.isEmpty(str)) {
            this.a = i;
            this.e = str;
            this.c = j;
            this.d = j2;
            if (this.c < 0) {
                this.c = 0;
            }
            if (this.d <= 0) {
                this.d = getOriginalDurationMs();
            }
            this.b = f.a(this.a);
            return;
        }
        throw new IllegalArgumentException("TPMediaCompositionTrackClip : clipPath empty");
    }

    public void a(String str) {
        this.e = str;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public ITPMediaTrackClip clone(int i) {
        if (i != 3 && i != 2 && i != 1) {
            return null;
        }
        h hVar = new h();
        hVar.a = i;
        hVar.b = f.a(this.a);
        hVar.c = this.c;
        hVar.d = this.d;
        hVar.e = this.e;
        return hVar;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.b == hVar.getClipId() && this.a == hVar.getMediaType();
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
        return this.e;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getOriginalDurationMs() {
        return this.g;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartPositionMs() {
        return this.f;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartTimeMs() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setCutTimeRange(long j, long j2) {
        if (j >= getOriginalDurationMs()) {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
        } else if (j2 <= getOriginalDurationMs()) {
            if (j < 0) {
                j = 0;
            }
            if (j2 <= 0) {
                j2 = getOriginalDurationMs();
            }
            if (j < j2) {
                this.c = j;
                this.d = j2;
                return;
            }
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than end time");
        } else {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setOriginalDurationMs(long j) {
        this.g = j;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setStartPositionMs(long j) {
        this.f = j;
    }
}
