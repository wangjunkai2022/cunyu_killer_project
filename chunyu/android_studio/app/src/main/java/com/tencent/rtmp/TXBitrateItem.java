package com.tencent.rtmp;

/* loaded from: classes2.dex */
public class TXBitrateItem implements Comparable<TXBitrateItem> {
    public int bitrate;
    public int height;
    public int index;
    public int width;

    public int compareTo(TXBitrateItem tXBitrateItem) {
        return this.bitrate - tXBitrateItem.bitrate;
    }
}
