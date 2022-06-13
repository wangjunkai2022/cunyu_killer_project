package com.netease.nis.basesdk.crash;

import android.os.Process;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.net.URLEncoder;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class BaseJavaCrashHandler implements Thread.UncaughtExceptionHandler {
    private static String c = "https://da.dun.163.com/sn.gif?d=";
    private Thread.UncaughtExceptionHandler a;
    private b b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class a implements HttpUtil.ResponseCallBack {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i, String str) {
            Logger.e("upload crash info failed,error code:" + i + " msg:" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.d("upload crash info success" + this.a);
            BaseJavaCrashHandler.this.b.a(this.a);
        }
    }

    public static void setUploadUrl(String str) {
        c = str;
    }

    protected abstract String buildCrashInfo(Throwable th);

    public void initialize(String str) {
        this.a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        b a2 = b.a();
        this.b = a2;
        a2.b(str);
        a();
    }

    protected boolean interceptHandleException(Throwable th) {
        return false;
    }

    protected void report(String str) {
        String c2 = this.b.c(str);
        Logger.d(c2);
        Thread thread = new Thread(a(c2, str));
        thread.start();
        try {
            thread.join(3000);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            Logger.e("quick upload isInterrupted");
        }
    }

    public void testCrash() {
        throw new RuntimeException("test java exception");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!interceptHandleException(th)) {
            a(thread, th);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    private void a() {
        Logger.d("check and report crash info");
        File[] b = this.b.b();
        if (b.length > 0) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 5, 5, TimeUnit.SECONDS, new ArrayBlockingQueue(10), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardPolicy());
            for (File file : b) {
                try {
                    threadPoolExecutor.execute(a(this.b.c(file.getAbsolutePath()), file.getAbsolutePath()));
                } catch (UnsupportedEncodingException unused) {
                    Logger.e("BaseJavaCrashHandler", "logInfo encode error");
                }
            }
        }
    }

    private a a(String str, String str2) {
        return new a(c + URLEncoder.encode(str, "UTF-8"), new a(str2));
    }

    private void a(Thread thread, Throwable th) {
        try {
            report(this.b.d(buildCrashInfo(th)).getAbsolutePath());
        } catch (UnsupportedEncodingException unused) {
            Logger.e("BaseJavaCrashHandler", "logInfo encode error");
        }
    }
}
