package com.tencent.liteav.muxer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.muxer.jni.TXSWMuxerJNI;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCMP4SWMuxer.java */
/* loaded from: classes5.dex */
public class d implements a {
    public static float a = 0.5f;
    public static float b = 0.8f;
    public static float c = 1.25f;
    public static float d = 2.0f;
    private TXSWMuxerJNI f;
    private int e = 2;
    private String g = null;
    private MediaFormat h = null;
    private MediaFormat i = null;
    private int j = 0;
    private int k = 0;
    private boolean l = false;
    private boolean m = false;
    private ConcurrentLinkedQueue<a> n = new ConcurrentLinkedQueue<>();
    private ConcurrentLinkedQueue<a> o = new ConcurrentLinkedQueue<>();
    private long p = -1;
    private long q = -1;
    private long r = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCMP4SWMuxer.java */
    /* loaded from: classes5.dex */
    public static class a {
        ByteBuffer a;
        MediaCodec.BufferInfo b;

        public a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            this.a = byteBuffer;
            this.b = bufferInfo;
        }

        public ByteBuffer a() {
            return this.a;
        }

        public MediaCodec.BufferInfo b() {
            return this.b;
        }
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void a(MediaFormat mediaFormat) {
        TXCLog.d("TXCMP4SWMuxer", "addVideoTrack:" + mediaFormat);
        this.h = mediaFormat;
        this.n.clear();
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void b(MediaFormat mediaFormat) {
        TXCLog.d("TXCMP4SWMuxer", "addAudioTrack:" + mediaFormat);
        this.i = mediaFormat;
        this.o.clear();
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized boolean c() {
        if (this.h != null) {
            return true;
        }
        return false;
    }

    private ByteBuffer d() {
        ByteBuffer byteBuffer = this.i.getByteBuffer("csd-0");
        if (byteBuffer != null) {
            byteBuffer.position(0);
        }
        return byteBuffer;
    }

    private ByteBuffer e() {
        return this.h.getByteBuffer("csd-0");
    }

    private ByteBuffer f() {
        return this.h.getByteBuffer("csd-1");
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized int a() {
        if (this.g != null && !this.g.isEmpty()) {
            if (!c()) {
                TXCLog.e("TXCMP4SWMuxer", "video track not set yet!");
                return -2;
            } else if (this.f != null) {
                TXCLog.w("TXCMP4SWMuxer", "start has been called. stop must be called before start");
                return 0;
            } else {
                TXCLog.d("TXCMP4SWMuxer", TtmlNode.START);
                this.f = new TXSWMuxerJNI();
                TXSWMuxerJNI.AVOptions aVOptions = new TXSWMuxerJNI.AVOptions();
                if (this.h != null) {
                    int integer = this.h.getInteger("width");
                    aVOptions.videoHeight = this.h.getInteger("height");
                    aVOptions.videoWidth = integer;
                    try {
                        try {
                            aVOptions.videoGOP = this.h.containsKey("i-frame-interval") ? this.h.getInteger("i-frame-interval") : 3;
                        } catch (ClassCastException unused) {
                            aVOptions.videoGOP = 3;
                        }
                    } catch (ClassCastException unused2) {
                        aVOptions.videoGOP = this.h.containsKey("i-frame-interval") ? (int) this.h.getFloat("i-frame-interval") : 3;
                    }
                }
                if (this.i != null) {
                    int integer2 = this.i.getInteger("channel-count");
                    int integer3 = this.i.getInteger("sample-rate");
                    aVOptions.audioChannels = integer2;
                    aVOptions.audioSampleRate = integer3;
                }
                ByteBuffer e = e();
                ByteBuffer f = f();
                ByteBuffer byteBuffer = null;
                if (this.i != null) {
                    byteBuffer = d();
                }
                if (!(e == null || f == null)) {
                    if (this.i == null || byteBuffer != null) {
                        this.f.a(e, e.capacity(), f, f.capacity());
                        if (this.i != null) {
                            this.f.a(byteBuffer, byteBuffer.capacity());
                        }
                        this.f.a(aVOptions);
                        this.f.a(this.g);
                        this.f.a();
                        this.p = -1;
                        this.l = true;
                        this.m = false;
                        this.q = -1;
                        this.r = -1;
                        return 0;
                    }
                    TXCLog.e("TXCMP4SWMuxer", "audio format contains error csd!");
                    return -3;
                }
                TXCLog.e("TXCMP4SWMuxer", "video format contains error csd!");
                return -3;
            }
        }
        TXCLog.e("TXCMP4SWMuxer", "target path not set yet!");
        return -1;
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized int b() {
        if (this.f != null) {
            h();
            TXCLog.d("TXCMP4SWMuxer", "stop. start flag = " + this.l + ", video key frame set = " + this.m);
            try {
                if (this.l && this.m) {
                    this.f.b();
                }
                this.f.c();
                this.f = null;
                this.l = false;
                this.f = null;
                this.m = false;
                this.n.clear();
                this.o.clear();
                this.h = null;
                this.i = null;
                this.q = -1;
                this.r = -1;
            } catch (Exception e) {
                TXCLog.e("TXCMP4SWMuxer", "muxer stop/release exception: " + e);
                this.l = false;
                this.f = null;
                this.m = false;
                this.n.clear();
                this.o.clear();
                this.h = null;
                this.i = null;
                this.q = -1;
                this.r = -1;
                return -1;
            }
        }
        return 0;
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void a(String str) {
        this.g = str;
        if (!TextUtils.isEmpty(this.g)) {
            File file = new File(this.g);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            try {
                file.createNewFile();
            } catch (IOException e) {
                TXCLog.e("TXCMP4SWMuxer", "create new file failed.", e);
            }
        }
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void b(byte[] bArr, int i, int i2, long j, int i3) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i2);
        allocateDirect.put(bArr, i, i2);
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        bufferInfo.presentationTimeUs = j;
        bufferInfo.offset = 0;
        bufferInfo.size = i2;
        bufferInfo.flags = i3;
        a(allocateDirect, bufferInfo);
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void a(byte[] bArr, int i, int i2, long j, int i3) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i2);
        allocateDirect.put(bArr, i, i2);
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        bufferInfo.presentationTimeUs = j;
        bufferInfo.offset = 0;
        bufferInfo.size = i2;
        bufferInfo.flags = i3;
        b(allocateDirect, bufferInfo);
    }

    public synchronized void a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.f == null) {
            a(true, byteBuffer, bufferInfo);
            TXCLog.w("TXCMP4SWMuxer", "cache frame before muexer ready. ptsUs: " + bufferInfo.presentationTimeUs);
            return;
        }
        if (this.p < 0) {
            a(true, byteBuffer, bufferInfo);
            this.p = g();
            TXCLog.i("TXCMP4SWMuxer", "first frame offset = " + this.p);
            i();
        } else {
            a(bufferInfo.presentationTimeUs);
            c(byteBuffer, bufferInfo);
        }
    }

    public synchronized void b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        a(false, byteBuffer, bufferInfo);
    }

