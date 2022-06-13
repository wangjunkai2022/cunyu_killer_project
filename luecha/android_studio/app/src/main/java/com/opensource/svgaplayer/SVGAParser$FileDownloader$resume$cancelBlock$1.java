package com.opensource.svgaplayer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes5.dex */
final class SVGAParser$FileDownloader$resume$cancelBlock$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Ref.BooleanRef $cancelled;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGAParser$FileDownloader$resume$cancelBlock$1(Ref.BooleanRef booleanRef) {
        super(0);
        this.$cancelled = booleanRef;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$cancelled.element = true;
    }
}
