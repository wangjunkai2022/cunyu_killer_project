package com.opensource.svgaplayer;

import java.util.concurrent.ThreadFactory;
import kotlin.Metadata;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "r", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", "newThread"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes2.dex */
final class SVGAParser$Companion$threadPoolExecutor$1 implements ThreadFactory {
    public static final SVGAParser$Companion$threadPoolExecutor$1 INSTANCE = new SVGAParser$Companion$threadPoolExecutor$1();

    SVGAParser$Companion$threadPoolExecutor$1() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "SVGAParser-Thread-" + SVGAParser.threadNum.getAndIncrement());
    }
}
