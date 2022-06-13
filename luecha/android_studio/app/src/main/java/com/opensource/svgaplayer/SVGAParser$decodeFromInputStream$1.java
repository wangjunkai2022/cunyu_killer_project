package com.opensource.svgaplayer;

import com.opensource.svgaplayer.SVGAParser;
import java.io.InputStream;
import kotlin.Metadata;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class SVGAParser$decodeFromInputStream$1 implements Runnable {
    final /* synthetic */ String $alias;
    final /* synthetic */ String $cacheKey;
    final /* synthetic */ SVGAParser.ParseCompletion $callback;
    final /* synthetic */ boolean $closeInputStream;
    final /* synthetic */ InputStream $inputStream;
    final /* synthetic */ SVGAParser.PlayCallback $playCallback;
    final /* synthetic */ SVGAParser this$0;

    public SVGAParser$decodeFromInputStream$1(SVGAParser sVGAParser, InputStream inputStream, String str, SVGAParser.ParseCompletion parseCompletion, String str2, SVGAParser.PlayCallback playCallback, boolean z) {
        this.this$0 = sVGAParser;
        this.$inputStream = inputStream;
        this.$cacheKey = str;
        this.$callback = parseCompletion;
        this.$alias = str2;
        this.$playCallback = playCallback;
        this.$closeInputStream = z;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:88)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:452)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @Override // java.lang.Runnable
    public final void run() {
        /*
        // Method dump skipped, instructions count: 403
        */
        throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.SVGAParser$decodeFromInputStream$1.run():void");
    }
}
