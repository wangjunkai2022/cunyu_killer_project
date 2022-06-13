package com.tencent.liteav.videoencoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.Bundle;
import android.view.Surface;
import com.tencent.liteav.basic.e.a;
import com.tencent.liteav.basic.e.f;
import com.tencent.liteav.basic.e.h;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.Monitor;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.i;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCHWVideoEncoder.java */
/* loaded from: classes5.dex */
public class b extends c {
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private f Z;
    private ArrayList<Long> ac;
    private boolean o;
    private boolean p;
    private i u;
    private Object z;
    private int a = 0;
    private long b = 0;
    private double c = 0.0d;
    private long d = 0;
    private long e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = true;
    private long i = 0;
    private long j = 0;
    private long k = 0;
    private long l = 0;
    private long m = 0;
    private long n = 0;
    private long q = 0;
    private long r = 0;
    private MediaCodec s = null;
    private String t = "video/avc";
    private Runnable v = new Runnable() { // from class: com.tencent.liteav.videoencoder.b.10
        @Override // java.lang.Runnable
        public void run() {
            b.this.e();
        }
    };
    private Runnable w = new Runnable() { // from class: com.tencent.liteav.videoencoder.b.11
        @Override // java.lang.Runnable
        public void run() {
            b.this.b(10);
        }
    };
    private Runnable x = new Runnable() { // from class: com.tencent.liteav.videoencoder.b.2
        @Override // java.lang.Runnable
        public void run() {
            b.this.b(1);
        }
    };
    private ArrayDeque<Long> y = new ArrayDeque<>(10);
    private Surface A = null;
    private boolean B = true;
    private AtomicBoolean C = new AtomicBoolean(true);
    private boolean D = false;
    private ByteBuffer[] E = null;
    private byte[] F = null;
    private volatile long G = 0;
    private long H = 0;
    private long I = 0;
    private boolean P = true;
    private boolean Q = false;
    private boolean R = false;
    private int S = 0;
    private int T = 0;
    private int U = 0;
    private long V = 0;
    private int W = 0;
    private int X = 0;
    private int Y = -1;
    private final Object aa = new Object();
    private boolean ab = false;
    private int ad = 0;
    private boolean ae = true;
    private long af = 0;
    private int ag = 3;
    private int ah = 0;
    private boolean ai = false;
    private boolean aj = true;
    private long ak = 0;
    private boolean al = false;
    private int am = 0;
    private Runnable an = new Runnable() { // from class: com.tencent.liteav.videoencoder.b.3
        @Override // java.lang.Runnable
        public void run() {
            b.this.ak = System.currentTimeMillis();
            b.this.b();
            b.this.d();
            b.this.c();
        }
    };

    @Override // com.tencent.liteav.videoencoder.c
    public void setEncodeIdrFpsFromQos(int i) {
    }

    static /* synthetic */ int f(b bVar) {
        int i = bVar.am;
        bVar.am = i + 1;
        return i;
    }

    static /* synthetic */ int j(b bVar) {
        int i = bVar.S;
        bVar.S = i + 1;
        return i;
    }

    public b() {
        this.u = null;
        this.u = new i("HWVideoEncoder");
    }

