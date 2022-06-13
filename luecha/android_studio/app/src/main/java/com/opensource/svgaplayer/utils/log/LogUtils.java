package com.opensource.svgaplayer.utils.log;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LogUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J \u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0018\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0018\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/opensource/svgaplayer/utils/log/LogUtils;", "", "()V", "TAG", "", "debug", "", "tag", "msg", "error", "", "info", "verbose", "warn", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class LogUtils {
    public static final LogUtils INSTANCE = new LogUtils();
    private static final String TAG = "SVGALog";

    private LogUtils() {
    }

    public static /* synthetic */ void verbose$default(LogUtils logUtils, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.verbose(str, str2);
    }

    public final void verbose(String str, String str2) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.verbose(str, str2);
        }
    }

    public static /* synthetic */ void info$default(LogUtils logUtils, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.info(str, str2);
    }

    public final void info(String str, String str2) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.info(str, str2);
        }
    }

    public static /* synthetic */ void debug$default(LogUtils logUtils, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.debug(str, str2);
    }

    public final void debug(String str, String str2) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.debug(str, str2);
        }
    }

    public static /* synthetic */ void warn$default(LogUtils logUtils, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.warn(str, str2);
    }

    public final void warn(String str, String str2) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.warn(str, str2);
        }
    }

    public static /* synthetic */ void error$default(LogUtils logUtils, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.error(str, str2);
    }

    public final void error(String str, String str2) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.error(str, str2, null);
        }
    }

    public final void error(String str, Throwable th) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(th, "error");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.error(str, th.getMessage(), th);
        }
    }

    public static /* synthetic */ void error$default(LogUtils logUtils, String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "SVGALog";
        }
        logUtils.error(str, str2, th);
    }

    public final void error(String str, String str2, Throwable th) {
        ILogger sVGALogger;
        Intrinsics.checkParameterIsNotNull(str, "tag");
        Intrinsics.checkParameterIsNotNull(str2, "msg");
        Intrinsics.checkParameterIsNotNull(th, "error");
        if (SVGALogger.INSTANCE.isLogEnabled() && (sVGALogger = SVGALogger.INSTANCE.getSVGALogger()) != null) {
            sVGALogger.error(str, str2, th);
        }
    }
}
