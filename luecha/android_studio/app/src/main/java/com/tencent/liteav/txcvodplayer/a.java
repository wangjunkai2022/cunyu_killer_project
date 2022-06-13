package com.tencent.liteav.txcvodplayer;

import android.view.Surface;
import android.view.View;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: IRenderView.java */
/* loaded from: classes5.dex */
public interface a {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: IRenderView.java */
    /* renamed from: com.tencent.liteav.txcvodplayer.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface AbstractC0029a {
        void a(b bVar);

        void a(b bVar, int i, int i2);

        void a(b bVar, int i, int i2, int i3);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: IRenderView.java */
    /* loaded from: classes5.dex */
    public interface b {
        a a();

        void a(ITXVCubePlayer iTXVCubePlayer);

        Surface b();

        Surface c();
    }

    void addRenderCallback(AbstractC0029a aVar);

    View getView();

    void removeRenderCallback(AbstractC0029a aVar);

    void setAspectRatio(int i);

    void setVideoRotation(int i);

    void setVideoSampleAspectRatio(int i, int i2);

    void setVideoSize(int i, int i2);

    boolean shouldWaitForResize();
}
