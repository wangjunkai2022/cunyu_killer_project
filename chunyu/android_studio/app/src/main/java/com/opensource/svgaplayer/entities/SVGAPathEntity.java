package com.opensource.svgaplayer.entities;

import android.graphics.Path;
import com.opensource.svgaplayer.BuildConfig;
import com.tekartik.sqflite.Constant;
import com.umeng.analytics.pro.ai;
import java.util.StringTokenizer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: SVGAPathEntity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J \u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "", "originValue", "", "(Ljava/lang/String;)V", "cachedPath", "Landroid/graphics/Path;", "replacedValue", "buildPath", "", "toPath", "operate", "finalPath", Constant.PARAM_METHOD, "args", "Ljava/util/StringTokenizer;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class SVGAPathEntity {
    private Path cachedPath;
    private final String replacedValue;

    public SVGAPathEntity(String str) {
        Intrinsics.checkParameterIsNotNull(str, "originValue");
        this.replacedValue = StringsKt.contains$default((CharSequence) str, (CharSequence) ",", false, 2, (Object) null) ? StringsKt.replace$default(str, ",", " ", false, 4, (Object) null) : str;
    }

    public final void buildPath(Path path) {
        Intrinsics.checkParameterIsNotNull(path, "toPath");
        Path path2 = this.cachedPath;
        if (path2 != null) {
            path.set(path2);
            return;
        }
        Path path3 = new Path();
        StringTokenizer stringTokenizer = new StringTokenizer(this.replacedValue, "MLHVCSQRAZmlhvcsqraz", true);
        String str = "";
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            Intrinsics.checkExpressionValueIsNotNull(nextToken, "segment");
            if (!(nextToken.length() == 0)) {
                if (SVGAPathEntityKt.VALID_METHODS.contains(nextToken)) {
                    if (Intrinsics.areEqual(nextToken, "Z") || Intrinsics.areEqual(nextToken, ai.aB)) {
                        operate(path3, nextToken, new StringTokenizer("", ""));
                    }
                    str = nextToken;
                } else {
                    operate(path3, str, new StringTokenizer(nextToken, " "));
                }
            }
        }
        this.cachedPath = path3;
        path.set(path3);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0121  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final void operate(android.graphics.Path r16, java.lang.String r17, java.util.StringTokenizer r18) {
        /*
        // Method dump skipped, instructions count: 301
        */
        throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.entities.SVGAPathEntity.operate(android.graphics.Path, java.lang.String, java.util.StringTokenizer):void");
    }
}
