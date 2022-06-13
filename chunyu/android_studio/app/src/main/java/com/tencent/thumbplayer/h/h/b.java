package com.tencent.thumbplayer.h.h;

import android.util.Log;

/* loaded from: classes2.dex */
public final class b {
    private static int a = 2;
    private static boolean b = true;
    private static a c = new a() { // from class: com.tencent.thumbplayer.h.h.b.1
        @Override // com.tencent.thumbplayer.h.h.a
        public void a(String str, String str2) {
            Log.v(str, str2);
        }

        @Override // com.tencent.thumbplayer.h.h.a
        public void a(String str, String str2, Throwable th) {
            Log.w(str, str2, th);
        }

        @Override // com.tencent.thumbplayer.h.h.a
        public void b(String str, String str2) {
            Log.d(str, str2);
        }

        @Override // com.tencent.thumbplayer.h.h.a
        public void b(String str, String str2, Throwable th) {
            Log.e(str, str2, th);
        }

        @Override // com.tencent.thumbplayer.h.h.a
        public void c(String str, String str2) {
            Log.i(str, str2);
        }
    };

    public static void a(String str, String str2) {
        if (a(2)) {
            a aVar = c;
            aVar.a("TMediaCodec." + str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (a(5)) {
            a aVar = c;
            aVar.a("TMediaCodec." + str, str2, th);
        }
    }

    public static boolean a() {
        return b;
    }

    public static boolean a(int i) {
        return b && i >= a;
    }

    public static void b(String str, String str2) {
        if (a(3)) {
            a aVar = c;
            aVar.b("TMediaCodec." + str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (a(6)) {
            a aVar = c;
            aVar.b("TMediaCodec." + str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        if (a(4)) {
            a aVar = c;
            aVar.c("TMediaCodec." + str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (a(5)) {
            a aVar = c;
            aVar.a("TMediaCodec." + str, str2, null);
        }
    }

    public static void e(String str, String str2) {
        if (a(6)) {
            a aVar = c;
            aVar.b("TMediaCodec." + str, str2, null);
        }
    }
}
