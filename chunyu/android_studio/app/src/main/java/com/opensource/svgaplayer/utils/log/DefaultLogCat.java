package com.opensource.svgaplayer.utils.log;

import android.util.Log;
import com.opensource.svgaplayer.BuildConfig;
import com.tekartik.sqflite.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultLogCat.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J$\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"Lcom/opensource/svgaplayer/utils/log/DefaultLogCat;", "Lcom/opensource/svgaplayer/utils/log/ILogger;", "()V", Constant.METHOD_DEBUG, "", "tag", "", "msg", "error", "", "info", "verbose", "warn", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class DefaultLogCat implements ILogger {
    @Override // com.opensource.svgaplayer.utils.log.ILogger
    public void verbose(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        Log.v(str, str2);
    }

    @Override // com.opensource.svgaplayer.utils.log.ILogger
    public void info(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        Log.i(str, str2);
    }

    @Override // com.opensource.svgaplayer.utils.log.ILogger
    public void debug(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        Log.d(str, str2);
    }

    @Override // com.opensource.svgaplayer.utils.log.ILogger
    public void warn(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        Log.w(str, str2);
    }

    @Override // com.opensource.svgaplayer.utils.log.ILogger
    public void error(String str, String str2, Throwable th) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Log.e(str, str2, th);
    }
}
