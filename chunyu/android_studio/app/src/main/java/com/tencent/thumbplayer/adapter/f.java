package com.tencent.thumbplayer.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.e;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class f {
    private String a;
    private int b;
    private ParcelFileDescriptor c;
    private AssetFileDescriptor d;
    private Map<String, String> e = new HashMap();
    private ITPMediaAsset f;
    private e g;

    public String a() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.a = null;
        this.b = 4;
        this.e.clear();
        this.c = null;
        this.d = assetFileDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.a = null;
        this.b = 1;
        this.e.clear();
        this.c = parcelFileDescriptor;
        this.d = null;
    }

    public void a(e eVar) {
        this.a = null;
        this.b = 3;
        this.c = null;
        this.d = null;
        this.g = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ITPMediaAsset iTPMediaAsset) {
        this.a = null;
        this.b = 2;
        this.e.clear();
        this.c = null;
        this.d = null;
        this.f = iTPMediaAsset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        this.a = str;
        this.b = 0;
        this.c = null;
        this.d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Map<String, String> map) {
        this.e.clear();
        Map<String, String> map2 = this.e;
        if (map == null) {
            map = new HashMap<>(0);
        }
        map2.putAll(map);
    }

    public Map<String, String> b() {
        return this.e;
    }

    public ParcelFileDescriptor c() {
        return this.c;
    }

    public AssetFileDescriptor d() {
        return this.d;
    }

    public ITPMediaAsset e() {
        return this.f;
    }

    public e f() {
        return this.g;
    }

    public int g() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean h() {
        return (TextUtils.isEmpty(this.a) && this.c == null && this.d == null && this.f == null && this.g == null) ? false : true;
    }
}
