package com.tencent.rtmp;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXBitrateItem implements Comparable<TXBitrateItem> {
    public int bitrate;
    public int height;
    public int index;
    public int width;

    public int compareTo(TXBitrateItem tXBitrateItem) {
        return this.bitrate - tXBitrateItem.bitrate;
    }
}
