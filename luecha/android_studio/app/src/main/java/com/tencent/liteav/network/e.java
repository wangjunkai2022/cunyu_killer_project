package com.tencent.liteav.network;

import android.os.Bundle;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCMultiStreamDownloader.java */
/* loaded from: classes5.dex */
public class e implements l {
    private a f;
    private l a = null;
    private b b = null;
    private long c = 0;
    private long d = 0;
    private b e = null;
    private long g = 0;
    private long h = 0;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCMultiStreamDownloader.java */
    /* loaded from: classes5.dex */
    public interface a {
        void onSwitchFinish(TXIStreamDownloader tXIStreamDownloader, boolean z);
    }

    public void a(l lVar) {
        this.a = lVar;
    }

    public e(a aVar) {
        this.f = aVar;
    }

    public void a() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.b(0);
        }
        b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.b(0);
        }
    }

    public void a(TXIStreamDownloader tXIStreamDownloader, TXIStreamDownloader tXIStreamDownloader2, long j, long j2, String str, com.tencent.liteav.basic.b.a aVar) {
        TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] old downloader:" + tXIStreamDownloader.hashCode() + " new downloader:" + tXIStreamDownloader2.hashCode());
        this.c = tXIStreamDownloader.getCurrentTS();
        this.d = tXIStreamDownloader.getLastIFrameTS();
        this.b = new b(tXIStreamDownloader, this);
        this.b.a(this);
        ((TXCFLVDownloader) tXIStreamDownloader).recvData(true);
        Vector<h> vector = new Vector<>();
        vector.add(new h(str, false));
        tXIStreamDownloader2.setOriginUrl(str);
        ((TXCFLVDownloader) tXIStreamDownloader2).recvData(true);
        tXIStreamDownloader2.startDownload(vector, false, false, tXIStreamDownloader.mEnableMessage, tXIStreamDownloader.mEnableMetaData, aVar);
        this.e = new b(tXIStreamDownloader2, this);
        this.e.a(this.c);
    }

    public void b() {
        this.b.a((l) null);
        this.e.a(this);
        this.b = this.e;
        this.e = null;
        StringBuilder sb = new StringBuilder();
        sb.append("[SwitchStream] end at ");
        sb.append(this.c);
        sb.append(" stop ts ");
        sb.append(this.h);
        sb.append(" start ts ");
        sb.append(this.g);
        sb.append(" diff ts ");
        long j = this.h;
        long j2 = this.g;
        sb.append(j > j2 ? j - j2 : j2 - j);
        TXCLog.w("TXCMultiStreamDownloader", sb.toString());
    }

    void a(TXIStreamDownloader tXIStreamDownloader, boolean z) {
        TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] switch stream finish. result:" + z);
        a aVar = this.f;
        if (aVar != null) {
            aVar.onSwitchFinish(tXIStreamDownloader, z);
        }
    }

    long c() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.b(this.c);
        }
        TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] stop original downloader, when video ts is" + this.c);
        return this.c;
    }

    void a(long j) {
        this.g = j;
    }

    void b(long j) {
        this.h = j;
    }

    @Override // com.tencent.liteav.network.l
    public void onPullAudio(com.tencent.liteav.basic.structs.a aVar) {
        l lVar = this.a;
        if (lVar != null) {
            lVar.onPullAudio(aVar);
        }
    }

    @Override // com.tencent.liteav.network.l
    public void onPullNAL(TXSNALPacket tXSNALPacket) {
        this.c = tXSNALPacket.pts;
        if (tXSNALPacket.nalType == 0) {
            this.d = tXSNALPacket.pts;
        }
        l lVar = this.a;
        if (lVar != null) {
            lVar.onPullNAL(tXSNALPacket);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCMultiStreamDownloader.java */
    /* loaded from: classes5.dex */
    public static class b implements com.tencent.liteav.basic.c.b, l {
        private final int a = 2;
        private long b = 0;
        private long c = 0;
        private int d = 0;
        private boolean e = false;
        private long f = 0;
        private long g = 0;
        private long h = 0;
        private ArrayList<TXSNALPacket> i = new ArrayList<>();
        private ArrayList<com.tencent.liteav.basic.structs.a> j = new ArrayList<>();
        private TXIStreamDownloader k;
        private WeakReference<e> l;
        private l m;

        public b(TXIStreamDownloader tXIStreamDownloader, e eVar) {
            this.k = null;
            this.l = new WeakReference<>(eVar);
            this.k = tXIStreamDownloader;
            this.k.setListener(this);
        }

        public void a(long j) {
            TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] start switch. current video pts:" + j);
            this.d = 0;
            this.b = j;
            this.k.setListener(this);
            this.k.setNotifyListener(this);
        }

        public void b(long j) {
            TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] stop switch. pts:" + j);
            this.b = 0;
            this.f = j;
            this.h = 0;
            this.g = 0;
            TXIStreamDownloader tXIStreamDownloader = this.k;
            if (tXIStreamDownloader != null && this.f == 0) {
                tXIStreamDownloader.stopDownload();
                this.k = null;
            }
        }

        public void a(l lVar) {
            this.m = lVar;
        }

        @Override // com.tencent.liteav.network.l
        public void onPullAudio(com.tencent.liteav.basic.structs.a aVar) {
            if (this.b > 0) {
                a(aVar);
            } else if (this.f > 0) {
                b(aVar);
            } else {
                l lVar = this.m;
                if (lVar != null) {
                    lVar.onPullAudio(aVar);
                }
            }
        }

        @Override // com.tencent.liteav.network.l
        public void onPullNAL(TXSNALPacket tXSNALPacket) {
            if (tXSNALPacket != null) {
                if (this.b > 0) {
                    a(tXSNALPacket);
                } else if (this.f > 0) {
                    b(tXSNALPacket);
                } else {
                    l lVar = this.m;
                    if (lVar != null) {
                        lVar.onPullNAL(tXSNALPacket);
                    }
                }
            }
        }

        private void a(com.tencent.liteav.basic.structs.a aVar) {
            if (aVar == null || aVar.e < this.c || aVar.e < this.b) {
                return;
            }
            if (this.m == null || this.c <= 0 || aVar.e < this.c) {
                this.j.add(aVar);
            } else {
                this.m.onPullAudio(aVar);
            }
        }

        private void b(com.tencent.liteav.basic.structs.a aVar) {
            if (this.h <= 0) {
                if (this.g <= 0 || aVar == null || aVar.e < this.g) {
                    l lVar = this.m;
                    if (lVar != null) {
                        lVar.onPullAudio(aVar);
                        return;
                    }
                    return;
                }
                this.h = aVar.e;
            }
        }

        private void a(TXSNALPacket tXSNALPacket) {
            e eVar = this.l.get();
            if (tXSNALPacket.nalType == 0 && !this.e) {
                this.d++;
                TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] processing... current video ts:" + tXSNALPacket.pts + " target video ts:" + tXSNALPacket.pts + " check times:" + this.d + " maxTimes:2");
                if (eVar != null && (eVar.d <= tXSNALPacket.pts || this.d == 2)) {
                    if (eVar.d <= tXSNALPacket.pts) {
                        TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] switch video success, video data is ready.");
                    } else if (this.d == 2) {
                        TXCLog.e("TXCMultiStreamDownloader", "[SwitchStream] switch video failed. all times retried. max times:2");
                    }
                    this.b = eVar.c();
                    this.e = true;
                }
            }
            if (this.e) {
                if (eVar != null) {
                    eVar.a(tXSNALPacket.pts);
                }
                if (tXSNALPacket.pts >= this.b) {
                    if (tXSNALPacket.nalType == 0 && this.c == 0) {
                        this.c = tXSNALPacket.pts;
                        TXCLog.w("TXCMultiStreamDownloader", "[SwitchStream] pre start end " + tXSNALPacket.pts + " from " + this.b + " type " + tXSNALPacket.nalType);
                    }
                    if (this.c <= 0) {
                        return;
                    }
                    if (this.m != null) {
                        if (eVar != null) {
                            eVar.a(this.k, true);
                        }
                        if (!this.j.isEmpty()) {
                            Iterator<com.tencent.liteav.basic.structs.a> it = this.j.iterator();
                            while (it.hasNext()) {
                                com.tencent.liteav.basic.structs.a next = it.next();
                                if (next.e >= this.c) {
                                    TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] pre start cache audio pts " + next.e + " from " + this.c);
                                    this.m.onPullAudio(next);
                                }
                            }
                            TXCLog.w("TXCMultiStreamDownloader", "[SwitchStream] pre start end audio cache  " + this.j.size());
                            this.j.clear();
                        }
                        if (!this.i.isEmpty()) {
                            TXCLog.w("TXCMultiStreamDownloader", "[SwitchStream] pre start end video cache  " + this.i.size());
                            Iterator<TXSNALPacket> it2 = this.i.iterator();
                            while (it2.hasNext()) {
                                this.m.onPullNAL(it2.next());
                            }
                            this.i.clear();
                        }
                        TXCLog.w("TXCMultiStreamDownloader", "[SwitchStream] pre start first pull nal " + tXSNALPacket.pts + " from " + this.c + " type " + tXSNALPacket.nalType);
                        this.m.onPullNAL(tXSNALPacket);
                        this.m = null;
                        return;
                    }
                    TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] pre start cache video pts " + tXSNALPacket.pts + " from " + this.c + " type " + tXSNALPacket.nalType);
                    this.i.add(tXSNALPacket);
                }
            }
        }

        private void b(TXSNALPacket tXSNALPacket) {
            e eVar = this.l.get();
            if (eVar != null) {
                eVar.b(tXSNALPacket.pts);
            }
            if (tXSNALPacket.pts >= this.f) {
                if (tXSNALPacket.nalType == 0) {
                    this.g = tXSNALPacket.pts;
                }
                if (this.g <= 0) {
                    l lVar = this.m;
                    if (lVar != null) {
                        lVar.onPullNAL(tXSNALPacket);
                    }
                } else if (this.h > 0) {
                    TXCLog.i("TXCMultiStreamDownloader", "[SwitchStream] switch finish and stop old downloader. video ts:" + this.g + " audio ts:" + this.h + " stop ts:" + this.f);
                    if (eVar != null) {
                        eVar.b();
                    }
                    this.m = null;
                    this.k.setListener(null);
                    this.k.stopDownload();
                } else {
                    TXCLog.w("TXCMultiStreamDownloader", "[SwitchStream] delay stop video end wait audio end video pts " + tXSNALPacket.pts + " from " + this.f + " type " + tXSNALPacket.nalType);
                }
            } else {
                l lVar2 = this.m;
                if (lVar2 != null) {
                    lVar2.onPullNAL(tXSNALPacket);
                }
            }
        }

        @Override // com.tencent.liteav.basic.c.b
        public void onNotifyEvent(int i, Bundle bundle) {
            if (i == -2301 || i == 3010) {
                e eVar = this.l.get();
                if (eVar != null) {
                    eVar.a(this.k, false);
                }
                this.k.setNotifyListener(null);
            }
        }
    }
}
