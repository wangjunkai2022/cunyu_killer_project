package io.flutter.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import io.flutter.Log;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.util.Preconditions;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterRunArguments;
import io.flutter.view.FlutterView;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Deprecated
/* loaded from: classes5.dex */
public final class FlutterActivityDelegate implements FlutterActivityEvents, FlutterView.Provider, PluginRegistry {
    private static final String SPLASH_SCREEN_META_DATA_KEY = "io.flutter.app.android.SplashScreenUntilFirstFrame";
    private static final String TAG = "FlutterActivityDelegate";
    private static final WindowManager.LayoutParams matchParent = new WindowManager.LayoutParams(-1, -1);
    private final Activity activity;
    private FlutterView flutterView;
    private View launchView;
    private final ViewFactory viewFactory;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface ViewFactory {
        FlutterNativeView createFlutterNativeView();

        FlutterView createFlutterView(Context context);

        boolean retainFlutterNativeView();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    public FlutterActivityDelegate(Activity activity, ViewFactory viewFactory) {
        this.activity = (Activity) Preconditions.checkNotNull(activity);
        this.viewFactory = (ViewFactory) Preconditions.checkNotNull(viewFactory);
    }

    @Override // io.flutter.view.FlutterView.Provider
    public FlutterView getFlutterView() {
        return this.flutterView;
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public boolean hasPlugin(String str) {
        return this.flutterView.getPluginRegistry().hasPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.flutterView.getPluginRegistry().valuePublishedByPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public PluginRegistry.Registrar registrarFor(String str) {
        return this.flutterView.getPluginRegistry().registrarFor(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        return this.flutterView.getPluginRegistry().onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return this.flutterView.getPluginRegistry().onActivityResult(i, i2, intent);
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onCreate(Bundle bundle) {
        String findAppBundlePath;
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = this.activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(1073741824);
            window.getDecorView().setSystemUiVisibility(1280);
        }
        FlutterMain.ensureInitializationComplete(this.activity.getApplicationContext(), getArgsFromIntent(this.activity.getIntent()));
        this.flutterView = this.viewFactory.createFlutterView(this.activity);
        if (this.flutterView == null) {
            this.flutterView = new FlutterView(this.activity, null, this.viewFactory.createFlutterNativeView());
            this.flutterView.setLayoutParams(matchParent);
            this.activity.setContentView(this.flutterView);
            this.launchView = createLaunchView();
            if (this.launchView != null) {
                addLaunchView();
            }
        }
        if (!loadIntent(this.activity.getIntent()) && (findAppBundlePath = FlutterMain.findAppBundlePath()) != null) {
            runBundle(findAppBundlePath);
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onNewIntent(Intent intent) {
        if (!isDebuggable() || !loadIntent(intent)) {
            this.flutterView.getPluginRegistry().onNewIntent(intent);
        }
    }

    private boolean isDebuggable() {
        return (this.activity.getApplicationInfo().flags & 2) != 0;
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onPause() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onPause();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onStart() {
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onStart();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onResume() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            ((FlutterApplication) application).setCurrentActivity(this.activity);
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onStop() {
        this.flutterView.onStop();
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onPostResume() {
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onPostResume();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onDestroy() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            return;
        }
        if (flutterView.getPluginRegistry().onViewDestroy(this.flutterView.getFlutterNativeView()) || this.viewFactory.retainFlutterNativeView()) {
            this.flutterView.detach();
        } else {
            this.flutterView.destroy();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public boolean onBackPressed() {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            return false;
        }
        flutterView.popRoute();
        return true;
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onUserLeaveHint() {
        this.flutterView.getPluginRegistry().onUserLeaveHint();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 10) {
            this.flutterView.onMemoryPressure();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.flutterView.onMemoryPressure();
    }

    private static String[] getArgsFromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra("trace-startup", false)) {
            arrayList.add("--trace-startup");
        }
        if (intent.getBooleanExtra("start-paused", false)) {
            arrayList.add("--start-paused");
        }
        if (intent.getBooleanExtra("disable-service-auth-codes", false)) {
            arrayList.add("--disable-service-auth-codes");
        }
        if (intent.getBooleanExtra("use-test-fonts", false)) {
            arrayList.add("--use-test-fonts");
        }
        if (intent.getBooleanExtra("enable-dart-profiling", false)) {
            arrayList.add("--enable-dart-profiling");
        }
        if (intent.getBooleanExtra("enable-software-rendering", false)) {
            arrayList.add("--enable-software-rendering");
        }
        if (intent.getBooleanExtra("skia-deterministic-rendering", false)) {
            arrayList.add("--skia-deterministic-rendering");
        }
        if (intent.getBooleanExtra("trace-skia", false)) {
            arrayList.add("--trace-skia");
        }
        if (intent.getBooleanExtra("trace-systrace", false)) {
            arrayList.add("--trace-systrace");
        }
        if (intent.getBooleanExtra("dump-skp-on-shader-compilation", false)) {
            arrayList.add("--dump-skp-on-shader-compilation");
        }
        if (intent.getBooleanExtra("cache-sksl", false)) {
            arrayList.add("--cache-sksl");
        }
        if (intent.getBooleanExtra("purge-persistent-cache", false)) {
            arrayList.add("--purge-persistent-cache");
        }
        if (intent.getBooleanExtra("verbose-logging", false)) {
            arrayList.add("--verbose-logging");
        }
        int intExtra = intent.getIntExtra("observatory-port", 0);
        if (intExtra > 0) {
            arrayList.add("--observatory-port=" + Integer.toString(intExtra));
        }
        if (intent.getBooleanExtra("endless-trace-buffer", false)) {
            arrayList.add("--endless-trace-buffer");
        }
        if (intent.hasExtra("dart-flags")) {
            arrayList.add("--dart-flags=" + intent.getStringExtra("dart-flags"));
        }
        if (!arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    private boolean loadIntent(Intent intent) {
        if (!"android.intent.action.RUN".equals(intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra("route");
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = FlutterMain.findAppBundlePath();
        }
        if (stringExtra != null) {
            this.flutterView.setInitialRoute(stringExtra);
        }
        runBundle(dataString);
        return true;
    }

    private void runBundle(String str) {
        if (!this.flutterView.getFlutterNativeView().isApplicationRunning()) {
            FlutterRunArguments flutterRunArguments = new FlutterRunArguments();
            flutterRunArguments.bundlePath = str;
            flutterRunArguments.entrypoint = "main";
            this.flutterView.runFromBundle(flutterRunArguments);
        }
    }

    private View createLaunchView() {
        Drawable launchScreenDrawableFromActivityTheme;
        if (!showSplashScreenUntilFirstFrame().booleanValue() || (launchScreenDrawableFromActivityTheme = getLaunchScreenDrawableFromActivityTheme()) == null) {
            return null;
        }
        View view = new View(this.activity);
        view.setLayoutParams(matchParent);
        view.setBackground(launchScreenDrawableFromActivityTheme);
        return view;
    }

    private Drawable getLaunchScreenDrawableFromActivityTheme() {
        TypedValue typedValue = new TypedValue();
        if (!this.activity.getTheme().resolveAttribute(16842836, typedValue, true) || typedValue.resourceId == 0) {
            return null;
        }
        try {
            return this.activity.getResources().getDrawable(typedValue.resourceId);
        } catch (Resources.NotFoundException unused) {
            Log.e("FlutterActivityDelegate", "Referenced launch screen windowBackground resource does not exist");
            return null;
        }
    }

    private Boolean showSplashScreenUntilFirstFrame() {
        try {
            Bundle bundle = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), 128).metaData;
            return Boolean.valueOf(bundle != null && bundle.getBoolean("io.flutter.app.android.SplashScreenUntilFirstFrame"));
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private void addLaunchView() {
        View view = this.launchView;
        if (view != null) {
            this.activity.addContentView(view, matchParent);
            this.flutterView.addFirstFrameListener(new FlutterView.FirstFrameListener() { // from class: io.flutter.app.FlutterActivityDelegate.1
                @Override // io.flutter.view.FlutterView.FirstFrameListener
                public void onFirstFrame() {
                    FlutterActivityDelegate.this.launchView.animate().alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: io.flutter.app.FlutterActivityDelegate.1.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ((ViewGroup) FlutterActivityDelegate.this.launchView.getParent()).removeView(FlutterActivityDelegate.this.launchView);
                            FlutterActivityDelegate.this.launchView = null;
                        }
                    });
                    FlutterActivityDelegate.this.flutterView.removeFirstFrameListener(this);
                }
            });
            this.activity.setTheme(16973833);
        }
    }
}
