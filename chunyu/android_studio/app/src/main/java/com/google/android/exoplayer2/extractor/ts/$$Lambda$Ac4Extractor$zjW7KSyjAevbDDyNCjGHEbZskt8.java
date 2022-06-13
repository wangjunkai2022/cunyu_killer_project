package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.ts.-$$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8  reason: invalid class name */
/* loaded from: classes4.dex */
public final /* synthetic */ class $$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8 implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8 INSTANCE = new $$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8();

    private /* synthetic */ $$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return Ac4Extractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
