package com.tencent.thumbplayer.api;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPSurfaceRenderInfo {
    public int displayWidth = -1;
    public int displayHeight = -1;
    public TPVideoCropInfo videoCropInfo = null;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TPVideoCropInfo {
        public int width = -1;
        public int height = -1;
        public int cropLeft = -1;
        public int cropRight = -1;
        public int cropTop = -1;
        public int cropBottom = -1;

        public String toString() {
            return "width:" + this.width + ", height:" + this.height + ", cropLeft:" + this.cropLeft + ", cropRight:" + this.cropRight + ", cropTop:" + this.cropTop + ", cropBottom:" + this.cropBottom;
        }
    }
}
