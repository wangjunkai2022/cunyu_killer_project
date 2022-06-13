package com.appinstall.sdk;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.webkit.internal.AssetHelper;
import java.lang.ref.WeakReference;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class bm {
    private ClipboardManager d;
    private final Handler f;
    private final cg a = cg.a("CM");
    private final String b = "s_r";
    private final String c = "s_l";
    private final LinkedBlockingQueue e = new LinkedBlockingQueue(10);
    private WeakReference g = null;
    private int h = 0;

    public bm(Context context) {
        try {
            this.d = (ClipboardManager) context.getSystemService("clipboard");
        } catch (Exception unused) {
        }
        HandlerThread handlerThread = new HandlerThread("releaseHandler");
        handlerThread.start();
        this.f = new Handler(handlerThread.getLooper());
    }

    private bl a(ClipData clipData) {
        boolean a;
        ClipData.Item itemAt;
        String str = null;
        if (clipData == null) {
            return null;
        }
        bl blVar = new bl();
        if (clipData == null || clipData.getItemCount() <= 0 || (itemAt = clipData.getItemAt(0)) == null) {
            str = null;
        } else {
            str = Build.VERSION.SDK_INT >= 16 ? itemAt.getHtmlText() : null;
            if (itemAt.getText() != null) {
                str = itemAt.getText().toString();
            }
        }
        if (str != null) {
            if (str.contains(ce.o)) {
                blVar.b(str);
                blVar.a(2);
            }
            blVar.a(a(str));
        }
        if (str != null) {
            if (str.contains(ce.o)) {
                blVar.a(str);
                blVar.a(1);
                a = a(str);
            } else {
                String a2 = cd.a(str, 8);
                if (a2.contains(ce.o)) {
                    blVar.a(str);
                    blVar.a(1);
                }
                a = a(a2);
            }
            blVar.a(a);
        }
        return blVar;
    }

    private boolean a(String str) {
        if (!str.contains(ce.p)) {
            return false;
        }
        long j = 0;
        try {
            int indexOf = str.indexOf(ce.p) + ce.p.length();
            j = Long.parseLong(str.substring(indexOf, str.indexOf("-", indexOf)));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return System.currentTimeMillis() < j;
    }

    private ClipData d() {
        ClipDescription primaryClipDescription = this.d.getPrimaryClipDescription();
        if (primaryClipDescription == null) {
            return e();
        }
        boolean hasMimeType = primaryClipDescription.hasMimeType(AssetHelper.DEFAULT_MIME_TYPE);
        if (Build.VERSION.SDK_INT >= 16) {
            hasMimeType |= primaryClipDescription.hasMimeType("text/html");
        }
        if (!hasMimeType) {
            return ClipData.newPlainText("custom", "don't match");
        }
        ClipData primaryClip = this.d.getPrimaryClip();
        return primaryClip == null ? e() : primaryClip;
    }

    private ClipData e() {
        if (!b()) {
            return null;
        }
        int i = this.h;
        if (i >= 3) {
            this.h = 0;
            return ClipData.newPlainText("custom", "app focus");
        }
        this.h = i + 1;
        return null;
    }

    public bl a(boolean z) {
        try {
            if (this.d == null) {
                return null;
            }
            ClipData d = d();
            while (true) {
                if (!z || d != null) {
                    break;
                }
                Object poll = this.e.poll(1, TimeUnit.SECONDS);
                ClipData d2 = d();
                if ("s_l".equals(poll)) {
                    if (cf.a) {
                        cf.b("疑似应用处于后台不可见状态下调用init，并且接着调用其它api，数据大概率丢失，请检查代码", new Object[0]);
                    }
                    d = d2;
                } else {
                    d = d2;
                }
            }
            return a(d);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a() {
        this.e.offer("s_r");
    }

    public void a(int i) {
        if (i > 100) {
            a();
        }
        this.f.postDelayed(new bn(this), (long) i);
    }

    public void a(WeakReference weakReference) {
        this.g = weakReference;
    }

    public boolean b() {
        Activity activity;
        WeakReference weakReference = this.g;
        if (weakReference == null || (activity = (Activity) weakReference.get()) == null) {
            return false;
        }
        return activity.hasWindowFocus();
    }

    public void c() {
        if (this.d != null) {
            this.d.setPrimaryClip(new ClipData("", new String[0], new ClipData.Item(null, null, null)));
        }
    }
}
