package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public class ProcessUtils {
    private static String zzhd;
    private static int zzhe;

    private ProcessUtils() {
    }

    @Nullable
    public static String getMyProcessName() {
        if (zzhd == null) {
            if (zzhe == 0) {
                zzhe = Process.myPid();
            }
            zzhd = zzd(zzhe);
        }
        return zzhd;
    }

    @Nullable
    private static String zzd(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        String str = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = zzj(sb.toString());
        } catch (IOException unused) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            str = bufferedReader.readLine().trim();
            IOUtils.closeQuietly(bufferedReader);
        } catch (IOException unused2) {
            IOUtils.closeQuietly(bufferedReader);
            return str;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            IOUtils.closeQuietly(bufferedReader2);
            throw th;
        }
        return str;
    }

    private static BufferedReader zzj(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
