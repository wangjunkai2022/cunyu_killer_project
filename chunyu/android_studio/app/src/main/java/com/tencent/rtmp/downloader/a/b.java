package com.tencent.rtmp.downloader.a;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.network.c;
import com.tencent.liteav.network.g;
import com.tencent.liteav.network.i;
import com.tencent.liteav.network.j;
import com.tencent.liteav.network.m;
import com.tencent.liteav.network.n;
import com.tencent.liteav.txcplayer.b.a;
import com.tencent.liteav.txcplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXLog;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.rtmp.downloader.TXVodDownloadManager;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: TXVodDownloadManagerEx.java */
/* loaded from: classes2.dex */
public class b extends TXVodDownloadManager {
    private static b g;
    a.AbstractC0028a a = new a.AbstractC0028a() { // from class: com.tencent.rtmp.downloader.a.b.4
        @Override // com.tencent.liteav.txcplayer.b.a.AbstractC0028a
        public void a(a aVar, com.tencent.liteav.txcplayer.b.b bVar) {
            c a = b.this.a(bVar);
            if (a != null) {
                a.h(1);
                b.this.b(a);
                if (b.this.d != null) {
                    b.this.d.onDownloadStart(a);
                }
                if (b.this.d(a.getPlayPath())) {
                    TXLog.d("TXVodDownloadManagerEx", "file state ok");
                } else {
                    TXLog.e("TXVodDownloadManagerEx", "file not create!");
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.b.a.AbstractC0028a
        public void b(a aVar, com.tencent.liteav.txcplayer.b.b bVar) {
            c a = b.this.a(bVar);
            if (a != null) {
                TXLog.i("TXVodDownloadManagerEx", "downloadEnd " + a.getPlayPath());
                a.h(2);
                b.this.b(a);
                synchronized (b.this.c) {
                    b.this.c.remove(a);
                }
                if (b.this.d != null) {
                    b.this.d.onDownloadStop(a);
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.b.a.AbstractC0028a
        public void c(a aVar, com.tencent.liteav.txcplayer.b.b bVar) {
            c a = b.this.a(bVar);
            if (a != null) {
                TXLog.i("TXVodDownloadManagerEx", "downloadFinish " + a.getPlayPath());
                a.h(4);
                b.this.b(a);
                synchronized (b.this.c) {
                    b.this.c.remove(a);
                }
                if (b.this.d == null) {
                    return;
                }
                if (b.this.d(a.getPlayPath())) {
                    b.this.d.onDownloadFinish(a);
                } else {
                    b.this.d.onDownloadError(a, TXVodDownloadManager.DOWNLOAD_NO_FILE, "The file has been deleted");
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.b.a.AbstractC0028a
        public void a(a aVar, com.tencent.liteav.txcplayer.b.b bVar, int i, String str) {
            c a = b.this.a(bVar);
            if (a != null) {
                TXLog.w("TXVodDownloadManagerEx", "downloadError " + a.getPlayPath() + " " + i + " ： " + str);
                a.h(3);
                b.this.b(a);
                synchronized (b.this.c) {
                    b.this.c.remove(a);
                }
                if (b.this.d == null) {
                    return;
                }
                if (a.getDownloadState() == 2) {
                    b.this.d.onDownloadStop(a);
                } else if (i == 1008) {
                    b.this.d.onDownloadError(a, TXVodDownloadManager.DOWNLOAD_HLS_KEY_ERROR, str);
                } else if (i == 14020003) {
                    b.this.d.onDownloadError(a, TXVodDownloadManager.DOWNLOAD_403FORBIDDEN, str);
                } else {
                    b.this.d.onDownloadError(a, TXVodDownloadManager.DOWNLOAD_DISCONNECT, str);
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.b.a.AbstractC0028a
        public void d(a aVar, com.tencent.liteav.txcplayer.b.b bVar) {
            c a = b.this.a(bVar);
            if (a != null && b.this.d != null) {
                b.this.d.onDownloadProgress(a);
            }
        }
    };
    private a b;
    private ArrayList<c> c;
    private ITXVodDownloadListener d;
    private SharedPreferences e;
    private SharedPreferences.Editor f;

    private b() {
        Context c = c();
        this.b = c.a(c);
        a aVar = this.b;
        if (aVar != null) {
            aVar.setListener(this.a);
        }
        this.c = new ArrayList<>();
        if (c != null) {
            this.e = c.getSharedPreferences("vod_download", 0);
            this.f = this.e.edit();
        }
    }

    private Context c() {
        Method method;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            if (cls == null || (method = cls.getMethod("currentActivityThread", new Class[0])) == null) {
                return null;
            }
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            Method method2 = invoke.getClass().getMethod("getApplication", new Class[0]);
            if (method2 == null) {
                return null;
            }
            return ((Application) method2.invoke(invoke, new Object[0])).getApplicationContext();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static b a() {
        if (g == null) {
            g = new b();
        }
        return g;
    }

    public void a(String str) {
        this.b.setDownloadPath(str);
    }

    public void a(Map<String, String> map) {
        this.b.setHeaders(map);
    }

    public void a(ITXVodDownloadListener iTXVodDownloadListener) {
        this.d = iTXVodDownloadListener;
    }

    public c a(String str, String str2) {
        c cVar = new c();
        cVar.b(str);
        cVar.c(str2);
        c c = c((TXVodDownloadMediaInfo) cVar);
        if (c != null) {
            return c;
        }
        a(cVar);
        return cVar;
    }

    public c a(TXVodDownloadDataSource tXVodDownloadDataSource) {
        if (tXVodDownloadDataSource.getAuthBuilder() != null) {
            TXLog.w("TXVodDownloadManagerEx", "startDownloadV2");
            return c(tXVodDownloadDataSource);
        }
        TXLog.w("TXVodDownloadManagerEx", "startDownloadV4");
        return b(tXVodDownloadDataSource);
    }

    private c c(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        c e;
        String d = d(tXVodDownloadMediaInfo);
        if (!TextUtils.isEmpty(d)) {
            String string = this.e.getString(d, null);
            if (!TextUtils.isEmpty(string) && (e = e(string)) != null) {
                if (d(e.getPlayPath())) {
                    TXLog.i("TXVodDownloadManagerEx", "partly download, resume download");
                    a(e);
                    return e;
                }
                TXLog.w("TXVodDownloadManagerEx", "file is deleted, remove cache and restart download");
                this.f.remove(d);
                SharedPreferences.Editor editor = this.f;
                editor.remove(d + "_kv");
                this.f.commit();
            }
        }
        return null;
    }

    private c c(final TXVodDownloadDataSource tXVodDownloadDataSource) {
        final a aVar;
        final c cVar = new c();
        if (TextUtils.isEmpty(tXVodDownloadDataSource.getTemplateName())) {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getQuality());
        } else {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getTemplateName());
        }
        cVar.a(aVar);
        c c = c((TXVodDownloadMediaInfo) cVar);
        if (c != null) {
            return c;
        }
        if (tXVodDownloadDataSource.getAuthBuilder() == null) {
            return null;
        }
        TXPlayerAuthBuilder authBuilder = aVar.getAuthBuilder();
        i iVar = new i();
        iVar.a(authBuilder.isHttps());
        iVar.a(new j() { // from class: com.tencent.rtmp.downloader.a.b.1
            @Override // com.tencent.liteav.network.j
            public void onNetSuccess(i iVar2) {
                if (cVar.getDownloadState() == 2) {
                    synchronized (b.this.c) {
                        b.this.c.remove(cVar);
                    }
                    if (b.this.d != null) {
                        b.this.d.onDownloadStop(cVar);
                    }
                    TXLog.w("TXVodDownloadManagerEx", "Download task canceled");
                    return;
                }
                m a = iVar2.a();
                n nVar = null;
                if (tXVodDownloadDataSource.getQuality() != 1000) {
                    nVar = b.this.a(a, aVar.getQuality());
                } else if (tXVodDownloadDataSource.getTemplateName() != null) {
                    nVar = b.this.a(a, aVar.getTemplateName());
                }
                if (nVar == null) {
                    synchronized (b.this.c) {
                        b.this.c.remove(cVar);
                    }
                    if (b.this.d != null) {
                        b.this.d.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_NO_FILE, "No such resolution");
                        return;
                    }
                    return;
                }
                String b = nVar.b();
                TXVodDownloadDataSource tXVodDownloadDataSource2 = tXVodDownloadDataSource;
                if (!(tXVodDownloadDataSource2 == null || tXVodDownloadDataSource2.getToken() == null)) {
                    String[] split = b.split("/");
                    if (split.length > 0) {
                        int lastIndexOf = b.lastIndexOf(split[split.length - 1]);
                        b = b.substring(0, lastIndexOf) + "voddrm.token." + tXVodDownloadDataSource.getToken() + "." + b.substring(lastIndexOf);
                    }
                }
                cVar.b(b);
                cVar.c(nVar.d());
                cVar.a(nVar.c());
                b.this.a(cVar);
            }

            @Override // com.tencent.liteav.network.j
            public void onNetFailed(i iVar2, String str, int i) {
                synchronized (b.this.c) {
                    b.this.c.remove(cVar);
                }
                if (b.this.d != null) {
                    b.this.d.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, str);
                }
            }
        });
        if (iVar.a(authBuilder.getAppId(), authBuilder.getFileId(), authBuilder.getTimeout(), authBuilder.getUs(), authBuilder.getExper(), authBuilder.getSign()) == 0) {
            cVar.a(iVar);
            synchronized (this.c) {
                this.c.add(cVar);
            }
            return cVar;
        }
        TXLog.e("TXVodDownloadManagerEx", "unable to getPlayInfo");
        return null;
    }

    public c b(TXVodDownloadDataSource tXVodDownloadDataSource) {
        if (tXVodDownloadDataSource == null) {
            return null;
        }
        a aVar = new a(tXVodDownloadDataSource.getAppId(), tXVodDownloadDataSource.getFileId(), tXVodDownloadDataSource.getQuality(), tXVodDownloadDataSource.getPSign(), tXVodDownloadDataSource.getUserName());
        final c cVar = new c();
        cVar.a(aVar);
        c c = c((TXVodDownloadMediaInfo) cVar);
        if (c != null) {
            return c;
        }
        new g(new TXPlayInfoParams(aVar.getAppId(), aVar.getFileId(), aVar.getPSign())).a(new g.a() { // from class: com.tencent.rtmp.downloader.a.b.2
            @Override // com.tencent.liteav.network.g.a
            public void a(g gVar, TXPlayInfoParams tXPlayInfoParams) {
                TXLog.i("TXVodDownloadManagerEx", "onSuccess: protocol params = " + tXPlayInfoParams.toString());
                if (cVar.getDownloadState() == 2) {
                    synchronized (b.this.c) {
                        b.this.c.remove(cVar);
                    }
                    if (b.this.d != null) {
                        b.this.d.onDownloadStop(cVar);
                    }
                    TXLog.w("TXVodDownloadManagerEx", "Download task canceled");
                    return;
                }
                if (!TextUtils.isEmpty(tXPlayInfoParams.getPSign()) && !TextUtils.isEmpty(gVar.h()) && !TextUtils.isEmpty(gVar.i())) {
                    a aVar2 = (a) cVar.getDataSource();
                    String a = TXCHLSEncoder.a(aVar2.getAppId(), aVar2.getUserName(), aVar2.getFileId(), aVar2.getQuality());
                    String a2 = TXCHLSEncoder.a(a, gVar.h());
                    String a3 = TXCHLSEncoder.a(a, gVar.i());
                    if (TextUtils.isEmpty(a2) || TextUtils.isEmpty(a3)) {
                        TXLog.e("TXVodDownloadManagerEx", "create local key exception!");
                        return;
                    } else {
                        aVar2.a(a2);
                        aVar2.b(a3);
                    }
                }
                b.this.a(cVar, gVar);
            }

            @Override // com.tencent.liteav.network.g.a
            public void a(int i, String str) {
                TXLog.w("TXVodDownloadManagerEx", "onFail: errorCode = " + i + " message = " + str);
                synchronized (b.this.c) {
                    b.this.c.remove(cVar);
                }
                if (b.this.d != null) {
                    b.this.d.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, str);
                }
            }
        });
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final c cVar, final g gVar) {
        if (gVar != null && cVar.getDataSource() != null) {
            final String a = gVar.a();
            if (a == null || !a.contains(".m3u8")) {
                TXCLog.w("TXVodDownloadManagerEx", "not support format! masterPlaylistUrl : " + a);
                return;
            }
            cVar.a(gVar.f() * 1000);
            cVar.c(gVar.g());
            com.tencent.liteav.network.c.a().a(a, new c.b() { // from class: com.tencent.rtmp.downloader.a.b.3
                /* JADX WARN: Removed duplicated region for block: B:33:0x00a9  */
                /* JADX WARN: Removed duplicated region for block: B:48:0x0180  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x01b5  */
                @Override // com.tencent.liteav.network.c.b
                /* Code decompiled incorrectly, please refer to instructions dump */
                public void a(java.lang.String r8) {
                    /*
                    // Method dump skipped, instructions count: 450
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.downloader.a.b.AnonymousClass3.a(java.lang.String):void");
                }

                @Override // com.tencent.liteav.network.c.b
                public void a() {
                    TXLog.i("TXVodDownloadManagerEx", "prepareDownloadMedia onError");
                    synchronized (b.this.c) {
                        b.this.c.remove(cVar);
                    }
                    if (b.this.d != null) {
                        b.this.d.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, "get substream infos failure");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar) {
        String url = cVar.getUrl();
        if (url != null) {
            if (Uri.parse(url).getPath().endsWith(".m3u8")) {
                cVar.a(a(this.b.makePlayPath(url), cVar));
                if (cVar.getPlayPath() == null) {
                    ITXVodDownloadListener iTXVodDownloadListener = this.d;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_PATH_ERROR, "Failed to create local path");
                        return;
                    }
                    return;
                }
                TXLog.d("TXVodDownloadManagerEx", "download hls " + url + " to " + cVar.getPlayPath());
                synchronized (this.c) {
                    this.c.add(cVar);
                }
                cVar.g(this.b.downloadHls(url, cVar.getPlayPath()));
                if (cVar.getTaskId() < 0) {
                    TXLog.e("TXVodDownloadManagerEx", "start download failed");
                    ITXVodDownloadListener iTXVodDownloadListener2 = this.d;
                    if (iTXVodDownloadListener2 != null) {
                        iTXVodDownloadListener2.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, "Internal error");
                        return;
                    }
                    return;
                }
                return;
            }
            TXLog.e("TXVodDownloadManagerEx", "only support m3u8 file, format error: " + url);
            ITXVodDownloadListener iTXVodDownloadListener3 = this.d;
            if (iTXVodDownloadListener3 != null) {
                iTXVodDownloadListener3.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, "No support format");
            }
        }
    }

    private String a(String str, c cVar) {
        TXVodDownloadDataSource dataSource = cVar.getDataSource();
        if (dataSource == null || TextUtils.isEmpty(dataSource.getOverlayKey())) {
            return str;
        }
        return str.concat("&oversign=" + dataSource.getAppId() + "&o1=" + dataSource.getUserName() + "&o2=" + dataSource.getFileId() + "&o3=" + dataSource.getQuality() + "&o4=" + dataSource.getOverlayKey() + "&o5=" + dataSource.getOverlayIv() + "&oversign=");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new StringBuffer();
        String[] split = str.split("\n");
        if (split != null && split.length > 0) {
            boolean z = false;
            for (String str3 : split) {
                if (!TextUtils.isEmpty(str3)) {
                    if (str3.startsWith("#EXT-X-STREAM-INF:")) {
                        if (str3.contains(str2)) {
                            z = true;
                        }
                    } else if (z && str3.contains(".m3u8")) {
                        return str3;
                    }
                }
            }
        }
        return null;
    }

    public void a(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        if (tXVodDownloadMediaInfo != null) {
            if (tXVodDownloadMediaInfo.getTaskId() < 0) {
                TXCLog.w("TXVodDownloadManagerEx", "stop download not start task");
                return;
            }
            this.b.stop(tXVodDownloadMediaInfo.getTaskId());
            TXCLog.d("TXVodDownloadManagerEx", "stop download " + tXVodDownloadMediaInfo.getUrl());
        }
    }

    public boolean b(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        if (!b(tXVodDownloadMediaInfo.getPlayPath())) {
            return false;
        }
        String d = d(tXVodDownloadMediaInfo);
        SharedPreferences.Editor editor = this.f;
        if (editor == null) {
            return false;
        }
        editor.remove(d);
        SharedPreferences.Editor editor2 = this.f;
        editor2.remove(d + "_kv");
        this.f.commit();
        TXLog.i("TXVodDownloadManagerEx", "delete DownloadMediaInfo and file complete");
        return true;
    }

    public boolean b(String str) {
        TXCLog.d("TXVodDownloadManagerEx", "delete file " + str);
        synchronized (this.c) {
            Iterator<c> it = this.c.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.getPlayPath() != null && next.getPlayPath().equals(str)) {
                    TXCLog.e("TXVodDownloadManagerEx", "file is downloading, can not be delete");
                    return false;
                }
            }
            return this.b.deleteDownloadFile(str);
        }
    }

    n a(m mVar, int i) {
        if (i == 0) {
            return mVar.f();
        }
        return mVar.a(a.a(i), "hls");
    }

    n a(m mVar, String str) {
        return mVar.b(str, "hls");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f A[Catch: all -> 0x0070, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:9:0x001d, B:11:0x0029, B:13:0x002d, B:14:0x0032, B:16:0x0038, B:18:0x003c, B:19:0x0041, B:21:0x0045, B:22:0x004a, B:24:0x0050, B:26:0x0054, B:27:0x0059, B:29:0x005d, B:30:0x0062, B:32:0x0066, B:33:0x006b, B:35:0x006d), top: B:40:0x0003 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    com.tencent.rtmp.downloader.a.c a(com.tencent.liteav.txcplayer.b.b r6) {
        /*
            r5 = this;
            java.util.ArrayList<com.tencent.rtmp.downloader.a.c> r0 = r5.c
            monitor-enter(r0)
            java.util.ArrayList<com.tencent.rtmp.downloader.a.c> r1 = r5.c     // Catch: all -> 0x0070
            java.util.Iterator r1 = r1.iterator()     // Catch: all -> 0x0070
        L_0x0009:
            boolean r2 = r1.hasNext()     // Catch: all -> 0x0070
            if (r2 == 0) goto L_0x006d
            java.lang.Object r2 = r1.next()     // Catch: all -> 0x0070
            com.tencent.rtmp.downloader.a.c r2 = (com.tencent.rtmp.downloader.a.c) r2     // Catch: all -> 0x0070
            int r3 = r2.getTaskId()     // Catch: all -> 0x0070
            int r4 = r6.a     // Catch: all -> 0x0070
            if (r3 == r4) goto L_0x0029
            java.lang.String r3 = r2.getUrl()     // Catch: all -> 0x0070
            java.lang.String r4 = r6.b     // Catch: all -> 0x0070
            boolean r3 = r3.equals(r4)     // Catch: all -> 0x0070
            if (r3 == 0) goto L_0x0009
        L_0x0029:
            int r1 = r6.h     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x0032
            int r1 = r6.h     // Catch: all -> 0x0070
            r2.b(r1)     // Catch: all -> 0x0070
        L_0x0032:
            int r1 = r2.getDuration()     // Catch: all -> 0x0070
            if (r1 > 0) goto L_0x0041
            int r1 = r6.i     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x0041
            int r1 = r6.i     // Catch: all -> 0x0070
            r2.a(r1)     // Catch: all -> 0x0070
        L_0x0041:
            int r1 = r6.c     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x004a
            int r1 = r6.c     // Catch: all -> 0x0070
            r2.d(r1)     // Catch: all -> 0x0070
        L_0x004a:
            int r1 = r2.getSize()     // Catch: all -> 0x0070
            if (r1 > 0) goto L_0x0059
            int r1 = r6.d     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x0059
            int r1 = r6.d     // Catch: all -> 0x0070
            r2.c(r1)     // Catch: all -> 0x0070
        L_0x0059:
            int r1 = r6.f     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x0062
            int r1 = r6.f     // Catch: all -> 0x0070
            r2.e(r1)     // Catch: all -> 0x0070
        L_0x0062:
            int r1 = r6.g     // Catch: all -> 0x0070
            if (r1 <= 0) goto L_0x006b
            int r6 = r6.g     // Catch: all -> 0x0070
            r2.f(r6)     // Catch: all -> 0x0070
        L_0x006b:
            monitor-exit(r0)     // Catch: all -> 0x0070
            return r2
        L_0x006d:
            monitor-exit(r0)     // Catch: all -> 0x0070
            r6 = 0
            return r6
        L_0x0070:
            r6 = move-exception
            monitor-exit(r0)     // Catch: all -> 0x0070
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.downloader.a.b.a(com.tencent.liteav.txcplayer.b.b):com.tencent.rtmp.downloader.a.c");
    }

    public List<TXVodDownloadMediaInfo> b() {
        SharedPreferences sharedPreferences = this.e;
        if (sharedPreferences == null) {
            return null;
        }
        try {
            Map<String, ?> all = sharedPreferences.getAll();
            ArrayList arrayList = new ArrayList(all.size());
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                c e = e((String) entry.getValue());
                if (e != null) {
                    if (!d(e.getPlayPath())) {
                        this.f.remove(entry.getKey());
                        this.f.commit();
                    } else {
                        boolean z = false;
                        synchronized (this.c) {
                            Iterator<c> it = this.c.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                c next = it.next();
                                if (next.getTaskId() == e.getTaskId()) {
                                    arrayList.add(next);
                                    z = true;
                                    break;
                                }
                            }
                        }
                        if (!z) {
                            arrayList.add(e);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public TXVodDownloadMediaInfo a(int i, String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.c) {
            Iterator<c> it = this.c.iterator();
            while (it.hasNext()) {
                c next = it.next();
                TXVodDownloadDataSource dataSource = next.getDataSource();
                if (dataSource != null && dataSource.getAppId() == i && dataSource.getFileId().equals(str) && dataSource.getQuality() == i2) {
                    return next;
                }
            }
            if (this.e == null) {
                return null;
            }
            c cVar = new c();
            cVar.a(new a(i, str, i2, null, null));
            String d = d(cVar);
            c e = e(this.e.getString(d, null));
            if (e == null || d(e.getPlayPath())) {
                return e;
            }
            this.f.remove(d);
            this.f.commit();
            TXLog.w("TXVodDownloadManagerEx", "fileId : " + str + " | qualityId: " + i2 + " download file not exist! remove download info!");
            return null;
        }
    }

    public TXVodDownloadMediaInfo c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.c) {
            Iterator<c> it = this.c.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.getUrl() != null && next.getUrl().equals(str)) {
                    return next;
                }
            }
            if (this.e == null) {
                return null;
            }
            c cVar = new c();
            cVar.b(str);
            String d = d(cVar);
            c e = e(this.e.getString(d, null));
            if (e == null || d(e.getPlayPath())) {
                return e;
            }
            this.f.remove(d);
            this.f.commit();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        if (str.contains(".hls")) {
            str = str.substring(0, str.indexOf(".hls") + 4);
        }
        return new File(str).exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c cVar) {
        if (this.f != null) {
            String c = c(cVar);
            if (!TextUtils.isEmpty(c)) {
                String d = d(cVar);
                if (!TextUtils.isEmpty(d)) {
                    this.f.putString(d, c);
                    this.f.commit();
                    TXLog.i("TXVodDownloadManagerEx", "saveDownloadMediaInfo key: " + d + "| mediaInfo: " + c);
                }
            }
        }
    }

    private String d(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
        if (dataSource == null) {
            if (TextUtils.isEmpty(tXVodDownloadMediaInfo.getUrl())) {
                return null;
            }
            return tXVodDownloadMediaInfo.getUserName() + "_" + TXCCommonUtil.getMD5(tXVodDownloadMediaInfo.getUrl());
        } else if (TextUtils.isEmpty(dataSource.getFileId())) {
            return null;
        } else {
            return dataSource.getUserName() + "_" + dataSource.getAppId() + "_" + dataSource.getFileId() + "_" + dataSource.getQuality();
        }
    }

    private String c(c cVar) {
        if (cVar == null) {
            return "";
        }
        Parcel obtain = Parcel.obtain();
        cVar.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        String encodeToString = Base64.encodeToString(obtain.marshall(), 2);
        obtain.recycle();
        return encodeToString;
    }

    private c e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] decode = Base64.decode(str, 2);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
        c createFromParcel = c.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        if (createFromParcel == null) {
            return null;
        }
        if (createFromParcel.getPlayPath().contains("&oversign=")) {
            return createFromParcel;
        }
        a aVar = (a) createFromParcel.getDataSource();
        if (aVar != null && !TextUtils.isEmpty(aVar.getOverlayKey())) {
            createFromParcel.a(a(createFromParcel.getPlayPath(), createFromParcel));
        }
        return createFromParcel;
    }
}
