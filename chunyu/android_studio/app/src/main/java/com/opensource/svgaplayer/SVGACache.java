package com.opensource.svgaplayer;

import android.content.Context;
import com.google.android.gms.common.internal.ImagesContract;
import com.opensource.svgaplayer.utils.log.LogUtils;
import com.umeng.analytics.pro.c;
import java.io.File;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.commons.io.IOUtils;

/* compiled from: SVGACache.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001 B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0015J\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001c\u001a\u00020\u001aJ\u0010\u0010\u001d\u001a\u00020\u00152\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0018\u0010\u001d\u001a\u00020\u00152\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00048BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/opensource/svgaplayer/SVGACache;", "", "()V", "TAG", "", "cacheDir", "getCacheDir", "()Ljava/lang/String;", "type", "Lcom/opensource/svgaplayer/SVGACache$Type;", "buildAudioFile", "Ljava/io/File;", "audio", "buildCacheDir", "cacheKey", "buildCacheKey", ImagesContract.URL, "Ljava/net/URL;", "str", "buildSvgaFile", "clearCache", "", "clearDir", "path", "clearDir$com_opensource_svgaplayer", "isCached", "", "isDefaultCache", "isInitialized", "onCreate", c.R, "Landroid/content/Context;", "Type", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class SVGACache {
    private static final String TAG = "SVGACache";
    public static final SVGACache INSTANCE = new SVGACache();
    private static Type type = Type.DEFAULT;
    private static String cacheDir = "/";

    /* compiled from: SVGACache.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/opensource/svgaplayer/SVGACache$Type;", "", "(Ljava/lang/String;I)V", "DEFAULT", "FILE", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes2.dex */
    public enum Type {
        DEFAULT,
        FILE
    }

    private SVGACache() {
    }

    public final String getCacheDir() {
        if (!Intrinsics.areEqual(cacheDir, "/")) {
            File file = new File(cacheDir);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return cacheDir;
    }

    public final void onCreate(Context context) {
        onCreate(context, Type.DEFAULT);
    }

    public final void onCreate(Context context, Type type2) {
        Intrinsics.checkParameterIsNotNull(type2, "type");
        if (!isInitialized() && context != null) {
            StringBuilder sb = new StringBuilder();
            File cacheDir2 = context.getCacheDir();
            Intrinsics.checkExpressionValueIsNotNull(cacheDir2, "context.cacheDir");
            sb.append(cacheDir2.getAbsolutePath());
            sb.append("/svga/");
            cacheDir = sb.toString();
            File file = new File(getCacheDir());
            if (!(!file.exists())) {
                file = null;
            }
            if (file != null) {
                file.mkdirs();
            }
            type = type2;
        }
    }

    public final void clearCache() {
        if (!isInitialized()) {
            LogUtils.INSTANCE.error(TAG, "SVGACache is not init!");
        } else {
            SVGAParser.Companion.getThreadPoolExecutor$com_opensource_svgaplayer().execute(SVGACache$clearCache$1.INSTANCE);
        }
    }

    public final void clearDir$com_opensource_svgaplayer(String str) {
        File[] listFiles;
        Intrinsics.checkParameterIsNotNull(str, "path");
        try {
            File file = new File(str);
            if (!file.exists()) {
                file = null;
            }
            if (!(file == null || (listFiles = file.listFiles()) == null)) {
                for (File file2 : listFiles) {
                    if (file2.exists()) {
                        Intrinsics.checkExpressionValueIsNotNull(file2, "file");
                        if (file2.isDirectory()) {
                            SVGACache sVGACache = INSTANCE;
                            String absolutePath = file2.getAbsolutePath();
                            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
                            sVGACache.clearDir$com_opensource_svgaplayer(absolutePath);
                        }
                        file2.delete();
                    }
                }
            }
        } catch (Exception e) {
            LogUtils.INSTANCE.error(TAG, "Clear svga cache path: " + str + " fail", e);
        }
    }

    public final boolean isInitialized() {
        return (Intrinsics.areEqual("/", getCacheDir()) ^ true) && new File(getCacheDir()).exists();
    }

    public final boolean isDefaultCache() {
        return type == Type.DEFAULT;
    }

    public final boolean isCached(String str) {
        File file;
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        if (isDefaultCache()) {
            file = buildCacheDir(str);
        } else {
            file = buildSvgaFile(str);
        }
        return file.exists();
    }

    public final String buildCacheKey(String str) {
        Intrinsics.checkParameterIsNotNull(str, "str");
        MessageDigest instance = MessageDigest.getInstance("MD5");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(charsetName)");
        byte[] bytes = str.getBytes(forName);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        instance.update(bytes);
        byte[] digest = instance.digest();
        String str2 = "";
        for (byte b : digest) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] objArr = {Byte.valueOf(b)};
            String format = String.format("%02x", Arrays.copyOf(objArr, objArr.length));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            sb.append(format);
            str2 = sb.toString();
        }
        return str2;
    }

    public final String buildCacheKey(URL url) {
        Intrinsics.checkParameterIsNotNull(url, ImagesContract.URL);
        String url2 = url.toString();
        Intrinsics.checkExpressionValueIsNotNull(url2, "url.toString()");
        return buildCacheKey(url2);
    }

    public final File buildCacheDir(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        return new File(getCacheDir() + str + IOUtils.DIR_SEPARATOR_UNIX);
    }

    public final File buildSvgaFile(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cacheKey");
        return new File(getCacheDir() + str + ".svga");
    }

    public final File buildAudioFile(String str) {
        Intrinsics.checkParameterIsNotNull(str, "audio");
        return new File(getCacheDir() + str + ".mp3");
    }
}
