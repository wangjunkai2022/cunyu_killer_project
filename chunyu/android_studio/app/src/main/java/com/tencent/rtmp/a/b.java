package com.tencent.rtmp.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TXImageSpriteImpl.java */
/* loaded from: classes2.dex */
public class b implements a {
    private final BitmapFactory.Options a = new BitmapFactory.Options();
    private HandlerThread b;
    private Handler c;
    private List<c> d;
    private Map<String, BitmapRegionDecoder> e;

    public b() {
        this.d = new ArrayList();
        this.d = Collections.synchronizedList(this.d);
        this.e = new HashMap();
        this.e = Collections.synchronizedMap(this.e);
    }

    @Override // com.tencent.rtmp.a.a
    public void setVTTUrlAndImageUrls(String str, List<String> list) {
        if (TextUtils.isEmpty(str)) {
            TXCLog.e("TXImageSprite", "setVTTUrlAndImageUrls: vttUrl can't be null!");
            return;
        }
        b();
        a();
        this.c.post(new a(this, str));
        if (!(list == null || list.size() == 0)) {
            for (String str2 : list) {
                this.c.post(new RunnableC0032b(this, str, str2));
            }
        }
    }

    @Override // com.tencent.rtmp.a.a
    public Bitmap getThumbnail(float f) {
        c a2;
        BitmapRegionDecoder bitmapRegionDecoder;
        if (this.d.size() == 0 || (a2 = a(0, this.d.size() - 1, f)) == null || (bitmapRegionDecoder = this.e.get(a2.d)) == null) {
            return null;
        }
        Rect rect = new Rect();
        rect.left = a2.e;
        rect.top = a2.f;
        rect.right = a2.e + a2.g;
        rect.bottom = a2.f + a2.h;
        return bitmapRegionDecoder.decodeRegion(rect, this.a);
    }

    @Override // com.tencent.rtmp.a.a
    public void release() {
        b();
        if (this.b != null && this.c != null) {
            if (TXCBuild.VersionInt() >= 18) {
                this.b.quitSafely();
            } else {
                this.b.quit();
            }
            this.c = null;
            this.b = null;
        }
    }

    private c a(int i, int i2, float f) {
        int i3 = ((i2 - i) / 2) + i;
        if (this.d.get(i3).a <= f && this.d.get(i3).b > f) {
            return this.d.get(i3);
        }
        if (i >= i2) {
            return this.d.get(i);
        }
        if (f >= this.d.get(i3).b) {
            return a(i3 + 1, i2, f);
        }
        if (f < this.d.get(i3).a) {
            return a(i, i3 - 1, f);
        }
        return null;
    }

