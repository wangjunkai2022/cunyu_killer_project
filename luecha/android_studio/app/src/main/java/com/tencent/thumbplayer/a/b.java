package com.tencent.thumbplayer.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.FileDescriptor;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b {
    private static b a;
    private HandlerThread b;
    private c c;
    private MediaMetadataRetriever d = null;
    private int e = 0;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, int i2);

        void a(int i, long j, int i2, int i3, Bitmap bitmap, long j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.thumbplayer.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0033b {
        protected a a;
        private int b;
        private String c;
        private FileDescriptor d;
        private AssetFileDescriptor e;
        private long f;
        private int g;
        private int h;

        private C0033b() {
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_CAP_IMAGE");
                b.this.a((C0033b) message.obj);
            } else if (i != 2) {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler unknow msg");
            } else {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_STOP_CAP_IMAGE");
                if (b.this.d != null) {
                    b.this.d.release();
                    b.this.d = null;
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class d {
        public String a;
        public FileDescriptor b;
        public AssetFileDescriptor c;
        public long d;
        public int e;
        public int f;
    }

    private b() {
        this.b = null;
        this.c = null;
        try {
            this.b = o.a().b();
            this.c = new c(this.b.getLooper());
        } catch (Throwable th) {
            TPLogUtil.e("TPSysPlayerImageCapture", th);
            this.c = new c(Looper.getMainLooper());
        }
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (a == null) {
                a = new b();
            }
            bVar = a;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0033b bVar) {
        MediaMetadataRetriever mediaMetadataRetriever;
        try {
            try {
            } catch (Exception e) {
                TPLogUtil.e("TPSysPlayerImageCapture", e);
                TPLogUtil.e("TPSysPlayerImageCapture", "doRealCaptureImage, Exception: " + e.toString());
                bVar.a.a(bVar.b, 1000001);
                mediaMetadataRetriever = this.d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
            }
            if (Build.VERSION.SDK_INT >= 14) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.d != null) {
                    this.d.release();
                    this.d = null;
                }
                this.d = new MediaMetadataRetriever();
                if (Build.VERSION.SDK_INT >= 14) {
                    if (bVar.d != null) {
                        this.d.setDataSource(bVar.d);
                    } else if (bVar.e != null) {
                        this.d.setDataSource(bVar.e.getFileDescriptor(), bVar.e.getStartOffset(), bVar.e.getLength());
                    } else {
                        this.d.setDataSource(bVar.c, new HashMap());
                    }
                }
                Bitmap frameAtTime = this.d.getFrameAtTime(bVar.f * 1000, 2);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (frameAtTime != null) {
                    bVar.a.a(bVar.b, bVar.f, bVar.g, bVar.h, frameAtTime, currentTimeMillis2);
                } else {
                    bVar.a.a(bVar.b, 1000001);
                }
                mediaMetadataRetriever = this.d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
                mediaMetadataRetriever.release();
                this.d = null;
                return;
            }
            throw new Exception("os version not support");
        } catch (Throwable th) {
            MediaMetadataRetriever mediaMetadataRetriever2 = this.d;
            if (mediaMetadataRetriever2 != null) {
                mediaMetadataRetriever2.release();
                this.d = null;
            }
            throw th;
        }
    }

    public int a(d dVar, a aVar) {
        TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, position: " + dVar.d + ", width: " + dVar.e + ", height: " + dVar.f);
        this.e = this.e + 1;
        if (TextUtils.isEmpty(TPSystemInfo.getDeviceName()) || !TPSystemInfo.getDeviceName().equals("Lenovo+K900")) {
            C0033b bVar = new C0033b();
            bVar.b = this.e;
            bVar.d = dVar.b;
            bVar.e = dVar.c;
            bVar.c = dVar.a;
            bVar.f = dVar.d;
            bVar.g = dVar.e;
            bVar.h = dVar.f;
            bVar.a = aVar;
            Message message = new Message();
            message.what = 1;
            message.obj = bVar;
            if (!this.c.sendMessage(message)) {
                TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, send msg failed ");
            }
            return this.e;
        }
        TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, Lenovo+K900 no incompatible");
        return -1;
    }
}
