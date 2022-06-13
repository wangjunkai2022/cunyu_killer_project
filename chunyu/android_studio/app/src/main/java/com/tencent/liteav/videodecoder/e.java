package com.tencent.liteav.videodecoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import com.google.common.base.Ascii;
import com.tencent.liteav.audio.TXEAudioDef;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.d.a;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.Monitor;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* compiled from: TXCVideoMediaCodecDecoder.java */
/* loaded from: classes2.dex */
public class e implements b {
    private g r;
    private WeakReference<b> u;
    private MediaCodec.BufferInfo a = new MediaCodec.BufferInfo();
    private MediaCodec b = null;
    private String c = "video/avc";
    private int d = 544;
    private int e = TXEAudioDef.TXE_OPUS_SAMPLE_NUM;
    private long f = 0;
    private long g = 0;
    private boolean h = true;
    private boolean i = false;
    private boolean j = false;
    private Surface k = null;
    private int l = 0;
    private ArrayList<TXSNALPacket> m = new ArrayList<>();
    private ArrayList<Long> n = new ArrayList<>();
    private long o = 0;
    private int p = 0;
    private JSONArray q = null;
    private d s = new d();
    private boolean t = false;

    @Override // com.tencent.liteav.videodecoder.b
    public void setListener(g gVar) {
        this.r = gVar;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void setNotifyListener(WeakReference<b> weakReference) {
        this.u = weakReference;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int config(Surface surface) {
        if (surface == null) {
            return -1;
        }
        this.k = surface;
        return 0;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void decode(TXSNALPacket tXSNALPacket) {
        a(a(tXSNALPacket));
        if (tXSNALPacket.codecId == 0) {
            b(tXSNALPacket);
        }
        this.m.add(tXSNALPacket);
        while (!this.m.isEmpty()) {
            int size = this.m.size();
            try {
                b();
            } catch (Exception e) {
                TXCLog.e("MediaCodecDecoder", "decode: doDecode Exception!! " + e.toString());
            }
            if (size == this.m.size()) {
                return;
            }
        }
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int start(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, boolean z, boolean z2) {
        return a(byteBuffer, byteBuffer2, z2);
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void stop() {
        a();
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int GetDecodeCost() {
        return this.p;
    }

    public void a(JSONArray jSONArray) {
        this.q = jSONArray;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void enableLimitDecCache(boolean z) {
        this.t = z;
        TXCLog.i("MediaCodecDecoder", "decode: enable limit dec cache: " + z);
    }

    public void a(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.d = i;
            this.e = i2;
            TXCLog.w("MediaCodecDecoder", "decode: init with video size: " + this.d + ", " + this.e);
        }
    }

    private void a(MediaFormat mediaFormat) {
        if (TXCBuild.Hardware().toLowerCase().contains("qcom") && TXCBuild.VersionInt() >= 28) {
            mediaFormat.setInteger("vendor.qti-ext-dec-low-latency.enable", 1);
            mediaFormat.setInteger("vendor.qti-ext-dec-picture-order.enable", 1);
        } else if (TXCBuild.Hardware().toLowerCase().contains("kirin") && TXCBuild.VersionInt() >= 29) {
            mediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req", 1);
            mediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy", -1);
        }
        if (TXCBuild.VersionInt() >= 30) {
            mediaFormat.setInteger("low-latency", 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.media.MediaCodec, android.media.MediaCrypto] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private int a(java.nio.ByteBuffer r9, java.nio.ByteBuffer r10, boolean r11) {
        /*
        // Method dump skipped, instructions count: 406
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videodecoder.e.a(java.nio.ByteBuffer, java.nio.ByteBuffer, boolean):int");
    }

    private void a() {
        MediaCodec mediaCodec = this.b;
        if (mediaCodec != null) {
            try {
                try {
                    try {
                        mediaCodec.stop();
                        TXCLog.w("MediaCodecDecoder", "decode: stop decoder sucess");
                        try {
                            this.b.release();
                            TXCLog.w("MediaCodecDecoder", "decode: release decoder sucess");
                        } catch (Exception e) {
                            TXCLog.e("MediaCodecDecoder", "decode: release decoder exception: " + e.toString());
                        }
                    } catch (Exception e2) {
                        try {
                            TXCLog.e("MediaCodecDecoder", "decode: stop decoder Exception: " + e2.toString());
                            try {
                                this.b.release();
                                TXCLog.w("MediaCodecDecoder", "decode: release decoder sucess");
                            } catch (Exception e3) {
                                TXCLog.e("MediaCodecDecoder", "decode: release decoder exception: " + e3.toString());
                            }
                        } catch (Throwable th) {
                            this.b = null;
                            throw th;
                        }
                    }
                    this.b = null;
                } catch (Throwable th2) {
                    try {
                        try {
                            this.b.release();
                            TXCLog.w("MediaCodecDecoder", "decode: release decoder sucess");
                        } catch (Exception e4) {
                            TXCLog.e("MediaCodecDecoder", "decode: release decoder exception: " + e4.toString());
                            this.b = null;
                            throw th2;
                        }
                        this.b = null;
                        throw th2;
                    } catch (Throwable th3) {
                        this.b = null;
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                this.b = null;
                throw th4;
            }
        }
        this.m.clear();
        this.f = 0;
        this.h = true;
        this.i = false;
    }

    private void b() {
        int i;
        int i2;
        if (this.b == null) {
            TXCLog.e("MediaCodecDecoder", "null decoder");
            return;
        }
        TXSNALPacket tXSNALPacket = this.m.get(0);
        if (tXSNALPacket == null || tXSNALPacket.nalData.length == 0) {
            TXCLog.e("MediaCodecDecoder", "decode: empty buffer");
            this.m.remove(0);
            return;
        }
        long timeTick = TXCTimeUtil.getTimeTick();
        long j = 0;
        if (this.o == 0) {
            this.o = timeTick;
        }
        ByteBuffer[] byteBufferArr = null;
        try {
            byteBufferArr = this.b.getInputBuffers();
        } catch (Exception e) {
            TXCLog.e("MediaCodecDecoder", "decode: getInputBuffers Exception!! " + e.toString());
        }
        if (byteBufferArr == null || byteBufferArr.length == 0) {
            TXCLog.e("MediaCodecDecoder", "decode: getInputBuffers failed");
            return;
        }
        try {
            i = this.b.dequeueInputBuffer(10000);
        } catch (Exception e2) {
            TXCLog.e("MediaCodecDecoder", "decode: dequeueInputBuffer Exception!! " + e2.toString());
            i = -10000;
        }
        if (i >= 0) {
            byteBufferArr[i].put(tXSNALPacket.nalData);
            try {
                this.b.queueInputBuffer(i, 0, tXSNALPacket.nalData.length, TimeUnit.MILLISECONDS.toMicros(tXSNALPacket.pts), 0);
                this.m.remove(0);
            } catch (Exception unused) {
                f();
            }
            if (this.f == 0) {
                TXCLog.w("MediaCodecDecoder", "decode: input buffer available, dequeueInputBuffer index: " + i);
            }
        } else {
            TXCLog.w("MediaCodecDecoder", "decode: input buffer not available, dequeueInputBuffer failed");
        }
        try {
            i2 = this.b.dequeueOutputBuffer(this.a, this.f == 0 ? C.DEFAULT_SEEK_FORWARD_INCREMENT_MS : 10000);
        } catch (Exception e3) {
            f();
            TXCLog.e("MediaCodecDecoder", "decode: dequeueOutputBuffer exception!!" + e3);
            i2 = -10000;
        }
        if (i2 >= 0) {
            long millis = TimeUnit.MICROSECONDS.toMillis(this.a.presentationTimeUs);
            a(i2, millis, millis, tXSNALPacket.rotation);
            this.l = 0;
        } else if (i2 == -1) {
            TXCLog.i("MediaCodecDecoder", "decode: no output from decoder available when timeout fail count " + this.l);
            f();
        } else if (i2 == -3) {
            TXCLog.i("MediaCodecDecoder", "decode: output buffers changed");
        } else if (i2 == -2) {
            c();
        } else {
            TXCLog.e("MediaCodecDecoder", "decode: unexpected result from decoder.dequeueOutputBuffer: " + i2);
        }
        long timeTick2 = TXCTimeUtil.getTimeTick();
        this.n.add(Long.valueOf(timeTick2 - timeTick));
        if (timeTick2 > this.o + 1000) {
            Iterator<Long> it = this.n.iterator();
            while (it.hasNext()) {
                Long next = it.next();
                if (next.longValue() > j) {
                    j = next.longValue();
                }
            }
            this.n.clear();
            this.o = timeTick2;
            this.p = (int) (j * 3);
        }
    }

    private void a(int i, long j, long j2, int i2) {
        this.b.releaseOutputBuffer(i, true);
        if ((this.a.flags & 4) != 0) {
            TXCLog.i("MediaCodecDecoder", "output EOS");
        }
        try {
            if (this.r != null) {
                this.r.onDecodeFrame(null, this.d, this.e, j, j2, i2);
            }
        } catch (Exception e) {
            TXCLog.e("MediaCodecDecoder", "onDecodeFrame failed.", e);
        }
        d();
    }

    private void c() {
        int i;
        MediaFormat outputFormat = this.b.getOutputFormat();
        TXCLog.i("MediaCodecDecoder", "decode output format changed: " + outputFormat);
        int integer = outputFormat.getInteger("width");
        int integer2 = outputFormat.getInteger("height");
        int min = Math.min(Math.abs(outputFormat.getInteger("crop-right") - outputFormat.getInteger("crop-left")) + 1, integer);
        int min2 = Math.min(Math.abs(outputFormat.getInteger("crop-bottom") - outputFormat.getInteger("crop-top")) + 1, integer2);
        int i2 = this.d;
        if (min != i2 || min2 != (i = this.e)) {
            if (this.j && !com.tencent.liteav.basic.d.b.a(min, min2, 20)) {
                e();
                Monitor.a(2, String.format(Locale.getDefault(), "outputFormatChange: dynamic change resolution but change to a not support resolution: %s, oldwidth = %d,oldheight = %d, newwidth = %d, newheight=", TXCCommonUtil.getDeviceInfo(), Integer.valueOf(this.d), Integer.valueOf(this.e), Integer.valueOf(min), Integer.valueOf(min2)), "", 0);
            }
            this.d = min;
            this.e = min2;
            try {
                if (this.r != null) {
                    this.r.onVideoSizeChange(this.d, this.e);
                }
            } catch (Exception e) {
                TXCLog.e("MediaCodecDecoder", "onVideoSizeChange failed.", e);
            }
            TXCLog.i("MediaCodecDecoder", "decode: video size change to w:" + min + ",h:" + min2);
        } else if (this.h) {
            this.h = false;
            g gVar = this.r;
            if (gVar != null) {
                gVar.onVideoSizeChange(i2, i);
            }
        }
    }

    private void d() {
        if (this.f == 0) {
            TXCLog.w("MediaCodecDecoder", "decode first frame sucess");
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f;
        if (j > 0 && currentTimeMillis > j + 1000) {
            long j2 = this.g;
            if (currentTimeMillis > 2000 + j2 && j2 != 0) {
                TXCLog.e("MediaCodecDecoder", "frame interval[" + (currentTimeMillis - this.f) + "] > 1000");
                this.g = currentTimeMillis;
            }
        }
        if (this.g == 0) {
            this.g = currentTimeMillis;
        }
        this.f = currentTimeMillis;
    }

    private void e() {
        if (!this.i) {
            this.i = true;
            TXCLog.e("MediaCodecDecoder", "[Video][Decoder] notify HWDecoder error, isH265:" + this.j);
            if (this.j) {
                h.a(this.u, -2304, "h265 Decoding failed");
                Monitor.a(2, String.format(Locale.getDefault(), "VideoDecoder: hevc hardware decoder error. %s, %d, %d", TXCCommonUtil.getDeviceInfo(), Integer.valueOf(com.tencent.liteav.basic.d.b.a(1920, 1080, 20) ? 1 : 0), Integer.valueOf(a.b() ? 1 : 0)), "", 0);
            } else {
                h.a(this.u, 2106, "Failed to enable hardware decoding，use software decoding.");
            }
            g gVar = this.r;
            if (gVar != null) {
                gVar.onDecodeFailed(-1);
            }
        }
    }

    private void f() {
        int i = this.l;
        if (i >= 40) {
            e();
            this.l = 0;
            return;
        }
        this.l = i + 1;
    }

    protected boolean a(TXSNALPacket tXSNALPacket) {
        return tXSNALPacket != null && tXSNALPacket.codecId == 1;
    }

    private void a(boolean z) {
        if (this.j != z) {
            StringBuilder sb = new StringBuilder();
            sb.append("[Video][Decoder] nal data format changed, from:");
            String str = "h265";
            sb.append(this.j ? str : "h264");
            sb.append(" to:");
            if (!z) {
                str = "h264";
            }
            sb.append(str);
            TXCLog.i("MediaCodecDecoder", sb.toString());
            this.j = z;
            if (!this.j || com.tencent.liteav.basic.d.b.a(this.d, this.e, 20)) {
                a();
                a(null, null, this.j);
                g gVar = this.r;
                if (gVar != null) {
                    gVar.onDecoderChange(this.c, this.j);
                    return;
                }
                return;
            }
            a();
            e();
        }
    }

    private void b(TXSNALPacket tXSNALPacket) {
        int i;
        if (this.t && tXSNALPacket.nalType == 0) {
            int i2 = 0;
            while (true) {
                try {
                    if (i2 >= tXSNALPacket.nalData.length) {
                        i = -1;
                        break;
                    }
                    if (tXSNALPacket.nalData[i2] == 0 && tXSNALPacket.nalData[i2 + 1] == 0 && tXSNALPacket.nalData[i2 + 2] == 0 && tXSNALPacket.nalData[i2 + 3] == 1) {
                        i = i2 + 4;
                        if ((tXSNALPacket.nalData[i] & Ascii.US) == 7) {
                            break;
                        }
                    }
                    if (tXSNALPacket.nalData[i2] == 0 && tXSNALPacket.nalData[i2 + 1] == 0 && tXSNALPacket.nalData[i2 + 2] == 0) {
                        i = i2 + 3;
                        if ((tXSNALPacket.nalData[i] & Ascii.US) == 7) {
                            break;
                        }
                    }
                    i2 = i2 + 1 + 1;
                } catch (Exception e) {
                    TXCLog.e("MediaCodecDecoder", "modify dec buffer error ", e);
                    return;
                }
            }
            if (i >= 0) {
                int length = tXSNALPacket.nalData.length - i;
                for (int i3 = i; i3 < tXSNALPacket.nalData.length; i3++) {
                    if ((tXSNALPacket.nalData[i3] == 0 && tXSNALPacket.nalData[i3 + 1] == 0 && tXSNALPacket.nalData[i3 + 2] == 1) || (tXSNALPacket.nalData[i3] == 0 && tXSNALPacket.nalData[i3 + 1] == 0 && tXSNALPacket.nalData[i3 + 2] == 0 && tXSNALPacket.nalData[i3 + 3] == 1)) {
                        length = i3 - i;
                        break;
                    }
                }
                byte[] bArr = new byte[length];
                System.arraycopy(tXSNALPacket.nalData, i, bArr, 0, length);
                byte[] a = this.s.a(bArr);
                if (a != null) {
                    byte[] bArr2 = new byte[(tXSNALPacket.nalData.length + a.length) - length];
                    if (i > 0) {
                        System.arraycopy(tXSNALPacket.nalData, 0, bArr2, 0, i);
                    }
                    System.arraycopy(a, 0, bArr2, i, a.length);
                    System.arraycopy(tXSNALPacket.nalData, i + length, bArr2, a.length + i, (tXSNALPacket.nalData.length - length) - i);
                    tXSNALPacket.nalData = bArr2;
                }
            }
        }
    }
}
