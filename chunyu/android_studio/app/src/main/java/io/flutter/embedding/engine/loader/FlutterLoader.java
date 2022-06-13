package io.flutter.embedding.engine.loader;

import android.app.ActivityManager;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.tracing.Trace;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.util.PathUtils;
import io.flutter.view.VsyncWaiter;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public class FlutterLoader {
    static final String AOT_SHARED_LIBRARY_NAME = "aot-shared-library-name";
    static final String AOT_VMSERVICE_SHARED_LIBRARY_NAME = "aot-vmservice-shared-library-name";
    static final String AUTOMATICALLY_REGISTER_PLUGINS_KEY = "automatically-register-plugins";
    private static final String DEFAULT_KERNEL_BLOB = "kernel_blob.bin";
    private static final String DEFAULT_LIBRARY = "libflutter.so";
    private static final String ENABLE_SKPARAGRAPH_META_DATA_KEY = "io.flutter.embedding.android.EnableSkParagraph";
    static final String FLUTTER_ASSETS_DIR_KEY = "flutter-assets-dir";
    static final String ISOLATE_SNAPSHOT_DATA_KEY = "isolate-snapshot-data";
    private static final String OLD_GEN_HEAP_SIZE_META_DATA_KEY = "io.flutter.embedding.android.OldGenHeapSize";
    static final String SNAPSHOT_ASSET_PATH_KEY = "snapshot-asset-path";
    private static final String TAG = "FlutterLoader";
    private static final String VMSERVICE_SNAPSHOT_LIBRARY = "libvmservice_snapshot.so";
    static final String VM_SNAPSHOT_DATA_KEY = "vm-snapshot-data";
    private static FlutterLoader instance;
    private ExecutorService executorService;
    private FlutterApplicationInfo flutterApplicationInfo;
    private FlutterJNI flutterJNI;
    Future<InitResult> initResultFuture;
    private long initStartTimestampMillis;
    private boolean initialized;
    private Settings settings;

    public ResourceExtractor initResources(Context context) {
        return null;
    }

    public FlutterLoader() {
        this(FlutterInjector.instance().getFlutterJNIFactory().provideFlutterJNI());
    }

    public FlutterLoader(FlutterJNI flutterJNI) {
        this(flutterJNI, FlutterInjector.instance().executorService());
    }

    public FlutterLoader(FlutterJNI flutterJNI, ExecutorService executorService) {
        this.initialized = false;
        this.flutterJNI = flutterJNI;
        this.executorService = executorService;
    }

    /* loaded from: classes2.dex */
    public static class InitResult {
        final String appStoragePath;
        final String dataDirPath;
        final String engineCachesPath;

        private InitResult(String str, String str2, String str3) {
            this.appStoragePath = str;
            this.engineCachesPath = str2;
            this.dataDirPath = str3;
        }
    }

    public void startInitialization(Context context) {
        startInitialization(context, new Settings());
    }

    public void startInitialization(Context context, Settings settings) {
        VsyncWaiter vsyncWaiter;
        if (this.settings == null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Trace.beginSection("FlutterLoader#startInitialization");
                try {
                    final Context applicationContext = context.getApplicationContext();
                    this.settings = settings;
                    this.initStartTimestampMillis = SystemClock.uptimeMillis();
                    this.flutterApplicationInfo = ApplicationInfoLoader.load(applicationContext);
                    if (Build.VERSION.SDK_INT >= 17) {
                        vsyncWaiter = VsyncWaiter.getInstance((DisplayManager) applicationContext.getSystemService("display"), this.flutterJNI);
                    } else {
                        vsyncWaiter = VsyncWaiter.getInstance(((WindowManager) applicationContext.getSystemService("window")).getDefaultDisplay().getRefreshRate(), this.flutterJNI);
                    }
                    vsyncWaiter.init();
                    this.initResultFuture = this.executorService.submit(new Callable<InitResult>() { // from class: io.flutter.embedding.engine.loader.FlutterLoader.1
                        @Override // java.util.concurrent.Callable
                        public InitResult call() {
                            Trace.beginSection("FlutterLoader initTask");
                            try {
                                ResourceExtractor initResources = FlutterLoader.this.initResources(applicationContext);
                                FlutterLoader.this.flutterJNI.loadLibrary();
                                FlutterLoader.this.executorService.execute(new Runnable() { // from class: io.flutter.embedding.engine.loader.-$$Lambda$FlutterLoader$1$PxPBAYXSGwBZpcVVqDCovN-I54s
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        FlutterLoader.AnonymousClass1.this.lambda$call$0$FlutterLoader$1();
                                    }
                                });
                                if (initResources != null) {
                                    initResources.waitForCompletion();
                                }
                                return new InitResult(PathUtils.getFilesDir(applicationContext), PathUtils.getCacheDirectory(applicationContext), PathUtils.getDataDirectory(applicationContext));
                            } finally {
                                Trace.endSection();
                            }
                        }

                        public /* synthetic */ void lambda$call$0$FlutterLoader$1() {
                            FlutterLoader.this.flutterJNI.prefetchDefaultFontManager();
                        }
                    });
                } finally {
                    Trace.endSection();
                }
            } else {
                throw new IllegalStateException("startInitialization must be called on the main thread");
            }
        }
    }

    public void ensureInitializationComplete(Context context, String[] strArr) {
        if (!this.initialized) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
            } else if (this.settings != null) {
                try {
                    Trace.beginSection("FlutterLoader#ensureInitializationComplete");
                    try {
                        InitResult initResult = this.initResultFuture.get();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("--icu-symbol-prefix=_binary_icudtl_dat");
                        arrayList.add("--icu-native-lib-path=" + this.flutterApplicationInfo.nativeLibraryDir + File.separator + DEFAULT_LIBRARY);
                        if (strArr != null) {
                            Collections.addAll(arrayList, strArr);
                        }
                        arrayList.add("--aot-shared-library-name=" + this.flutterApplicationInfo.aotSharedLibraryName);
                        arrayList.add("--aot-shared-library-name=" + this.flutterApplicationInfo.nativeLibraryDir + File.separator + this.flutterApplicationInfo.aotSharedLibraryName);
                        StringBuilder sb = new StringBuilder();
                        sb.append("--cache-dir-path=");
                        sb.append(initResult.engineCachesPath);
                        arrayList.add(sb.toString());
                        if (this.flutterApplicationInfo.domainNetworkPolicy != null) {
                            arrayList.add("--domain-network-policy=" + this.flutterApplicationInfo.domainNetworkPolicy);
                        }
                        if (this.settings.getLogTag() != null) {
                            arrayList.add("--log-tag=" + this.settings.getLogTag());
                        }
                        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                        int i = bundle != null ? bundle.getInt(OLD_GEN_HEAP_SIZE_META_DATA_KEY) : 0;
                        if (i == 0) {
                            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
                            i = (int) ((((double) memoryInfo.totalMem) / 1000000.0d) / 2.0d);
                        }
                        arrayList.add("--old-gen-heap-size=" + i);
                        arrayList.add("--prefetched-default-font-manager");
                        if (bundle != null && bundle.getBoolean(ENABLE_SKPARAGRAPH_META_DATA_KEY)) {
                            arrayList.add("--enable-skparagraph");
                        }
                        this.flutterJNI.init(context, (String[]) arrayList.toArray(new String[0]), null, initResult.appStoragePath, initResult.engineCachesPath, SystemClock.uptimeMillis() - this.initStartTimestampMillis);
                        this.initialized = true;
                    } catch (Exception e) {
                        Log.e(TAG, "Flutter initialization failed.", e);
                        throw new RuntimeException(e);
                    }
                } finally {
                    Trace.endSection();
                }
            } else {
                throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
            }
        }
    }

    public void ensureInitializationCompleteAsync(Context context, String[] strArr, Handler handler, Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
        } else if (this.settings == null) {
            throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
        } else if (this.initialized) {
            handler.post(runnable);
        } else {
            this.executorService.execute(new Runnable(context, strArr, handler, runnable) { // from class: io.flutter.embedding.engine.loader.-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4
                private final /* synthetic */ Context f$1;
                private final /* synthetic */ String[] f$2;
                private final /* synthetic */ Handler f$3;
                private final /* synthetic */ Runnable f$4;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    FlutterLoader.this.lambda$ensureInitializationCompleteAsync$1$FlutterLoader(this.f$1, this.f$2, this.f$3, this.f$4);
                }
            });
        }
    }

    public /* synthetic */ void lambda$ensureInitializationCompleteAsync$1$FlutterLoader(Context context, String[] strArr, Handler handler, Runnable runnable) {
        try {
            this.initResultFuture.get();
            new Handler(Looper.getMainLooper()).post(new Runnable(context, strArr, handler, runnable) { // from class: io.flutter.embedding.engine.loader.-$$Lambda$FlutterLoader$sJgOi8DD4x8wZK_3-bE7cKidO-o
                private final /* synthetic */ Context f$1;
                private final /* synthetic */ String[] f$2;
                private final /* synthetic */ Handler f$3;
                private final /* synthetic */ Runnable f$4;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    FlutterLoader.this.lambda$ensureInitializationCompleteAsync$0$FlutterLoader(this.f$1, this.f$2, this.f$3, this.f$4);
                }
            });
        } catch (Exception e) {
            Log.e(TAG, "Flutter initialization failed.", e);
            throw new RuntimeException(e);
        }
    }

    public /* synthetic */ void lambda$ensureInitializationCompleteAsync$0$FlutterLoader(Context context, String[] strArr, Handler handler, Runnable runnable) {
        ensureInitializationComplete(context.getApplicationContext(), strArr);
        handler.post(runnable);
    }

    public boolean initialized() {
        return this.initialized;
    }

    public String findAppBundlePath() {
        return this.flutterApplicationInfo.flutterAssetsDir;
    }

    public String getLookupKeyForAsset(String str) {
        return fullAssetPathFrom(str);
    }

    public String getLookupKeyForAsset(String str, String str2) {
        return getLookupKeyForAsset("packages" + File.separator + str2 + File.separator + str);
    }

    public boolean automaticallyRegisterPlugins() {
        return this.flutterApplicationInfo.automaticallyRegisterPlugins;
    }

    private String fullAssetPathFrom(String str) {
        return this.flutterApplicationInfo.flutterAssetsDir + File.separator + str;
    }

    /* loaded from: classes2.dex */
    public static class Settings {
        private String logTag;

        public String getLogTag() {
            return this.logTag;
        }

        public void setLogTag(String str) {
            this.logTag = str;
        }
    }
}
