package com.google.android.exoplayer2.extractor.amr;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.amr.-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI  reason: invalid class name */
/* loaded from: classes4.dex */
public final /* synthetic */ class $$Lambda$AmrExtractor$lVuGuaAcylUV_XE4hSR1hBylI implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$AmrExtractor$lVuGuaAcylUV_XE4hSR1hBylI INSTANCE = new $$Lambda$AmrExtractor$lVuGuaAcylUV_XE4hSR1hBylI();

    private /* synthetic */ $$Lambda$AmrExtractor$lVuGuaAcylUV_XE4hSR1hBylI() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return AmrExtractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
