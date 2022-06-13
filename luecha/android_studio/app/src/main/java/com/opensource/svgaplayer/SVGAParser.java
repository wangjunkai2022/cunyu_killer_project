package com.opensource.svgaplayer;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.ImagesContract;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.utils.log.LogUtils;
import com.umeng.analytics.pro.c;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 <2\u00020\u0001:\u0004<=>?B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J$\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002JB\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0012J.\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0012J,\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0012H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020)H\u0002J\u000e\u0010+\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003J$\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020.2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002J(\u0010/\u001a\u00020\u00102\n\u00100\u001a\u000601j\u0002`22\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002J\u0010\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020)H\u0002J,\u00105\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0007J\u001a\u00105\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0012\u00107\u001a\u0004\u0018\u00010)2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0016\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020\rJ\u0018\u0010;\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0012H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser;", "", c.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "fileDownloader", "Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "getFileDownloader", "()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "setFileDownloader", "(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V", "mContext", "mFrameHeight", "", "mFrameWidth", "decodeFromAssets", "", "name", "", "callback", "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "playCallback", "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;", "decodeFromCacheKey", "cacheKey", "alias", "decodeFromInputStream", "inputStream", "Ljava/io/InputStream;", "closeInputStream", "", "decodeFromSVGAFileCacheKey", "decodeFromURL", "Lkotlin/Function0;", ImagesContract.URL, "Ljava/net/URL;", "ensureUnzipSafety", "outputFile", "Ljava/io/File;", "dstDirPath", "inflate", "", "byteArray", "init", "invokeCompleteCallback", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "invokeErrorCallback", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "isZipFile", "bytes", "parse", "assetsName", "readAsBytes", "setFrameSize", "frameWidth", "frameHeight", "unzip", "Companion", "FileDownloader", "ParseCompletion", "PlayCallback", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class SVGAParser {
    private static final String TAG = "SVGAParser";
    private FileDownloader fileDownloader;
    private Context mContext;
    private volatile int mFrameHeight;
    private volatile int mFrameWidth;
    public static final Companion Companion = new Companion(null);
    private static final AtomicInteger threadNum = new AtomicInteger(0);
    private static SVGAParser mShareParser = new SVGAParser(null);
    private static ExecutorService threadPoolExecutor = Executors.newCachedThreadPool(SVGAParser$Companion$threadPoolExecutor$1.INSTANCE);

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "", "onComplete", "", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "onError", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5.dex */
    public interface ParseCompletion {
        void onComplete(SVGAVideoEntity sVGAVideoEntity);

        void onError();
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;", "", "onPlay", "", "file", "", "Ljava/io/File;", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5.dex */
    public interface PlayCallback {
        void onPlay(List<? extends File> list);
    }

    public SVGAParser(Context context) {
        this.mContext = context != null ? context.getApplicationContext() : null;
        SVGACache.INSTANCE.onCreate(context);
        this.fileDownloader = new FileDownloader();
    }

    public static final /* synthetic */ void access$decodeFromCacheKey(SVGAParser sVGAParser, String str, ParseCompletion parseCompletion, String str2) {
        sVGAParser.decodeFromCacheKey(str, parseCompletion, str2);
    }

    public static final /* synthetic */ int access$getMFrameHeight$p(SVGAParser sVGAParser) {
        return sVGAParser.mFrameHeight;
    }

    public static final /* synthetic */ int access$getMFrameWidth$p(SVGAParser sVGAParser) {
        return sVGAParser.mFrameWidth;
    }

    public static final /* synthetic */ byte[] access$inflate(SVGAParser sVGAParser, byte[] bArr) {
        return sVGAParser.inflate(bArr);
    }

    public static final /* synthetic */ void access$invokeErrorCallback(SVGAParser sVGAParser, Exception exc, ParseCompletion parseCompletion, String str) {
        sVGAParser.invokeErrorCallback(exc, parseCompletion, str);
    }

    public static final /* synthetic */ boolean access$isZipFile(SVGAParser sVGAParser, byte[] bArr) {
        return sVGAParser.isZipFile(bArr);
    }

    public static final /* synthetic */ byte[] access$readAsBytes(SVGAParser sVGAParser, InputStream inputStream) {
        return sVGAParser.readAsBytes(inputStream);
    }

    public static final /* synthetic */ void access$unzip(SVGAParser sVGAParser, InputStream inputStream, String str) {
        sVGAParser.unzip(inputStream, str);
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J`\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\r2!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u000b0\u000f2%\u0010\u0014\u001a!\u0012\u0017\u0012\u00150\u0015j\u0002`\u0016¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "", "()V", "noCache", "", "getNoCache", "()Z", "setNoCache", "(Z)V", "resume", "Lkotlin/Function0;", "", ImagesContract.URL, "Ljava/net/URL;", "complete", "Lkotlin/Function1;", "Ljava/io/InputStream;", "Lkotlin/ParameterName;", "name", "inputStream", "failure", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5.dex */
    public static class FileDownloader {
        private boolean noCache;

        public final boolean getNoCache() {
            return this.noCache;
        }

        public final void setNoCache(boolean z) {
            this.noCache = z;
        }

        public Function0<Unit> resume(URL url, Function1<? super InputStream, Unit> function1, Function1<? super Exception, Unit> function12) {
            Intrinsics.checkParameterIsNotNull(url, ImagesContract.URL);
            Intrinsics.checkParameterIsNotNull(function1, "complete");
            Intrinsics.checkParameterIsNotNull(function12, "failure");
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = false;
            SVGAParser$FileDownloader$resume$cancelBlock$1 sVGAParser$FileDownloader$resume$cancelBlock$1 = new SVGAParser$FileDownloader$resume$cancelBlock$1(booleanRef);
            SVGAParser.Companion.getThreadPoolExecutor$com_opensource_svgaplayer().execute(new SVGAParser$FileDownloader$resume$1(this, url, booleanRef, function1, function12));
            return sVGAParser$FileDownloader$resume$cancelBlock$1;
        }
    }

    public final FileDownloader getFileDownloader() {
        return this.fileDownloader;
    }

    public final void setFileDownloader(FileDownloader fileDownloader) {
        Intrinsics.checkParameterIsNotNull(fileDownloader, "<set-?>");
        this.fileDownloader = fileDownloader;
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$Companion;", "", "()V", "TAG", "", "mShareParser", "Lcom/opensource/svgaplayer/SVGAParser;", "threadNum", "Ljava/util/concurrent/atomic/AtomicInteger;", "threadPoolExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "getThreadPoolExecutor$com_opensource_svgaplayer", "()Ljava/util/concurrent/ExecutorService;", "setThreadPoolExecutor$com_opensource_svgaplayer", "(Ljava/util/concurrent/ExecutorService;)V", "setThreadPoolExecutor", "", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "shareParser", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ExecutorService getThreadPoolExecutor$com_opensource_svgaplayer() {
            return SVGAParser.threadPoolExecutor;
        }

        public final void setThreadPoolExecutor$com_opensource_svgaplayer(ExecutorService executorService) {
            SVGAParser.threadPoolExecutor = executorService;
        }

        public final void setThreadPoolExecutor(ThreadPoolExecutor threadPoolExecutor) {
            Intrinsics.checkParameterIsNotNull(threadPoolExecutor, "executor");
            setThreadPoolExecutor$com_opensource_svgaplayer(threadPoolExecutor);
        }

        public final SVGAParser shareParser() {
            return SVGAParser.mShareParser;
        }
    }

    public final void init(Context context) {
        Intrinsics.checkParameterIsNotNull(context, c.R);
        this.mContext = context.getApplicationContext();
        SVGACache.INSTANCE.onCreate(this.mContext);
    }

    public final void setFrameSize(int i, int i2) {
        this.mFrameWidth = i;
        this.mFrameHeight = i2;
    }

    public static /* synthetic */ void decodeFromAssets$default(SVGAParser sVGAParser, String str, ParseCompletion parseCompletion, PlayCallback playCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            playCallback = null;
        }
        sVGAParser.decodeFromAssets(str, parseCompletion, playCallback);
    }

    public final void decodeFromAssets(String str, ParseCompletion parseCompletion, PlayCallback playCallback) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        if (this.mContext == null) {
            LogUtils.INSTANCE.error("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.info("SVGAParser", "================ decode " + str + " from assets ================");
        threadPoolExecutor.execute(new Runnable(str, parseCompletion, playCallback) { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromAssets$1
            final /* synthetic */ SVGAParser.ParseCompletion $callback;
            final /* synthetic */ String $name;
            final /* synthetic */ SVGAParser.PlayCallback $playCallback;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$name = r2;
                this.$callback = r3;
                this.$playCallback = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                AssetManager assets;
                InputStream open;
                try {
                    Context context = SVGAParser.this.mContext;
                    if (context != null && (assets = context.getAssets()) != null && (open = assets.open(this.$name)) != null) {
                        SVGAParser sVGAParser = SVGAParser.this;
                        SVGACache sVGACache = SVGACache.INSTANCE;
                        sVGAParser.decodeFromInputStream(open, sVGACache.buildCacheKey("file:///assets/" + this.$name), this.$callback, true, this.$playCallback, this.$name);
                    }
                } catch (Exception e) {
                    SVGAParser.this.invokeErrorCallback(e, this.$callback, this.$name);
                }
            }
        });
    }

    public static /* synthetic */ Function0 decodeFromURL$default(SVGAParser sVGAParser, URL url, ParseCompletion parseCompletion, PlayCallback playCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            playCallback = null;
        }
        return sVGAParser.decodeFromURL(url, parseCompletion, playCallback);
    }

    public final Function0<Unit> decodeFromURL(URL url, ParseCompletion parseCompletion, PlayCallback playCallback) {
        Intrinsics.checkParameterIsNotNull(url, ImagesContract.URL);
        if (this.mContext == null) {
            LogUtils.INSTANCE.error("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return null;
        }
        String url2 = url.toString();
        Intrinsics.checkExpressionValueIsNotNull(url2, "url.toString()");
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.info("SVGAParser", "================ decode from url: " + url2 + " ================");
        String buildCacheKey = SVGACache.INSTANCE.buildCacheKey(url);
        if (SVGACache.INSTANCE.isCached(buildCacheKey)) {
            LogUtils.INSTANCE.info("SVGAParser", "this url cached");
            threadPoolExecutor.execute(new Runnable(buildCacheKey, parseCompletion, url2, playCallback) { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$1
                final /* synthetic */ String $cacheKey;
                final /* synthetic */ SVGAParser.ParseCompletion $callback;
                final /* synthetic */ SVGAParser.PlayCallback $playCallback;
                final /* synthetic */ String $urlPath;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$cacheKey = r2;
                    this.$callback = r3;
                    this.$urlPath = r4;
                    this.$playCallback = r5;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    if (SVGACache.INSTANCE.isDefaultCache()) {
                        SVGAParser.this.decodeFromCacheKey(this.$cacheKey, this.$callback, this.$urlPath);
                    } else {
                        SVGAParser.this.decodeFromSVGAFileCacheKey(this.$cacheKey, this.$callback, this.$playCallback, this.$urlPath);
                    }
                }
            });
            return null;
        }
        LogUtils.INSTANCE.info("SVGAParser", "no cached, prepare to download");
        return this.fileDownloader.resume(url, new Function1<InputStream, Unit>(buildCacheKey, parseCompletion, playCallback, url2) { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$2
            final /* synthetic */ String $cacheKey;
            final /* synthetic */ SVGAParser.ParseCompletion $callback;
            final /* synthetic */ SVGAParser.PlayCallback $playCallback;
            final /* synthetic */ String $urlPath;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$cacheKey = r2;
                this.$callback = r3;
                this.$playCallback = r4;
                this.$urlPath = r5;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InputStream inputStream) {
                invoke2(inputStream);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(InputStream inputStream) {
                Intrinsics.checkParameterIsNotNull(inputStream, "it");
                SVGAParser.this.decodeFromInputStream(inputStream, this.$cacheKey, this.$callback, false, this.$playCallback, this.$urlPath);
            }
        }, new Function1<Exception, Unit>(url, parseCompletion, url2) { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$3
            final /* synthetic */ SVGAParser.ParseCompletion $callback;
            final /* synthetic */ URL $url;
            final /* synthetic */ String $urlPath;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$url = r2;
                this.$callback = r3;
                this.$urlPath = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Exception exc) {
                invoke2(exc);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Exception exc) {
                Intrinsics.checkParameterIsNotNull(exc, "it");
                LogUtils logUtils2 = LogUtils.INSTANCE;
                logUtils2.error("SVGAParser", "================ svga file: " + this.$url + " download fail ================");
                SVGAParser.this.invokeErrorCallback(exc, this.$callback, this.$urlPath);
            }
        });
    }

    public static /* synthetic */ void decodeFromSVGAFileCacheKey$default(SVGAParser sVGAParser, String str, ParseCompletion parseCompletion, PlayCallback playCallback, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        sVGAParser.decodeFromSVGAFileCacheKey(str, parseCompletion, playCallback, str2);
    }

    public final void decodeFromSVGAFileCacheKey(String str, ParseCompletion parseCompletion, PlayCallback playCallback, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        threadPoolExecutor.execute(new SVGAParser$decodeFromSVGAFileCacheKey$1(this, str2, str, parseCompletion, playCallback));
    }

    public static /* synthetic */ void decodeFromInputStream$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z, PlayCallback playCallback, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            playCallback = null;
        }
        if ((i & 32) != 0) {
            str2 = null;
        }
        sVGAParser.decodeFromInputStream(inputStream, str, parseCompletion, z, playCallback, str2);
    }

    public final void decodeFromInputStream(InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z, PlayCallback playCallback, String str2) {
        Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        if (this.mContext == null) {
            LogUtils.INSTANCE.error("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.info("SVGAParser", "================ decode " + str2 + " from input stream ================");
        threadPoolExecutor.execute(new SVGAParser$decodeFromInputStream$1(this, inputStream, str, parseCompletion, str2, playCallback, z));
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromAssets(assetsName, callback)", imports = {}))
    public final void parse(String str, ParseCompletion parseCompletion) {
        Intrinsics.checkParameterIsNotNull(str, "assetsName");
        decodeFromAssets(str, parseCompletion, null);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromURL(url, callback)", imports = {}))
    public final void parse(URL url, ParseCompletion parseCompletion) {
        Intrinsics.checkParameterIsNotNull(url, ImagesContract.URL);
        decodeFromURL(url, parseCompletion, null);
    }

    public static /* synthetic */ void parse$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        sVGAParser.parse(inputStream, str, parseCompletion, z);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)", imports = {}))
    public final void parse(InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z) {
        Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        decodeFromInputStream$default(this, inputStream, str, parseCompletion, z, null, null, 32, null);
    }

    public final void invokeCompleteCallback(SVGAVideoEntity sVGAVideoEntity, ParseCompletion parseCompletion, String str) {
        new Handler(Looper.getMainLooper()).post(new Runnable(str, parseCompletion, sVGAVideoEntity) { // from class: com.opensource.svgaplayer.SVGAParser$invokeCompleteCallback$1
            final /* synthetic */ String $alias;
            final /* synthetic */ SVGAParser.ParseCompletion $callback;
            final /* synthetic */ SVGAVideoEntity $videoItem;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$alias = r1;
                this.$callback = r2;
                this.$videoItem = r3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                LogUtils logUtils = LogUtils.INSTANCE;
                logUtils.info("SVGAParser", "================ " + this.$alias + " parser complete ================");
                SVGAParser.ParseCompletion parseCompletion2 = this.$callback;
                if (parseCompletion2 != null) {
                    parseCompletion2.onComplete(this.$videoItem);
                }
            }
        });
    }

    public final void invokeErrorCallback(Exception exc, ParseCompletion parseCompletion, String str) {
        exc.printStackTrace();
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.error("SVGAParser", "================ " + str + " parser error ================");
        LogUtils logUtils2 = LogUtils.INSTANCE;
        logUtils2.error("SVGAParser", str + " parse error", exc);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.opensource.svgaplayer.SVGAParser$invokeErrorCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.ParseCompletion parseCompletion2 = SVGAParser.ParseCompletion.this;
                if (parseCompletion2 != null) {
                    parseCompletion2.onError();
                }
            }
        });
    }

    public final void decodeFromCacheKey(String str, ParseCompletion parseCompletion, String str2) {
        ByteArrayOutputStream fileInputStream;
        LogUtils.INSTANCE.info("SVGAParser", "================ decode " + str2 + " from cache ================");
        LogUtils.INSTANCE.debug("SVGAParser", "decodeFromCacheKey called with cacheKey : " + str);
        if (this.mContext == null) {
            LogUtils.INSTANCE.error("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        try {
            File buildCacheDir = SVGACache.INSTANCE.buildCacheDir(str);
            File file = new File(buildCacheDir, "movie.binary");
            if (!file.isFile()) {
                file = null;
            }
            if (file != null) {
                try {
                    LogUtils.INSTANCE.info("SVGAParser", "binary change to entity");
                    fileInputStream = new FileInputStream(file);
                    th = null;
                    LogUtils.INSTANCE.info("SVGAParser", "binary change to entity success");
                    MovieEntity decode = MovieEntity.ADAPTER.decode(fileInputStream);
                    Intrinsics.checkExpressionValueIsNotNull(decode, "MovieEntity.ADAPTER.decode(it)");
                    invokeCompleteCallback(new SVGAVideoEntity(decode, buildCacheDir, this.mFrameWidth, this.mFrameHeight), parseCompletion, str2);
                    Unit unit = Unit.INSTANCE;
                } catch (Exception e) {
                    LogUtils.INSTANCE.error("SVGAParser", "binary change to entity fail", e);
                    buildCacheDir.delete();
                    file.delete();
                    throw e;
                }
            }
            File file2 = new File(buildCacheDir, "movie.spec");
            if (!file2.isFile()) {
                file2 = null;
            }
            if (file2 != null) {
                try {
                    LogUtils.INSTANCE.info("SVGAParser", "spec change to entity");
                    fileInputStream = new FileInputStream(file2);
                    th = null;
                    FileInputStream fileInputStream2 = fileInputStream;
                    fileInputStream = new ByteArrayOutputStream();
                    Throwable th = null;
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = fileInputStream;
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int read = fileInputStream2.read(bArr, 0, bArr.length);
                            if (read == -1) {
                                JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                                LogUtils.INSTANCE.info("SVGAParser", "spec change to entity success");
                                invokeCompleteCallback(new SVGAVideoEntity(jSONObject, buildCacheDir, this.mFrameWidth, this.mFrameHeight), parseCompletion, str2);
                                Unit unit2 = Unit.INSTANCE;
                                CloseableKt.closeFinally(fileInputStream, th);
                                Unit unit3 = Unit.INSTANCE;
                                return;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } finally {
                            CloseableKt.closeFinally(fileInputStream, th2);
                        }
                    }
                } catch (Exception e2) {
                    LogUtils.INSTANCE.error("SVGAParser", str2 + " movie.spec change to entity fail", e2);
                    buildCacheDir.delete();
                    file2.delete();
                    throw e2;
                }
            }
        } catch (Exception e3) {
            invokeErrorCallback(e3, parseCompletion, str2);
        }
    }

    public final byte[] readAsBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        th = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read <= 0) {
                    return byteArrayOutputStream2.toByteArray();
                }
                byteArrayOutputStream2.write(bArr, 0, read);
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public final byte[] inflate(byte[] bArr) {
        Inflater inflater = new Inflater();
        inflater.setInput(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        th = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            while (true) {
                int inflate = inflater.inflate(bArr2, 0, 2048);
                if (inflate <= 0) {
                    inflater.end();
                    return byteArrayOutputStream2.toByteArray();
                }
                byteArrayOutputStream2.write(bArr2, 0, inflate);
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public final boolean isZipFile(byte[] bArr) {
        return bArr.length > 4 && bArr[0] == 80 && bArr[1] == 75 && bArr[2] == 3 && bArr[3] == 4;
    }

    public final void unzip(InputStream inputStream, String str) {
        Exception e;
        Throwable th;
        Throwable th2;
        ZipInputStream zipInputStream;
        LogUtils.INSTANCE.info("SVGAParser", "================ unzip prepare ================");
        File buildCacheDir = SVGACache.INSTANCE.buildCacheDir(str);
        buildCacheDir.mkdirs();
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                Throwable th3 = null;
                Throwable th4 = null;
                try {
                    try {
                        ZipInputStream zipInputStream2 = new ZipInputStream(bufferedInputStream);
                        Throwable th5 = null;
                        try {
                            zipInputStream = zipInputStream2;
                        } catch (Throwable th6) {
                            th2 = th6;
                        }
                        while (true) {
                            ZipEntry nextEntry = zipInputStream.getNextEntry();
                            if (nextEntry != null) {
                                String name = nextEntry.getName();
                                Intrinsics.checkExpressionValueIsNotNull(name, "zipItem.name");
                                if (!StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) th3)) {
                                    String name2 = nextEntry.getName();
                                    Intrinsics.checkExpressionValueIsNotNull(name2, "zipItem.name");
                                    if (!StringsKt.contains$default((CharSequence) name2, (CharSequence) "/", false, 2, (Object) th3)) {
                                        File file = new File(buildCacheDir, nextEntry.getName());
                                        String absolutePath = buildCacheDir.getAbsolutePath();
                                        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "cacheDir.absolutePath");
                                        try {
                                            ensureUnzipSafety(file, absolutePath);
                                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                                            Throwable th7 = th3;
                                            FileOutputStream fileOutputStream2 = fileOutputStream;
                                            byte[] bArr = new byte[2048];
                                            while (true) {
                                                int read = zipInputStream.read(bArr);
                                                if (read <= 0) {
                                                    break;
                                                }
                                                fileOutputStream2.write(bArr, 0, read);
                                            }
                                            Unit unit = Unit.INSTANCE;
                                            CloseableKt.closeFinally(fileOutputStream, th7);
                                            LogUtils.INSTANCE.error("SVGAParser", "================ unzip complete ================");
                                            zipInputStream.closeEntry();
                                            th3 = null;
                                        } catch (Throwable th8) {
                                            th2 = th8;
                                        }
                                    }
                                }
                            } else {
                                Unit unit2 = Unit.INSTANCE;
                                CloseableKt.closeFinally(zipInputStream2, th5);
                                Unit unit3 = Unit.INSTANCE;
                                CloseableKt.closeFinally(bufferedInputStream, th4);
                                return;
                            }
                            th2 = th8;
                            throw th2;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        throw th;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                LogUtils.INSTANCE.error("SVGAParser", "================ unzip error ================");
                Exception exc = e;
                LogUtils.INSTANCE.error("SVGAParser", "error", exc);
                SVGACache sVGACache = SVGACache.INSTANCE;
                String absolutePath2 = buildCacheDir.getAbsolutePath();
                Intrinsics.checkExpressionValueIsNotNull(absolutePath2, "cacheDir.absolutePath");
                sVGACache.clearDir$com_opensource_svgaplayer(absolutePath2);
                buildCacheDir.delete();
                throw exc;
            }
        } catch (Exception e3) {
            e = e3;
            LogUtils.INSTANCE.error("SVGAParser", "================ unzip error ================");
            Exception exc2 = e;
            LogUtils.INSTANCE.error("SVGAParser", "error", exc2);
            SVGACache sVGACache2 = SVGACache.INSTANCE;
            String absolutePath22 = buildCacheDir.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath22, "cacheDir.absolutePath");
            sVGACache2.clearDir$com_opensource_svgaplayer(absolutePath22);
            buildCacheDir.delete();
            throw exc2;
        }
    }

    private final void ensureUnzipSafety(File file, String str) {
        String canonicalPath = new File(str).getCanonicalPath();
        String canonicalPath2 = file.getCanonicalPath();
        Intrinsics.checkExpressionValueIsNotNull(canonicalPath2, "outputFileCanonicalPath");
        Intrinsics.checkExpressionValueIsNotNull(canonicalPath, "dstDirCanonicalPath");
        if (!StringsKt.startsWith$default(canonicalPath2, canonicalPath, false, 2, (Object) null)) {
            throw new IOException("Found Zip Path Traversal Vulnerability with " + canonicalPath);
        }
    }
}
