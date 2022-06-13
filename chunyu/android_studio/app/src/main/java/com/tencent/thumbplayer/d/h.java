package com.tencent.thumbplayer.d;

import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;

/* loaded from: classes2.dex */
public class h implements b {
    private ITPDownloadProxy a;

    public h(ITPDownloadProxy iTPDownloadProxy) {
        this.a = iTPDownloadProxy;
    }

    @Override // com.tencent.thumbplayer.d.b
    public ITPDownloadProxy a() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.d.b
    public void a(int i) {
        this.a.pushEvent(i);
    }
}
