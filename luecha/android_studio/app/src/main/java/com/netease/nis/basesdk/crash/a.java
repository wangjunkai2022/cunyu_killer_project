package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.HttpUtil;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: CrashReportRunnable.java */
/* loaded from: classes5.dex */
class a implements Runnable {
    private String a;
    private HttpUtil.ResponseCallBack b;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: CrashReportRunnable.java */
    /* renamed from: com.netease.nis.basesdk.crash.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0013a implements HttpUtil.ResponseCallBack {
        C0013a() {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i, String str) {
            a.this.b.onError(i, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            a.this.b.onSuccess(str);
        }
    }

    public a(String str, HttpUtil.ResponseCallBack responseCallBack) {
        this.a = "";
        this.b = null;
        this.a = str;
        this.b = responseCallBack;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!TextUtils.isEmpty(this.a) && this.b != null && !Thread.currentThread().isInterrupted()) {
            HttpUtil.doHttpRequest(this.a, false, false, null, null, null, new C0013a());
        }
    }
}
