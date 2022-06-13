package com.tencent.liteav;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.IOUtils;

/* compiled from: TXCTimeShiftUtil.java */
/* loaded from: classes2.dex */
public class e {
    private String a = "";
    private String b = "";
    private int c = 0;
    private String d = "";
    private String e = "";
    private long f = 0;

    /* compiled from: TXCTimeShiftUtil.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(long j);
    }

    public long a() {
        return System.currentTimeMillis() - this.f;
    }

    public String a(long j) {
        long j2 = j * 1000;
        String format = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(this.f + j2));
        int i = this.c;
        if (i < 0) {
            return String.format("http://%s/timeshift/%s/%s/timeshift.m3u8?delay=%d", this.a, this.e, this.b, Long.valueOf(((System.currentTimeMillis() - this.f) - j2) / 1000));
        }
        return String.format("http://%s/%s/%s/timeshift.m3u8?starttime=%s&appid=%s&txKbps=0", this.a, Integer.valueOf(i), this.b, format, this.d);
    }

    public int a(final String str, final String str2, final int i, final a aVar) {
        if (str == null || str.isEmpty()) {
            return -1;
        }
        this.d = TXCCommonUtil.getAppID();
        if (TextUtils.isEmpty(this.d)) {
            return -2;
        }
        AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.e.1
            @Override // java.lang.Runnable
            public void run() {
                String str3;
                e.this.f = System.currentTimeMillis();
                String str4 = "";
                e.this.b = str4;
                e.this.c = i;
                e.this.a = str2;
                e.this.b = TXCCommonUtil.getStreamIDByStreamUrl(str);
                e.this.e = TXCCommonUtil.getAppNameByStreamUrl(str);
                if (e.this.e == null) {
                    e.this.e = "live";
                }
                if (e.this.c < 0) {
                    str3 = String.format("http://%s/timeshift/%s/%s/timeshift.m3u8?delay=0", e.this.a, e.this.e, e.this.b);
                } else {
                    str3 = String.format("http://%s/%s/%s/timeshift.m3u8?delay=0&appid=%s&txKbps=0", e.this.a, Integer.valueOf(e.this.c), e.this.b, e.this.d);
                }
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setReadTimeout(5000);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpURLConnection.setRequestProperty("Charsert", "UTF-8");
                    httpURLConnection.setRequestProperty("Content-Type", "text/plain;");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        str4 = str4 + readLine;
                    }
                    TXCLog.i("TXCTimeShiftUtil", "prepareSeekTime: receive response, strResponse = " + str4);
                    String a2 = e.this.a(str4);
                    if (a2 != null) {
                        e.this.f = Long.parseLong(a2) * 1000;
                    }
                } catch (Exception e) {
                    e.this.f = System.currentTimeMillis();
                    TXCLog.e("TXCTimeShiftUtil", "prepareSeekTime error " + e.toString());
                }
                long currentTimeMillis = System.currentTimeMillis();
                TXCLog.i("TXCTimeShiftUtil", "live start time:" + e.this.f + ",currentTime:" + currentTimeMillis + ",diff:" + (currentTimeMillis - e.this.f));
                final long j = currentTimeMillis - e.this.f;
                if (aVar != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.e.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(j);
                        }
                    });
                }
            }
        });
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        int indexOf;
        String substring;
        int indexOf2;
        if (!str.contains("#EXT-TX-TS-START-TIME") || (indexOf = str.indexOf("#EXT-TX-TS-START-TIME:") + 22) <= 0 || (indexOf2 = (substring = str.substring(indexOf)).indexOf("#")) <= 0) {
            return null;
        }
        return substring.substring(0, indexOf2).replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "");
    }
}