    @Override // com.tencent.liteav.videoencoder.c
    public int start(final TXSVideoEncoderParam tXSVideoEncoderParam) {
        boolean z;
        super.start(tXSVideoEncoderParam);
        if (TXCBuild.VersionInt() < 18) {
            z = false;
        } else {
            this.u.b(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.1
                @Override // java.lang.Runnable
                public void run() {
                    int i = tXSVideoEncoderParam.encoderMode;
                    String str = "unknown";
                    String str2 = i != 1 ? i != 2 ? i != 3 ? str : "CQ" : "VBR" : "CBR";
                    int i2 = tXSVideoEncoderParam.encoderProfile;
                    if (i2 == 1) {
                        str = "Baseline";
                    } else if (i2 == 2) {
                        str = "Main";
                    } else if (i2 == 3) {
                        str = "High";
                    }
                    Object[] objArr = new Object[11];
                    objArr[0] = Integer.valueOf(b.this.hashCode());
                    objArr[1] = Integer.valueOf(tXSVideoEncoderParam.width);
                    objArr[2] = Integer.valueOf(tXSVideoEncoderParam.height);
                    objArr[3] = Integer.valueOf(tXSVideoEncoderParam.fps);
                    objArr[4] = Integer.valueOf(tXSVideoEncoderParam.bitrate);
                    objArr[5] = Integer.valueOf(tXSVideoEncoderParam.gop);
                    objArr[6] = str2;
                    objArr[7] = str;
                    String str3 = "true";
                    objArr[8] = tXSVideoEncoderParam.bMultiRef ? str3 : "false";
                    objArr[9] = Integer.valueOf(tXSVideoEncoderParam.streamType);
                    if (!tXSVideoEncoderParam.isH265EncoderEnabled) {
                        str3 = "false";
                    }
                    objArr[10] = str3;
                    String format = String.format("VideoEncoder[%d]: Start [type:hardware][resolution:%d*%d][fps:%d][bitrate:%dkbps][gop:%d][rateControl:%s][profile:%s][rps:%s][streamType:%d][enable hevc:%s]", objArr);
                    Monitor.a(2, format, "", 0);
                    TXCLog.i("TXCHWVideoEncoder", "start:" + format);
                    if (b.this.mInit) {
                        b.this.e();
                    }
                    if (b.this.a(tXSVideoEncoderParam)) {
                        Monitor.a(2, String.format("VideoEncoder[%d]: Start successfully, streamType:%d", Integer.valueOf(b.this.hashCode()), Integer.valueOf(tXSVideoEncoderParam.streamType)), "streamType: 2-big, 3-small, 7-sub", 0);
                    } else {
                        b.this.callDelegate(10000004);
                    }
                }
            });
            z = true;
        }
        if (z) {
            return 0;
        }
        return 10000004;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void stop() {
        this.C.set(true);
        this.u.b(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.4
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.mInit) {
                    Monitor.a(2, String.format("VideoEncoder[%d]: Stop, streamType:%d", Integer.valueOf(b.this.hashCode()), Integer.valueOf(b.this.mStreamType)), "streamType: 2-big, 3-small, 7-sub", 0);
                    b.this.e();
                }
            }
        });
        h();
    }

    @Override // com.tencent.liteav.videoencoder.c
    public boolean isH265Encoder() {
        return this.R;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void setFPS(final int i) {
        this.u.b(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.5
            @Override // java.lang.Runnable
            public void run() {
                b.this.d(i);
            }
        });
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void setBitrate(final int i) {
        this.a = i;
        this.u.b(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.6
            @Override // java.lang.Runnable
            public void run() {
                b.this.c(i);
            }
        });
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void setBitrateFromQos(final int i, int i2) {
        this.a = i;
        this.u.b(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.7
            @Override // java.lang.Runnable
            public void run() {
                b.this.c(i);
            }
        });
    }

    @Override // com.tencent.liteav.videoencoder.c
    public double getRealFPS() {
        return this.c;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public long getRealBitrate() {
        return this.b;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public int getEncodeCost() {
        return this.ad;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void setGLFinishedTextureNeed(boolean z) {
        this.ae = z;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public long pushVideoFrame(int i, int i2, int i3, long j) {
        int b;
        if (this.C.get()) {
            return 10000004;
        }
        synchronized (this.aa) {
            if (this.Z == null) {
                a(i2, i3);
            }
            this.Z.a(i2, i3);
            GLES20.glViewport(0, 0, i2, i3);
            b = this.Z.b(i);
            if (this.ae) {
                GLES20.glFinish();
            } else {
                GLES20.glFlush();
            }
        }
        if (this.U == 0) {
            this.V = System.currentTimeMillis();
        }
        this.U++;
        this.G = j;
        this.Y = b;
        this.mInputWidth = i2;
        this.mInputHeight = i3;
        if (this.O) {
            f();
        }
        if (!this.P || this.ab) {
            this.X++;
            this.u.b(this.w);
            this.ab = false;
        }
        int i4 = this.S;
        if (i4 > this.T + 30) {
            TXCLog.e("TXCHWVideoEncoder", String.format("hw encoder error when render[%d] pop[%d]", Integer.valueOf(i4), Integer.valueOf(this.T)));
            if (this.mListener != null) {
                this.mListener.a(this.mStreamType);
                if (this.R) {
                    Monitor.a(2, String.format(Locale.getDefault(), "VideoEncoder: hevc hardware encoder error: mRendIdx= %d,mPopIdx= %d , switch to 264 hardware encoder. %s", Integer.valueOf(this.S), Integer.valueOf(this.T), TXCCommonUtil.getDeviceInfo()), "", 0);
                }
            }
        }
        if (this.V + 5000 >= System.currentTimeMillis()) {
            return 0;
        }
        this.V = System.currentTimeMillis();
        if (this.W == this.S) {
            TXCLog.i("TXCHWVideoEncoder", String.format("hw encoder error when push[%d] render task[%d] render[%d] pop[%d]", Integer.valueOf(this.U), Integer.valueOf(this.X), Integer.valueOf(this.S), Integer.valueOf(this.T)));
            if (this.mListener != null) {
                this.mListener.a(this.mStreamType);
                if (this.R) {
                    Monitor.a(2, String.format(Locale.getDefault(), "VideoEncoder: hevc hardware encoder error: timecheck , switch to 264 hardware encoder. %s", TXCCommonUtil.getDeviceInfo()), "", 0);
                }
            }
        }
        this.W = this.S;
        return 0;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public long pushVideoFrameAsync(final int i, int i2, int i3, final long j) {
        if (this.C.get()) {
            return 10000004;
        }
        if (this.ae) {
            GLES20.glFinish();
        } else {
            GLES20.glFlush();
        }
        this.u.a().post(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.8
            /* JADX WARN: Code restructure failed: missing block: B:47:0x0126, code lost:
                if (r13.c.mListener == null) goto L_0x0133;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x0128, code lost:
                r13.c.mListener.b(r13.c.mStreamType);
             */
            @Override // java.lang.Runnable
            /* Code decompiled incorrectly, please refer to instructions dump */
            public void run() {
                /*
                // Method dump skipped, instructions count: 360
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoencoder.b.AnonymousClass8.run():void");
            }
        });
        return 0;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public long pushVideoFrameSync(int i, int i2, int i3, long j) {
        if (this.C.get()) {
            return 10000004;
        }
        if (this.ae) {
            GLES20.glFinish();
        } else {
            GLES20.glFlush();
        }
        this.G = j;
        this.Y = i;
        if (this.O) {
            f();
        }
        this.u.a(this.x);
        return 0;
    }

    @Override // com.tencent.liteav.videoencoder.c
    public void signalEOSAndFlush() {
        if (!this.C.get()) {
            this.u.a(new Runnable() { // from class: com.tencent.liteav.videoencoder.b.9
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.s != null) {
                        try {
                            b.this.s.signalEndOfInputStream();
                        } catch (Exception e) {
                            TXCLog.e("TXCHWVideoEncoder", "signalEndOfInputStream failed.", e);
                        }
                        do {
                        } while (b.this.a(10) >= 0);
                        b.this.e();
                    }
                }
            });
        }
    }

    private MediaFormat a(MediaCodec mediaCodec, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        MediaFormat a = a.a(this.t, i, i2, i3, i4, i5);
        if (a == null) {
            return null;
        }
        a.a(mediaCodec, a, this.t, i6, i7, this.O);
        this.mOutputWidth = a.getInteger("width");
        this.mOutputHeight = a.getInteger("height");
        this.a = (int) (((double) ((float) a.getInteger("bitrate"))) / 1024.0d);
        TXCLog.i("TXCHWVideoEncoder", "createEffectiveFormat fix:w:  " + this.mOutputWidth + "  " + this.mOutputHeight + "  " + this.a);
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        this.y.add(Long.valueOf(j));
    }

    private long a() {
        Long poll = this.y.poll();
        if (poll == null) {
            return 0;
        }
        return poll.longValue();
    }

    private boolean a(Surface surface, int i, int i2) {
        if (surface == null) {
            return false;
        }
        TXCLog.i("TXCHWVideoEncoder", "HWVideoEncode createGL: " + this.mGLContextExternal);
        if (this.mGLContextExternal == null || !(this.mGLContextExternal instanceof EGLContext)) {
            this.z = a.a(null, (javax.microedition.khronos.egl.EGLContext) this.mGLContextExternal, surface, i, i2);
        } else {
            this.z = com.tencent.liteav.basic.e.b.a(null, (EGLContext) this.mGLContextExternal, surface, i, i2);
        }
        if (this.z == null) {
            return false;
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        this.mEncodeFilter = new f();
        this.mEncodeFilter.a(com.tencent.liteav.basic.e.i.e, com.tencent.liteav.basic.e.i.a(h.NORMAL, false, false));
        if (!this.mEncodeFilter.a()) {
            this.mEncodeFilter = null;
            return false;
        }
        GLES20.glViewport(0, 0, i, i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        TXCLog.i("TXCHWVideoEncoder", "HWVideoEncode destroyGL");
        if (this.mEncodeFilter != null) {
            this.mEncodeFilter.d();
            this.mEncodeFilter = null;
        }
        Object obj = this.z;
        if (obj instanceof a) {
            ((a) obj).c();
            this.z = null;
        }
        Object obj2 = this.z;
        if (obj2 instanceof com.tencent.liteav.basic.e.b) {
            ((com.tencent.liteav.basic.e.b) obj2).d();
            this.z = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019c  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean a(com.tencent.liteav.videoencoder.TXSVideoEncoderParam r10) {
        /*
        // Method dump skipped, instructions count: 445
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoencoder.b.a(com.tencent.liteav.videoencoder.TXSVideoEncoderParam):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d3  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public int a(int r31) {
        /*
        // Method dump skipped, instructions count: 939
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoencoder.b.a(int):int");
    }

    private byte[] a(byte[] bArr) {
        int i;
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 20];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < length) {
            if (bArr[i4] != 0 || bArr[i4 + 1] != 0 || bArr[i4 + 2] != 1) {
                if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 0 && bArr[i4 + 3] == 1) {
                    i3 = a(i4, i2, bArr2, bArr, i3);
                    i4 += 4;
                }
                if (i4 != length - 4 && (bArr[i4 + 1] != 0 || bArr[i4 + 2] != 0 || bArr[i4 + 3] != 1)) {
                    i = length;
                    break;
                }
                i4++;
            } else {
                i3 = a(i4, i2, bArr2, bArr, i3);
                i4 += 3;
            }
            i2 = i4;
            if (i4 != length - 4) {
            }
            i4++;
        }
        i = i4;
        int a = a(i, i2, bArr2, bArr, i3);
        byte[] bArr3 = new byte[a];
        System.arraycopy(bArr2, 0, bArr3, 0, a);
        return bArr3;
    }

    private int a(int i, int i2, byte[] bArr, byte[] bArr2, int i3) {
        if (i2 <= 0 || i <= i2) {
            return i3;
        }
        int i4 = i - i2;
        try {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[4]);
            wrap.asIntBuffer().put(i4);
            wrap.order(ByteOrder.BIG_ENDIAN);
            System.arraycopy(wrap.array(), 0, bArr, i3, 4);
            System.arraycopy(bArr2, i2, bArr, i3 + 4, i4);
            return i3 + i4 + 4;
        } catch (Exception unused) {
            TXCLog.e("TXCHWVideoEncoder", "setNalData exception");
            return i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076 A[Catch: all -> 0x00cf, TryCatch #0 {, blocks: (B:8:0x000e, B:10:0x0015, B:12:0x0019, B:13:0x001b, B:15:0x001d, B:17:0x0031, B:19:0x0033, B:23:0x0047, B:24:0x004a, B:28:0x0051, B:29:0x0054, B:30:0x0056, B:32:0x0076, B:33:0x008a, B:35:0x0090, B:36:0x0097), top: B:53:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090 A[Catch: all -> 0x00cf, TryCatch #0 {, blocks: (B:8:0x000e, B:10:0x0015, B:12:0x0019, B:13:0x001b, B:15:0x001d, B:17:0x0031, B:19:0x0033, B:23:0x0047, B:24:0x004a, B:28:0x0051, B:29:0x0054, B:30:0x0056, B:32:0x0076, B:33:0x008a, B:35:0x0090, B:36:0x0097), top: B:53:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c3  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void b(int r14) {
        /*
        // Method dump skipped, instructions count: 211
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoencoder.b.b(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b0 A[Catch: Exception -> 0x01b7, TryCatch #6 {Exception -> 0x01b7, blocks: (B:69:0x01a1, B:71:0x01a5, B:72:0x01aa, B:74:0x01b0, B:75:0x01b5), top: B:101:0x01a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01bb  */
    /* JADX WARN: Type inference failed for: r15v0, types: [android.media.MediaCodec, android.view.Surface] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean c() {
        /*
        // Method dump skipped, instructions count: 471
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoencoder.b.c():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        MediaCodec mediaCodec = this.s;
        if (mediaCodec != null) {
            try {
                try {
                    try {
                        mediaCodec.stop();
                        this.s.release();
                        if (this.A != null) {
                            this.A.release();
                        }
                        this.A = null;
                    } catch (IllegalStateException e) {
                        TXCLog.e("TXCHWVideoEncoder", "stop encoder failed.", e);
                        this.s.release();
                        if (this.A != null) {
                            this.A.release();
                        }
                        this.A = null;
                    }
                } catch (Exception e2) {
                    TXCLog.e("TXCHWVideoEncoder", "release encoder failed.", e2);
                }
                this.s = null;
            } catch (Throwable th) {
                try {
                    this.s.release();
                    if (this.A != null) {
                        this.A.release();
                    }
                    this.A = null;
                } catch (Exception e3) {
                    TXCLog.e("TXCHWVideoEncoder", "release encoder failed.", e3);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.mInit) {
            this.B = true;
            this.C.set(true);
            b();
            d();
            this.Y = -1;
            this.b = 0;
            this.c = 0.0d;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.m = 0;
            this.q = 0;
            this.r = 0;
            this.mGLContextExternal = null;
            this.E = null;
            this.F = null;
            this.G = 0;
            this.mOutputWidth = 0;
            this.mOutputHeight = 0;
            this.mInit = false;
            this.mListener = null;
            this.y.clear();
            this.ac.clear();
            this.ad = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        boolean z;
        if (this.mInit) {
            long j = this.i;
            int i2 = this.a;
            if (j != ((long) i2)) {
                if (((long) i2) < j && this.aj) {
                    if (this.ai) {
                        z = true;
                        Monitor.a(4, "restart video hw encoder when down bps。[module:" + TXCBuild.Model() + "] [Hardware:" + TXCBuild.Hardware() + "] [osVersion:" + TXCBuild.Version() + "]", "", 0);
                        this.i = (long) this.a;
                        if (TXCBuild.VersionInt() >= 19 && this.s != null) {
                            if (z) {
                                this.u.a().removeCallbacks(this.an);
                                long currentTimeMillis = System.currentTimeMillis();
                                long j2 = this.ak;
                                if (currentTimeMillis - j2 >= 2000) {
                                    this.an.run();
                                    return;
                                } else {
                                    this.u.a(this.an, 2000 - (currentTimeMillis - j2));
                                    return;
                                }
                            } else {
                                Bundle bundle = new Bundle();
                                bundle.putInt("video-bitrate", this.a * 1024);
                                this.s.setParameters(bundle);
                                return;
                            }
                        }
                    } else {
                        this.ag = 3;
                        this.af = System.currentTimeMillis();
                        this.ah = this.a;
                    }
                }
                z = false;
                this.i = (long) this.a;
                if (TXCBuild.VersionInt() >= 19) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (TXCBuild.VersionInt() >= 19 && this.s != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.s.setParameters(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        if (this.mInit && i != 0 && this.L != i && TXCBuild.VersionInt() >= 18) {
            TXCLog.i("TXCHWVideoEncoder", "set fps " + i + ", restart encoder.");
            b();
            d();
            this.L = i;
            c();
        }
    }

    private void g() {
        if (this.af > 0) {
            int i = this.L;
            int i2 = i - ((int) this.c);
            int i3 = i / 2;
            if (i3 < 5) {
                i3 = 5;
            }
            if (i2 <= i3 && System.currentTimeMillis() - this.af > ((long) (((3 - this.ag) + 1) * 2000))) {
                long j = ((long) this.ah) - this.b;
                long j2 = this.i / 2;
                if (j2 < 100) {
                    j2 = 100;
                }
                if (j > j2) {
                    this.ai = true;
                    String str = "real bitrate is too much lower than target bitrate![current profile:" + this.N + "][targetBr:" + this.ah + "] [realBr:" + this.b + "]. restart encoder. [module:" + TXCBuild.Model() + "] [Hardware:" + TXCBuild.Hardware() + "] [osVersion:" + TXCBuild.Version() + "]";
                    TXCLog.e("TXCHWVideoEncoder", str);
                    Monitor.a(3, str, "", 0);
                    if (this.R) {
                        this.N = 1;
                        TXCLog.w("TXCHWVideoEncoder", "[Encoder] force reset hevc profile to HEVCProfileMain when restart encoder. device:" + TXCCommonUtil.getDeviceInfo());
                    } else if (this.N != 1) {
                        this.N = 1;
                        TXCLog.e("TXCHWVideoEncoder", "[Encoder] force reset profile to baseline when restart encoder. device:" + TXCCommonUtil.getDeviceInfo());
                    }
                    i iVar = this.u;
                    if (iVar != null) {
                        iVar.b(this.an);
                    }
                    this.af = 0;
                    return;
                }
                this.ag--;
                if (this.ag <= 0) {
                    this.af = 0;
                }
            }
        }
    }

    private void a(int i, int i2) {
        TXCLog.i("TXCHWVideoEncoder", "createCopyTexture");
        synchronized (this.aa) {
            this.Z = new f();
            this.Z.a(true);
            this.Z.a();
            this.Z.a(i, i2);
        }
    }

    private void h() {
        TXCLog.i("TXCHWVideoEncoder", "destroyCopyTexture");
        synchronized (this.aa) {
            if (this.Z != null) {
                this.Z.d();
                this.Z = null;
            }
            this.Y = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int i = 0;
        while (!this.al && i < 20 && !this.C.get()) {
            a(10);
            i++;
        }
        TXCLog.i("TXCHWVideoEncoder", "run: wait for encoderReady try:" + i);
    }
}