    private void c(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        float f;
        float f2;
        long j = bufferInfo.presentationTimeUs - this.p;
        if (j < 0) {
            TXCLog.e("TXCMP4SWMuxer", "pts error! first frame offset timeus = " + this.p + ", current timeus = " + bufferInfo.presentationTimeUs);
            j = this.q;
            if (j <= 0) {
                j = 0;
            }
        }
        if (j < this.q) {
            TXCLog.w("TXCMP4SWMuxer", "video is not in chronological order. current frame's pts(" + j + ") smaller than pre frame's pts(" + this.q + ")");
        } else {
            this.q = j;
        }
        int i = this.e;
        if (i != 2) {
            if (i == 3) {
                f = (float) j;
                f2 = b;
            } else if (i == 4) {
                f = (float) j;
                f2 = a;
            } else if (i == 1) {
                f = (float) j;
                f2 = c;
            } else if (i == 0) {
                f = (float) j;
                f2 = d;
            }
            j = (long) (f * f2);
        }
        bufferInfo.presentationTimeUs = j;
        try {
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            this.f.a(byteBuffer, 1, bufferInfo.offset, bufferInfo.size, bufferInfo.flags == 1 ? 1 : 0, bufferInfo.presentationTimeUs);
            if ((bufferInfo.flags & 1) != 0) {
                this.m = true;
            }
        } catch (IllegalArgumentException e) {
            TXCLog.e("TXCMP4SWMuxer", "write frame IllegalArgumentException: " + e);
        } catch (IllegalStateException e2) {
            TXCLog.e("TXCMP4SWMuxer", "write frame IllegalStateException: " + e2);
        }
    }

