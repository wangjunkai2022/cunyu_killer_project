package com.appinstall.sdk;

import com.appinstall.api.listener.GetUpdateApkListener;
import java.io.File;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class r implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ GetUpdateApkListener c;
    final /* synthetic */ m d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(m mVar, String str, String str2, GetUpdateApkListener getUpdateApkListener) {
        this.d = mVar;
        this.a = str;
        this.b = str2;
        this.c = getUpdateApkListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            File file = new File(this.a);
            File file2 = new File(this.b);
            bp.a((byte[]) null, file, file2);
            this.c.onGetFinish(file2);
        } catch (IOException e) {
            if (cf.a) {
                e.printStackTrace();
            }
            this.c.onGetFinish(null);
        }
    }
}
