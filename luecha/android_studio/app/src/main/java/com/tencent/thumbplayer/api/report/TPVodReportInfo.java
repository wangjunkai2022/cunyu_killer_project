package com.tencent.thumbplayer.api.report;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPVodReportInfo extends TPDefaultReportInfo {
    public int bizId;
    public int clipCount;
    public int currentPlayState;
    public boolean hasSubtitles;
    public int optimizedPlay;
    public int videoStatus;

    @Override // com.tencent.thumbplayer.api.report.TPDefaultReportInfo
    public int getPlayType() {
        return 0;
    }
}
