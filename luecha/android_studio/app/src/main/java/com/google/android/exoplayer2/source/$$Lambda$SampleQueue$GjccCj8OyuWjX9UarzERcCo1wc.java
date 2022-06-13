package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.util.Consumer;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.source.-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$SampleQueue$GjccCj8OyuWjX9UarzERcCo1wc implements Consumer {
    public static final /* synthetic */ $$Lambda$SampleQueue$GjccCj8OyuWjX9UarzERcCo1wc INSTANCE = new $$Lambda$SampleQueue$GjccCj8OyuWjX9UarzERcCo1wc();

    private /* synthetic */ $$Lambda$SampleQueue$GjccCj8OyuWjX9UarzERcCo1wc() {
    }

    @Override // com.google.android.exoplayer2.util.Consumer
    public final void accept(Object obj) {
        ((SampleQueue.SharedSampleMetadata) obj).drmSessionReference.release();
    }
}
