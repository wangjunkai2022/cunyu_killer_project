package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.ts.-$$Lambda$AdtsExtractor$cqGYwjddB4W6E3ogPGiWfjTa23c  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$AdtsExtractor$cqGYwjddB4W6E3ogPGiWfjTa23c implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$AdtsExtractor$cqGYwjddB4W6E3ogPGiWfjTa23c INSTANCE = new $$Lambda$AdtsExtractor$cqGYwjddB4W6E3ogPGiWfjTa23c();

    private /* synthetic */ $$Lambda$AdtsExtractor$cqGYwjddB4W6E3ogPGiWfjTa23c() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return AdtsExtractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
