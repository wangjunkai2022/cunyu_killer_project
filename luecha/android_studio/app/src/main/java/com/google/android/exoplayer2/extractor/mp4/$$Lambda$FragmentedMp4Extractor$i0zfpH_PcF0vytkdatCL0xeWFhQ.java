package com.google.android.exoplayer2.extractor.mp4;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.List;
import java.util.Map;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.extractor.mp4.-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ implements ExtractorsFactory {
    public static final /* synthetic */ $$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ INSTANCE = new $$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ();

    private /* synthetic */ $$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return FragmentedMp4Extractor.lambda$static$0();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return ExtractorsFactory.CC.$default$createExtractors(this, uri, map);
    }
}
