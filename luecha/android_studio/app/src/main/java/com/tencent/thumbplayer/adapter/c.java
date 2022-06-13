package com.tencent.thumbplayer.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.e;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c {
    private Object a;
    private b g;
    private boolean h;
    private float i;
    private String j;
    private float k;
    private TPProgramInfo o;
    private int m = -1;
    private Map<String, d> b = new HashMap(0);
    private Map<String, a> c = new HashMap(0);
    private f f = new f();
    private Map<Integer, TPOptionalParam> e = new HashMap(0);
    private Map<Integer, TPTrackInfo> l = new HashMap(0);
    private ArrayList<TPTrackInfo> n = new ArrayList<>();
    private ArrayList<C0038c> d = new ArrayList<>();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        public String a;
        public String b;
        public List<TPOptionalParam> c;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class b {
        public boolean a;
        public long b;
        public long c;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.thumbplayer.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0038c {
        public int a;
        public long b;
        public TPTrackInfo c;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class d {
        public String a;
        public String b;
        public String c;
    }

    private void a(String str, String str2) {
        this.m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 2;
        tPTrackInfo.name = str2;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.n.add(tPTrackInfo);
    }

    private void b(String str, String str2, String str3) {
        this.m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 3;
        tPTrackInfo.name = str3;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.n.add(tPTrackInfo);
    }

    public TPTrackInfo a(int i) {
        return this.l.get(Integer.valueOf(i));
    }

    public void a() {
        this.b.clear();
        this.c.clear();
        this.h = false;
        this.i = 1.0f;
        this.j = "";
        this.k = 1.0f;
        this.l.clear();
        this.a = null;
        this.e.clear();
        this.f = new f();
        this.g = null;
        this.o = null;
        this.m = -1;
        this.n.clear();
        this.d.clear();
    }

    public void a(float f) {
        this.i = f;
    }

    public void a(int i, long j, TPTrackInfo tPTrackInfo) {
        this.l.put(Integer.valueOf(tPTrackInfo.getTrackType()), tPTrackInfo);
        if (i < 0 || i >= this.n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i + " is invalid, trackInfoList size:" + this.n.size());
            return;
        }
        C0038c cVar = new C0038c();
        cVar.a = i;
        cVar.b = j;
        Iterator<TPTrackInfo> it = this.n.iterator();
        while (it.hasNext()) {
            TPTrackInfo next = it.next();
            if (next.trackType == tPTrackInfo.trackType) {
                if ((!TextUtils.isEmpty(next.name) || !TextUtils.isEmpty(tPTrackInfo.name)) && !next.name.equals(tPTrackInfo.name)) {
                    next.isSelected = false;
                } else {
                    next.isSelected = true;
                    cVar.c = next;
                }
            }
        }
        this.d.add(cVar);
    }

    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f.a(assetFileDescriptor);
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f.a(parcelFileDescriptor);
    }

    public void a(Surface surface) {
        this.a = surface;
    }

    public void a(SurfaceHolder surfaceHolder) {
        this.a = surfaceHolder;
    }

    public void a(e eVar, Map<String, String> map) {
        this.f.a(eVar);
        this.f.a(map);
    }

    public void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam != null) {
            this.e.put(Integer.valueOf(tPOptionalParam.getKey()), tPOptionalParam);
        }
    }

    public void a(TPProgramInfo tPProgramInfo) {
        this.o = tPProgramInfo;
    }

    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f.a(iTPMediaAsset);
    }

    public void a(String str) {
        this.j = str;
    }

    public void a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            d dVar = new d();
            dVar.a = str;
            dVar.b = str2;
            dVar.c = str3;
            this.b.put(str, dVar);
            b(str, str2, str3);
        }
    }

    public void a(String str, String str2, List<TPOptionalParam> list) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            a aVar = new a();
            aVar.a = str;
            aVar.b = str2;
            aVar.c = list;
            this.c.put(str, aVar);
            a(str, str2);
        }
    }

    public void a(String str, Map<String, String> map) {
        this.f.a(str);
        this.f.a(map);
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(boolean z, long j, long j2) {
        if (this.g == null) {
            this.g = new b();
        }
        b bVar = this.g;
        bVar.a = z;
        bVar.b = j;
        bVar.c = j2;
    }

    public TPOptionalParam b(int i) {
        return this.e.get(Integer.valueOf(i));
    }

    public ArrayList<TPTrackInfo> b() {
        return this.n;
    }

    public void b(float f) {
        this.k = f;
    }

    public void b(int i, long j, TPTrackInfo tPTrackInfo) {
        this.l.remove(Integer.valueOf(tPTrackInfo.getTrackType()));
        if (i < 0 || i >= this.n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i + " is invalid, trackInfoList size:" + this.n.size());
            return;
        }
        Iterator<TPTrackInfo> it = this.n.iterator();
        while (it.hasNext()) {
            TPTrackInfo next = it.next();
            if (next.trackType == tPTrackInfo.trackType && ((TextUtils.isEmpty(next.name) && TextUtils.isEmpty(tPTrackInfo.name)) || next.name.equals(tPTrackInfo.name))) {
                next.isSelected = false;
                break;
            }
        }
        Iterator<C0038c> it2 = this.d.iterator();
        while (it2.hasNext()) {
            C0038c next2 = it2.next();
            if (next2.c != null && next2.c.equals(tPTrackInfo)) {
                this.d.remove(next2);
                return;
            }
        }
    }

    public void b(String str) {
        this.f.a(str);
    }

    public void b(boolean z) {
        if (this.g == null) {
            this.g = new b();
        }
        b bVar = this.g;
        bVar.a = z;
        bVar.b = 0;
        bVar.c = -1;
    }

    public ArrayList<C0038c> c() {
        return this.d;
    }

    public Object d() {
        return this.a;
    }

    public f e() {
        return this.f;
    }

    public boolean f() {
        f fVar = this.f;
        return fVar != null && fVar.h();
    }

    public boolean g() {
        return this.h;
    }

    public float h() {
        return this.i;
    }

    public String i() {
        return this.j;
    }

    public float j() {
        return this.k;
    }

    public b k() {
        return this.g;
    }

    public TPProgramInfo l() {
        return this.o;
    }

    public List<d> m() {
        ArrayList arrayList = new ArrayList(this.b.size());
        for (Map.Entry<String, d> entry : this.b.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<a> n() {
        ArrayList arrayList = new ArrayList(this.c.size());
        for (Map.Entry<String, a> entry : this.c.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<TPOptionalParam> o() {
        ArrayList arrayList = new ArrayList(this.e.size());
        for (Map.Entry<Integer, TPOptionalParam> entry : this.e.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public boolean p() {
        return e() != null && e().g() == 2;
    }
}
