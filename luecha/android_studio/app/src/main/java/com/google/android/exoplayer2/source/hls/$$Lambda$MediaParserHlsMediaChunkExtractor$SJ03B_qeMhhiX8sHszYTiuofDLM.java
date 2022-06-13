package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.source.hls.-$$Lambda$MediaParserHlsMediaChunkExtractor$SJ03B_qeMhhiX8sHszYTiuofDLM */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$MediaParserHlsMediaChunkExtractor$SJ03B_qeMhhiX8sHszYTiuofDLM implements HlsExtractorFactory {
    public static final /* synthetic */ $$Lambda$MediaParserHlsMediaChunkExtractor$SJ03B_qeMhhiX8sHszYTiuofDLM INSTANCE = new $$Lambda$MediaParserHlsMediaChunkExtractor$SJ03B_qeMhhiX8sHszYTiuofDLM();

    private /* synthetic */ $$Lambda$MediaParserHlsMediaChunkExtractor$SJ03B_qeMhhiX8sHszYTiuofDLM() {
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public final HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput) {
        return MediaParserHlsMediaChunkExtractor.lambda$static$0(uri, format, list, timestampAdjuster, map, extractorInput);
    }
}
