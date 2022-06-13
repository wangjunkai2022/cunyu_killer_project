package com.tencent.thumbplayer.d.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.api.resourceloader.TPAssetResourceLoadingContentInformationRequest;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLFileSystem;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLIOUtil;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b implements a {
    private static String a = "TPAssetResourceLoader";
    private Context b;
    private ITPAssetResourceLoaderListener c;
    private long d = 0;
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = ".mp4";
    private int i = 0;
    private ArrayList<d> j = new ArrayList<>();
    private TPAssetResourceLoadingContentInformationRequest k;
    private HandlerThread l;
    private HandlerThread m;
    private a n;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        private void a(long j, long j2, String str, int i, int i2) {
            d dVar = new d(j, j2, i2, a(j, j2));
            dVar.a(b.this.m.getLooper());
            dVar.a(b.this.b(i, str));
            dVar.a(b.this.k);
            if (b.this.c.shouldWaitForLoadingOfRequestedResource(dVar)) {
                b.this.a(dVar);
                String str2 = b.a;
                TPLogUtil.i(str2, "add to mLoadingRequests, requestId: " + i2);
            }
        }

        private boolean a(long j, long j2) {
            boolean z = b.this.d > 0 && j2 + j >= b.this.d;
            if (z) {
                b.this.f();
            }
            return z;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = b.a;
            TPLogUtil.d(str, "mCallbackForResourceLoaderHandler msg : " + message.what);
            if (b.this.c != null) {
                int i = message.what;
                if (i == 256) {
                    TPLogUtil.i(b.a, "start read data");
                    C0040b bVar = (C0040b) message.obj;
                    long j = bVar.a;
                    long j2 = bVar.b;
                    String str2 = bVar.c;
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    String str3 = b.a;
                    TPLogUtil.i(str3, "start read data, requestStart: " + j + " requestEnd:" + j2 + " requestId:" + i3);
                    long a = b.this.a(j, j2);
                    if (a <= 0) {
                        TPLogUtil.e(b.a, "requestLength invalid, check requestStart and requestEnd");
                    } else {
                        a(j, a, str2, i2, i3);
                    }
                } else if (i == 257) {
                    TPLogUtil.i(b.a, "stop read data");
                    b.this.b(message.arg1);
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.thumbplayer.d.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0040b {
        long a;
        long b;
        String c;

        private C0040b() {
        }
    }

    public b(Context context, Looper looper) {
        this.b = context;
        if (looper == null) {
            this.l = o.a().b();
            looper = this.l.getLooper();
        }
        this.n = new a(looper);
        this.m = o.a().a("TPAssetResourceLoader-dataWriteThread");
    }

    private synchronized int a(long j) {
        if (this.j == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            i = Math.max(i, this.j.get(i2).a(j));
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(long j, long j2) {
        if (j2 > 0) {
            return j2 - j;
        }
        long j3 = this.d;
        if (j3 <= 0) {
            return 536870912;
        }
        return j3 - j;
    }

    private synchronized d a(int i) {
        if (this.j == null) {
            return null;
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            d dVar = this.j.get(i2);
            if (dVar.getLoadingDataRequest().a() == i) {
                return dVar;
            }
        }
        return null;
    }

    private String a(Context context, int i) {
        if (TextUtils.isEmpty(this.g)) {
            String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            File externalCacheFile = TPDLFileSystem.getExternalCacheFile(context, "resourceLoader", format + "-" + i + this.h);
            TPDLIOUtil.createFile(externalCacheFile);
            this.g = externalCacheFile.getAbsolutePath();
        }
        return this.g;
    }

    private void a(int i, int i2, int i3, Object obj) {
        a aVar = this.n;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.n.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(d dVar) {
        if (this.j != null) {
            this.j.add(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        d a2 = a(i);
        if (a2 == null) {
            String str = a;
            TPLogUtil.e(str, "TPAssetLoader can't find the request " + i + " with current loading requests");
            return;
        }
        a2.b();
        String str2 = a;
        TPLogUtil.i(str2, "handleStopReadData, cancel the loading request with id " + i);
        b(a2);
        this.c.didCancelLoadingRequest(a2);
    }

    private synchronized void b(d dVar) {
        if (this.j != null) {
            this.j.remove(dVar);
        }
    }

    private String e() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        if (this.j != null) {
            Iterator<d> it = this.j.iterator();
            while (it.hasNext()) {
                d next = it.next();
                next.b();
                this.c.didCancelLoadingRequest(next);
            }
            this.j.clear();
        }
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public int a(int i, String str, int i2) {
        if (this.c == null) {
            TPLogUtil.e(a, "listener not set");
            return 0;
        }
        a(257, i2, 0, (Object) null);
        return 0;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public int a(int i, String str, long j, long j2) {
        if (this.c == null) {
            TPLogUtil.e(a, "listener not set");
            return 0;
        }
        String str2 = a;
        TPLogUtil.i(str2, "onStartReadData, fileId:" + i + ", fileKey:" + str + ", requestStart:" + j + ", requestEnd:" + j2);
        int i2 = this.i + 1;
        C0040b bVar = new C0040b();
        bVar.a = j;
        bVar.b = j2;
        bVar.c = str;
        a(256, i, i2, bVar);
        this.i = i2;
        return this.i;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public long a(int i, String str) {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public void a() {
        if (this.c == null) {
            TPLogUtil.e(a, "listener not set");
            return;
        }
        this.k = new TPAssetResourceLoadingContentInformationRequest();
        this.c.fillInContentInformation(this.k);
        this.e = this.k.contentType;
        this.d = this.k.dataTotalSize;
        this.f = this.k.dataFilePath;
        String str = a;
        TPLogUtil.i(str, "proxy start, mDataTotalSize: " + this.d + " businessPath:" + this.f);
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public void a(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener) {
        this.c = iTPAssetResourceLoaderListener;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public int b(int i, String str, long j, long j2) {
        String str2 = a;
        TPLogUtil.d(str2, "read data, offset:" + j + ", length:" + j2);
        int min = (int) Math.min((long) a(j), j2);
        if (min <= 0) {
            return -1;
        }
        String str3 = a;
        TPLogUtil.d(str3, "on read data, fileId: " + i + " readOffset: " + j + " readLength:" + j2 + " readyLength:" + min);
        return min;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public String b(int i, String str) {
        String e = e();
        return !TextUtils.isEmpty(e) ? e : a(this.b, i);
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public void b() {
        TPLogUtil.i(a, "reset start");
        f();
        this.d = 0;
        this.e = "";
        this.f = "";
        if (!TextUtils.isEmpty(this.g)) {
            try {
                new File(this.g).deleteOnExit();
                this.g = "";
            } catch (Exception e) {
                String str = a;
                TPLogUtil.e(str, "reset, delete cache file has exception:" + e.toString());
            }
        }
        a aVar = this.n;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public String c(int i, String str) {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.d.a.a
    public void c() {
        TPLogUtil.i(a, "release start");
        b();
        o.a().a(this.l, this.n);
        o.a().a(this.m, (Handler) null);
        this.l = null;
        this.m = null;
        this.n = null;
        this.j = null;
    }
}
