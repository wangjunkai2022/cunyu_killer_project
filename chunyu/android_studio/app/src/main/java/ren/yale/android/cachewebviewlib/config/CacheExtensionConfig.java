package ren.yale.android.cachewebviewlib.config;

import android.text.TextUtils;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class CacheExtensionConfig {
    private static HashSet STATIC = new HashSet() { // from class: ren.yale.android.cachewebviewlib.config.CacheExtensionConfig.1
        {
            add("html");
            add("htm");
            add("js");
            add("ico");
            add("css");
            add("png");
            add("jpg");
            add("jpeg");
            add("gif");
            add("bmp");
            add("ttf");
            add("woff");
            add("woff2");
            add("otf");
            add("eot");
            add("svg");
            add("xml");
            add("swf");
            add("txt");
            add("text");
            add("conf");
            add("webp");
        }
    };
    private static HashSet NO_CACH = new HashSet() { // from class: ren.yale.android.cachewebviewlib.config.CacheExtensionConfig.2
        {
            add("mp4");
            add("mp3");
            add("ogg");
            add("avi");
            add("wmv");
            add("flv");
            add("rmvb");
            add("3gp");
        }
    };
    private HashSet statics = new HashSet(STATIC);
    private HashSet no_cache = new HashSet(NO_CACH);

    public static void addGlobalExtension(String str) {
        add(STATIC, str);
    }

    public static void removeGlobalExtension(String str) {
        remove(STATIC, str);
    }

    private static void add(HashSet hashSet, String str) {
        if (!TextUtils.isEmpty(str)) {
            hashSet.add(str.replace(".", "").toLowerCase().trim());
        }
    }

    private static void remove(HashSet hashSet, String str) {
        if (!TextUtils.isEmpty(str)) {
            hashSet.remove(str.replace(".", "").toLowerCase().trim());
        }
    }

    public boolean isMedia(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (NO_CACH.contains(str)) {
            return true;
        }
        return this.no_cache.contains(str.toLowerCase().trim());
    }

    public boolean canCache(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String trim = str.toLowerCase().trim();
        if (STATIC.contains(trim)) {
            return true;
        }
        return this.statics.contains(trim);
    }

    public CacheExtensionConfig addExtension(String str) {
        add(this.statics, str);
        return this;
    }

    public CacheExtensionConfig removeExtension(String str) {
        remove(this.statics, str);
        return this;
    }

    public boolean isHtml(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.toLowerCase().contains("html") || str.toLowerCase().contains("htm")) {
            return true;
        }
        return false;
    }

    public void clearAll() {
        clearDiskExtension();
    }

    public void clearDiskExtension() {
        this.statics.clear();
    }
}
