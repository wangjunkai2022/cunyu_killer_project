package com.google.android.exoplayer2.source.rtsp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class RtspDescribeResponse {
    public final SessionDescription sessionDescription;
    public final int status;

    public RtspDescribeResponse(int i, SessionDescription sessionDescription) {
        this.status = i;
        this.sessionDescription = sessionDescription;
    }
}
