package com.tencent.thumbplayer.d;

import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
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