    private void d(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        float f;
        float f2;
        long j = bufferInfo.presentationTimeUs;
        long j2 = this.p;
        long j3 = j - j2;
        if (j2 < 0 || j3 < 0) {
            TXCLog.w("TXCMP4SWMuxer", "drop sample. first frame offset timeus = " + this.p + ", current sample timeus = " + bufferInfo.presentationTimeUs);
            return;
        }
        if (j3 < this.r) {
            TXCLog.e("TXCMP4SWMuxer", "audio is not in chronological order. current audio's pts pts(" + j3 + ") must larger than pre audio's pts(" + this.r + ")");
            j3 = this.r + 1;
        } else {
            this.r = j3;
        }
        int i = this.e;
        if (i != 2) {
            if (i == 3) {
                f = (float) j3;
                f2 = b;
            } else if (i == 4) {
                f = (float) j3;
                f2 = a;
            } else if (i == 1) {
                f = (float) j3;
                f2 = c;
            } else if (i == 0) {
                f = (float) j3;
                f2 = d;
            }
            j3 = (long) (f * f2);
        }
        bufferInfo.presentationTimeUs = j3;
        try {
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            this.f.a(byteBuffer, 0, bufferInfo.offset, bufferInfo.size, bufferInfo.flags, bufferInfo.presentationTimeUs);
        } catch (IllegalArgumentException e) {
            TXCLog.e("TXCMP4SWMuxer", "write sample IllegalArgumentException: " + e);
        } catch (IllegalStateException e2) {
            TXCLog.e("TXCMP4SWMuxer", "write sample IllegalStateException: " + e2);
        }
    }

    private void a(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (byteBuffer != null && bufferInfo != null) {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(byteBuffer.capacity());
            byteBuffer.rewind();
            if (bufferInfo.size > 0) {
                byteBuffer.position(bufferInfo.offset);
                byteBuffer.limit(bufferInfo.size);
            }
            allocateDirect.rewind();
            allocateDirect.put(byteBuffer);
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            bufferInfo2.set(bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            a aVar = new a(allocateDirect, bufferInfo2);
            if (!z) {
                this.o.add(aVar);
            } else if (this.n.size() < 200) {
                this.n.add(aVar);
            } else {
                TXCLog.e("TXCMP4SWMuxer", "drop video frame. video cache size is larger than 200");
            }
        }
    }

    private long g() {
        a peek;
        long j = this.n.size() > 0 ? this.n.peek().b().presentationTimeUs : 0;
        if (this.o.size() <= 0 || (peek = this.o.peek()) == null || peek.b() == null) {
            return j;
        }
        long j2 = this.o.peek().b().presentationTimeUs;
        return j > j2 ? j2 : j;
    }

    private void h() {
        while (this.n.size() > 0) {
            a poll = this.n.poll();
            c(poll.a(), poll.b());
        }
        while (this.o.size() > 0) {
            a poll2 = this.o.poll();
            d(poll2.a(), poll2.b());
        }
    }

    private void i() {
        while (this.n.size() > 0) {
            a poll = this.n.poll();
            a(poll.b().presentationTimeUs);
            c(poll.a(), poll.b());
        }
    }

    private void a(long j) {
        while (this.o.size() > 0) {
            if (this.o.peek().b() == null) {
                TXCLog.e("TXCMP4SWMuxer", "flushAudioCache, bufferInfo is null");
                this.o.remove();
            } else if (this.o.peek().b().presentationTimeUs < j) {
                a poll = this.o.poll();
                d(poll.a(), poll.b());
            } else {
                return;
            }
        }
    }
}
