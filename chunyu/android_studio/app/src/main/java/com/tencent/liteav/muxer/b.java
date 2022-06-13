package com.tencent.liteav.muxer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

/* compiled from: TXCMP4HWMuxer.java */
/* loaded from: classes2.dex */
public class b implements a {
    public static float a = 0.5f;
    public static float b = 0.8f;
    public static float c = 1.25f;
    public static float d = 2.0f;
    private MediaMuxer f;
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
    /* compiled from: TXCMP4HWMuxer.java */
    /* loaded from: classes2.dex */
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
        TXCLog.d("TXCMP4HWMuxer", "addVideoTrack:" + mediaFormat);
        this.h = mediaFormat;
        this.n.clear();
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized void b(MediaFormat mediaFormat) {
        TXCLog.d("TXCMP4HWMuxer", "addAudioTrack:" + mediaFormat);
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

    @Override // com.tencent.liteav.muxer.a
    public synchronized int a() {
        if (this.g != null && !this.g.isEmpty()) {
            if (!c()) {
                TXCLog.e("TXCMP4HWMuxer", "video track not set yet!");
                return -2;
            } else if (this.f != null) {
                TXCLog.w("TXCMP4HWMuxer", "start has been called. stop must be called before start");
                return 0;
            } else {
                TXCLog.d("TXCMP4HWMuxer", TtmlNode.START);
                try {
                    this.f = new MediaMuxer(this.g, 0);
                    if (this.h != null) {
                        try {
                            try {
                                this.k = this.f.addTrack(this.h);
                            } catch (IllegalArgumentException e) {
                                TXCLog.e("TXCMP4HWMuxer", "addVideoTrack IllegalArgumentException: " + e);
                                return -5;
                            }
                        } catch (IllegalStateException e2) {
                            TXCLog.e("TXCMP4HWMuxer", "addVideoTrack IllegalStateException: " + e2);
                            return -6;
                        }
                    }
                    if (this.i != null) {
                        try {
                            this.j = this.f.addTrack(this.i);
                        } catch (IllegalArgumentException e3) {
                            TXCLog.e("TXCMP4HWMuxer", "addAudioTrack IllegalArgumentException: " + e3);
                            return -7;
                        } catch (IllegalStateException e4) {
                            TXCLog.e("TXCMP4HWMuxer", "addAudioTrack IllegalStateException: " + e4);
                            return -8;
                        }
                    }
                    this.f.start();
                    this.p = -1;
                    this.l = true;
                    this.m = false;
                    this.q = -1;
                    this.r = -1;
                    return 0;
                } catch (IOException e5) {
                    TXCLog.e("TXCMP4HWMuxer", "create MediaMuxer exception:" + e5);
                    return -4;
                }
            }
        }
        TXCLog.e("TXCMP4HWMuxer", "target path not set yet!");
        return -1;
    }

    @Override // com.tencent.liteav.muxer.a
    public synchronized int b() {
        if (this.f != null) {
            TXCLog.d("TXCMP4HWMuxer", "stop. start flag = " + this.l + ", video key frame set = " + this.m);
            try {
                if (this.l && this.m) {
                    this.f.stop();
                }
                this.f.release();
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
                TXCLog.e("TXCMP4HWMuxer", "muxer stop/release exception: " + e);
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
                TXCLog.e("TXCMP4HWMuxer", "create new file failed.", e);
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
            TXCLog.w("TXCMP4HWMuxer", "cache frame before muexer ready. ptsUs: " + bufferInfo.presentationTimeUs);
            return;
        }
        if (this.p < 0) {
            a(true, byteBuffer, bufferInfo);
            this.p = d();
            TXCLog.i("TXCMP4HWMuxer", "first frame offset = " + this.p);
            e();
        } else {
            c(byteBuffer, bufferInfo);
        }
    }

    public synchronized void b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.f != null && this.p >= 0) {
            d(byteBuffer, bufferInfo);
            return;
        }
        TXCLog.d("TXCMP4HWMuxer", "cache sample before muexer ready. ptsUs: " + bufferInfo.presentationTimeUs);
        a(false, byteBuffer, bufferInfo);
    }

    private void c(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        float f;
        float f2;
        long j = bufferInfo.presentationTimeUs - this.p;
        if (j < 0) {
            TXCLog.e("TXCMP4HWMuxer", "pts error! first frame offset timeus = " + this.p + ", current timeus = " + bufferInfo.presentationTimeUs);
            j = this.q;
            if (j <= 0) {
                j = 0;
            }
        }
        if (j < this.q) {
            TXCLog.w("TXCMP4HWMuxer", "video is not in chronological order. current frame's pts(" + j + ") smaller than pre frame's pts(" + this.q + ")");
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
            this.f.writeSampleData(this.k, byteBuffer, bufferInfo);
            if ((bufferInfo.flags & 1) != 0) {
                this.m = true;
            }
        } catch (IllegalArgumentException e) {
            TXCLog.e("TXCMP4HWMuxer", "write frame info.presentationTimeUs: " + bufferInfo.presentationTimeUs + ", IllegalArgumentException: " + e);
        } catch (IllegalStateException e2) {
            TXCLog.e("TXCMP4HWMuxer", "write frame info.presentationTimeUs: " + bufferInfo.presentationTimeUs + ", IllegalStateException: " + e2);
        }
    }

    private void d(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        float f;
        float f2;
        long j = bufferInfo.presentationTimeUs;
        long j2 = this.p;
        long j3 = j - j2;
        if (j2 < 0 || j3 < 0) {
            TXCLog.w("TXCMP4HWMuxer", "drop sample. first frame offset timeus = " + this.p + ", current sample timeus = " + bufferInfo.presentationTimeUs);
            return;
        }
        if (j3 < this.r) {
            TXCLog.e("TXCMP4HWMuxer", "audio is not in chronological order. current audio's pts pts(" + j3 + ") must larger than pre audio's pts(" + this.r + ")");
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
            this.f.writeSampleData(this.j, byteBuffer, bufferInfo);
        } catch (IllegalArgumentException e) {
            TXCLog.e("TXCMP4HWMuxer", "write sample IllegalArgumentException: " + e);
        } catch (IllegalStateException e2) {
            TXCLog.e("TXCMP4HWMuxer", "write sample IllegalStateException: " + e2);
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
            if (z) {
                if (this.n.size() < 200) {
                    this.n.add(aVar);
                } else {
                    TXCLog.e("TXCMP4HWMuxer", "drop video frame. video cache size is larger than 200");
                }
            } else if (this.o.size() < 600) {
                this.o.add(aVar);
            } else {
                TXCLog.e("TXCMP4HWMuxer", "drop audio frame. audio cache size is larger than 600");
            }
        }
    }

    private long d() {
        a peek;
        long j = this.n.size() > 0 ? this.n.peek().b().presentationTimeUs : 0;
        if (this.o.size() <= 0 || (peek = this.o.peek()) == null || peek.b() == null) {
            return j;
        }
        long j2 = this.o.peek().b().presentationTimeUs;
        return j > j2 ? j2 : j;
    }

    private void e() {
        while (this.n.size() > 0) {
            a poll = this.n.poll();
            c(poll.a(), poll.b());
        }
        while (this.o.size() > 0) {
            a poll2 = this.o.poll();
            d(poll2.a(), poll2.b());
        }
    }
}
