package com.netease.mobsec.d;

import android.content.Context;
import java.io.File;

/* loaded from: classes2.dex */
public class c {

    /* loaded from: classes2.dex */
    public interface a {
        void a(Context context, String[] strArr, String str, File file, d dVar);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(String str);

        String[] a();

        void b(String str);

        String c(String str);

        String d(String str);
    }

    /* renamed from: com.netease.mobsec.d.c$c */
    /* loaded from: classes2.dex */
    public interface AbstractC0002c {
        void a();

        void a(Throwable th);
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(String str);
    }

    private c() {
    }

    public static d a() {
        return new d().a();
    }

    public static d a(d dVar) {
        return new d().a(dVar);
    }

    public static void a(Context context, String str) {
        a(context, str, null, null);
    }

    public static void a(Context context, String str, AbstractC0002c cVar) {
        a(context, str, null, cVar);
    }

    public static void a(Context context, String str, String str2) {
        a(context, str, str2, null);
    }

    public static void a(Context context, String str, String str2, AbstractC0002c cVar) {
        new d().a(context, str, str2, cVar);
    }

    public static d b() {
        return new d().b();
    }
}