    private void a() {
        if (this.b == null) {
            this.b = new HandlerThread("SuperVodThumbnailsWorkThread");
            this.b.start();
            this.c = new Handler(this.b.getLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.c != null) {
            TXCLog.i("TXImageSprite", " remove all tasks!");
            this.c.removeCallbacksAndMessages(null);
            this.c.post(new Runnable() { // from class: com.tencent.rtmp.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.d != null) {
                        b.this.d.clear();
                    }
                    if (b.this.e != null) {
                        for (BitmapRegionDecoder bitmapRegionDecoder : b.this.e.values()) {
                            if (bitmapRegionDecoder != null) {
                                bitmapRegionDecoder.recycle();
                            }
                        }
                        b.this.e.clear();
                    }
                }
            });
        }
    }

    /* compiled from: TXImageSpriteImpl.java */
    /* loaded from: classes2.dex */
    private static class a implements Runnable {
        private WeakReference<b> a;
        private String b;

        public a(b bVar, String str) {
            this.a = new WeakReference<>(bVar);
            this.b = str;
        }

        private float a(String str) {
            String str2;
            String str3;
            String[] split = str.split(":");
            String str4 = null;
            if (split.length == 3) {
                str4 = split[0];
                str3 = split[1];
                str2 = split[2];
            } else if (split.length == 2) {
                str3 = split[0];
                str2 = split[1];
            } else if (split.length == 1) {
                str2 = split[0];
                str3 = null;
            } else {
                str2 = null;
                str3 = null;
            }
            float f = 0.0f;
            if (str4 != null) {
                f = 0.0f + (Float.valueOf(0.0f).floatValue() * 3600.0f);
            }
            if (str3 != null) {
                f += Float.valueOf(str3).floatValue() * 60.0f;
            }
            return str2 != null ? f + Float.valueOf(str2).floatValue() : f;
        }

        @Override // java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader;
            Throwable th;
            IOException e;
            String readLine;
            int i;
            try {
                b bVar = this.a.get();
                BufferedReader bufferedReader2 = null;
                try {
                    try {
                        InputStream a = bVar.a(this.b);
                        if (a != null) {
                            bufferedReader = new BufferedReader(new InputStreamReader(a));
                            try {
                                String readLine2 = bufferedReader.readLine();
                                if (!(readLine2 == null || readLine2.length() == 0 || !readLine2.contains("WEBVTT"))) {
                                    do {
                                        readLine = bufferedReader.readLine();
                                        if (readLine != null && readLine.contains("-->")) {
                                            String[] split = readLine.split(" --> ");
                                            if (split.length != 2) {
                                                continue;
                                            } else {
                                                String readLine3 = bufferedReader.readLine();
                                                c cVar = new c();
                                                cVar.a = a(split[0]);
                                                cVar.b = a(split[1]);
                                                cVar.c = readLine3;
                                                int indexOf = readLine3.indexOf("#");
                                                if (indexOf != -1) {
                                                    cVar.d = readLine3.substring(0, indexOf);
                                                }
                                                int indexOf2 = readLine3.indexOf("=");
                                                if (indexOf2 != -1 && (i = indexOf2 + 1) < readLine3.length()) {
                                                    String[] split2 = readLine3.substring(i, readLine3.length()).split(",");
                                                    if (split2.length == 4) {
                                                        cVar.e = Integer.valueOf(split2[0]).intValue();
                                                        cVar.f = Integer.valueOf(split2[1]).intValue();
                                                        cVar.g = Integer.valueOf(split2[2]).intValue();
                                                        cVar.h = Integer.valueOf(split2[3]).intValue();
                                                    }
                                                }
                                                if (!(bVar == null || bVar.d == null)) {
                                                    bVar.d.add(cVar);
                                                    continue;
                                                }
                                            }
                                        }
                                    } while (readLine != null);
                                    bufferedReader.close();
                                    return;
                                }
                                TXCLog.e("TXImageSprite", "DownloadAndParseVTTFileTask : getVTT File Error!");
                                if (bVar != null) {
                                    bVar.b();
                                }
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            } catch (IOException e2) {
                                e = e2;
                                bufferedReader2 = bufferedReader;
                                TXCLog.e("TXImageSprite", "load image sprite failed.", e);
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                }
            } catch (IOException unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputStream a(String str) throws IOException {
        URLConnection openConnection = new URL(str).openConnection();
        openConnection.connect();
        openConnection.getInputStream();
        openConnection.setConnectTimeout(15000);
        openConnection.setReadTimeout(15000);
        return openConnection.getInputStream();
    }

    /* compiled from: TXImageSpriteImpl.java */
    /* renamed from: com.tencent.rtmp.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class RunnableC0032b implements Runnable {
        private WeakReference<b> a;
        private String b;
        private String c;

        public RunnableC0032b(b bVar, String str, String str2) {
            this.a = new WeakReference<>(bVar);
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = this.a.get();
            if (this.a != null && bVar != null) {
                InputStream inputStream = null;
                try {
                    try {
                        inputStream = bVar.a(this.c);
                        String lastPathSegment = Uri.parse(this.c).getLastPathSegment();
                        if (bVar.e != null) {
                            bVar.e.put(lastPathSegment, BitmapRegionDecoder.newInstance(inputStream, true));
                        }
                        if (inputStream == null) {
                            return;
                        }
                    } catch (IOException e) {
                        TXCLog.e("TXImageSprite", "load bitmap from network failed.", e);
                        if (inputStream == null) {
                            return;
                        }
                    }
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            }
        }
    }
}
