package com.tencent.thumbplayer.d.a;

import android.os.Looper;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest;
import com.tencent.thumbplayer.api.resourceloader.TPAssetResourceLoadingContentInformationRequest;

/* loaded from: classes2.dex */
public class d implements ITPAssetResourceLoadingRequest {
    private int a;
    private c b;
    private TPAssetResourceLoadingContentInformationRequest c;
    private boolean d = false;
    private boolean e = false;

    public d(long j, long j2, int i, boolean z) {
        this.a = 0;
        this.a = i;
        this.b = new c(j, j2, z);
        this.b.a(i);
    }

    public int a(long j) {
        return this.b.a(j);
    }

    /* renamed from: a */
    public c getLoadingDataRequest() {
        return this.b;
    }

    public void a(Looper looper) {
        this.b.a(looper);
    }

    public void a(TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest) {
        this.c = tPAssetResourceLoadingContentInformationRequest;
    }

    public void a(String str) {
        this.b.a(str);
    }

    public synchronized void b() {
        this.d = true;
        this.b.b();
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized void finishLoading() {
        this.e = true;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public TPAssetResourceLoadingContentInformationRequest getContentInformation() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized boolean isCancelled() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized boolean isFinished() {
        return this.e;
    }
}
