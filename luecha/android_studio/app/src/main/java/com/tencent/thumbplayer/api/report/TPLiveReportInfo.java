package com.tencent.thumbplayer.api.report;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPLiveReportInfo extends TPDefaultReportInfo {
    public int adPlayLength;
    public String cdnServer;
    public int contentId;
    public boolean isLookBack;
    public boolean isUserPay;
    public int liveDelay;
    public int liveType;
    public int playTime;
    public int programId;
    public int streamId;

    @Override // com.tencent.thumbplayer.api.report.TPDefaultReportInfo
    public int getPlayType() {
        return 1;
    }
}
