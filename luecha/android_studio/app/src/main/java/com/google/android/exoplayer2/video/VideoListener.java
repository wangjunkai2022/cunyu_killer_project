package com.google.android.exoplayer2.video;

@Deprecated
/* loaded from: classes2.dex */
public interface VideoListener {

    /* renamed from: com.google.android.exoplayer2.video.VideoListener$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$onRenderedFirstFrame(VideoListener videoListener) {
        }

        public static void $default$onSurfaceSizeChanged(VideoListener videoListener, int i, int i2) {
        }

        @Deprecated
        public static void $default$onVideoSizeChanged(VideoListener videoListener, int i, int i2, int i3, float f) {
        }

        public static void $default$onVideoSizeChanged(VideoListener videoListener, VideoSize videoSize) {
        }
    }

    void onRenderedFirstFrame();

    void onSurfaceSizeChanged(int i, int i2);

    @Deprecated
    void onVideoSizeChanged(int i, int i2, int i3, float f);

    void onVideoSizeChanged(VideoSize videoSize);
}
