package com.netease.mobsec.d;

import android.content.Context;
import android.util.Log;
import com.netease.mobsec.d.c;
import com.netease.mobsec.d.g.f;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes5.dex */
public class d {
    private static final String g = "lib";
    protected final Set<String> a;
    protected final c.b b;
    protected final c.a c;
    protected boolean d;
    protected boolean e;
    protected c.d f;

    /* loaded from: classes5.dex */
    public class a implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ c.AbstractC0002c d;

        a(Context context, String str, String str2, c.AbstractC0002c cVar) {
            d.this = r1;
            this.a = context;
            this.b = str;
            this.c = str2;
            this.d = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d.this.d(this.a, this.b, this.c);
                this.d.a();
            } catch (b | UnsatisfiedLinkError e) {
                this.d.a(e);
            }
        }
    }

    /* loaded from: classes5.dex */
    public class b implements FilenameFilter {
        final /* synthetic */ String a;

        b(String str) {
            d.this = r1;
            this.a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.a);
        }
    }

    public d() {
        this(new e(), new a());
    }

    protected d(c.b bVar, c.a aVar) {
        this.a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        } else if (aVar != null) {
            this.b = bVar;
            this.c = aVar;
        } else {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
    }

    public void d(Context context, String str, String str2) {
        Throwable th;
        if (!this.a.contains(str) || this.d) {
            try {
                this.b.a(str);
                this.a.add(str);
                a("%s (%s) was loaded normally!", str, str2);
            } catch (UnsatisfiedLinkError e) {
                a("Loading the library normally failed: %s", Log.getStackTraceString(e));
                a("%s (%s) was not loaded normally, re-linking...", str, str2);
                File b2 = b(context, str, str2);
                if (!b2.exists() || this.d) {
                    if (this.d) {
                        a("Forcing a re-link of %s (%s)...", str, str2);
                    }
                    a(context, str, str2);
                    this.c.a(context, this.b.a(), this.b.d(str), b2, this);
                }
                try {
                    if (this.e) {
                        f fVar = null;
                        try {
                            f fVar2 = new f(b2);
                            try {
                                List<String> b3 = fVar2.b();
                                fVar2.close();
                                for (String str3 : b3) {
                                    a(context, this.b.c(str3));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fVar = fVar2;
                                fVar.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (IOException unused) {
                }
                this.b.b(b2.getAbsolutePath());
                this.a.add(str);
                a("%s (%s) was re-linked!", str, str2);
            }
        } else {
            a("%s already loaded previously!", str);
        }
    }

    public d a() {
        this.d = true;
        return this;
    }

    public d a(c.d dVar) {
        this.f = dVar;
        return this;
    }

    protected File a(Context context) {
        return context.getDir("lib", 0);
    }

    public void a(Context context, String str) {
        a(context, str, (String) null, (c.AbstractC0002c) null);
    }

    public void a(Context context, String str, c.AbstractC0002c cVar) {
        a(context, str, (String) null, cVar);
    }

    protected void a(Context context, String str, String str2) {
        File a2 = a(context);
        File b2 = b(context, str, str2);
        File[] listFiles = a2.listFiles(new b(this.b.d(str)));
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.d || !file.getAbsolutePath().equals(b2.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    public void a(Context context, String str, String str2, c.AbstractC0002c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!f.a(str)) {
            a("Beginning load of %s...", str);
            if (cVar == null) {
                d(context, str, str2);
            } else {
                new Thread(new a(context, str, str2, cVar)).start();
            }
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    public void a(String str) {
        c.d dVar = this.f;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    public void a(String str, Object... objArr) {
        a(String.format(Locale.US, str, objArr));
    }

    public d b() {
        this.e = true;
        return this;
    }

    protected File b(Context context, String str, String str2) {
        String d = this.b.d(str);
        if (f.a(str2)) {
            return new File(a(context), d);
        }
        File a2 = a(context);
        return new File(a2, d + "." + str2);
    }

    public void c(Context context, String str, String str2) {
        a(context, str, str2, (c.AbstractC0002c) null);
    }
}
