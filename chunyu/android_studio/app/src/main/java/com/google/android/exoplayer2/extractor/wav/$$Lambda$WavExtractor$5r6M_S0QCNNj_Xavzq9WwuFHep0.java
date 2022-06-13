package com.google.android.exoplayer2.extractor.wav;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.wav.-$$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0  reason: invalid class name */
/* loaded from: classes4.dex */
public final /* synthetic */ class $$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0 implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0 INSTANCE = new $$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0();

    private /* synthetic */ $$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return WavExtractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
