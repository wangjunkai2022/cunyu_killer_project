package com.tencent.liteav.basic.util;

import android.os.Process;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: CpuUsageMeasurer.java */
/* loaded from: classes2.dex */
public class b {
    private static final long a = TimeUnit.SECONDS.toMillis(2);
    private RandomAccessFile d;
    private RandomAccessFile e;
    private long f = 0;
    private float g = 0.0f;
    private float h = 0.0f;
    private long i = 0;
    private long j = 0;
    private float k = 0.0f;
    private final long b = TXCTimeUtil.getClockTickInHz();
    private final int c = Runtime.getRuntime().availableProcessors();

    public b() {
        try {
            this.d = new RandomAccessFile(String.format(Locale.ENGLISH, "/proc/%d/stat", Integer.valueOf(Process.myPid())), "r");
        } catch (IOException e) {
            TXCLog.e("CpuUsageMeasurer", "open /proc/[PID]/stat failed. " + e.getMessage());
        }
        try {
            this.e = new RandomAccessFile("/proc/stat", "r");
        } catch (IOException unused) {
        }
    }

    public int[] a() {
        int[] iArr;
        synchronized (this) {
            if (TXCTimeUtil.getTimeTick() - this.f >= a) {
                b();
            }
            iArr = new int[]{(int) (this.h * 10.0f), (int) (this.k * 10.0f)};
        }
        return iArr;
    }

    private void b() {
        long j;
        long j2;
        String[] a2 = a(this.d);
        if (a2 != null && a2.length >= 52) {
            long parseLong = (long) ((((float) (((Long.parseLong(a2[13]) + Long.parseLong(a2[14])) + Long.parseLong(a2[15])) + Long.parseLong(a2[16]))) * 1000.0f) / ((float) this.b));
            String[] a3 = a(this.e);
            if (a3 == null || a3.length < 8) {
                j = TXCTimeUtil.getTimeTick() * ((long) this.c);
                j2 = j;
            } else {
                long parseLong2 = Long.parseLong(a3[1]) + Long.parseLong(a3[2]) + Long.parseLong(a3[3]) + Long.parseLong(a3[4]) + Long.parseLong(a3[5]) + Long.parseLong(a3[6]) + Long.parseLong(a3[7]);
                long parseLong3 = Long.parseLong(a3[4]) + Long.parseLong(a3[5]);
                long j3 = this.b;
                j = (long) ((((float) parseLong2) * 1000.0f) / ((float) j3));
                j2 = (long) ((((float) parseLong3) * 1000.0f) / ((float) j3));
            }
            long j4 = j - this.i;
            float f = (float) parseLong;
            float f2 = (float) j4;
            this.h = ((f - this.g) * 100.0f) / f2;
            this.k = (((float) (j4 - (j2 - this.j))) * 100.0f) / f2;
            this.g = f;
            this.j = j2;
            this.i = j;
            this.f = TXCTimeUtil.getTimeTick();
        }
    }

    private static String[] a(RandomAccessFile randomAccessFile) {
        String str;
        if (randomAccessFile == null) {
            return null;
        }
        try {
            randomAccessFile.seek(0);
            str = randomAccessFile.readLine();
        } catch (IOException e) {
            TXCLog.e("CpuUsageMeasurer", "read line failed. " + e.getMessage());
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split("\\s+");
    }

    protected void finalize() throws Throwable {
        super.finalize();
        c.a(this.d);
        c.a(this.e);
        TXCLog.i("CpuUsageMeasurer", "measurer is released");
    }
}
