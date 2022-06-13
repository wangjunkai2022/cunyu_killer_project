package com.tencent.thumbplayer.tplayer.plugins.report;

import com.tencent.thumbplayer.utils.TPLogUtil;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class a implements com.tencent.thumbplayer.tplayer.plugins.a {
    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a() {
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a(int i, int i2, int i3, String str, Object obj) {
        String str2;
        switch (i) {
            case 101:
                str2 = "create player adapter";
                break;
            case 102:
                str2 = "start prepare";
                break;
            case 103:
                str2 = "on prepared";
                break;
            case 104:
                str2 = "start play";
                break;
            case 105:
            default:
                return;
            case 106:
                str2 = "on paused";
                break;
            case 107:
                str2 = "on stoped";
                break;
            case 108:
                str2 = "on error:" + i2;
                break;
            case 109:
                str2 = "start seek";
                break;
            case 110:
                str2 = "seek complete";
                break;
            case 111:
                str2 = "on play complete";
                break;
            case 112:
                str2 = "on release";
                break;
            case 113:
                str2 = "on reset";
                break;
        }
        TPLogUtil.d("TPLogPlugin", str2);
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void b() {
    }
}
