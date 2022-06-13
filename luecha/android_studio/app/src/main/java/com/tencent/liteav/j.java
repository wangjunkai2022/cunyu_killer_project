package com.tencent.liteav;

import android.content.Context;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.basic.b.a;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIPlayer.java */
/* loaded from: classes5.dex */
public abstract class j {
    protected Context c;
    protected WeakReference<b> e;
    protected d b = null;
    protected TXCloudVideoView d = null;

    public int a(String str) {
        return -1;
    }

    public abstract int a(String str, int i);

    public abstract int a(String str, int i, a aVar);

    public int a(String str, a aVar) {
        return -1;
    }

    public abstract int a(boolean z);

    public abstract void a(int i);

    public void a(int i, int i2) {
    }

    public void a(Surface surface) {
    }

    public abstract void a(k kVar);

    public void a(k kVar, com.tencent.liteav.basic.enums.b bVar, Object obj) {
    }

    public void a(TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener) {
    }

    public void a(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
    }

    public abstract void a(boolean z, int i);

    public abstract void b(int i);

    public abstract void b(boolean z);

    public abstract void c(int i);

    public abstract void c(boolean z);

    public abstract boolean c();

    public TextureView d() {
        return null;
    }

    public abstract void d(int i);

    public boolean d(boolean z) {
        return false;
    }

    public abstract int e();

    public abstract int e(int i);

    public boolean f() {
        return false;
    }

    public long g() {
        return 0;
    }

    public void h() {
    }

    public abstract int j();

    public j(Context context) {
        this.c = null;
        if (context != null) {
            this.c = context.getApplicationContext();
        }
    }

    public d w() {
        return this.b;
    }

    public void a(d dVar) {
        this.b = dVar;
        if (this.b == null) {
            this.b = new d();
        }
    }

    public void a() {
        TXCLog.w("TXIPlayer", "pause not support");
    }

    public void b() {
        TXCLog.w("TXIPlayer", "resume not support");
    }

    public void f(int i) {
        TXCLog.w("TXIPlayer", "seek not support");
    }

    public void a(TXCloudVideoView tXCloudVideoView) {
        this.d = tXCloudVideoView;
    }

    public void a(b bVar) {
        this.e = new WeakReference<>(bVar);
    }

    public void e(boolean z) {
        TXCLog.w("TXIPlayer", "autoPlay not implement");
    }

    public void b(float f) {
        TXCLog.w("TXIPlayer", "rate not implement");
    }
}
