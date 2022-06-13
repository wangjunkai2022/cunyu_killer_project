package io.flutter.embedding.engine.loader;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Build;
import io.flutter.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ResourceExtractor {
    private static final String[] SUPPORTED_ABIS = getSupportedAbis();
    private static final String TAG = "ResourceExtractor";
    private static final String TIMESTAMP_PREFIX = "res_timestamp-";
    private final AssetManager mAssetManager;
    private final String mDataDirPath;
    private ExtractTask mExtractTask;
    private final PackageManager mPackageManager;
    private final String mPackageName;
    private final HashSet<String> mResources = new HashSet<>();

    static long getVersionCode(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return (long) packageInfo.versionCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class ExtractTask extends AsyncTask<Void, Void, Void> {
        private final AssetManager mAssetManager;
        private final String mDataDirPath;
        private final PackageManager mPackageManager;
        private final String mPackageName;
        private final HashSet<String> mResources;

        ExtractTask(String str, HashSet<String> hashSet, String str2, PackageManager packageManager, AssetManager assetManager) {
            this.mDataDirPath = str;
            this.mResources = hashSet;
            this.mAssetManager = assetManager;
            this.mPackageName = str2;
            this.mPackageManager = packageManager;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            File file = new File(this.mDataDirPath);
            String checkTimestamp = ResourceExtractor.checkTimestamp(file, this.mPackageManager, this.mPackageName);
            if (checkTimestamp == null) {
                return null;
            }
            ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
            if (extractAPK(file) && checkTimestamp != null) {
                try {
                    new File(file, checkTimestamp).createNewFile();
                } catch (IOException unused) {
                    Log.w("ResourceExtractor", "Failed to write resource timestamp");
                }
            }
            return null;
        }

        private boolean extractAPK(File file) {
            Iterator<String> it = this.mResources.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    String str = "assets/" + next;
                    File file2 = new File(file, next);
                    if (!file2.exists()) {
                        if (file2.getParentFile() != null) {
                            file2.getParentFile().mkdirs();
                        }
                        InputStream open = this.mAssetManager.open(next);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            ResourceExtractor.copy(open, fileOutputStream);
                            fileOutputStream.close();
                            if (open != null) {
                                open.close();
                            }
                        } catch (Throwable th) {
                            if (open != null) {
                                try {
                                    open.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                            break;
                        }
                    }
                } catch (FileNotFoundException unused) {
                } catch (IOException e) {
                    Log.w("ResourceExtractor", "Exception unpacking resources: " + e.getMessage());
                    ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
                    return false;
                }
            }
            return true;
        }
    }

    ResourceExtractor(String str, String str2, PackageManager packageManager, AssetManager assetManager) {
        this.mDataDirPath = str;
        this.mPackageName = str2;
        this.mPackageManager = packageManager;
        this.mAssetManager = assetManager;
    }

    ResourceExtractor addResource(String str) {
        this.mResources.add(str);
        return this;
    }

    ResourceExtractor addResources(Collection<String> collection) {
        this.mResources.addAll(collection);
        return this;
    }

    ResourceExtractor start() {
        this.mExtractTask = new ExtractTask(this.mDataDirPath, this.mResources, this.mPackageName, this.mPackageManager, this.mAssetManager);
        this.mExtractTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void waitForCompletion() {
        ExtractTask extractTask = this.mExtractTask;
        if (extractTask != null) {
            try {
                extractTask.get();
            } catch (InterruptedException | CancellationException | ExecutionException unused) {
                deleteFiles(this.mDataDirPath, this.mResources);
            }
        }
    }

    private static String[] getExistingTimestamps(File file) {
        return file.list(new FilenameFilter() { // from class: io.flutter.embedding.engine.loader.ResourceExtractor.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                return str.startsWith("res_timestamp-");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteFiles(String str, HashSet<String> hashSet) {
        File file = new File(str);
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            File file2 = new File(file, it.next());
            if (file2.exists()) {
                file2.delete();
            }
        }
        String[] existingTimestamps = getExistingTimestamps(file);
        if (existingTimestamps != null) {
            for (String str2 : existingTimestamps) {
                new File(file, str2).delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String checkTimestamp(File file, PackageManager packageManager, String str) {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return "res_timestamp-";
            }
            String str2 = "res_timestamp-" + getVersionCode(packageInfo) + "-" + packageInfo.lastUpdateTime;
            String[] existingTimestamps = getExistingTimestamps(file);
            if (existingTimestamps == null) {
                return str2;
            }
            int length = existingTimestamps.length;
            if (existingTimestamps.length != 1 || !str2.equals(existingTimestamps[0])) {
                return str2;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return "res_timestamp-";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static String[] getSupportedAbis() {
        if (Build.VERSION.SDK_INT >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(Build.CPU_ABI, Build.CPU_ABI2));
        arrayList.removeAll(Arrays.asList(null, ""));
        return (String[]) arrayList.toArray(new String[0]);
    }
}
