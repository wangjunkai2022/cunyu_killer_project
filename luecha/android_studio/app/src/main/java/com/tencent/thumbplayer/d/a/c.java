package com.tencent.thumbplayer.d.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.m;
import java.io.RandomAccessFile;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c implements ITPAssetResourceLoadingDataRequest {
    private static String a = "TPAssetResourceLoadingDataRequest";
    private long b;
    private long c;
    private boolean d;
    private long e;
    private long f;
    private long g;
    private int h;
    private b i;
    private m j = new m();
    private String k;
    private RandomAccessFile l;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a {
        long a;
        byte[] b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 256) {
                a aVar = (a) message.obj;
                long j = aVar.a;
                byte[] bArr = aVar.b;
                int i = message.arg1;
                c cVar = c.this;
                if (!cVar.a(j, bArr, cVar.k)) {
                    TPLogUtil.e(c.a, "write data failed");
                    return;
                }
                c.this.j.writeLock().lock();
                c.this.e = ((long) i) + j;
                c.this.j.writeLock().unlock();
                String str = c.a;
                TPLogUtil.i(str, "write data from " + j + " , with dataLength" + i);
            }
        }
    }

    public c(long j, long j2, boolean z) {
        this.b = j;
        this.f = j;
        this.e = j;
        this.c = j2;
        this.d = z;
    }

    private void a(int i, int i2, int i3, Object obj) {
        b bVar = this.i;
        if (bVar != null) {
            Message obtainMessage = bVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.i.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (r4 == null) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r4 == null) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
        com.tencent.thumbplayer.utils.TPLogUtil.e(com.tencent.thumbplayer.d.a.c.a, "fail to close mRandomAccessFile");
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean a(long r4, byte[] r6, java.lang.String r7) {
        /*
            r3 = this;
            java.lang.String r0 = "fail to close mRandomAccessFile"
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            java.lang.String r2 = "rw"
            r1.<init>(r7, r2)     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            r3.l = r1     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            java.io.RandomAccessFile r7 = r3.l     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            r7.seek(r4)     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            java.io.RandomAccessFile r4 = r3.l     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            r4.write(r6)     // Catch: FileNotFoundException -> 0x0032, IOException -> 0x0026, all -> 0x0024
            r4 = 1
            java.io.RandomAccessFile r5 = r3.l
            if (r5 == 0) goto L_0x0047
            r5.close()     // Catch: IOException -> 0x001e
            goto L_0x0047
        L_0x001e:
            java.lang.String r5 = com.tencent.thumbplayer.d.a.c.a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r5, r0)
            goto L_0x0047
        L_0x0024:
            r4 = move-exception
            goto L_0x0048
        L_0x0026:
            java.lang.String r4 = com.tencent.thumbplayer.d.a.c.a     // Catch: all -> 0x0024
            java.lang.String r5 = "fail to write data"
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r5)     // Catch: all -> 0x0024
            java.io.RandomAccessFile r4 = r3.l
            if (r4 == 0) goto L_0x0046
            goto L_0x003d
        L_0x0032:
            java.lang.String r4 = com.tencent.thumbplayer.d.a.c.a     // Catch: all -> 0x0024
            java.lang.String r5 = "file not found"
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r5)     // Catch: all -> 0x0024
            java.io.RandomAccessFile r4 = r3.l
            if (r4 == 0) goto L_0x0046
        L_0x003d:
            r4.close()     // Catch: IOException -> 0x0041
            goto L_0x0046
        L_0x0041:
            java.lang.String r4 = com.tencent.thumbplayer.d.a.c.a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r0)
        L_0x0046:
            r4 = 0
        L_0x0047:
            return r4
        L_0x0048:
            java.io.RandomAccessFile r5 = r3.l
            if (r5 == 0) goto L_0x0055
            r5.close()     // Catch: IOException -> 0x0050
            goto L_0x0055
        L_0x0050:
            java.lang.String r5 = com.tencent.thumbplayer.d.a.c.a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r5, r0)
        L_0x0055:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.d.a.c.a(long, byte[], java.lang.String):boolean");
    }

    public int a() {
        return this.h;
    }

    public int a(long j) {
        this.j.readLock().lock();
        long j2 = this.e;
        this.j.readLock().unlock();
        if (j >= j2) {
            return -1;
        }
        if (j >= this.b) {
            return (int) (j2 - j);
        }
        TPLogUtil.e(a, "Offset less than mRequestedOffset");
        return -1;
    }

    public void a(int i) {
        this.h = i;
    }

    public void a(Looper looper) {
        this.i = new b(looper);
    }

    public void a(String str) {
        this.k = str;
    }

    public void b() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.removeCallbacksAndMessages(null);
            this.i = null;
        }
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getCurrentOffset() {
        this.j.readLock().lock();
        long j = this.f;
        this.j.readLock().unlock();
        return j;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedLength() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedOffset() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void notifyDataReady(long j, long j2) {
        long j3 = j2 + j;
        long j4 = this.b;
        if (j3 > this.c + j4) {
            TPLogUtil.e(a, "data exceed the max request offset");
            return;
        }
        if (j < j4) {
            TPLogUtil.w(a, "the notify data offset is less than request offset");
        }
        if (j3 < this.f) {
            TPLogUtil.e(a, "data not reach current offset");
            return;
        }
        this.j.writeLock().lock();
        this.f = j3;
        this.e = this.f;
        this.j.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void respondWithData(byte[] bArr) {
        if (this.g > this.c) {
            TPLogUtil.i(a, "respond full data");
            return;
        }
        int length = bArr.length;
        a aVar = new a();
        aVar.a = this.f;
        aVar.b = bArr;
        a(256, length, 0, aVar);
        String str = a;
        TPLogUtil.i(str, "respond data from:" + this.f + ", dataLength:" + length);
        this.j.writeLock().lock();
        long j = (long) length;
        this.f = this.f + j;
        this.g = this.g + j;
        this.j.writeLock().unlock();
    }
}
