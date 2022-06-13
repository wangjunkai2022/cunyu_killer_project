package com.tencent.liteav.txcplayer.b;

import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.File;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: AbsTXVCubeDownloader.java */
/* loaded from: classes5.dex */
public abstract class a {
    protected static final String TAG = a.class.getName();
    protected AbstractC0028a mDownloadListener;
    protected String mDownloadPath;
    protected Map<String, String> mHeaders;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: AbsTXVCubeDownloader.java */
    /* renamed from: com.tencent.liteav.txcplayer.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface AbstractC0028a {
        void a(a aVar, b bVar);

        void a(a aVar, b bVar, int i, String str);

        void b(a aVar, b bVar);

        void c(a aVar, b bVar);

        void d(a aVar, b bVar);
    }

    public abstract boolean deleteDownloadFile(String str);

    public abstract int downloadHls(String str, String str2);

    public abstract String makePlayPath(String str);

    public abstract void stop(int i);

    public void setDownloadPath(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mDownloadPath = str + "/txcache";
            new File(this.mDownloadPath).mkdirs();
        }
    }

    public void setListener(AbstractC0028a aVar) {
        this.mDownloadListener = aVar;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    protected String makePlayPathDir(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.mDownloadPath + "/txcache";
        File file = new File(str2);
        if ((file.exists() && file.isDirectory()) || file.mkdir()) {
            return str2;
        }
        TXCLog.e(TAG, "Failed to create download path" + str2);
        return null;
    }
}
