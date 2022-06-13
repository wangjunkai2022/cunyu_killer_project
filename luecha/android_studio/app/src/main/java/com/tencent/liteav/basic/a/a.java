package com.tencent.liteav.basic.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: LocalBroadcastManager.java */
/* loaded from: classes5.dex */
public class a {
    private static final Object f = new Object();
    private static a g;
    private final Context a;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> b = new HashMap<>();
    private final HashMap<String, ArrayList<b>> c = new HashMap<>();
    private final ArrayList<C0023a> d = new ArrayList<>();
    private final Handler e;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: LocalBroadcastManager.java */
    /* loaded from: classes5.dex */
    public static class b {
        final IntentFilter a;
        final BroadcastReceiver b;
        boolean c;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.a = intentFilter;
            this.b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.b);
            sb.append(" filter=");
            sb.append(this.a);
            sb.append("}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: LocalBroadcastManager.java */
    /* renamed from: com.tencent.liteav.basic.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0023a {
        final Intent a;
        final ArrayList<b> b;

        C0023a(Intent intent, ArrayList<b> arrayList) {
            this.a = intent;
            this.b = arrayList;
        }
    }

    public static a a(Context context) {
        a aVar;
        synchronized (f) {
            if (g == null) {
                g = new a(context.getApplicationContext());
            }
            aVar = g;
        }
        return aVar;
    }

    private a(Context context) {
        this.a = context;
        this.e = new Handler(context.getMainLooper()) { // from class: com.tencent.liteav.basic.a.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    a.this.a();
                }
            }
        };
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.b) {
            b bVar = new b(intentFilter, broadcastReceiver);
            ArrayList<IntentFilter> arrayList = this.b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(intentFilter);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<b> arrayList2 = this.c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.c.put(action, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.b) {
            ArrayList<IntentFilter> remove = this.b.remove(broadcastReceiver);
            if (remove != null) {
                for (int i = 0; i < remove.size(); i++) {
                    IntentFilter intentFilter = remove.get(i);
                    for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                        String action = intentFilter.getAction(i2);
                        ArrayList<b> arrayList = this.c.get(action);
                        if (arrayList != null) {
                            int i3 = 0;
                            while (i3 < arrayList.size()) {
                                if (arrayList.get(i3).b == broadcastReceiver) {
                                    arrayList.remove(i3);
                                    i3--;
                                }
                                i3++;
                            }
                            if (arrayList.size() <= 0) {
                                this.c.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean a(Intent intent) {
        String str;
        ArrayList<b> arrayList;
        int i;
        String str2;
        ArrayList arrayList2;
        synchronized (this.b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<b> arrayList3 = this.c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    b bVar = arrayList3.get(i2);
                    if (z) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + bVar.a);
                    }
                    if (bVar.c) {
                        if (z) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                        i = i2;
                        arrayList = arrayList3;
                        str2 = action;
                        str = resolveTypeIfNeeded;
                        arrayList2 = arrayList4;
                    } else {
                        str2 = action;
                        arrayList2 = arrayList4;
                        i = i2;
                        arrayList = arrayList3;
                        str = resolveTypeIfNeeded;
                        int match = bVar.a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList4 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList4.add(bVar);
                            bVar.c = true;
                            i2 = i + 1;
                            action = str2;
                            arrayList3 = arrayList;
                            resolveTypeIfNeeded = str;
                        } else if (z) {
                            String str3 = match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category";
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + str3);
                        }
                    }
                    arrayList4 = arrayList2;
                    i2 = i + 1;
                    action = str2;
                    arrayList3 = arrayList;
                    resolveTypeIfNeeded = str;
                }
                if (arrayList4 != null) {
                    for (int i3 = 0; i3 < arrayList4.size(); i3++) {
                        ((b) arrayList4.get(i3)).c = false;
                    }
                    this.d.add(new C0023a(intent, arrayList4));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        C0023a[] aVarArr;
        while (true) {
            synchronized (this.b) {
                int size = this.d.size();
                if (size > 0) {
                    aVarArr = new C0023a[size];
                    this.d.toArray(aVarArr);
                    this.d.clear();
                } else {
                    return;
                }
            }
            for (C0023a aVar : aVarArr) {
                for (int i = 0; i < aVar.b.size(); i++) {
                    aVar.b.get(i).b.onReceive(this.a, aVar.a);
                }
            }
        }
    }
}
