package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.offline.-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0 implements MetadataOutput {
    public static final /* synthetic */ $$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0 INSTANCE = new $$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0();

    private /* synthetic */ $$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0() {
    }

    @Override // com.google.android.exoplayer2.metadata.MetadataOutput
    public final void onMetadata(Metadata metadata) {
        DownloadHelper.lambda$getRendererCapabilities$1(metadata);
    }
}
