package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.analytics.-$$Lambda$AnalyticsCollector$ZduLAhNVfml2wpWExS8rLsvsr_g  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$AnalyticsCollector$ZduLAhNVfml2wpWExS8rLsvsr_g implements ListenerSet.IterationFinishedEvent {
    public static final /* synthetic */ $$Lambda$AnalyticsCollector$ZduLAhNVfml2wpWExS8rLsvsr_g INSTANCE = new $$Lambda$AnalyticsCollector$ZduLAhNVfml2wpWExS8rLsvsr_g();

    private /* synthetic */ $$Lambda$AnalyticsCollector$ZduLAhNVfml2wpWExS8rLsvsr_g() {
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
    public final void invoke(Object obj, FlagSet flagSet) {
        AnalyticsCollector.lambda$new$0((AnalyticsListener) obj, flagSet);
    }
}
