package com.tencent.thumbplayer.h.b;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.tencent.thumbplayer.h.f.a;
import com.tencent.thumbplayer.h.h.c;
import com.tencent.thumbplayer.h.h.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import top.niunaijun.blackbox.core.system.user.BUserHandle;

/* loaded from: classes5.dex */
public abstract class f implements c {
    private static final Map<Surface, f> i = new ConcurrentHashMap();
    private com.tencent.thumbplayer.h.e.a.a B;
    public boolean b;
    public boolean c;
    public boolean d;
    public final e e;
    protected Surface f;
    protected final b g;
    protected final String h;
    private final a.EnumC0046a k;
    private final MediaCodec p;
    private boolean q;
    private MediaCodecInfo.CodecCapabilities s;
    private long t;
    private com.tencent.thumbplayer.h.a.a u;
    private boolean v;
    private boolean x;
    public b a = b.Started;
    private final String j = "ReuseCodecWrapper[" + hashCode() + "]";
    private final HashSet<Integer> l = new HashSet<>();
    private final ArrayList<Long> m = new ArrayList<>();
    private final Set<SurfaceTexture> n = new LinkedHashSet();
    private final int[] o = new int[2];
    private a r = a.Uninitialized;
    private a.b w = a.b.KEEP_CODEC_RESULT_NO;
    private boolean y = false;
    private boolean z = false;
    private int A = 0;

