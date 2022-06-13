package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.ts.-$$Lambda$PsExtractor$U8l9TedlJUwsYwV9EOSFo_ngcXY  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$PsExtractor$U8l9TedlJUwsYwV9EOSFo_ngcXY implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$PsExtractor$U8l9TedlJUwsYwV9EOSFo_ngcXY INSTANCE = new $$Lambda$PsExtractor$U8l9TedlJUwsYwV9EOSFo_ngcXY();

    private /* synthetic */ $$Lambda$PsExtractor$U8l9TedlJUwsYwV9EOSFo_ngcXY() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return PsExtractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
