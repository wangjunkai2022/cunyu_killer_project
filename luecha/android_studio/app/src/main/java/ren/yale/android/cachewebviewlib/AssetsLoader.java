package ren.yale.android.cachewebviewlib;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class AssetsLoader {
    private static volatile AssetsLoader assetsLoader;
    private CopyOnWriteArraySet<String> mAssetResSet;
    private Context mContext;
    private String mDir = "";
    private boolean mCleared = false;
    private boolean mIsSuffixMod = false;

    AssetsLoader() {
    }

    public static AssetsLoader getInstance() {
        if (assetsLoader == null) {
            synchronized (AssetsLoader.class) {
                if (assetsLoader == null) {
                    assetsLoader = new AssetsLoader();
                }
            }
        }
        return assetsLoader;
    }

    public AssetsLoader isAssetsSuffixMod(boolean z) {
        this.mIsSuffixMod = z;
        return this;
    }

    public AssetsLoader init(Context context) {
        this.mContext = context;
        this.mAssetResSet = new CopyOnWriteArraySet<>();
        this.mCleared = false;
        return this;
    }

    private String getUrlPath(String str) {
        try {
            String path = new URL(str).getPath();
            if (!path.startsWith("/")) {
                return path;
            }
            if (path.length() == 1) {
                return path;
            }
            return path.substring(1);
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return "";
        }
    }

    public InputStream getResByUrl(String str) {
        String urlPath = getUrlPath(str);
        if (TextUtils.isEmpty(urlPath)) {
            return null;
        }
        if (this.mIsSuffixMod) {
            CopyOnWriteArraySet<String> copyOnWriteArraySet = this.mAssetResSet;
            if (copyOnWriteArraySet != null) {
                Iterator<String> it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (urlPath.endsWith(next)) {
                        if (TextUtils.isEmpty(this.mDir)) {
                            return getAssetFileStream(next);
                        }
                        return getAssetFileStream(this.mDir + File.separator + next);
                    }
                }
            }
            return null;
        } else if (TextUtils.isEmpty(this.mDir)) {
            return getAssetFileStream(urlPath);
        } else {
            return getAssetFileStream(this.mDir + File.separator + urlPath);
        }
    }

    public AssetsLoader setDir(String str) {
        this.mDir = str;
        return this;
    }

    public AssetsLoader initData() {
        if (!this.mIsSuffixMod) {
            return this;
        }
        if (this.mAssetResSet.size() == 0) {
            new Thread(new Runnable() { // from class: ren.yale.android.cachewebviewlib.AssetsLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    AssetsLoader assetsLoader2 = AssetsLoader.this;
                    assetsLoader2.initResourceNoneRecursion(assetsLoader2.mDir);
                }
            }).start();
        }
        return this;
    }

    public void clear() {
        this.mCleared = true;
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.mAssetResSet;
        if (copyOnWriteArraySet != null && copyOnWriteArraySet.size() > 0) {
            this.mAssetResSet.clear();
        }
    }

    private void addAssetsFile(String str) {
        int indexOf;
        String str2 = this.mDir + File.separator;
        if (!TextUtils.isEmpty(this.mDir) && (indexOf = str.indexOf(str2)) >= 0) {
            str = str.substring(indexOf + str2.length());
        }
        this.mAssetResSet.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AssetsLoader initResourceNoneRecursion(String str) {
        try {
            LinkedList linkedList = new LinkedList();
            for (String str2 : this.mContext.getAssets().list(str)) {
                String str3 = str + File.separator + str2;
                if (this.mContext.getAssets().list(str3).length == 0) {
                    addAssetsFile(str3);
                } else {
                    linkedList.add(str3);
                }
            }
            while (!linkedList.isEmpty() && !this.mCleared) {
                String str4 = (String) linkedList.removeFirst();
                String[] list = this.mContext.getAssets().list(str4);
                if (list.length == 0) {
                    addAssetsFile(str4);
                } else {
                    for (String str5 : list) {
                        if (this.mContext.getAssets().list(str4 + File.separator + str5).length == 0) {
                            addAssetsFile(str4 + File.separator + str5);
                        } else {
                            linkedList.add(str4 + File.separator + str5);
                        }
                    }
                }
            }
        } catch (IOException unused) {
        }
        return this;
    }

    public InputStream getAssetFileStream(String str) {
        try {
            return this.mContext.getAssets().open(str);
        } catch (IOException unused) {
            return null;
        }
    }
}
