package com.example.flutterimagecompress.util;

import android.content.Context;
import com.umeng.analytics.pro.c;
import java.io.File;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TmpFileUtil.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/example/flutterimagecompress/util/TmpFileUtil;", "", "()V", "createTmpFile", "Ljava/io/File;", c.R, "Landroid/content/Context;", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class TmpFileUtil {
    public static final TmpFileUtil INSTANCE = new TmpFileUtil();

    private TmpFileUtil() {
    }

    public final File createTmpFile(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return new File(context.getCacheDir(), uuid);
    }
}
