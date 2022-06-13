package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.lifecycle.Lifecycle;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.renderer.FlutterUiDisplayListener;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.util.ViewUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class FlutterActivityAndFragmentDelegate implements ExclusiveAppComponent<Activity> {
    private static final int FLUTTER_SPLASH_VIEW_FALLBACK_ID = 486947586;
    private static final String FRAMEWORK_RESTORATION_BUNDLE_KEY = "framework";
    private static final String PLUGINS_RESTORATION_BUNDLE_KEY = "plugins";
    private static final String TAG = "FlutterActivityAndFragmentDelegate";
    ViewTreeObserver.OnPreDrawListener activePreDrawListener;
    private FlutterEngine flutterEngine;
    private FlutterView flutterView;
    private Host host;
    private boolean isAttached;
    private boolean isFlutterEngineFromHost;
    private boolean isFlutterUiDisplayed;
    private PlatformPlugin platformPlugin;
    private final FlutterUiDisplayListener flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.1
        @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
        public void onFlutterUiDisplayed() {
            FlutterActivityAndFragmentDelegate.this.host.onFlutterUiDisplayed();
            FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed = true;
            FlutterActivityAndFragmentDelegate.this.isFirstFrameRendered = true;
        }

        @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
        public void onFlutterUiNoLongerDisplayed() {
            FlutterActivityAndFragmentDelegate.this.host.onFlutterUiNoLongerDisplayed();
            FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed = false;
        }
    };
    private boolean isFirstFrameRendered = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface Host extends SplashScreenProvider, FlutterEngineProvider, FlutterEngineConfigurator, PlatformPlugin.PlatformPluginDelegate {
        @Override // io.flutter.embedding.android.FlutterEngineConfigurator
        void cleanUpFlutterEngine(FlutterEngine flutterEngine);

        @Override // io.flutter.embedding.android.FlutterEngineConfigurator
        void configureFlutterEngine(FlutterEngine flutterEngine);

        void detachFromFlutterEngine();

        Activity getActivity();

        String getAppBundlePath();

        String getCachedEngineId();

        Context getContext();

        String getDartEntrypointFunctionName();

        FlutterShellArgs getFlutterShellArgs();

        String getInitialRoute();

        @Override // androidx.lifecycle.LifecycleOwner
        Lifecycle getLifecycle();

        RenderMode getRenderMode();

        TransparencyMode getTransparencyMode();

        void onFlutterSurfaceViewCreated(FlutterSurfaceView flutterSurfaceView);

        void onFlutterTextureViewCreated(FlutterTextureView flutterTextureView);

        void onFlutterUiDisplayed();

        void onFlutterUiNoLongerDisplayed();

        @Override // io.flutter.embedding.android.FlutterEngineProvider
        FlutterEngine provideFlutterEngine(Context context);

        PlatformPlugin providePlatformPlugin(Activity activity, FlutterEngine flutterEngine);

        @Override // io.flutter.embedding.android.SplashScreenProvider
        SplashScreen provideSplashScreen();

        boolean shouldAttachEngineToActivity();

        boolean shouldDestroyEngineWithHost();

        boolean shouldHandleDeeplinking();

        boolean shouldRestoreAndSaveState();

        void updateSystemUiOverlays();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterActivityAndFragmentDelegate(Host host) {
        this.host = host;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        this.host = null;
        this.flutterEngine = null;
        this.flutterView = null;
        this.platformPlugin = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterEngine getFlutterEngine() {
        return this.flutterEngine;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFlutterEngineFromHost() {
        return this.isFlutterEngineFromHost;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAttached() {
        return this.isAttached;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAttach(Context context) {
        ensureAlive();
        if (this.flutterEngine == null) {
            setupFlutterEngine();
        }
        if (this.host.shouldAttachEngineToActivity()) {
            Log.v("FlutterActivityAndFragmentDelegate", "Attaching FlutterEngine to the Activity that owns this delegate.");
            this.flutterEngine.getActivityControlSurface().attachToActivity(this, this.host.getLifecycle());
        }
        Host host = this.host;
        this.platformPlugin = host.providePlatformPlugin(host.getActivity(), this.flutterEngine);
        this.host.configureFlutterEngine(this.flutterEngine);
        this.isAttached = true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.flutter.embedding.android.ExclusiveAppComponent
    public Activity getAppComponent() {
        Activity activity = this.host.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new AssertionError("FlutterActivityAndFragmentDelegate's getAppComponent should only be queried after onAttach, when the host's activity should always be non-null");
    }

    void setupFlutterEngine() {
        Log.v("FlutterActivityAndFragmentDelegate", "Setting up FlutterEngine.");
        String cachedEngineId = this.host.getCachedEngineId();
        if (cachedEngineId != null) {
            this.flutterEngine = FlutterEngineCache.getInstance().get(cachedEngineId);
            this.isFlutterEngineFromHost = true;
            if (this.flutterEngine == null) {
                throw new IllegalStateException("The requested cached FlutterEngine did not exist in the FlutterEngineCache: '" + cachedEngineId + "'");
            }
            return;
        }
        Host host = this.host;
        this.flutterEngine = host.provideFlutterEngine(host.getContext());
        if (this.flutterEngine != null) {
            this.isFlutterEngineFromHost = true;
            return;
        }
        Log.v("FlutterActivityAndFragmentDelegate", "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment.");
        this.flutterEngine = new FlutterEngine(this.host.getContext(), this.host.getFlutterShellArgs().toArray(), false, this.host.shouldRestoreAndSaveState());
        this.isFlutterEngineFromHost = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, int i, boolean z) {
        Log.v("FlutterActivityAndFragmentDelegate", "Creating FlutterView.");
        ensureAlive();
        boolean z2 = true;
        if (this.host.getRenderMode() == RenderMode.surface) {
            Context context = this.host.getContext();
            if (this.host.getTransparencyMode() != TransparencyMode.transparent) {
                z2 = false;
            }
            FlutterSurfaceView flutterSurfaceView = new FlutterSurfaceView(context, z2);
            this.host.onFlutterSurfaceViewCreated(flutterSurfaceView);
            this.flutterView = new FlutterView(this.host.getContext(), flutterSurfaceView);
        } else {
            FlutterTextureView flutterTextureView = new FlutterTextureView(this.host.getContext());
            if (this.host.getTransparencyMode() != TransparencyMode.opaque) {
                z2 = false;
            }
            flutterTextureView.setOpaque(z2);
            this.host.onFlutterTextureViewCreated(flutterTextureView);
            this.flutterView = new FlutterView(this.host.getContext(), flutterTextureView);
        }
        this.flutterView.addOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
        Log.v("FlutterActivityAndFragmentDelegate", "Attaching FlutterEngine to FlutterView.");
        this.flutterView.attachToFlutterEngine(this.flutterEngine);
        this.flutterView.setId(i);
        SplashScreen provideSplashScreen = this.host.provideSplashScreen();
        if (provideSplashScreen != null) {
            Log.w("FlutterActivityAndFragmentDelegate", "A splash screen was provided to Flutter, but this is deprecated. See flutter.dev/go/android-splash-migration for migration steps.");
            FlutterSplashView flutterSplashView = new FlutterSplashView(this.host.getContext());
            flutterSplashView.setId(ViewUtils.generateViewId(486947586));
            flutterSplashView.displayFlutterViewWithSplash(this.flutterView, provideSplashScreen);
            return flutterSplashView;
        }
        if (z) {
            delayFirstAndroidViewDraw(this.flutterView);
        }
        return this.flutterView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onRestoreInstanceState(Bundle bundle) {
        byte[] bArr;
        Log.v("FlutterActivityAndFragmentDelegate", "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state.");
        ensureAlive();
        Bundle bundle2 = null;
        if (bundle != null) {
            bundle2 = bundle.getBundle("plugins");
            bArr = bundle.getByteArray("framework");
        } else {
            bArr = null;
        }
        if (this.host.shouldRestoreAndSaveState()) {
            this.flutterEngine.getRestorationChannel().setRestorationData(bArr);
        }
        if (this.host.shouldAttachEngineToActivity()) {
            this.flutterEngine.getActivityControlSurface().onRestoreInstanceState(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onStart() {
        Log.v("FlutterActivityAndFragmentDelegate", "onStart()");
        ensureAlive();
        doInitialFlutterViewRun();
    }

    private void doInitialFlutterViewRun() {
        if (this.host.getCachedEngineId() == null && !this.flutterEngine.getDartExecutor().isExecutingDart()) {
            String initialRoute = this.host.getInitialRoute();
            if (initialRoute == null && (initialRoute = maybeGetInitialRouteFromIntent(this.host.getActivity().getIntent())) == null) {
                initialRoute = "/";
            }
            Log.v("FlutterActivityAndFragmentDelegate", "Executing Dart entrypoint: " + this.host.getDartEntrypointFunctionName() + ", and sending initial route: " + initialRoute);
            this.flutterEngine.getNavigationChannel().setInitialRoute(initialRoute);
            String appBundlePath = this.host.getAppBundlePath();
            if (appBundlePath == null || appBundlePath.isEmpty()) {
                appBundlePath = FlutterInjector.instance().flutterLoader().findAppBundlePath();
            }
            this.flutterEngine.getDartExecutor().executeDartEntrypoint(new DartExecutor.DartEntrypoint(appBundlePath, this.host.getDartEntrypointFunctionName()));
        }
    }

    private String maybeGetInitialRouteFromIntent(Intent intent) {
        Uri data;
        String path;
        if (!this.host.shouldHandleDeeplinking() || (data = intent.getData()) == null || (path = data.getPath()) == null || path.isEmpty()) {
            return null;
        }
        if (data.getQuery() != null && !data.getQuery().isEmpty()) {
            path = path + "?" + data.getQuery();
        }
        if (data.getFragment() == null || data.getFragment().isEmpty()) {
            return path;
        }
        return path + "#" + data.getFragment();
    }

    private void delayFirstAndroidViewDraw(final FlutterView flutterView) {
        if (this.host.getRenderMode() == RenderMode.surface) {
            if (this.activePreDrawListener != null) {
                flutterView.getViewTreeObserver().removeOnPreDrawListener(this.activePreDrawListener);
            }
            this.activePreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed && FlutterActivityAndFragmentDelegate.this.activePreDrawListener != null) {
                        flutterView.getViewTreeObserver().removeOnPreDrawListener(this);
                        FlutterActivityAndFragmentDelegate.this.activePreDrawListener = null;
                    }
                    return FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed;
                }
            };
            flutterView.getViewTreeObserver().addOnPreDrawListener(this.activePreDrawListener);
            return;
        }
        throw new IllegalArgumentException("Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume() {
        Log.v("FlutterActivityAndFragmentDelegate", "onResume()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsResumed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPostResume() {
        Log.v("FlutterActivityAndFragmentDelegate", "onPostResume()");
        ensureAlive();
        if (this.flutterEngine != null) {
            updateSystemUiOverlays();
        } else {
            Log.w("FlutterActivityAndFragmentDelegate", "onPostResume() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSystemUiOverlays() {
        PlatformPlugin platformPlugin = this.platformPlugin;
        if (platformPlugin != null) {
            platformPlugin.updateSystemUiOverlays();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPause() {
        Log.v("FlutterActivityAndFragmentDelegate", "onPause()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsInactive();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onStop() {
        Log.v("FlutterActivityAndFragmentDelegate", "onStop()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsPaused();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroyView() {
        Log.v("FlutterActivityAndFragmentDelegate", "onDestroyView()");
        ensureAlive();
        if (this.activePreDrawListener != null) {
            this.flutterView.getViewTreeObserver().removeOnPreDrawListener(this.activePreDrawListener);
            this.activePreDrawListener = null;
        }
        this.flutterView.detachFromFlutterEngine();
        this.flutterView.removeOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSaveInstanceState(Bundle bundle) {
        Log.v("FlutterActivityAndFragmentDelegate", "onSaveInstanceState. Giving framework and plugins an opportunity to save state.");
        ensureAlive();
        if (this.host.shouldRestoreAndSaveState()) {
            bundle.putByteArray("framework", this.flutterEngine.getRestorationChannel().getRestorationData());
        }
        if (this.host.shouldAttachEngineToActivity()) {
            Bundle bundle2 = new Bundle();
            this.flutterEngine.getActivityControlSurface().onSaveInstanceState(bundle2);
            bundle.putBundle("plugins", bundle2);
        }
    }

    @Override // io.flutter.embedding.android.ExclusiveAppComponent
    public void detachFromFlutterEngine() {
        if (!this.host.shouldDestroyEngineWithHost()) {
            this.host.detachFromFlutterEngine();
            return;
        }
        throw new AssertionError("The internal FlutterEngine created by " + this.host + " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetach() {
        Log.v("FlutterActivityAndFragmentDelegate", "onDetach()");
        ensureAlive();
        this.host.cleanUpFlutterEngine(this.flutterEngine);
        if (this.host.shouldAttachEngineToActivity()) {
            Log.v("FlutterActivityAndFragmentDelegate", "Detaching FlutterEngine from the Activity that owns this Fragment.");
            if (this.host.getActivity().isChangingConfigurations()) {
                this.flutterEngine.getActivityControlSurface().detachFromActivityForConfigChanges();
            } else {
                this.flutterEngine.getActivityControlSurface().detachFromActivity();
            }
        }
        PlatformPlugin platformPlugin = this.platformPlugin;
        if (platformPlugin != null) {
            platformPlugin.destroy();
            this.platformPlugin = null;
        }
        this.flutterEngine.getLifecycleChannel().appIsDetached();
        if (this.host.shouldDestroyEngineWithHost()) {
            this.flutterEngine.destroy();
            if (this.host.getCachedEngineId() != null) {
                FlutterEngineCache.getInstance().remove(this.host.getCachedEngineId());
            }
            this.flutterEngine = null;
        }
        this.isAttached = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onBackPressed() {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onBackPressed() to FlutterEngine.");
            this.flutterEngine.getNavigationChannel().popRoute();
            return;
        }
        Log.w("FlutterActivityAndFragmentDelegate", "Invoked onBackPressed() before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: " + i + "\npermissions: " + Arrays.toString(strArr) + "\ngrantResults: " + Arrays.toString(iArr));
            this.flutterEngine.getActivityControlSurface().onRequestPermissionsResult(i, strArr, iArr);
            return;
        }
        Log.w("FlutterActivityAndFragmentDelegate", "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNewIntent(Intent intent) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onNewIntent() to FlutterEngine and sending pushRoute message.");
            this.flutterEngine.getActivityControlSurface().onNewIntent(intent);
            String maybeGetInitialRouteFromIntent = maybeGetInitialRouteFromIntent(intent);
            if (maybeGetInitialRouteFromIntent != null && !maybeGetInitialRouteFromIntent.isEmpty()) {
                this.flutterEngine.getNavigationChannel().pushRoute(maybeGetInitialRouteFromIntent);
                return;
            }
            return;
        }
        Log.w("FlutterActivityAndFragmentDelegate", "onNewIntent() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResult(int i, int i2, Intent intent) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: " + i + "\nresultCode: " + i2 + "\ndata: " + intent);
            this.flutterEngine.getActivityControlSurface().onActivityResult(i, i2, intent);
            return;
        }
        Log.w("FlutterActivityAndFragmentDelegate", "onActivityResult() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onUserLeaveHint() {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onUserLeaveHint() to FlutterEngine.");
            this.flutterEngine.getActivityControlSurface().onUserLeaveHint();
            return;
        }
        Log.w("FlutterActivityAndFragmentDelegate", "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTrimMemory(int i) {
        ensureAlive();
        if (this.flutterEngine != null) {
            if (this.isFirstFrameRendered && i >= 10) {
                this.flutterEngine.getDartExecutor().notifyLowMemoryWarning();
                this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLowMemory() {
        Log.v("FlutterActivityAndFragmentDelegate", "Forwarding onLowMemory() to FlutterEngine.");
        ensureAlive();
        this.flutterEngine.getDartExecutor().notifyLowMemoryWarning();
        this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
    }

    private void ensureAlive() {
        if (this.host == null) {
            throw new IllegalStateException("Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate.");
        }
    }
}
