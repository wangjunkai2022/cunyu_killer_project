package top.kikt.flutter_image_editor.core;

import android.os.Handler;
import android.os.Looper;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ResultHandler.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0001J&\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0001R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltop/kikt/flutter_image_editor/core/ResultHandler;", "", Constant.PARAM_RESULT, "Lio/flutter/plugin/common/MethodChannel$Result;", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "notImplemented", "", "reply", "any", "replyError", Constant.PARAM_ERROR_CODE, "", Constant.PARAM_ERROR_MESSAGE, "obj", "Companion", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ResultHandler {
    public static final Companion Companion = new Companion(null);
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private MethodChannel.Result result;

    public ResultHandler(MethodChannel.Result result) {
        this.result = result;
    }

    /* compiled from: ResultHandler.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Ltop/kikt/flutter_image_editor/core/ResultHandler$Companion;", "", "()V", "handler", "Landroid/os/Handler;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void reply(Object obj) {
        MethodChannel.Result result = this.result;
        this.result = null;
        handler.post(new Runnable(obj) { // from class: top.kikt.flutter_image_editor.core.-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM
            private final /* synthetic */ Object f$1;

            {
                this.f$1 = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.m1687reply$lambda0(MethodChannel.Result.this, this.f$1);
            }
        });
    }

    /* renamed from: reply$lambda-0 */
    public static final void m1687reply$lambda0(MethodChannel.Result result, Object obj) {
        if (result != null) {
            result.success(obj);
        }
    }

    public static /* synthetic */ void replyError$default(ResultHandler resultHandler, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        resultHandler.replyError(str, str2, obj);
    }

    public final void replyError(String str, String str2, Object obj) {
        Intrinsics.checkNotNullParameter(str, Constant.PARAM_ERROR_CODE);
        MethodChannel.Result result = this.result;
        this.result = null;
        handler.post(new Runnable(str, str2, obj) { // from class: top.kikt.flutter_image_editor.core.-$$Lambda$ResultHandler$JzaY0UilUK57VCnPtTAYkNqtlwg
            private final /* synthetic */ String f$1;
            private final /* synthetic */ String f$2;
            private final /* synthetic */ Object f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.m1688replyError$lambda1(MethodChannel.Result.this, this.f$1, this.f$2, this.f$3);
            }
        });
    }

    /* renamed from: replyError$lambda-1 */
    public static final void m1688replyError$lambda1(MethodChannel.Result result, String str, String str2, Object obj) {
        Intrinsics.checkNotNullParameter(str, "$code");
        if (result != null) {
            result.error(str, str2, obj);
        }
    }

    public final void notImplemented() {
        handler.post(new Runnable() { // from class: top.kikt.flutter_image_editor.core.-$$Lambda$ResultHandler$so7spSauPuSVVza5qKkMawiskSM
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.m1686notImplemented$lambda2(ResultHandler.this);
            }
        });
    }

    /* renamed from: notImplemented$lambda-2 */
    public static final void m1686notImplemented$lambda2(ResultHandler resultHandler) {
        Intrinsics.checkNotNullParameter(resultHandler, "this$0");
        MethodChannel.Result result = resultHandler.result;
        if (result != null) {
            result.notImplemented();
        }
    }
}
