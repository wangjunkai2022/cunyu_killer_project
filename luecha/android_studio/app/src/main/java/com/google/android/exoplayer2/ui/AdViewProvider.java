package com.google.android.exoplayer2.ui;

import android.view.ViewGroup;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* loaded from: classes2.dex */
public interface AdViewProvider {
    List<AdOverlayInfo> getAdOverlayInfos();

    ViewGroup getAdViewGroup();

    /* renamed from: com.google.android.exoplayer2.ui.AdViewProvider$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        /* JADX WARN: Incorrect args count in method signature: ()Ljava/util/List<Lcom/google/android/exoplayer2/ui/AdOverlayInfo;>; */
        public static List $default$getAdOverlayInfos(AdViewProvider _this) {
            return ImmutableList.of();
        }
    }
}
