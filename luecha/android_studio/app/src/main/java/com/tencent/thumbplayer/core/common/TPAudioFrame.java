package com.tencent.thumbplayer.core.common;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPAudioFrame {
    public static final long TP_CH_BACK_CENTER = 256;
    public static final long TP_CH_BACK_LEFT = 16;
    public static final long TP_CH_BACK_RIGHT = 32;
    public static final long TP_CH_FRONT_CENTER = 4;
    public static final long TP_CH_FRONT_LEFT = 1;
    public static final long TP_CH_FRONT_LEFT_OF_CENTER = 64;
    public static final long TP_CH_FRONT_RIGHT = 2;
    public static final long TP_CH_FRONT_RIGHT_OF_CENTER = 128;
    public static final long TP_CH_LAYOUT_2POINT1 = 11;
    public static final long TP_CH_LAYOUT_2_1 = 259;
    public static final long TP_CH_LAYOUT_2_2 = 1539;
    public static final long TP_CH_LAYOUT_3POINT1 = 15;
    public static final long TP_CH_LAYOUT_4POINT0 = 263;
    public static final long TP_CH_LAYOUT_4POINT1 = 271;
    public static final long TP_CH_LAYOUT_5POINT0 = 1543;
    public static final long TP_CH_LAYOUT_5POINT0_BACK = 55;
    public static final long TP_CH_LAYOUT_5POINT1 = 1551;
    public static final long TP_CH_LAYOUT_5POINT1_BACK = 63;
    public static final long TP_CH_LAYOUT_6POINT0 = 1799;
    public static final long TP_CH_LAYOUT_6POINT0_FRONT = 1731;
    public static final long TP_CH_LAYOUT_6POINT1 = 1807;
    public static final long TP_CH_LAYOUT_6POINT1_BACK = 319;
    public static final long TP_CH_LAYOUT_6POINT1_FRONT = 1739;
    public static final long TP_CH_LAYOUT_7POINT0 = 1591;
    public static final long TP_CH_LAYOUT_7POINT0_FRONT = 1735;
    public static final long TP_CH_LAYOUT_7POINT1 = 1599;
    public static final long TP_CH_LAYOUT_7POINT1_WIDE = 1743;
    public static final long TP_CH_LAYOUT_7POINT1_WIDE_BACK = 255;
    public static final long TP_CH_LAYOUT_HEXAGONAL = 311;
    public static final long TP_CH_LAYOUT_MONO = 4;
    public static final long TP_CH_LAYOUT_OCTAGONAL = 1847;
    public static final long TP_CH_LAYOUT_QUAD = 51;
    public static final long TP_CH_LAYOUT_STEREO = 3;
    public static final long TP_CH_LAYOUT_STEREO_DOWNMIX = 1610612736;
    public static final long TP_CH_LAYOUT_SURROUND = 7;
    public static final long TP_CH_LOW_FREQUENCY = 8;
    public static final long TP_CH_SIDE_LEFT = 512;
    public static final long TP_CH_SIDE_RIGHT = 1024;
    public static final long TP_CH_STEREO_LEFT = 536870912;
    public static final long TP_CH_STEREO_RIGHT = 1073741824;
    public static final long TP_CH_TOP_BACK_CENTER = 65536;
    public static final long TP_CH_TOP_BACK_LEFT = 32768;
    public static final long TP_CH_TOP_BACK_RIGHT = 131072;
    public static final long TP_CH_TOP_CENTER = 2048;
    public static final long TP_CH_TOP_FRONT_CENTER = 8192;
    public static final long TP_CH_TOP_FRONT_LEFT = 4096;
    public static final long TP_CH_TOP_FRONT_RIGHT = 16384;
    public long channelLayout;
    public int channels;
    public byte[][] data;
    public int format;
    public int[] linesize;
    public int nbSamples;
    public long ptsUs;
    public int sampleRate;
}
