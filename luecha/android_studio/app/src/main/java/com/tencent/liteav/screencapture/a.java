package com.tencent.liteav.screencapture;

import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.f;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.basic.util.j;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: VirtualDisplayManager.java */
/* loaded from: classes5.dex */
public class a {
    private static volatile a a;
    private final Context b;
    private MediaProjection f;
    private j g;
    private boolean h;
    private final Map<Surface, C0027a> d = new HashMap();
    private boolean e = false;
    private MediaProjection.Callback i = new MediaProjection.Callback() { // from class: com.tencent.liteav.screencapture.a.1
        @Override // android.media.projection.MediaProjection.Callback
        public void onStop() {
            TXCLog.e("VirtualDisplayManager", "MediaProjection session is no longer valid");
            HashMap hashMap = new HashMap(a.this.d);
            a.this.d.clear();
            for (C0027a aVar : hashMap.values()) {
                if (aVar.d != null) {
                    if (aVar.e != null) {
                        aVar.d.a();
                    } else {
                        aVar.d.a(false, false);
                    }
                }
            }
            a.this.a(false);
        }
    };
    private j.a j = new j.a() { // from class: com.tencent.liteav.screencapture.a.2
        @Override // com.tencent.liteav.basic.util.j.a
        public void onTimeout() {
            a aVar = a.this;
            boolean b2 = aVar.b(aVar.b);
            if (a.this.h != b2) {
                a.this.h = b2;
                for (C0027a aVar2 : a.this.d.values()) {
                    if (aVar2.d != null) {
                        aVar2.d.a(b2);
                    }
                }
            }
        }
    };
    private final Handler c = new f(Looper.getMainLooper());

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: VirtualDisplayManager.java */
    /* loaded from: classes5.dex */
    public interface b {
        void a();

        void a(boolean z);

        void a(boolean z, boolean z2);
    }

    public static a a(Context context) {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a(context);
                }
            }
        }
        return a;
    }

    public a(Context context) {
        this.b = context.getApplicationContext();
        this.h = b(context);
    }

    private void a() {
        for (C0027a aVar : this.d.values()) {
            if (aVar.e == null) {
                aVar.e = this.f.createVirtualDisplay("TXCScreenCapture", aVar.b, aVar.c, 1, 1, aVar.a, null, null);
                TXCLog.i("VirtualDisplayManager", "create VirtualDisplay " + aVar.e);
                if (aVar.d != null) {
                    aVar.d.a(true, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.d.isEmpty()) {
            if (z) {
                this.c.postDelayed(new Runnable() { // from class: com.tencent.liteav.screencapture.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a(false);
                    }
                }, TimeUnit.SECONDS.toMillis(1));
                return;
            }
            TXCLog.i("VirtualDisplayManager", "stop media projection session " + this.f);
            MediaProjection mediaProjection = this.f;
            if (mediaProjection != null) {
                mediaProjection.unregisterCallback(this.i);
                this.f.stop();
                this.f = null;
            }
            j jVar = this.g;
            if (jVar != null) {
                jVar.a();
                this.g = null;
            }
        }
    }

    public void a(MediaProjection mediaProjection) {
        this.e = false;
        if (mediaProjection == null) {
            HashMap hashMap = new HashMap(this.d);
            this.d.clear();
            for (C0027a aVar : hashMap.values()) {
                if (aVar.d != null) {
                    aVar.d.a(false, true);
                }
            }
            return;
        }
        TXCLog.i("VirtualDisplayManager", "Got session " + mediaProjection);
        this.f = mediaProjection;
        this.f.registerCallback(this.i, this.c);
        a();
        this.g = new j(Looper.getMainLooper(), this.j);
        this.g.a(50, 50);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Context context) {
        int g = h.g(context);
        return g == 0 || g == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: VirtualDisplayManager.java */
    /* renamed from: com.tencent.liteav.screencapture.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0027a {
        public Surface a;
        public int b;
        public int c;
        public b d;
        public VirtualDisplay e;

        private C0027a() {
        }
    }
}
