package com.tencent.thumbplayer.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.a.a;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import top.niunaijun.blackbox.core.system.user.BUserHandle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class e implements com.tencent.thumbplayer.adapter.a.b {
    private c.l A;
    private c.m B;
    private volatile MediaPlayer C;
    private com.tencent.thumbplayer.a.c E;
    private Object F;
    private a J;
    private volatile EnumC0035e Q;
    private volatile EnumC0035e R;
    private com.tencent.thumbplayer.f.a a;
    private Context b;
    private String f;
    private FileDescriptor g;
    private AssetFileDescriptor h;
    private Map<String, String> l;
    private c.i u;
    private c.AbstractC0037c v;
    private c.h w;
    private c.f x;
    private c.j y;
    private c.p z;
    private boolean c = false;
    private long d = 0;
    private long e = 0;
    private boolean i = false;
    private float j = 1.0f;
    private float k = 1.0f;
    private int m = 0;
    private long n = -1;
    private boolean o = false;
    private long p = -1;
    private int q = -1;
    private int r = -1;
    private TPAudioAttributes s = null;
    private boolean t = true;
    private Future<?> G = null;
    private final Object H = new Object();
    private long I = 25000;
    private final Object K = new Object();
    private int L = 3;
    private int M = 30;
    private final Object N = new Object();
    private Future<?> O = null;
    private boolean P = false;
    private boolean S = false;
    private long T = 0;
    private long U = -1;
    private int V = 0;
    private int W = 0;
    private volatile boolean X = false;
    private int Y = 0;
    private int Z = -1;
    private int aa = 0;
    private int ab = -1;
    private int ac = -1;
    private List<b> ad = new ArrayList();
    private List<b> ae = new ArrayList();
    private long ag = 0;
    private f ah = null;
    private MediaPlayer.OnTimedTextListener ai = new MediaPlayer.OnTimedTextListener() { // from class: com.tencent.thumbplayer.adapter.a.a.e.7
        @Override // android.media.MediaPlayer.OnTimedTextListener
        public void onTimedText(MediaPlayer mediaPlayer, TimedText timedText) {
            if (e.this.A != null) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = timedText != null ? timedText.getText() : "";
                tPSubtitleData.trackIndex = (long) e.this.Z;
                tPSubtitleData.startPositionMs = e.this.n();
                e.this.A.a(tPSubtitleData);
            }
        }
    };
    private d D = new d();
    private a af = new c();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        boolean a;
        Future<?> b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class b {
        public TPTrackInfo a;
        public String b;
        public List<TPOptionalParam> c;

        private b() {
            this.b = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class c implements Handler.Callback {
        private Handler a;

        c(Handler handler) {
            this.a = handler;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            try {
                this.a.handleMessage(message);
                return true;
            } catch (Exception e) {
                TPLogUtil.e("TPSystemMediaPlayer", "mediaPlayerExceptionHook, HookCallback, " + Log.getStackTraceString(e));
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class d implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        private d() {
        }

        private int a(int i) {
            return e.this.r > 0 ? e.this.r : i;
        }

        private int b(int i) {
            return e.this.q > 0 ? e.this.q : i;
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (e.this.o) {
                e.this.a.d("onCompletion, unknown err.");
                return;
            }
            e.this.a.c("onCompletion.");
            e.this.R = EnumC0035e.COMPLETE;
            e.this.B();
            c.AbstractC0037c cVar = e.this.v;
            if (cVar != null) {
                cVar.b();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
        @Override // android.media.MediaPlayer.OnErrorListener
        /* Code decompiled incorrectly, please refer to instructions dump */
        public boolean onError(android.media.MediaPlayer r11, int r12, int r13) {
            /*
                r10 = this;
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.COMPLETE
                r1 = 1
                if (r11 == r0) goto L_0x009e
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.STOPPED
                if (r11 == r0) goto L_0x009e
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.RELEASE
                if (r11 == r0) goto L_0x009e
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.IDLE
                if (r11 == r0) goto L_0x009e
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.ERROR
                if (r11 != r0) goto L_0x0034
                goto L_0x009e
            L_0x0034:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.f.a r11 = com.tencent.thumbplayer.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "onError, what: "
                r0.append(r2)
                r0.append(r12)
                java.lang.String r2 = ", extra: "
                r0.append(r2)
                r0.append(r13)
                java.lang.String r0 = r0.toString()
                r11.c(r0)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.h(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.q(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0035e.ERROR
                com.tencent.thumbplayer.adapter.a.a.e.a(r11, r0)
                r11 = -1010(0xfffffffffffffc0e, float:NaN)
                r0 = 2001(0x7d1, float:2.804E-42)
                r2 = 2000(0x7d0, float:2.803E-42)
                if (r13 == r11) goto L_0x0085
                r11 = -1007(0xfffffffffffffc11, float:NaN)
                if (r13 == r11) goto L_0x0085
                r11 = -110(0xffffffffffffff92, float:NaN)
                if (r13 == r11) goto L_0x0083
                switch(r13) {
                    case -1005: goto L_0x0083;
                    case -1004: goto L_0x0083;
                    case -1003: goto L_0x0083;
                    default: goto L_0x007a;
                }
            L_0x007a:
                if (r12 == r1) goto L_0x0085
                r11 = 100
                if (r12 == r11) goto L_0x0083
                r11 = 200(0xc8, float:2.8E-43)
                goto L_0x0085
            L_0x0083:
                r4 = r0
                goto L_0x0086
            L_0x0085:
                r4 = r2
            L_0x0086:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.g(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$f r3 = com.tencent.thumbplayer.adapter.a.a.e.i(r11)
                if (r3 == 0) goto L_0x009d
                int r5 = com.tencent.thumbplayer.adapter.a.a.e.d(r12)
                long r6 = (long) r13
                r8 = 0
                r3.a(r4, r5, r6, r8)
            L_0x009d:
                return r1
            L_0x009e:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.f.a r11 = com.tencent.thumbplayer.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "onError, illegal state:"
                r0.append(r2)
                com.tencent.thumbplayer.adapter.a.a.e r2 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r2 = com.tencent.thumbplayer.adapter.a.a.e.e(r2)
                r0.append(r2)
                java.lang.String r2 = ", what:"
                r0.append(r2)
                r0.append(r12)
                java.lang.String r12 = ", extra:"
                r0.append(r12)
                r0.append(r13)
                java.lang.String r12 = r0.toString()
                r11.c(r12)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.d.onError(android.media.MediaPlayer, int, int):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
            if (r12.a.w != null) goto L_0x0055;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
            r12.a.w.a(r14, 0, 0, null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0089, code lost:
            if (r12.a.w != null) goto L_0x0055;
         */
        @Override // android.media.MediaPlayer.OnInfoListener
        /* Code decompiled incorrectly, please refer to instructions dump */
        public boolean onInfo(android.media.MediaPlayer r13, int r14, int r15) {
            /*
                r12 = this;
                com.tencent.thumbplayer.adapter.a.a.e r0 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.f.a r0 = com.tencent.thumbplayer.adapter.a.a.e.c(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "mediaplayer, onInfo. what:"
                r1.append(r2)
                r1.append(r14)
                java.lang.String r2 = ", extra:"
                r1.append(r2)
                r1.append(r15)
                java.lang.String r15 = r1.toString()
                r0.c(r15)
                r15 = 3
                r0 = 201(0xc9, float:2.82E-43)
                r1 = 106(0x6a, float:1.49E-43)
                r2 = 1
                r3 = 200(0xc8, float:2.8E-43)
                r4 = -1
                if (r14 == r15) goto L_0x0045
                r15 = 801(0x321, float:1.122E-42)
                if (r14 == r15) goto L_0x003f
                r15 = 701(0x2bd, float:9.82E-43)
                if (r14 == r15) goto L_0x003d
                r15 = 702(0x2be, float:9.84E-43)
                if (r14 == r15) goto L_0x003b
            L_0x0039:
                r14 = r4
                goto L_0x0046
            L_0x003b:
                r14 = r0
                goto L_0x0046
            L_0x003d:
                r14 = r3
                goto L_0x0046
            L_0x003f:
                com.tencent.thumbplayer.adapter.a.a.e r14 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.b(r14, r2)
                goto L_0x0039
            L_0x0045:
                r14 = r1
            L_0x0046:
                if (r14 == r4) goto L_0x008c
                if (r3 == r14) goto L_0x0065
                if (r0 != r14) goto L_0x004d
                goto L_0x0065
            L_0x004d:
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$h r15 = com.tencent.thumbplayer.adapter.a.a.e.d(r15)
                if (r15 == 0) goto L_0x008c
            L_0x0055:
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$h r5 = com.tencent.thumbplayer.adapter.a.a.e.d(r15)
                r7 = 0
                r9 = 0
                r11 = 0
                r6 = r14
                r5.a(r6, r7, r9, r11)
                goto L_0x008c
            L_0x0065:
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                boolean r15 = com.tencent.thumbplayer.adapter.a.a.e.s(r15)
                if (r15 != 0) goto L_0x008c
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                if (r3 != r14) goto L_0x007a
                com.tencent.thumbplayer.adapter.a.a.e.a(r15, r2)
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.t(r15)
                goto L_0x0083
            L_0x007a:
                r0 = 0
                com.tencent.thumbplayer.adapter.a.a.e.a(r15, r0)
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.l(r15)
            L_0x0083:
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$h r15 = com.tencent.thumbplayer.adapter.a.a.e.d(r15)
                if (r15 == 0) goto L_0x008c
                goto L_0x0055
            L_0x008c:
                if (r14 != r1) goto L_0x00db
                int r14 = r13.getVideoWidth()
                int r14 = r12.a(r14)
                int r13 = r13.getVideoHeight()
                int r13 = r12.b(r13)
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                int r15 = com.tencent.thumbplayer.adapter.a.a.e.u(r15)
                if (r13 != r15) goto L_0x00ae
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                int r15 = com.tencent.thumbplayer.adapter.a.a.e.v(r15)
                if (r14 == r15) goto L_0x00db
            L_0x00ae:
                if (r13 <= 0) goto L_0x00db
                if (r14 <= 0) goto L_0x00db
                com.tencent.thumbplayer.adapter.a.a.e r15 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.a(r15, r13)
                com.tencent.thumbplayer.adapter.a.a.e r13 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.b(r13, r14)
                com.tencent.thumbplayer.adapter.a.a.e r13 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$p r13 = com.tencent.thumbplayer.adapter.a.a.e.w(r13)
                if (r13 == 0) goto L_0x00db
                com.tencent.thumbplayer.adapter.a.a.e r13 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$p r13 = com.tencent.thumbplayer.adapter.a.a.e.w(r13)
                com.tencent.thumbplayer.adapter.a.a.e r14 = com.tencent.thumbplayer.adapter.a.a.e.this
                int r14 = com.tencent.thumbplayer.adapter.a.a.e.v(r14)
                long r14 = (long) r14
                com.tencent.thumbplayer.adapter.a.a.e r0 = com.tencent.thumbplayer.adapter.a.a.e.this
                int r0 = com.tencent.thumbplayer.adapter.a.a.e.u(r0)
                long r0 = (long) r0
                r13.a(r14, r0)
            L_0x00db:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.d.onInfo(android.media.MediaPlayer, int, int):boolean");
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (e.this.Q != EnumC0035e.PREPARING) {
                com.tencent.thumbplayer.f.a aVar = e.this.a;
                aVar.c("onPrepared() is called in a wrong situation, mState = " + e.this.Q);
                return;
            }
            e.this.R = EnumC0035e.PREPARED;
            long duration = (long) e.this.C.getDuration();
            if (duration <= 0) {
                e.this.P = true;
            }
            com.tencent.thumbplayer.f.a aVar2 = e.this.a;
            aVar2.c("onPrepared() , mStartPositionMs=" + e.this.m + ", duration:" + duration + ", mIsLive:" + e.this.o);
            e.this.z();
            e.this.v();
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (e.this.C != null) {
                e.this.a.c("onSeekComplete().");
                if (e.this.Q == EnumC0035e.STARTED && e.this.R == EnumC0035e.COMPLETE) {
                    e.this.Q = EnumC0035e.STARTED;
                    e.this.R = EnumC0035e.STARTED;
                    e.this.C.start();
                }
                if (EnumC0035e.PREPARED != e.this.Q && e.this.y != null) {
                    e.this.y.c();
                }
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            if (i == 0 || i2 == 0) {
                com.tencent.thumbplayer.f.a aVar = e.this.a;
                aVar.e("onVideoSizeChanged() size error, width:" + i + " height:" + i2);
                return;
            }
            int a = a(i);
            int b = b(i2);
            try {
                if (!(a == e.this.V && b == e.this.W) && b > 0 && a > 0) {
                    e.this.z.a((long) a, (long) b);
                }
            } catch (Exception e) {
                e.this.a.d(e.toString());
            }
            e.this.V = a;
            e.this.W = b;
            com.tencent.thumbplayer.f.a aVar2 = e.this.a;
            aVar2.c("onVideoSizeChanged(), width:" + a + " height:" + b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.thumbplayer.adapter.a.a.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public enum EnumC0035e {
        IDLE,
        INITIALIZED,
        PREPARING,
        PREPARED,
        STARTED,
        PAUSED,
        STOPPED,
        COMPLETE,
        ERROR,
        RELEASE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class f {
        int a;
        long b;
        long c;
        int d;
        int e;
        int f;
        String g;
        EnumC0035e h;

        private f() {
        }
    }

    public e(Context context, com.tencent.thumbplayer.f.b bVar) {
        this.a = new com.tencent.thumbplayer.f.a(bVar, "TPSystemMediaPlayer");
        this.b = context;
        b bVar2 = new b();
        bVar2.a = new TPTrackInfo();
        bVar2.a.isSelected = true;
        bVar2.a.name = "audio_1";
        this.ad.add(bVar2);
        b();
        this.af.a(new a.AbstractC0034a() { // from class: com.tencent.thumbplayer.adapter.a.a.e.1
            @Override // com.tencent.thumbplayer.adapter.a.a.a.AbstractC0034a
            public void a(a.d dVar) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = dVar.a;
                c.l lVar = e.this.A;
                if (lVar != null) {
                    lVar.a(tPSubtitleData);
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.AbstractC0034a
            public void a(TPSubtitleFrame tPSubtitleFrame) {
                TPSubtitleFrameBuffer a2 = com.tencent.thumbplayer.adapter.a.b.c.a(tPSubtitleFrame);
                c.m mVar = e.this.B;
                if (mVar != null) {
                    mVar.a(a2);
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.AbstractC0034a
            public void a(String str) {
                com.tencent.thumbplayer.f.a aVar = e.this.a;
                aVar.c("onSubtitleNote, " + str);
                c.h hVar = e.this.w;
                if (hVar != null) {
                    hVar.a(506, 0, 0, str);
                }
            }
        });
        this.af.a(new a.c() { // from class: com.tencent.thumbplayer.adapter.a.a.e.2
            @Override // com.tencent.thumbplayer.adapter.a.a.a.c
            public long a() {
                if (e.this.Q == EnumC0035e.PAUSED || e.this.Q == EnumC0035e.STARTED) {
                    return e.this.n();
                }
                return -1;
            }
        });
        this.af.a(new a.b() { // from class: com.tencent.thumbplayer.adapter.a.a.e.3
            @Override // com.tencent.thumbplayer.adapter.a.a.a.b
            public void a(int i, long j) {
                if (e.this.w != null) {
                    e.this.w.a(4, 2000, (long) e.g(i), Long.valueOf(j));
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.b
            public void a(long j) {
                if (e.this.Q == EnumC0035e.STARTED) {
                    e.this.af.b();
                }
                if (e.this.w != null) {
                    e.this.w.a(4, 1000, 0, Long.valueOf(j));
                }
            }
        });
    }

    private void A() {
        synchronized (this.K) {
            if (!F()) {
                this.a.c("startCheckBufferingTimer, forbidden check buffer by position");
                return;
            }
            if (this.J == null) {
                this.J = new a();
                final a aVar = this.J;
                this.J.a = false;
                this.J.b = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.5
                    @Override // java.lang.Runnable
                    public void run() {
                        while (!aVar.a) {
                            e.this.C();
                            try {
                                Thread.sleep(400);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }, 0, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void B() {
        synchronized (this.K) {
            if (this.J != null) {
                this.J.a = true;
                if (this.J.b != null) {
                    this.J.b.cancel(true);
                }
                this.J.b = null;
                this.J = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        long n = n();
        long j = this.U;
        this.U = n;
        if (this.Q == EnumC0035e.STARTED) {
            if (this.c) {
                long j2 = this.e;
                if (j2 > 0 && n >= j2 && !this.P) {
                    this.a.c("checkBuffingEvent, loopback skip end, curPosition:" + n + ", mLoopStartPositionMs:" + this.d);
                    this.C.seekTo((int) this.d);
                }
            } else if (this.n > 0 && n >= m() - this.n) {
                this.a.c("checkBuffingEvent, skip end, mBaseDuration: " + this.T + ", curPosition:" + n + ", mSkipEndMilsec:" + this.n);
                this.Q = EnumC0035e.COMPLETE;
                e();
                B();
                c.AbstractC0037c cVar = this.v;
                if (cVar != null) {
                    cVar.b();
                    return;
                }
                return;
            }
            int i = (n > j ? 1 : (n == j ? 0 : -1));
            if (i != 0) {
                this.ag++;
            }
            if (i != 0 || n <= 0) {
                if (this.X) {
                    this.a.c("checkBuffingEvent, position change, send end buffering");
                    c.h hVar = this.w;
                    if (hVar != null) {
                        hVar.a(201, n, this.T, Long.valueOf(this.ag));
                    }
                }
                this.X = false;
                this.Y = 0;
                return;
            }
            int i2 = this.Y + 1;
            this.Y = i2;
            if (i2 >= this.L && !this.X) {
                this.X = true;
                this.a.c("checkBuffingEvent, position no change,send start buffering");
                c.h hVar2 = this.w;
                if (hVar2 != null) {
                    hVar2.a(200, n, this.T, Long.valueOf(this.ag));
                }
            }
            if (this.Y >= this.M) {
                this.a.e("checkBuffingEvent post error");
                this.Q = EnumC0035e.ERROR;
                e();
                this.X = false;
                B();
                c.f fVar = this.x;
                if (fVar != null) {
                    fVar.a(2001, g(-110), 0, 0);
                }
            }
        } else if (this.Q == EnumC0035e.PAUSED && this.X) {
            this.a.c("checkBuffingEvent, pause state and send end buffering");
            this.X = false;
            this.Y = 0;
            c.h hVar3 = this.w;
            if (hVar3 != null) {
                hVar3.a(201, 0, 0, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        synchronized (this.N) {
            if (this.O == null) {
                this.O = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (e.this.Q != EnumC0035e.PAUSED && e.this.X) {
                            e.this.a.e("startCheckBufferTimeOutByInfo, buffer last too long");
                            e.this.Q = EnumC0035e.ERROR;
                            e.this.e();
                            e.this.X = false;
                            e.this.E();
                            c.f fVar = e.this.x;
                            if (fVar != null) {
                                fVar.a(2001, e.g(-110), 0, 0);
                            }
                        }
                    }
                }, (long) (this.M * 400), TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void E() {
        synchronized (this.N) {
            if (this.O != null) {
                this.O.cancel(true);
                this.O = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean F() {
        if (this.o) {
            return false;
        }
        return this.t;
    }

    private MediaPlayer a() {
        b bVar = new b();
        if (Build.VERSION.SDK_INT <= 19) {
            a(bVar);
        }
        bVar.setOnPreparedListener(this.D);
        bVar.setOnCompletionListener(this.D);
        bVar.setOnErrorListener(this.D);
        bVar.setOnInfoListener(this.D);
        bVar.setOnBufferingUpdateListener(this.D);
        bVar.setOnSeekCompleteListener(this.D);
        bVar.setOnVideoSizeChangedListener(this.D);
        if (Build.VERSION.SDK_INT >= 16) {
            bVar.setOnTimedTextListener(this.ai);
        }
        return bVar;
    }

    private void a(MediaPlayer mediaPlayer) {
        try {
            Field declaredField = MediaPlayer.class.getDeclaredField("mEventHandler");
            declaredField.setAccessible(true);
            Handler handler = (Handler) declaredField.get(mediaPlayer);
            Field declaredField2 = Handler.class.getDeclaredField("mCallback");
            declaredField2.setAccessible(true);
            if (((Handler.Callback) declaredField2.get(handler)) == null) {
                declaredField2.set(handler, new c(handler));
            }
        } catch (Exception e) {
            com.tencent.thumbplayer.f.a aVar = this.a;
            aVar.e("mediaPlayerExceptionHook, " + Log.getStackTraceString(e));
        }
    }

    private void a(MediaPlayer mediaPlayer, int i, @TPCommonEnum.TPSeekMode int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            this.a.c("os ver is too low, current sdk int:" + Build.VERSION.SDK_INT + ", is less than 26, use seekTo(int positionMs) instead");
            mediaPlayer.seekTo(i);
            return;
        }
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 2) {
                i3 = 1;
            } else if (i2 == 3) {
                i3 = 2;
            }
        }
        try {
            mediaPlayer.seekTo((long) i, i3);
        } catch (Exception e) {
            this.a.a(e);
            try {
                if (this.R == EnumC0035e.COMPLETE) {
                    this.Q = EnumC0035e.STARTED;
                }
                mediaPlayer.seekTo(i);
            } catch (Exception e2) {
                this.a.a(e2);
            }
        }
    }

    private synchronized void a(f fVar) {
        String str = fVar.g;
        fVar.c = n();
        fVar.h = this.Q;
        fVar.e = this.ac;
        fVar.f = this.Z;
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("playerResetStart, pos:" + fVar.c + ", state:" + fVar.h);
        this.S = true;
        u();
        this.R = EnumC0035e.IDLE;
        if (this.g != null) {
            this.C.setDataSource(this.g);
        } else if (this.h != null) {
            b(this.h);
        } else {
            e(fVar.d);
            if (this.l == null || this.l.isEmpty()) {
                this.C.setDataSource(str);
            } else {
                this.C.setDataSource(this.b, Uri.parse(str), this.l);
            }
        }
        this.R = EnumC0035e.INITIALIZED;
        if (this.F == null) {
            this.C.setDisplay(null);
        } else if (this.F instanceof SurfaceHolder) {
            this.C.setDisplay((SurfaceHolder) this.F);
        } else if (this.F instanceof Surface) {
            this.C.setSurface((Surface) this.F);
        }
        f fVar2 = this.ah;
        if (!(fVar2 == null || fVar2.a == fVar.a)) {
            c.h hVar = this.w;
            int i = fVar2.a == 1 ? 3 : 4;
            if (hVar != null) {
                hVar.a(i, fVar2.b, 0, null);
            }
            fVar.h = fVar2.h;
            fVar.c = fVar2.c;
        }
        this.ah = fVar;
        if (fVar.h == EnumC0035e.PREPARING || fVar.h == EnumC0035e.PREPARED || fVar.h == EnumC0035e.STARTED || fVar.h == EnumC0035e.PAUSED) {
            g();
        }
    }

    private void a(TPAudioAttributes tPAudioAttributes) {
        if (tPAudioAttributes != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                this.C.setAudioAttributes(this.s.toAndroidMediaAudioAttributes());
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.c("set audio attributes into MediaPlayer, API:" + Build.VERSION.SDK_INT + ">=21, " + this.s.toString());
                return;
            }
            int usageToAndroidMediaStreamType = TPAudioAttributes.usageToAndroidMediaStreamType(tPAudioAttributes.getUsage());
            this.C.setAudioStreamType(usageToAndroidMediaStreamType);
            com.tencent.thumbplayer.f.a aVar2 = this.a;
            aVar2.c("set audio attributes into MediaPlayer, API:" + Build.VERSION.SDK_INT + "<21, Usage:" + tPAudioAttributes.getUsage() + "=>StreamType:" + usageToAndroidMediaStreamType);
        }
    }

    private boolean a(EnumC0035e eVar) {
        return eVar == EnumC0035e.PREPARED || eVar == EnumC0035e.STARTED || eVar == EnumC0035e.PAUSED;
    }

    private void b() {
        this.C = a();
        this.Q = EnumC0035e.IDLE;
        this.R = EnumC0035e.IDLE;
    }

    private void b(AssetFileDescriptor assetFileDescriptor) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.C.setDataSource(assetFileDescriptor);
        } else {
            this.C.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    private boolean b(EnumC0035e eVar) {
        return eVar != EnumC0035e.RELEASE;
    }

    private void c() {
        if (a(this.R)) {
            this.R = EnumC0035e.STOPPED;
            this.a.c("MediaPlayer stop.");
            this.C.stop();
        }
    }

    private void d() {
        if (b(this.R)) {
            this.R = EnumC0035e.RELEASE;
            this.a.c("MediaPlayer release.");
            this.C.release();
        }
    }

    private void d(int i, long j) {
        f fVar = new f();
        fVar.b = j;
        fVar.d = i;
        fVar.a = 2;
        fVar.g = this.f;
        a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        x();
        c();
        d();
    }

    private void e(int i) {
        if (i > 0) {
            b bVar = this.ad.get(i);
            c.h hVar = this.w;
            if (hVar != null) {
                TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
                tPAudioTrackInfo.audioTrackUrl = bVar.b;
                tPAudioTrackInfo.paramData = bVar.c;
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.c("handleDataSource, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
                hVar.a(1011, 0, 0, tPAudioTrackInfo);
            }
        }
    }

    private void e(int i, long j) {
        this.af.e();
        this.af.a(this.ae.get(i).b, j);
        this.af.a();
    }

    private int f(int i) {
        if (2 == i) {
            return 2;
        }
        if (1 == i) {
            return 1;
        }
        return 4 == i ? 3 : 0;
    }

    private void f(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("deselectSubTrack, trackIndex:" + i + ", opaque:" + j);
        this.af.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(int i) {
        long j = (long) i;
        long j2 = i < 0 ? 10000000 - j : 10000000 + j;
        if (j2 >= 2147483647L) {
            j2 = 2147483647L;
        }
        return (int) j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void u() {
        /*
            r5 = this;
            r5.z()
            r5.B()
            r5.E()
            r5.e()
            com.tencent.thumbplayer.adapter.a.a.b r0 = new com.tencent.thumbplayer.adapter.a.a.b
            r0.<init>()
            r5.C = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 > r1) goto L_0x001e
            android.media.MediaPlayer r0 = r5.C
            r5.a(r0)
        L_0x001e:
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnPreparedListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnCompletionListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnErrorListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnInfoListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnBufferingUpdateListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnSeekCompleteListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r5.D
            r0.setOnVideoSizeChangedListener(r1)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 < r1) goto L_0x005c
            android.media.MediaPlayer r0 = r5.C
            android.media.MediaPlayer$OnTimedTextListener r1 = r5.ai
            r0.setOnTimedTextListener(r1)
        L_0x005c:
            boolean r0 = r5.i
            if (r0 == 0) goto L_0x0067
            android.media.MediaPlayer r0 = r5.C
            r1 = 0
        L_0x0063:
            r0.setVolume(r1, r1)
            goto L_0x0074
        L_0x0067:
            float r0 = r5.j
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0074
            android.media.MediaPlayer r0 = r5.C
            float r1 = r5.j
            goto L_0x0063
        L_0x0074:
            float r0 = r5.k
            double r1 = (double) r0
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L_0x0080
            r5.b(r0)
        L_0x0080:
            boolean r0 = r5.c
            if (r0 == 0) goto L_0x008b
            android.media.MediaPlayer r0 = r5.C
            boolean r1 = r5.c
            r0.setLooping(r1)
        L_0x008b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.u():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void v() {
        f fVar = this.ah;
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("playerResetEnd, actionInfo:" + fVar + ", mSuspend:" + this.S);
        if (fVar == null || !this.S) {
            if (this.m > 0 && !this.P) {
                com.tencent.thumbplayer.f.a aVar2 = this.a;
                aVar2.c("onPrepared(), and seekto:" + this.m);
                try {
                    this.C.seekTo(this.m);
                } catch (Exception e) {
                    this.a.a(e);
                }
            }
            this.Q = EnumC0035e.PREPARED;
            c.i iVar = this.u;
            if (iVar != null) {
                iVar.a();
            }
            return;
        }
        c.h hVar = this.w;
        int i = fVar.a == 1 ? 3 : 4;
        if (hVar != null) {
            hVar.a(i, 1000, 0, Long.valueOf(fVar.b));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (fVar.e > 0) {
                this.C.selectTrack(fVar.e);
            }
            if (fVar.f > 0) {
                this.C.selectTrack(fVar.f);
            }
        }
        if (fVar.c > 0 && !this.P) {
            com.tencent.thumbplayer.f.a aVar3 = this.a;
            aVar3.c("playerResetEnd, onPrepared(), and seek to:" + fVar.c);
            try {
                this.C.seekTo((int) fVar.c);
            } catch (Exception e2) {
                this.a.a(e2);
            }
        }
        com.tencent.thumbplayer.f.a aVar4 = this.a;
        aVar4.c("playerResetEnd, restore state:" + fVar.h);
        if (!(fVar.h == EnumC0035e.IDLE || fVar.h == EnumC0035e.INITIALIZED || fVar.h == EnumC0035e.PREPARING)) {
            if (!(fVar.h == EnumC0035e.PREPARED || fVar.h == EnumC0035e.PAUSED)) {
                if (fVar.h == EnumC0035e.STARTED) {
                    this.a.c("playerResetEnd,  MediaPlayer.start().");
                    this.C.start();
                    this.Q = fVar.h;
                    this.R = EnumC0035e.STARTED;
                    A();
                } else {
                    com.tencent.thumbplayer.f.a aVar5 = this.a;
                    aVar5.e("illegal state, state:" + fVar.h);
                    this.Q = EnumC0035e.ERROR;
                    e();
                    c.f fVar2 = this.x;
                    if (fVar2 != null) {
                        fVar2.a(2000, g(-10004), 0, 0);
                    }
                }
                this.S = false;
                this.ah = null;
                return;
            }
            this.Q = fVar.h;
            this.S = false;
            this.ah = null;
            return;
        }
        this.Q = EnumC0035e.PREPARED;
        c.i iVar2 = this.u;
        if (iVar2 != null) {
            iVar2.a();
        }
        this.S = false;
        this.ah = null;
        return;
    }

    private void w() {
        a(this.s);
    }

    private void x() {
        this.C.setOnPreparedListener(null);
        this.C.setOnCompletionListener(null);
        this.C.setOnErrorListener(null);
        this.C.setOnInfoListener(null);
        this.C.setOnBufferingUpdateListener(null);
        this.C.setOnSeekCompleteListener(null);
        this.C.setOnVideoSizeChangedListener(null);
    }

    private void y() {
        this.a.c("startCheckPrepareTimeoutTimer");
        synchronized (this.H) {
            if (this.G == null) {
                this.G = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (e.this.Q == EnumC0035e.PREPARING) {
                            e.this.a.e("startCheckPrepareTimeoutTimer, post error");
                            e.this.Q = EnumC0035e.ERROR;
                            e.this.e();
                            e.this.z();
                            c.f fVar = e.this.x;
                            if (fVar != null) {
                                fVar.a(2001, e.g(-110), 0, 0);
                            }
                        }
                    }
                }, this.I, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void z() {
        synchronized (this.H) {
            if (this.G != null) {
                this.G.cancel(true);
                this.G = null;
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f2) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setAudioGainRatio, : " + f2);
        this.j = f2;
        try {
            if (this.C != null) {
                this.C.setVolume(this.j, this.j);
            }
        } catch (IllegalStateException e) {
            com.tencent.thumbplayer.f.a aVar2 = this.a;
            aVar2.c("setAudioGainRatio ex : " + e.toString());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("seekTo, position: " + i);
        if (this.P) {
            this.a.c("current media is not seekable, ignore");
        } else if (this.S) {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.c = (long) i;
            }
        } else {
            if (this.R == EnumC0035e.COMPLETE) {
                this.Q = EnumC0035e.STARTED;
            }
            this.C.seekTo(i);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("seekTo, position: " + i + ", mode: " + i2);
        if (this.P) {
            this.a.c("current media is not seekable, ignore");
        } else if (this.S) {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.c = (long) i;
            }
        } else {
            a(this.C, i, i2);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("selectTrack, trackID:" + i + ", opaque:" + j);
        int size = this.ad.size();
        int size2 = this.ae.size();
        this.ad.size();
        c.h hVar = this.w;
        if (i >= 0 && i < size) {
            try {
                d(i, j);
                this.ad.get(this.aa).a.isSelected = false;
                this.ad.get(i).a.isSelected = true;
                this.aa = i;
            } catch (Exception e) {
                this.a.a(e);
                if (hVar != null) {
                    hVar.a(4, 2000, (long) g((int) BUserHandle.USER_NULL), Long.valueOf(j));
                }
            }
        } else if (i < size || i >= size + size2) {
            int i2 = i - (size + size2);
            if (Build.VERSION.SDK_INT < 16) {
                this.a.e("selectTrack, android mediaplayer not support ");
                if (hVar != null) {
                    hVar.a(4, 2000, (long) g(-10001), Long.valueOf(j));
                }
            } else if (this.Q == EnumC0035e.PREPARED || this.Q == EnumC0035e.STARTED || this.Q == EnumC0035e.PAUSED) {
                MediaPlayer.TrackInfo[] trackInfoArr = null;
                try {
                    trackInfoArr = this.C.getTrackInfo();
                } catch (Exception unused) {
                    this.a.e("getTrackInfo, android getTrackInfo crash");
                }
                if (trackInfoArr != null && trackInfoArr.length > i2) {
                    MediaPlayer.TrackInfo trackInfo = trackInfoArr[i2];
                    if (trackInfo.getTrackType() == 2) {
                        this.ac = i2;
                    } else if (trackInfo.getTrackType() == 4) {
                        this.Z = i2;
                    } else if (hVar != null) {
                        hVar.a(4, 2000, (long) g(-10003), Long.valueOf(j));
                        return;
                    } else {
                        return;
                    }
                    this.C.selectTrack(i2);
                    if (hVar != null) {
                        hVar.a(4, 1000, 0, Long.valueOf(j));
                    }
                } else if (hVar != null) {
                    hVar.a(4, 2000, (long) g(-10002), Long.valueOf(j));
                }
            } else {
                com.tencent.thumbplayer.f.a aVar2 = this.a;
                aVar2.e("selectTrack, illegal state:" + this.Q);
            }
        } else {
            int i3 = i - size;
            try {
                e(i3, j);
            } catch (Exception e2) {
                this.a.a(e2);
                if (hVar != null) {
                    hVar.a(4, 2000, (long) g((int) BUserHandle.USER_NULL), Long.valueOf(j));
                }
            }
            int i4 = this.ab;
            if (i4 >= 0 && i4 < size2) {
                this.ae.get(i4).a.isSelected = false;
            }
            this.ae.get(i3).a.isSelected = true;
            this.ab = i;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor != null) {
            com.tencent.thumbplayer.f.a aVar = this.a;
            aVar.c("setDataSource afd， afd: " + assetFileDescriptor.toString());
            this.h = assetFileDescriptor;
            b(assetFileDescriptor);
            this.E = new com.tencent.thumbplayer.a.c(assetFileDescriptor);
            this.Q = EnumC0035e.INITIALIZED;
            this.R = EnumC0035e.INITIALIZED;
            return;
        }
        this.a.c("setDataSource afd is null ");
        throw new IllegalArgumentException("afd is null");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            com.tencent.thumbplayer.f.a aVar = this.a;
            aVar.c("setDataSource pfd， pfd: " + parcelFileDescriptor.toString());
            this.g = parcelFileDescriptor.getFileDescriptor();
            this.C.setDataSource(parcelFileDescriptor.getFileDescriptor());
            this.E = new com.tencent.thumbplayer.a.c(parcelFileDescriptor.getFileDescriptor());
            this.Q = EnumC0035e.INITIALIZED;
            this.R = EnumC0035e.INITIALIZED;
            return;
        }
        this.a.c("setDataSource pfd is null ");
        throw new IllegalArgumentException("pfd is null");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setSurface, surface: " + surface);
        this.F = surface;
        this.C.setSurface(surface);
        com.tencent.thumbplayer.f.a aVar2 = this.a;
        aVar2.c("setSurface over, surface: " + surface);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setSurfaceHolder, sh: " + surfaceHolder);
        this.F = surfaceHolder;
        this.C.setDisplay(surfaceHolder);
        com.tencent.thumbplayer.f.a aVar2 = this.a;
        aVar2.c("setSurfaceHolder over, sh: " + surfaceHolder);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.AbstractC0037c cVar) {
        this.v = cVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.x = fVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.w = hVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.u = iVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.y = jVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.A = lVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.B = mVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.z = pVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        if (this.E != null) {
            TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
            tPImageGeneratorParams.width = tPCaptureParams.width;
            tPImageGeneratorParams.height = tPCaptureParams.height;
            tPImageGeneratorParams.format = tPCaptureParams.format;
            tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
            tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
            this.E.a(n(), tPImageGeneratorParams, tPCaptureCallBack);
            return;
        }
        tPCaptureCallBack.onCaptureVideoFailed(1000013);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        com.tencent.thumbplayer.f.a aVar;
        StringBuilder sb;
        int i;
        String str;
        StringBuilder sb2;
        com.tencent.thumbplayer.f.a aVar2;
        String str2;
        int key = tPOptionalParam.getKey();
        if (key != 1) {
            if (key == 2) {
                this.r = (int) tPOptionalParam.getParamLong().value;
                aVar = this.a;
                sb = new StringBuilder();
                sb.append("setPlayerOptionalParam, video width:");
                i = this.r;
            } else if (key != 3) {
                if (key == 4) {
                    this.o = tPOptionalParam.getParamBoolean().value;
                    this.P = true;
                    aVar = this.a;
                    sb = new StringBuilder();
                    sb.append("setPlayerOptionalParam, is live:");
                    sb.append(this.o);
                } else if (key != 5) {
                    if (key == 7) {
                        this.L = (int) (tPOptionalParam.getParamLong().value / 400);
                        aVar2 = this.a;
                        sb2 = new StringBuilder();
                        str = "setPlayerOptionalParam, on buffer timeout:";
                    } else if (key == 100) {
                        this.m = (int) tPOptionalParam.getParamLong().value;
                        aVar = this.a;
                        sb = new StringBuilder();
                        sb.append("setPlayerOptionalParam, start position:");
                        i = this.m;
                    } else if (key == 107) {
                        this.M = (int) ((tPOptionalParam.getParamLong().value + 400) / 400);
                        aVar2 = this.a;
                        sb2 = new StringBuilder();
                        str = "setPlayerOptionalParam, buffer timeout:";
                    } else if (key == 128) {
                        this.I = tPOptionalParam.getParamLong().value;
                        aVar = this.a;
                        sb = new StringBuilder();
                        sb.append("setPlayerOptionalParam, prepare timeout:");
                        sb.append(this.I);
                        sb.append("(ms)");
                    } else if (key != 414) {
                        if (key == 450) {
                            int i2 = (int) tPOptionalParam.getParamLong().value;
                            a aVar3 = this.af;
                            if (aVar3 != null) {
                                aVar3.a(i2);
                            }
                            str2 = "setPlayerOptionalParam, subtitle type:" + tPOptionalParam.getParamLong().value;
                        } else if (key == 500) {
                            this.n = tPOptionalParam.getParamLong().value;
                            aVar = this.a;
                            sb = new StringBuilder();
                            sb.append("setPlayerOptionalParam, skip end position:");
                            sb.append(this.n);
                        } else if (key == 507) {
                            TPSubtitleRenderModel tPSubtitleRenderModel = (TPSubtitleRenderModel) tPOptionalParam.getParamObject().objectValue;
                            a aVar4 = this.af;
                            if (aVar4 != null) {
                                aVar4.a(tPSubtitleRenderModel);
                            }
                            str2 = "setPlayerOptionalParam, subtitle render model";
                        } else {
                            return;
                        }
                        TPLogUtil.i("TPSystemMediaPlayer", str2);
                        return;
                    } else {
                        this.s = (TPAudioAttributes) tPOptionalParam.getParamObject().objectValue;
                        aVar = this.a;
                        sb = new StringBuilder();
                        sb.append("setPlayerOptionalParam, ");
                        sb.append(this.s.toString());
                    }
                    sb2.append(str);
                    sb2.append(tPOptionalParam.getParamLong().value);
                    sb2.append("(ms)");
                    aVar2.c(sb2.toString());
                    return;
                } else {
                    this.t = tPOptionalParam.getParamBoolean().value;
                    return;
                }
                aVar.c(sb.toString());
                return;
            } else {
                this.q = (int) tPOptionalParam.getParamLong().value;
                aVar = this.a;
                sb = new StringBuilder();
                sb.append("setPlayerOptionalParam, video height:");
                i = this.q;
            }
            sb.append(i);
            aVar.c(sb.toString());
            return;
        }
        this.p = tPOptionalParam.getParamLong().value;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        throw new IllegalArgumentException("setDataSource by asset, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.f.b bVar) {
        this.a.a(new com.tencent.thumbplayer.f.b(bVar, "TPSystemMediaPlayer"));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        this.a.c("setAudioNormalizeVolumeParams not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("switchDefinition, defUrl: " + str);
        if (TextUtils.isEmpty(str)) {
            this.a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f = str;
        f fVar = new f();
        fVar.b = j;
        fVar.d = this.aa;
        fVar.a = 1;
        fVar.g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            this.a.e("addSubtitleSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str3;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 3;
        b bVar = new b();
        bVar.a = tPTrackInfo;
        bVar.b = str;
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("addSubtitleSource, name:" + tPTrackInfo.name + ", url:" + str3);
        this.ae.add(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, List<TPOptionalParam> list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            this.a.e("addAudioTrackSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str2;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 2;
        b bVar = new b();
        bVar.a = tPTrackInfo;
        bVar.b = str;
        bVar.c = list;
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("addAudioTrackSource, name:" + tPTrackInfo.name + ", url:" + str2);
        this.ad.add(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setDataSource httpHeader, url: " + str);
        this.f = str;
        this.l = map;
        this.C.setDataSource(this.b, Uri.parse(this.f), this.l);
        this.E = new com.tencent.thumbplayer.a.c(str);
        this.Q = EnumC0035e.INITIALIZED;
        this.R = EnumC0035e.INITIALIZED;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("switchDefinition, defUrl: " + str);
        if (TextUtils.isEmpty(str)) {
            this.a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f = str;
        f fVar = new f();
        fVar.b = j;
        fVar.d = this.aa;
        fVar.a = 1;
        fVar.g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z) {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        this.a.c("setOutputMute, : " + z);
        this.i = z;
        try {
            if (z) {
                this.C.setVolume(0.0f, 0.0f);
                aVar = this.a;
                str = "setOutputMute, true";
            } else {
                this.C.setVolume(this.j, this.j);
                aVar = this.a;
                str = "setOutputMute, false, mAudioGain: " + this.j;
            }
            aVar.c(str);
        } catch (Exception e) {
            this.a.c("setOutputMute, Exception: " + e.toString());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z, long j, long j2) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setLoopback, : " + z + ", loopStart: " + j + ", loopEnd: " + j2);
        if (j >= 0) {
            long j3 = this.T;
            if (j <= j3 && j2 <= j3) {
                this.c = z;
                this.d = j;
                this.e = j2;
                this.C.setLooping(z);
                return;
            }
        }
        throw new IllegalArgumentException("position error, must more than 0 and less than duration");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i) {
        return -1;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f2) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setPlaySpeedRatio, : " + f2);
        if (Build.VERSION.SDK_INT < 23) {
            com.tencent.thumbplayer.f.a aVar2 = this.a;
            aVar2.c("os version is too low: " + Build.VERSION.SDK_INT);
            return;
        }
        this.k = f2;
        com.tencent.thumbplayer.f.a aVar3 = this.a;
        aVar3.c("setPlaySpeedRatio play speed:" + f2);
        try {
            PlaybackParams playbackParams = this.C.getPlaybackParams();
            if (playbackParams.getSpeed() != f2) {
                playbackParams.setSpeed(f2);
                this.C.setPlaybackParams(playbackParams);
            }
        } catch (Exception e) {
            this.a.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("deselectTrack, trackID " + i);
        int size = this.ad.size();
        int size2 = this.ae.size();
        if (i >= size && i < size2 + size) {
            int i2 = i - size;
            try {
                f(i2, j);
            } catch (Exception e) {
                this.a.a(e);
            }
            this.ae.get(i2).a.isSelected = false;
            this.ab = -1;
        } else if (Build.VERSION.SDK_INT < 16) {
            this.a.e("deselectTrack, android mediaplayer not support ");
        } else {
            this.C.deselectTrack(i);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("setLoopback, : " + z);
        this.c = z;
        this.C.setLooping(z);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i) {
        return null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i, long j) {
        this.a.e("selectProgram, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (this.R == EnumC0035e.COMPLETE) {
            this.a.d("call prepare() on mMediaPlayerState==COMPLETE");
            return;
        }
        w();
        this.a.c("prepare ");
        this.Q = EnumC0035e.PREPARING;
        this.R = EnumC0035e.PREPARING;
        this.C.prepare();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        w();
        this.a.c("prepareAsync ");
        this.Q = EnumC0035e.PREPARING;
        this.R = EnumC0035e.PREPARING;
        this.C.prepareAsync();
        y();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        this.a.c("start ");
        if (this.S) {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.h = EnumC0035e.STARTED;
            }
            aVar = this.a;
            str = "system player is busy.";
        } else if (this.Q == EnumC0035e.PREPARED || this.Q == EnumC0035e.PAUSED) {
            a aVar2 = this.af;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.C.start();
            this.Q = EnumC0035e.STARTED;
            this.R = EnumC0035e.STARTED;
            float f2 = this.k;
            if (((double) f2) != 1.0d) {
                b(f2);
            }
            A();
            return;
        } else {
            aVar = this.a;
            str = "start(), illegal state, state:" + this.Q;
        }
        aVar.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void i() {
        this.a.c("pause ");
        if (this.S) {
            if (this.ah != null) {
                this.ah.h = EnumC0035e.PAUSED;
            }
            this.a.d("system player is busy.");
            return;
        }
        if (this.af != null) {
            this.af.c();
        }
        this.C.pause();
        this.Q = EnumC0035e.PAUSED;
        this.R = EnumC0035e.PAUSED;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void j() {
        this.a.c("stop ");
        z();
        B();
        E();
        this.Q = EnumC0035e.STOPPED;
        c();
        this.aa = 0;
        this.ab = -1;
        this.ah = null;
        this.Z = -1;
        this.ac = -1;
        this.af.d();
        this.ag = 0;
        this.a.c("stop over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void k() {
        this.a.c("reset ");
        this.Q = EnumC0035e.IDLE;
        this.R = EnumC0035e.IDLE;
        this.af.e();
        this.C.reset();
        this.m = 0;
        this.n = -1;
        this.o = false;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = null;
        z();
        B();
        E();
        this.a.c("reset over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void l() {
        this.a.c("release ");
        this.af.f();
        z();
        B();
        E();
        this.Q = EnumC0035e.RELEASE;
        e();
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.F = null;
        this.a.c("release over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        if (this.o) {
            return 0;
        }
        if (this.S) {
            return this.T;
        }
        if (this.Q != EnumC0035e.PREPARED && this.Q != EnumC0035e.STARTED && this.Q != EnumC0035e.PAUSED) {
            return -1;
        }
        if (this.T <= 0) {
            this.T = (long) this.C.getDuration();
        }
        long j = this.p;
        if (j > 0) {
            long j2 = this.T;
            if (j2 <= 0) {
                this.T = j;
            } else {
                long j3 = this.p;
                if ((Math.abs(j - j2) * 100) / j3 > 1) {
                    this.T = j3;
                }
            }
        }
        return this.T;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        if (this.o) {
            return 0;
        }
        if (this.S || this.Q == EnumC0035e.ERROR) {
            long j = this.U;
            return j == -1 ? (long) this.m : j;
        }
        return (long) ((this.Q == EnumC0035e.IDLE || this.Q == EnumC0035e.INITIALIZED || this.Q == EnumC0035e.PREPARING || this.Q == EnumC0035e.STOPPED || this.Q == EnumC0035e.PREPARED) ? this.m : this.C.getCurrentPosition());
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("getVideoWidth, width:" + this.V);
        return this.V;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("getVideoHeight, height:" + this.W);
        return this.W;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f A[LOOP:0: B:26:0x0059->B:28:0x005f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0079 A[LOOP:1: B:30:0x0073->B:32:0x0079, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090 A[LOOP:2: B:37:0x008e->B:38:0x0090, LOOP_END] */
    @Override // com.tencent.thumbplayer.adapter.a.b
    /* Code decompiled incorrectly, please refer to instructions dump */
    public com.tencent.thumbplayer.api.TPTrackInfo[] r() {
        /*
        // Method dump skipped, instructions count: 228
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.r():com.tencent.thumbplayer.api.TPTrackInfo[]");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        return -1;
    }
}
