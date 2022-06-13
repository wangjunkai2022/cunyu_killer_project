package com.opensource.svgaplayer;

import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.io.File;
import java.io.FileInputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class SVGAParser$decodeFromSVGAFileCacheKey$1 implements Runnable {
    final /* synthetic */ String $alias;
    final /* synthetic */ String $cacheKey;
    final /* synthetic */ SVGAParser.ParseCompletion $callback;
    final /* synthetic */ SVGAParser.PlayCallback $playCallback;
    final /* synthetic */ SVGAParser this$0;

    public SVGAParser$decodeFromSVGAFileCacheKey$1(SVGAParser sVGAParser, String str, String str2, SVGAParser.ParseCompletion parseCompletion, SVGAParser.PlayCallback playCallback) {
        this.this$0 = sVGAParser;
        this.$alias = str;
        this.$cacheKey = str2;
        this.$callback = parseCompletion;
        this.$playCallback = playCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        StringBuilder sb;
        LogUtils logUtils;
        try {
            try {
                LogUtils logUtils2 = LogUtils.INSTANCE;
                logUtils2.info("SVGAParser", "================ decode " + this.$alias + " from svga cachel file to entity ================");
                FileInputStream fileInputStream = new FileInputStream(SVGACache.INSTANCE.buildSvgaFile(this.$cacheKey));
                th = null;
                try {
                    byte[] bArr = this.this$0.readAsBytes(fileInputStream);
                    if (bArr == null) {
                        this.this$0.invokeErrorCallback(new Exception("readAsBytes(inputStream) cause exception"), this.$callback, this.$alias);
                    } else if (this.this$0.isZipFile(bArr)) {
                        this.this$0.decodeFromCacheKey(this.$cacheKey, this.$callback, this.$alias);
                    } else {
                        LogUtils.INSTANCE.info("SVGAParser", "inflate start");
                        byte[] bArr2 = this.this$0.inflate(bArr);
                        if (bArr2 != null) {
                            LogUtils.INSTANCE.info("SVGAParser", "inflate complete");
                            MovieEntity decode = MovieEntity.ADAPTER.decode(bArr2);
                            Intrinsics.checkExpressionValueIsNotNull(decode, "MovieEntity.ADAPTER.decode(it)");
                            SVGAVideoEntity sVGAVideoEntity = new SVGAVideoEntity(decode, new File(this.$cacheKey), this.this$0.mFrameWidth, this.this$0.mFrameHeight);
                            LogUtils.INSTANCE.info("SVGAParser", "SVGAVideoEntity prepare start");
                            sVGAVideoEntity.prepare$com_opensource_svgaplayer(new Function0<Unit>(this) { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1
                                final /* synthetic */ SVGAParser$decodeFromSVGAFileCacheKey$1 this$0;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.this$0 = r2;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    LogUtils.INSTANCE.info("SVGAParser", "SVGAVideoEntity prepare success");
                                    this.this$0.this$0.invokeCompleteCallback(SVGAVideoEntity.this, this.this$0.$callback, this.this$0.$alias);
                                }
                            }, this.$playCallback);
                        } else {
                            this.this$0.invokeErrorCallback(new Exception("inflate(bytes) cause exception"), this.$callback, this.$alias);
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    logUtils = LogUtils.INSTANCE;
                    sb = new StringBuilder();
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } catch (Exception e) {
                this.this$0.invokeErrorCallback(e, this.$callback, this.$alias);
                logUtils = LogUtils.INSTANCE;
                sb = new StringBuilder();
            }
            sb.append("================ decode ");
            sb.append(this.$alias);
            sb.append(" from svga cachel file to entity end ================");
            logUtils.info("SVGAParser", sb.toString());
        } catch (Throwable th) {
            LogUtils logUtils3 = LogUtils.INSTANCE;
            logUtils3.info("SVGAParser", "================ decode " + this.$alias + " from svga cachel file to entity end ================");
            throw th;
        }
    }
}
