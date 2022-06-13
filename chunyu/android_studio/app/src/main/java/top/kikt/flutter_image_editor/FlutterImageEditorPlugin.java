package top.kikt.flutter_image_editor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.exifinterface.media.ExifInterface;
import com.tekartik.sqflite.Constant;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.io.FilenameUtils;
import top.kikt.flutter_image_editor.common.font.FontUtils;
import top.kikt.flutter_image_editor.core.BitmapWrapper;
import top.kikt.flutter_image_editor.core.ImageHandler;
import top.kikt.flutter_image_editor.core.ImageMerger;
import top.kikt.flutter_image_editor.core.ResultHandler;
import top.kikt.flutter_image_editor.error.BitmapDecodeException;
import top.kikt.flutter_image_editor.option.FlipOption;
import top.kikt.flutter_image_editor.option.FormatOption;
import top.kikt.flutter_image_editor.option.MergeOption;
import top.kikt.flutter_image_editor.option.Option;
import top.kikt.flutter_image_editor.util.ConvertUtils;

/* compiled from: FlutterImageEditorPlugin.kt */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0005¢\u0006\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J4\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J \u0010\u0014\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0012\u0010\u0016\u001a\u00020\u00072\b\b\u0001\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\f\u0010#\u001a\u00020\u001e*\u00020\tH\u0002J\f\u0010$\u001a\u00020\u0011*\u00020\tH\u0002J\u000e\u0010%\u001a\u0004\u0018\u00010&*\u00020\tH\u0002J\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(*\u00020\t2\u0006\u0010*\u001a\u00020\u001eH\u0002J\u000e\u0010+\u001a\u0004\u0018\u00010\u0013*\u00020\tH\u0002J\u000e\u0010,\u001a\u0004\u0018\u00010\u0013*\u00020\tH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "()V", "applicationContext", "Landroid/content/Context;", "handle", "", "call", "Lio/flutter/plugin/common/MethodCall;", "resultHandler", "Ltop/kikt/flutter_image_editor/core/ResultHandler;", "outputMemory", "", "imageHandler", "Ltop/kikt/flutter_image_editor/core/ImageHandler;", "formatOption", "Ltop/kikt/flutter_image_editor/option/FormatOption;", "targetPath", "", "handleMerge", "memory", "onAttachedToEngine", "binding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromEngine", "onMethodCall", Constant.PARAM_RESULT, "Lio/flutter/plugin/common/MethodChannel$Result;", "wrapperBitmapWrapper", "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;", "bitmap", "Landroid/graphics/Bitmap;", "exifInterface", "Landroidx/exifinterface/media/ExifInterface;", "getBitmap", "getFormatOption", "getMemory", "", "getOptions", "", "Ltop/kikt/flutter_image_editor/option/Option;", "bitmapWrapper", "getSrc", "getTarget", "Companion", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FlutterImageEditorPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    public static final Companion Companion = new Companion(null);
    private static final String channelName = "top.kikt/flutter_image_editor";
    private static final ExecutorService threadPool;
    private Context applicationContext;

    /* compiled from: FlutterImageEditorPlugin.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u000e\b\u0004\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0086\bø\u0001\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;", "", "()V", "channelName", "", "threadPool", "Ljava/util/concurrent/ExecutorService;", "getThreadPool", "()Ljava/util/concurrent/ExecutorService;", "runOnBackground", "", "block", "Lkotlin/Function0;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ExecutorService getThreadPool() {
            return FlutterImageEditorPlugin.threadPool;
        }

        public final void runOnBackground(Function0<Unit> function0) {
            Intrinsics.checkNotNullParameter(function0, "block");
            getThreadPool().execute(new FlutterImageEditorPlugin$Companion$runOnBackground$1(function0));
        }
    }

    static {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Intrinsics.checkNotNullExpressionValue(newCachedThreadPool, "newCachedThreadPool()");
        threadPool = newCachedThreadPool;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        this.applicationContext = flutterPluginBinding.getApplicationContext();
        new MethodChannel(flutterPluginBinding.getBinaryMessenger(), channelName).setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        this.applicationContext = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, Constant.PARAM_RESULT);
        Companion.getThreadPool().execute(new Runnable(this, new ResultHandler(result)) { // from class: top.kikt.flutter_image_editor.FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1
            final /* synthetic */ ResultHandler $resultHandler$inlined;
            final /* synthetic */ FlutterImageEditorPlugin this$0;

            {
                this.this$0 = r2;
                this.$resultHandler$inlined = r3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str;
                File cacheDir;
                try {
                    String str2 = MethodCall.this.method;
                    if (str2 != null) {
                        switch (str2.hashCode()) {
                            case -2032648323:
                                if (!str2.equals("memoryToMemory")) {
                                    break;
                                } else {
                                    this.this$0.handle(MethodCall.this, this.$resultHandler$inlined, true);
                                    return;
                                }
                            case -1708153454:
                                if (!str2.equals("registerFont")) {
                                    break;
                                } else {
                                    Object argument = MethodCall.this.argument("path");
                                    Intrinsics.checkNotNull(argument);
                                    Intrinsics.checkNotNullExpressionValue(argument, "call.argument<String>(\"path\")!!");
                                    this.$resultHandler$inlined.reply(FontUtils.registerFont((String) argument));
                                    return;
                                }
                            case -563320815:
                                if (!str2.equals("getCachePath")) {
                                    break;
                                } else {
                                    ResultHandler resultHandler = this.$resultHandler$inlined;
                                    Context context = this.this$0.applicationContext;
                                    if (!(context == null || (cacheDir = context.getCacheDir()) == null)) {
                                        str = cacheDir.getAbsolutePath();
                                        resultHandler.reply(str);
                                        return;
                                    }
                                    str = null;
                                    resultHandler.reply(str);
                                    return;
                                }
                            case 215369967:
                                if (!str2.equals("mergeToFile")) {
                                    break;
                                } else {
                                    this.this$0.handleMerge(MethodCall.this, this.$resultHandler$inlined, false);
                                    return;
                                }
                            case 712763128:
                                if (!str2.equals("memoryToFile")) {
                                    break;
                                } else {
                                    this.this$0.handle(MethodCall.this, this.$resultHandler$inlined, false);
                                    return;
                                }
                            case 1008861108:
                                if (!str2.equals("mergeToMemory")) {
                                    break;
                                } else {
                                    this.this$0.handleMerge(MethodCall.this, this.$resultHandler$inlined, true);
                                    return;
                                }
                            case 1064226040:
                                if (!str2.equals("fileToMemory")) {
                                    break;
                                } else {
                                    this.this$0.handle(MethodCall.this, this.$resultHandler$inlined, true);
                                    return;
                                }
                            case 1824364339:
                                if (!str2.equals("fileToFile")) {
                                    break;
                                } else {
                                    this.this$0.handle(MethodCall.this, this.$resultHandler$inlined, false);
                                    return;
                                }
                        }
                    }
                    this.$resultHandler$inlined.notImplemented();
                } catch (BitmapDecodeException unused) {
                    ResultHandler.replyError$default(this.$resultHandler$inlined, "Decode bitmap error.", null, null, 6, null);
                } catch (Exception e) {
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    PrintWriter printWriter2 = printWriter;
                    th = null;
                    try {
                        PrintWriter printWriter3 = printWriter2;
                        e.printStackTrace(printWriter);
                        ResultHandler resultHandler2 = this.$resultHandler$inlined;
                        String stringBuffer = stringWriter.getBuffer().toString();
                        Intrinsics.checkNotNullExpressionValue(stringBuffer, "writer.buffer.toString()");
                        resultHandler2.replyError(stringBuffer, "", null);
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } finally {
                            CloseableKt.closeFinally(printWriter2, th);
                        }
                    }
                }
            }
        });
    }

    public final void handleMerge(MethodCall methodCall, ResultHandler resultHandler, boolean z) {
        Object argument = methodCall.argument("option");
        if (argument != null) {
            MergeOption mergeOption = new MergeOption((Map) argument);
            byte[] process = new ImageMerger(mergeOption).process();
            if (process == null) {
                ResultHandler.replyError$default(resultHandler, "Cannot merge image.", null, null, 6, null);
            } else if (z) {
                resultHandler.reply(process);
            } else {
                String str = mergeOption.getFormatOption().getFormat() == 1 ? "jpg" : "png";
                Context context = this.applicationContext;
                Intrinsics.checkNotNull(context);
                File cacheDir = context.getCacheDir();
                FilesKt.writeBytes(new File(cacheDir, System.currentTimeMillis() + FilenameUtils.EXTENSION_SEPARATOR + str), process);
                resultHandler.reply(process);
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
        }
    }

    private final String getSrc(MethodCall methodCall) {
        return (String) methodCall.argument("src");
    }

    private final String getTarget(MethodCall methodCall) {
        return (String) methodCall.argument("target");
    }

    private final List<Option> getOptions(MethodCall methodCall, BitmapWrapper bitmapWrapper) {
        Object argument = methodCall.argument(Constant.METHOD_OPTIONS);
        Intrinsics.checkNotNull(argument);
        Intrinsics.checkNotNullExpressionValue(argument, "this.argument<List<Any>>(\"options\")!!");
        return ConvertUtils.INSTANCE.convertMapOption((List) argument, bitmapWrapper);
    }

    private final byte[] getMemory(MethodCall methodCall) {
        return (byte[]) methodCall.argument("image");
    }

    private final BitmapWrapper getBitmap(MethodCall methodCall) {
        String src = getSrc(methodCall);
        if (src != null) {
            Bitmap decodeFile = BitmapFactory.decodeFile(src);
            ExifInterface exifInterface = new ExifInterface(src);
            Intrinsics.checkNotNullExpressionValue(decodeFile, "bitmap");
            return wrapperBitmapWrapper(decodeFile, exifInterface);
        }
        byte[] memory = getMemory(methodCall);
        if (memory != null) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(memory, 0, memory.length);
            ExifInterface exifInterface2 = new ExifInterface(new ByteArrayInputStream(memory));
            Intrinsics.checkNotNullExpressionValue(decodeByteArray, "bitmap");
            return wrapperBitmapWrapper(decodeByteArray, exifInterface2);
        }
        throw new BitmapDecodeException();
    }

    private final BitmapWrapper wrapperBitmapWrapper(Bitmap bitmap, ExifInterface exifInterface) {
        int i = 0;
        FlipOption flipOption = new FlipOption(false, false, 2, null);
        i = 270;
        switch (exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1)) {
            case 2:
                flipOption = new FlipOption(true, false, 2, null);
                break;
            case 3:
                i = 180;
                break;
            case 4:
                flipOption = new FlipOption(false, true, 1, null);
                break;
            case 5:
                flipOption = new FlipOption(true, false, 2, null);
            case 6:
                i = 90;
                break;
            case 7:
                flipOption = new FlipOption(true, false, 2, null);
        }
        return new BitmapWrapper(bitmap, i, flipOption);
    }

    private final FormatOption getFormatOption(MethodCall methodCall) {
        return ConvertUtils.INSTANCE.getFormatOption(methodCall);
    }

    static /* synthetic */ void handle$default(FlutterImageEditorPlugin flutterImageEditorPlugin, ImageHandler imageHandler, FormatOption formatOption, boolean z, ResultHandler resultHandler, String str, int i, Object obj) {
        if ((i & 16) != 0) {
            str = null;
        }
        flutterImageEditorPlugin.handle(imageHandler, formatOption, z, resultHandler, str);
    }

    private final void handle(ImageHandler imageHandler, FormatOption formatOption, boolean z, ResultHandler resultHandler, String str) {
        if (z) {
            resultHandler.reply(imageHandler.outputByteArray(formatOption));
        } else if (str == null) {
            resultHandler.reply(null);
        } else {
            imageHandler.outputToFile(str, formatOption);
            resultHandler.reply(str);
        }
    }

    public final void handle(MethodCall methodCall, ResultHandler resultHandler, boolean z) {
        BitmapWrapper bitmap = getBitmap(methodCall);
        ImageHandler imageHandler = new ImageHandler(bitmap.getBitmap());
        imageHandler.handle(getOptions(methodCall, bitmap));
        handle(imageHandler, getFormatOption(methodCall), z, resultHandler, getTarget(methodCall));
    }
}
