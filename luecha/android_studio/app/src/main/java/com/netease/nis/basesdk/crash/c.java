package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: FileManager.java */
/* loaded from: classes5.dex */
class c {
    private static final c b = new c();
    private String a;

    private c() {
    }

    private boolean a() {
        File file = new File(this.a);
        try {
            if (file.exists()) {
                return file.isDirectory();
            }
            file.mkdirs();
            if (!file.exists() || !file.isDirectory()) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static c b() {
        return b;
    }

    public void b(String str) {
        this.a = str;
    }

    public File a(String str) {
        if (TextUtils.isEmpty(this.a) || !a()) {
            return null;
        }
        File file = new File(str);
        try {
            if (file.createNewFile()) {
                return file;
            }
            Logger.e("JavaCrashFileManager", "FileManager createLogFile by createNewFile failed,file already exists");
            return null;
        } catch (IOException unused) {
            Logger.e("JavaCrashFileManager", "FileManager createLogFile by createNewFile failed");
            return null;
        }
    }

    public boolean a(File file) {
        if (file == null && !file.exists()) {
            return false;
        }
        try {
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }
}
