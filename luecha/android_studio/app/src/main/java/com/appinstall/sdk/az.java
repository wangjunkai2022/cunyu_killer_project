package com.appinstall.sdk;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

@Deprecated
/* loaded from: classes2.dex */
public class az extends ax {
    private cg b = cg.a("ES");

    public az(Context context) {
        super(context);
    }

    private String a(File file) throws IOException {
        Throwable th;
        RandomAccessFile randomAccessFile = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] bArr = new byte[(int) randomAccessFile.length()];
                randomAccessFile.readFully(bArr);
                String str = new String(bArr);
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                }
                return str;
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void a(File file, String str) throws IOException {
        Throwable th;
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(str.getBytes());
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.appinstall.sdk.ax
    public String b(String str) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        try {
            return a(new File(externalStorageDirectory.getAbsolutePath() + "/Installation", str));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.appinstall.sdk.ax
    public boolean b(String str, String str2) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return false;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        try {
            File file = new File(externalStorageDirectory.getAbsolutePath() + "/Installation", str);
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            a(file, str2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
