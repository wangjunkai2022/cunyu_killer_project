package com.tencent.liteav.audio.impl.Record;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.liteav.audio.f;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Vector;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCAudioHWEncoder.java */
/* loaded from: classes5.dex */
public class b extends Thread {
    private MediaCodec.BufferInfo a;
    private MediaCodecInfo b;
    private MediaFormat c;
    private MediaCodec d;
    private Vector<byte[]> e;
    private WeakReference<f> f;
    private volatile boolean g = false;
    private volatile boolean h = false;
    private final Object i = new Object();
    private long j = 0;
    private int k = 48000;
    private int l = 1;
    private int m = 16;
    private byte[] n;

    static {
        h.f();
    }

    public b() {
        super("TXAudioRecordThread");
    }

    public void a(int i, int i2, int i3, int i4, WeakReference<f> weakReference) {
        this.f = weakReference;
        this.a = new MediaCodec.BufferInfo();
        this.e = new Vector<>();
        this.k = i2;
        this.l = i3;
        this.m = i4;
        b();
    }

    public void a(byte[] bArr, long j) {
        Vector<byte[]> vector = this.e;
        if (!(vector == null || bArr == null)) {
            synchronized (vector) {
                if (this.e != null) {
                    this.e.add(bArr);
                } else {
                    return;
                }
            }
        }
        synchronized (this.i) {
            this.i.notify();
        }
    }

    public void a() {
        c();
    }

    private void b() {
        this.b = a(MimeTypes.AUDIO_AAC);
        if (this.b == null) {
            TXCLog.e("AudioCenter:TXCAudioHWEncoder", "Unable to find an appropriate codec for audio/mp4a-latm");
            return;
        }
        TXCLog.i("AudioCenter:TXCAudioHWEncoder", "selected codec: " + this.b.getName());
        int i = 32000;
        if (this.k >= 32000) {
            i = 64000;
        }
        this.c = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, this.k, this.l);
        this.c.setInteger("bitrate", i);
        this.c.setInteger("channel-count", this.l);
        this.c.setInteger("sample-rate", this.k);
        this.c.setInteger("aac-profile", 2);
        TXCLog.i("AudioCenter:TXCAudioHWEncoder", "format: " + this.c);
        try {
            d();
        } catch (Exception e) {
            TXCLog.e("AudioCenter:TXCAudioHWEncoder", "start media codec failed.", e);
        }
        start();
    }

    private void c() {
        this.h = true;
    }

    private void d() throws IOException {
        if (this.d == null) {
            this.d = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AAC);
            this.d.configure(this.c, (Surface) null, (MediaCrypto) null, 1);
            this.d.start();
            TXCLog.i("AudioCenter:TXCAudioHWEncoder", "prepare finishing");
            this.g = true;
        }
    }

    private void e() {
        MediaCodec mediaCodec = this.d;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.d.release();
            this.d = null;
        }
        this.g = false;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean isEmpty;
        byte[] remove;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(1024);
        while (!this.h) {
            if (this.g) {
                synchronized (this.e) {
                    isEmpty = this.e.isEmpty();
                }
                if (isEmpty) {
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException unused) {
                    }
                } else {
                    synchronized (this.e) {
                        remove = this.e.remove(0);
                    }
                    if (remove != null) {
                        try {
                            allocateDirect.clear();
                            if (remove.length > allocateDirect.capacity()) {
                                allocateDirect = ByteBuffer.allocateDirect(remove.length);
                            }
                            allocateDirect.clear();
                            allocateDirect.put(remove);
                            allocateDirect.flip();
                            a(allocateDirect, remove.length, f());
                        } catch (Exception e) {
                            TXCLog.e("AudioCenter:TXCAudioHWEncoder", "encode frame failed.", e);
                        }
                    }
                }
            } else {
                synchronized (this.i) {
                    try {
                        this.i.wait();
                    } catch (InterruptedException unused2) {
                    }
                }
            }
        }
        e();
    }

    private void a(ByteBuffer byteBuffer, int i, long j) {
        int dequeueOutputBuffer;
        if (!this.h) {
            ByteBuffer[] inputBuffers = this.d.getInputBuffers();
            int dequeueInputBuffer = this.d.dequeueInputBuffer(10000);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer2 = inputBuffers[dequeueInputBuffer];
                byteBuffer2.clear();
                if (byteBuffer != null) {
                    byteBuffer2.put(byteBuffer);
                }
                if (i <= 0) {
                    TXCLog.i("AudioCenter:TXCAudioHWEncoder", "send BUFFER_FLAG_END_OF_STREAM");
                    this.d.queueInputBuffer(dequeueInputBuffer, 0, 0, j, 4);
                } else {
                    this.d.queueInputBuffer(dequeueInputBuffer, 0, i, j, 0);
                }
            }
            ByteBuffer[] outputBuffers = this.d.getOutputBuffers();
            do {
                dequeueOutputBuffer = this.d.dequeueOutputBuffer(this.a, 10000);
                if (dequeueOutputBuffer != -1) {
                    if (dequeueOutputBuffer == -3) {
                        outputBuffers = this.d.getOutputBuffers();
                        continue;
                    } else if (dequeueOutputBuffer == -2) {
                        this.d.getOutputFormat();
                        continue;
                    } else if (dequeueOutputBuffer < 0) {
                        continue;
                    } else {
                        ByteBuffer byteBuffer3 = outputBuffers[dequeueOutputBuffer];
                        if ((this.a.flags & 2) != 0) {
                            TXCLog.d("AudioCenter:TXCAudioHWEncoder", "drain:BUFFER_FLAG_CODEC_CONFIG");
                            this.a.size = 0;
                        }
                        if (this.a.size != 0) {
                            this.a.presentationTimeUs = f();
                            this.n = new byte[byteBuffer3.limit()];
                            byteBuffer3.get(this.n);
                            b(this.n, this.a.presentationTimeUs);
                            this.j = this.a.presentationTimeUs;
                        }
                        this.d.releaseOutputBuffer(dequeueOutputBuffer, false);
                        continue;
                    }
                }
            } while (dequeueOutputBuffer >= 0);
        }
    }

    private long f() {
        long timeTick = TXCTimeUtil.getTimeTick();
        long j = this.j;
        return timeTick < j ? timeTick + (j - timeTick) : timeTick;
    }

    private static final MediaCodecInfo a(String str) {
        TXCLog.v("AudioCenter:TXCAudioHWEncoder", "selectAudioCodec:");
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                for (int i2 = 0; i2 < supportedTypes.length; i2++) {
                    TXCLog.i("AudioCenter:TXCAudioHWEncoder", "supportedType:" + codecInfoAt.getName() + ",MIME=" + supportedTypes[i2]);
                    if (supportedTypes[i2].equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private void b(byte[] bArr, long j) {
        f fVar;
        WeakReference<f> weakReference = this.f;
        if (weakReference != null && (fVar = weakReference.get()) != null) {
            fVar.b(bArr, j, this.k, this.l, this.m);
        }
    }
}
