package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.-$$Lambda$ExtractorsFactory$CehnqwqJF4uRY8luGzji5IUgWC0  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$ExtractorsFactory$CehnqwqJF4uRY8luGzji5IUgWC0 implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$ExtractorsFactory$CehnqwqJF4uRY8luGzji5IUgWC0 INSTANCE = new $$Lambda$ExtractorsFactory$CehnqwqJF4uRY8luGzji5IUgWC0();

    private /* synthetic */ $$Lambda$ExtractorsFactory$CehnqwqJF4uRY8luGzji5IUgWC0() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return ExtractorsFactory.CC.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
