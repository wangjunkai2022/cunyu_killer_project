package io.flutter.plugins.pathprovider;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.ThreadFactoryBuilder;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMethodCodec;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import io.flutter.util.PathUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class PathProviderPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    static final String TAG = "PathProviderPlugin";
    private MethodChannel channel;
    private Context context;
    private PathProviderImpl impl;

    /* loaded from: classes2.dex */
    public interface PathProviderImpl {
        void getApplicationDocumentsDirectory(MethodChannel.Result result);

        void getApplicationSupportDirectory(MethodChannel.Result result);

        void getExternalCacheDirectories(MethodChannel.Result result);

        void getExternalStorageDirectories(String str, MethodChannel.Result result);

        void getStorageDirectory(MethodChannel.Result result);

        void getTemporaryDirectory(MethodChannel.Result result);
    }

    /* loaded from: classes2.dex */
    public class PathProviderPlatformThread implements PathProviderImpl {
        private final Executor uiThreadExecutor = new UiThreadExecutor();
        private final Executor executor = Executors.newSingleThreadExecutor(new ThreadFactoryBuilder().setNameFormat("path-provider-background-%d").setPriority(5).build());

        private PathProviderPlatformThread() {
            PathProviderPlugin.this = r2;
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getTemporaryDirectory(MethodChannel.Result result) {
            executeInBackground(new Callable() { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$ac0USwu71pc6pp3o3hRW8FXw-Mw
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getTemporaryDirectory$0$PathProviderPlugin$PathProviderPlatformThread();
                }
            }, result);
        }

        public /* synthetic */ String lambda$getTemporaryDirectory$0$PathProviderPlugin$PathProviderPlatformThread() throws Exception {
            return PathProviderPlugin.this.getPathProviderTemporaryDirectory();
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getApplicationDocumentsDirectory(MethodChannel.Result result) {
            executeInBackground(new Callable() { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$aSmV_rxQB1wn5pIqo6qTigJTfH4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getApplicationDocumentsDirectory$1$PathProviderPlugin$PathProviderPlatformThread();
                }
            }, result);
        }

        public /* synthetic */ String lambda$getApplicationDocumentsDirectory$1$PathProviderPlugin$PathProviderPlatformThread() throws Exception {
            return PathProviderPlugin.this.getPathProviderApplicationDocumentsDirectory();
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getStorageDirectory(MethodChannel.Result result) {
            executeInBackground(new Callable() { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dASIWzFXNADAx_APeKpW1TB5mds
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getStorageDirectory$2$PathProviderPlugin$PathProviderPlatformThread();
                }
            }, result);
        }

        public /* synthetic */ String lambda$getStorageDirectory$2$PathProviderPlugin$PathProviderPlatformThread() throws Exception {
            return PathProviderPlugin.this.getPathProviderStorageDirectory();
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getExternalCacheDirectories(MethodChannel.Result result) {
            executeInBackground(new Callable() { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$4MPiPxTFI9pHzSREjzIJDihoSpM
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getExternalCacheDirectories$3$PathProviderPlugin$PathProviderPlatformThread();
                }
            }, result);
        }

        public /* synthetic */ List lambda$getExternalCacheDirectories$3$PathProviderPlugin$PathProviderPlatformThread() throws Exception {
            return PathProviderPlugin.this.getPathProviderExternalCacheDirectories();
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getExternalStorageDirectories(String str, MethodChannel.Result result) {
            executeInBackground(new Callable(str) { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk
                private final /* synthetic */ String f$1;

                {
                    this.f$1 = r2;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getExternalStorageDirectories$4$PathProviderPlugin$PathProviderPlatformThread(this.f$1);
                }
            }, result);
        }

        public /* synthetic */ List lambda$getExternalStorageDirectories$4$PathProviderPlugin$PathProviderPlatformThread(String str) throws Exception {
            return PathProviderPlugin.this.getPathProviderExternalStorageDirectories(str);
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getApplicationSupportDirectory(MethodChannel.Result result) {
            executeInBackground(new Callable() { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dPwrZZXU4pTwG0ZAR5sv9lBeRjQ
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PathProviderPlugin.PathProviderPlatformThread.this.lambda$getApplicationSupportDirectory$5$PathProviderPlugin$PathProviderPlatformThread();
                }
            }, result);
        }

        public /* synthetic */ String lambda$getApplicationSupportDirectory$5$PathProviderPlugin$PathProviderPlatformThread() throws Exception {
            return PathProviderPlugin.this.getApplicationSupportDirectory();
        }

        private <T> void executeInBackground(Callable<T> callable, final MethodChannel.Result result) {
            SettableFuture create = SettableFuture.create();
            Futures.addCallback(create, new FutureCallback<T>() { // from class: io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderPlatformThread.1
                @Override // com.google.common.util.concurrent.FutureCallback
                public void onSuccess(T t) {
                    result.success(t);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public void onFailure(Throwable th) {
                    result.error(th.getClass().getName(), th.getMessage(), null);
                }
            }, this.uiThreadExecutor);
            this.executor.execute(new Runnable(callable) { // from class: io.flutter.plugins.pathprovider.-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM
                private final /* synthetic */ Callable f$1;

                {
                    this.f$1 = r2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    PathProviderPlugin.PathProviderPlatformThread.lambda$executeInBackground$6(SettableFuture.this, this.f$1);
                }
            });
        }

        public static /* synthetic */ void lambda$executeInBackground$6(SettableFuture settableFuture, Callable callable) {
            try {
                settableFuture.set(callable.call());
            } catch (Throwable th) {
                settableFuture.setException(th);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class PathProviderBackgroundThread implements PathProviderImpl {
        private PathProviderBackgroundThread() {
            PathProviderPlugin.this = r1;
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getTemporaryDirectory(MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getPathProviderTemporaryDirectory());
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getApplicationDocumentsDirectory(MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getPathProviderApplicationDocumentsDirectory());
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getStorageDirectory(MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getPathProviderStorageDirectory());
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getExternalCacheDirectories(MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getPathProviderExternalCacheDirectories());
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getExternalStorageDirectories(String str, MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getPathProviderExternalStorageDirectories(str));
        }

        @Override // io.flutter.plugins.pathprovider.PathProviderPlugin.PathProviderImpl
        public void getApplicationSupportDirectory(MethodChannel.Result result) {
            result.success(PathProviderPlugin.this.getApplicationSupportDirectory());
        }
    }

    private void setup(BinaryMessenger binaryMessenger, Context context) {
        try {
            this.channel = new MethodChannel(binaryMessenger, "plugins.flutter.io/path_provider_android", StandardMethodCodec.INSTANCE, binaryMessenger.makeBackgroundTaskQueue());
            this.impl = new PathProviderBackgroundThread();
        } catch (Exception e) {
            Log.e(TAG, "Received exception while setting up PathProviderPlugin", e);
        }
        this.context = context;
        this.channel.setMethodCallHandler(this);
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new PathProviderPlugin().setup(registrar.messenger(), registrar.context());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        setup(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel.setMethodCallHandler(null);
        this.channel = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1832373352:
                if (str.equals("getApplicationSupportDirectory")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1208689078:
                if (str.equals("getExternalCacheDirectories")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 299667825:
                if (str.equals("getExternalStorageDirectories")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1200320591:
                if (str.equals("getApplicationDocumentsDirectory")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1252916648:
                if (str.equals("getStorageDirectory")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1711844626:
                if (str.equals("getTemporaryDirectory")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            this.impl.getTemporaryDirectory(result);
        } else if (c == 1) {
            this.impl.getApplicationDocumentsDirectory(result);
        } else if (c == 2) {
            this.impl.getStorageDirectory(result);
        } else if (c == 3) {
            this.impl.getExternalCacheDirectories(result);
        } else if (c == 4) {
            this.impl.getExternalStorageDirectories(StorageDirectoryMapper.androidType((Integer) methodCall.argument("type")), result);
        } else if (c != 5) {
            result.notImplemented();
        } else {
            this.impl.getApplicationSupportDirectory(result);
        }
    }

    public String getPathProviderTemporaryDirectory() {
        return this.context.getCacheDir().getPath();
    }

    public String getApplicationSupportDirectory() {
        return PathUtils.getFilesDir(this.context);
    }

    public String getPathProviderApplicationDocumentsDirectory() {
        return PathUtils.getDataDirectory(this.context);
    }

    public String getPathProviderStorageDirectory() {
        File externalFilesDir = this.context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        return externalFilesDir.getAbsolutePath();
    }

    public List<String> getPathProviderExternalCacheDirectories() {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19) {
            File[] externalCacheDirs = this.context.getExternalCacheDirs();
            for (File file : externalCacheDirs) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalCacheDir = this.context.getExternalCacheDir();
            if (externalCacheDir != null) {
                arrayList.add(externalCacheDir.getAbsolutePath());
            }
        }
        return arrayList;
    }

    public List<String> getPathProviderExternalStorageDirectories(String str) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19) {
            File[] externalFilesDirs = this.context.getExternalFilesDirs(str);
            for (File file : externalFilesDirs) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalFilesDir = this.context.getExternalFilesDir(str);
            if (externalFilesDir != null) {
                arrayList.add(externalFilesDir.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* loaded from: classes2.dex */
    private static class UiThreadExecutor implements Executor {
        private final Handler handler;

        private UiThreadExecutor() {
            this.handler = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.handler.post(runnable);
        }
    }
}