    /* renamed from: com.tencent.thumbplayer.h.b.f$2 */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] a = new int[a.b.values().length];

        static {
            try {
                a[a.b.KEEP_CODEC_RESULT_NO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[a.b.KEEP_CODEC_RESULT_YES_WITH_FLUSH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public enum a {
        Uninitialized,
        Configured,
        Error,
        Flushed,
        Running,
        EndOfStream,
        Released
    }

    /* loaded from: classes5.dex */
    public enum b {
        Started,
        DequeueIn,
        QueueIn,
        DequeueOut,
        ReleaseOut
    }

    public f(MediaCodec mediaCodec, e eVar) {
        boolean z = false;
        this.p = mediaCodec;
        this.e = eVar;
        this.g = new b(eVar.g, eVar.h, eVar.i);
        this.h = c.a(this.p);
        this.k = com.tencent.thumbplayer.h.f.a.a(this.h);
        if (Build.VERSION.SDK_INT >= 18) {
            boolean z2 = Build.VERSION.SDK_INT != 29 || eVar.d == 0;
            com.tencent.thumbplayer.h.h.b.b(this.j, "canCallGetCodecInfo:" + z2);
            if (z2) {
                this.s = this.p.getCodecInfo().getCapabilitiesForType(eVar.j);
            }
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.s;
        this.c = codecCapabilities != null && c.a(codecCapabilities);
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.s;
        if (codecCapabilities2 != null && c.b(codecCapabilities2)) {
            z = true;
        }
        this.d = z;
    }

    public static c a(MediaCodec mediaCodec, String str, e eVar) {
        return c.a(str) ? new g(mediaCodec, eVar) : new a(mediaCodec, eVar);
    }

    private void a(int i2) {
        if (i2 < 40000) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.e(str, this + "    releaseCodecWhenError, errorCode:" + i2);
            g();
        }
    }

    private void a(int i2, int i3) {
        int i4;
        if (!this.z && b(i2, i3)) {
            this.z = true;
            StringBuilder sb = new StringBuilder();
            sb.append(this);
            sb.append(", trackDecodeApi state:");
            sb.append(this.r);
            sb.append("  surfaceState:");
            Surface surface = this.f;
            sb.append(surface != null ? Boolean.valueOf(surface.isValid()) : null);
            String sb2 = sb.toString();
            if (i2 == 0) {
                i4 = 40002;
            } else if (i2 == 1) {
                i4 = 60002;
            } else {
                return;
            }
            a(i4, sb2, (Throwable) null);
        }
    }

    private void a(int i2, String str, Throwable th) {
        a(i2, str, th, false, this.f);
    }

    private void a(int i2, String str, Throwable th, boolean z, Surface surface) {
        int d;
        this.y = true;
        String str2 = str + " handleCoreAPIException exception:" + (th == null ? "" : th.getLocalizedMessage());
        if (z && (d = d(surface)) != 0) {
            i2 = d;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i2);
            jSONObject.put("exceptionMsg", str2);
            if (this.u != null) {
                this.u.onReuseCodecAPIException(jSONObject.toString(), th);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        com.tencent.thumbplayer.h.h.b.b(this.j, "hasReused:" + this.v + "    errorCode:" + i2 + ", " + str2, th);
        a(i2);
    }

    private void a(Surface surface, boolean z, boolean z2) {
        if (this.f == surface) {
            com.tencent.thumbplayer.h.h.b.d(this.j, this + ", innerSetOutputSurface error surface:" + surface + " is same, stack:" + Log.getStackTraceString(new Throwable()));
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.h.h.b.a()) {
            str = this + " configure, call innerSetOutputSurface surface:" + surface + "  decodeState:" + this.a + " callByInner:" + z;
            com.tencent.thumbplayer.h.h.b.b(this.j, str);
        }
        try {
            b(surface);
            this.p.setOutputSurface(surface);
            if (!z2) {
                p();
            }
        } catch (Throwable th) {
            int i2 = 0;
            if (th instanceof IllegalStateException) {
                i2 = 30000;
            } else if (th instanceof IllegalArgumentException) {
                i2 = 30001;
            }
            a(i2, str, th, true, surface);
            throw th;
        }
    }

    private final void b(int i2, int i3, int i4, long j, int i5) {
        int i6 = AnonymousClass2.a[this.w.ordinal()];
        if (i6 == 1) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO");
        } else if (i6 == 2) {
            c(i2, i3, i4, j, i5);
        } else if (i6 == 3) {
            this.p.queueInputBuffer(i2, i3, i4, j, i5);
        }
    }

    private void b(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        String str = null;
        try {
            if (com.tencent.thumbplayer.h.h.b.a()) {
                str = this + ", realConfigure mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i2 + " state:" + this.r + " mHasConfigureCalled：" + this.x;
                com.tencent.thumbplayer.h.h.b.b(this.j, str);
            }
            this.p.configure(mediaFormat, surface, mediaCrypto, i2);
            b(surface);
            this.r = a.Configured;
        } catch (Throwable th) {
            int i3 = 0;
            if (th instanceof IllegalStateException) {
                i3 = 10000;
            } else if (th instanceof MediaCodec.CryptoException) {
                i3 = 10001;
            }
            a(i3, str, th, true, surface);
            throw th;
        }
    }

    private void b(Surface surface) {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.c(str, this + ", oldSurface:" + this.f + " CodecWrapperSetSurface surface:" + surface);
        }
        this.f = surface;
    }

    private boolean b(int i2, int i3) {
        if (i3 == -1) {
            int[] iArr = this.o;
            iArr[i2] = iArr[i2] + 1;
            return iArr[i2] > 100;
        }
        this.o[i2] = 0;
        return false;
    }

    private final void c(int i2, int i3, int i4, long j, int i5) {
        this.p.queueInputBuffer(i2, i3, i4, j, i5);
    }

    private void c(Surface surface) {
        a(surface, true, false);
    }

    private int d(Surface surface) {
        if (surface == null) {
            return 10003;
        }
        return !surface.isValid() ? 10004 : 0;
    }

    private boolean n() {
        return Thread.currentThread().getId() != this.t;
    }

    private void o() {
        if (this.B == null) {
            this.B = new com.tencent.thumbplayer.h.e.a.a(1, 1);
            a(this.B.d(), true, true);
        }
    }

    private void p() {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.b(str, this + "unBindingBackupSurface");
        }
        com.tencent.thumbplayer.h.e.a.a aVar = this.B;
        if (aVar != null) {
            aVar.b();
        }
        this.B = null;
    }

    private void q() {
        this.z = false;
        this.A = 0;
    }

    private void r() {
        int[] iArr = this.o;
        iArr[0] = 0;
        iArr[1] = 0;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public int a(long j) {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore call method dequeueInputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        int i2 = 0;
        try {
            int dequeueInputBuffer = this.p.dequeueInputBuffer(j);
            if (com.tencent.thumbplayer.h.h.b.a()) {
                str = this + ", dequeueInputBuffer state:" + this.r + " decodeState:" + this.a + " , result=" + dequeueInputBuffer;
                com.tencent.thumbplayer.h.h.b.a(this.j, str);
            }
            this.a = b.DequeueIn;
            this.r = a.Running;
            a(0, dequeueInputBuffer);
            return dequeueInputBuffer;
        } catch (Throwable th) {
            if (th instanceof IllegalStateException) {
                i2 = MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            } else if (th instanceof IllegalArgumentException) {
                i2 = 40001;
            }
            a(i2, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public int a(MediaCodec.BufferInfo bufferInfo, long j) {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore call method dequeueOutputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        try {
            int dequeueOutputBuffer = this.p.dequeueOutputBuffer(bufferInfo, j);
            if (com.tencent.thumbplayer.h.h.b.a()) {
                str = this + ", dequeueOutputBuffer outIndex:" + dequeueOutputBuffer;
                if (this instanceof g) {
                    com.tencent.thumbplayer.h.h.b.a(this.j, str);
                }
            }
            this.l.add(Integer.valueOf(dequeueOutputBuffer));
            this.a = b.DequeueOut;
            a(1, dequeueOutputBuffer);
            return dequeueOutputBuffer;
        } catch (Throwable th) {
            int i2 = 0;
            if (Build.VERSION.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
                i2 = 60001;
            } else if (th instanceof IllegalStateException) {
                i2 = 60000;
            }
            a(i2, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public MediaCodec a() {
        return this.p;
    }

    public abstract a.b a(e eVar);

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(int i2, int i3, int i4, long j, int i5) {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore call method queueInputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.h.h.b.a()) {
            str = this + ", queueInputBuffer index:" + i2 + " offset:" + i3 + " size:" + i4 + " presentationTimeUs:" + j + " flags:" + i5 + " state:" + this.r + " decodeState:" + this.a;
            com.tencent.thumbplayer.h.h.b.a(this.j, str);
        }
        try {
            if (this.v) {
                b(i2, i3, i4, j, i5);
            } else {
                this.p.queueInputBuffer(i2, i3, i4, j, i5);
            }
            this.a = b.QueueIn;
        } catch (Throwable th) {
            int i6 = 0;
            if (Build.VERSION.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
                i6 = 50001;
            } else if (th instanceof IllegalStateException) {
                i6 = 50000;
            } else if (th instanceof MediaCodec.CryptoException) {
                i6 = 50002;
            }
            a(i6, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(int i2, boolean z) {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore call method releaseOutputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.h.h.b.a()) {
            str = this + ", releaseOutputBuffer render:" + z;
            com.tencent.thumbplayer.h.h.b.a(this.j, str);
        }
        try {
            this.l.remove(Integer.valueOf(i2));
            this.p.releaseOutputBuffer(i2, z);
        } catch (Throwable th) {
            if (this.r != a.Flushed) {
                com.tencent.thumbplayer.h.h.b.a(this.j, this + ", releaseOutputBuffer failed, ignore e:", th);
            }
            int i3 = 0;
            if (Build.VERSION.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
                i3 = 70002;
            } else if (th instanceof IllegalStateException) {
                i3 = 70001;
            }
            a(i3, str, th);
        }
        this.a = b.ReleaseOut;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore call method configure for isNotMyThread");
            return;
        }
        this.x = true;
        this.q = false;
        if (this.r == a.Uninitialized) {
            b(mediaFormat, surface, mediaCrypto, i2);
        } else if (surface != null) {
            r();
            c(surface);
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(Surface surface) {
        a(surface, false, false);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(com.tencent.thumbplayer.h.a.a aVar) {
        this.u = aVar;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public a.b b(e eVar) {
        this.w = a(eVar);
        return this.w;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void b() {
        long id = Thread.currentThread().getId();
        if (!this.m.contains(Long.valueOf(id))) {
            this.t = id;
            this.m.add(Long.valueOf(this.t));
            if (this.m.size() > 100) {
                this.m.remove(0);
            }
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void c() {
        q();
        if (com.tencent.thumbplayer.h.a.b()) {
            if (this.r == a.Running) {
                try {
                    e();
                } catch (IllegalStateException e) {
                    com.tencent.thumbplayer.h.h.b.b(this.j, "flush failed in prepareToReUse", e);
                }
            }
        } else if (this.r != a.Flushed) {
            e();
        }
        this.v = true;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void d() {
        if (this.r != a.Configured) {
            com.tencent.thumbplayer.h.h.b.b(this.j, "start ignore:" + this.r);
            return;
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.h.h.b.a()) {
                str = this + ", start state:" + this.r;
                com.tencent.thumbplayer.h.h.b.b(this.j, str);
            }
            if (this.r == a.Configured) {
                this.p.start();
                this.r = a.Running;
            }
        } catch (Throwable th) {
            int i2 = 0;
            if (Build.VERSION.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
                i2 = 20001;
            } else if (th instanceof IllegalStateException) {
                i2 = BUserHandle.AID_CACHE_GID_START;
            }
            a(i2, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void e() {
        if (n()) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "call method flush for isNotMyThread...");
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.h.h.b.a()) {
                str = this + ", flush state:" + this.r;
                com.tencent.thumbplayer.h.h.b.b(this.j, str);
            }
            this.p.flush();
            this.r = a.Flushed;
        } catch (Throwable th) {
            int i2 = 0;
            if (Build.VERSION.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
                i2 = 90001;
            } else if (th instanceof IllegalStateException) {
                i2 = 90000;
            }
            a(i2, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void f() {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.b(str, this + ", stop");
        }
        if (!j()) {
            if (com.tencent.thumbplayer.h.h.b.a()) {
                String str2 = this.j;
                com.tencent.thumbplayer.h.h.b.b(str2, this + ", codec real stop");
            }
            try {
                this.p.stop();
                this.r = a.Uninitialized;
            } catch (IllegalStateException e) {
                this.r = a.Uninitialized;
                com.tencent.thumbplayer.h.h.b.b(this.j, "stop failed", e);
                throw e;
            }
        }
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void g() {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.b(str, this + " call release mHoldBufferOutIndex:" + this.l + " mReleaseCalled:" + this.q + " stack:" + Log.getStackTraceString(new Throwable()));
        }
        this.q = true;
        this.x = false;
        if (j()) {
            try {
                e();
            } catch (IllegalStateException e) {
                com.tencent.thumbplayer.h.h.b.b(this.j, "flush failed for not in the Executing state.", e);
            }
            o();
            com.tencent.thumbplayer.h.a.a().b(this);
            return;
        }
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str2 = this.j;
            com.tencent.thumbplayer.h.h.b.d(str2, "Don't not keep the codec, release it ..., mErrorHappened:" + this.y);
        }
        com.tencent.thumbplayer.h.a.a().a(this);
        i();
        this.r = a.Released;
    }

    public final com.tencent.thumbplayer.h.a.a h() {
        return this.u;
    }

    public final void i() {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.h.h.b.b(str, this + ", recycle isRecycled:" + this.b + "  mSurfaceMap.size:" + i.size() + "...... stack:" + Log.getStackTraceString(new Throwable()));
        }
        if (this.b) {
            com.tencent.thumbplayer.h.h.b.d(this.j, "ignore recycle for has isRecycled is true.");
            return;
        }
        this.x = false;
        this.b = true;
        d.a(new Runnable() { // from class: com.tencent.thumbplayer.h.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.p.stop();
                    f.this.p.release();
                } catch (Throwable th) {
                    com.tencent.thumbplayer.h.h.b.a(f.this.j, "recycle codec ignore error,", th);
                }
                if (f.this.u != null) {
                    f.this.u.onRealRelease();
                }
            }
        });
        this.r = a.Uninitialized;
    }

    public boolean j() {
        return com.tencent.thumbplayer.h.a.b() ? !this.y && com.tencent.thumbplayer.h.a.a().d() && com.tencent.thumbplayer.h.a.a().e() : !this.y && com.tencent.thumbplayer.h.a.a().d();
    }

    public void k() {
        this.A++;
    }

    public boolean l() {
        return this.A >= 3;
    }

    public String m() {
        return this.h;
    }

    public String toString() {
        return super.toString() + " mReleaseCalled:" + this.q + " isRecycled:" + this.b;
    }
}
