package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.plugins.lifecycle.FlutterLifecycleAdapter;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;

/* loaded from: classes2.dex */
public class ImagePickerPlugin implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware {
    private static final int CAMERA_DEVICE_FRONT = 1;
    private static final int CAMERA_DEVICE_REAR = 0;
    private static final String CHANNEL = "plugins.flutter.io/image_picker";
    static final String METHOD_CALL_IMAGE = "pickImage";
    static final String METHOD_CALL_MULTI_IMAGE = "pickMultiImage";
    private static final String METHOD_CALL_RETRIEVE = "retrieve";
    static final String METHOD_CALL_VIDEO = "pickVideo";
    private static final int SOURCE_CAMERA = 0;
    private static final int SOURCE_GALLERY = 1;
    private ActivityState activityState;
    private FlutterPlugin.FlutterPluginBinding pluginBinding;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class LifeCycleObserver implements Application.ActivityLifecycleCallbacks, DefaultLifecycleObserver {
        private final Activity thisActivity;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onCreate(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onPause(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onResume(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onStart(LifecycleOwner lifecycleOwner) {
        }

        LifeCycleObserver(Activity activity) {
            this.thisActivity = activity;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onStop(LifecycleOwner lifecycleOwner) {
            onActivityStopped(this.thisActivity);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            onActivityDestroyed(this.thisActivity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.thisActivity == activity && activity.getApplicationContext() != null) {
                ((Application) activity.getApplicationContext()).unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (this.thisActivity == activity) {
                ImagePickerPlugin.this.activityState.getDelegate().saveStateBeforeResult();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ActivityState {
        private Activity activity;
        private ActivityPluginBinding activityBinding;
        private Application application;
        private MethodChannel channel;
        private ImagePickerDelegate delegate;
        private Lifecycle lifecycle;
        private LifeCycleObserver observer;

        ActivityState(Application application, Activity activity, BinaryMessenger binaryMessenger, MethodChannel.MethodCallHandler methodCallHandler, PluginRegistry.Registrar registrar, ActivityPluginBinding activityPluginBinding) {
            this.application = application;
            this.activity = activity;
            this.activityBinding = activityPluginBinding;
            this.delegate = ImagePickerPlugin.this.constructDelegate(activity);
            this.channel = new MethodChannel(binaryMessenger, ImagePickerPlugin.CHANNEL);
            this.channel.setMethodCallHandler(methodCallHandler);
            this.observer = new LifeCycleObserver(activity);
            if (registrar != null) {
                application.registerActivityLifecycleCallbacks(this.observer);
                registrar.addActivityResultListener(this.delegate);
                registrar.addRequestPermissionsResultListener(this.delegate);
                return;
            }
            activityPluginBinding.addActivityResultListener(this.delegate);
            activityPluginBinding.addRequestPermissionsResultListener(this.delegate);
            this.lifecycle = FlutterLifecycleAdapter.getActivityLifecycle(activityPluginBinding);
            this.lifecycle.addObserver(this.observer);
        }

        ActivityState(ImagePickerDelegate imagePickerDelegate, Activity activity) {
            this.activity = activity;
            this.delegate = imagePickerDelegate;
        }

        void release() {
            ActivityPluginBinding activityPluginBinding = this.activityBinding;
            if (activityPluginBinding != null) {
                activityPluginBinding.removeActivityResultListener(this.delegate);
                this.activityBinding.removeRequestPermissionsResultListener(this.delegate);
                this.activityBinding = null;
            }
            Lifecycle lifecycle = this.lifecycle;
            if (lifecycle != null) {
                lifecycle.removeObserver(this.observer);
                this.lifecycle = null;
            }
            MethodChannel methodChannel = this.channel;
            if (methodChannel != null) {
                methodChannel.setMethodCallHandler(null);
                this.channel = null;
            }
            Application application = this.application;
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(this.observer);
                this.application = null;
            }
            this.activity = null;
            this.observer = null;
            this.delegate = null;
        }

        Activity getActivity() {
            return this.activity;
        }

        ImagePickerDelegate getDelegate() {
            return this.delegate;
        }
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        if (registrar.activity() != null) {
            Activity activity = registrar.activity();
            Application application = null;
            if (registrar.context() != null) {
                application = (Application) registrar.context().getApplicationContext();
            }
            new ImagePickerPlugin().setup(registrar.messenger(), application, activity, registrar, null);
        }
    }

    public ImagePickerPlugin() {
    }

    ImagePickerPlugin(ImagePickerDelegate imagePickerDelegate, Activity activity) {
        this.activityState = new ActivityState(imagePickerDelegate, activity);
    }

    final ActivityState getActivityState() {
        return this.activityState;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.pluginBinding = flutterPluginBinding;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.pluginBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        setup(this.pluginBinding.getBinaryMessenger(), (Application) this.pluginBinding.getApplicationContext(), activityPluginBinding.getActivity(), null, activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        tearDown();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    private void setup(BinaryMessenger binaryMessenger, Application application, Activity activity, PluginRegistry.Registrar registrar, ActivityPluginBinding activityPluginBinding) {
        this.activityState = new ActivityState(application, activity, binaryMessenger, this, registrar, activityPluginBinding);
    }

    private void tearDown() {
        ActivityState activityState = this.activityState;
        if (activityState != null) {
            activityState.release();
            this.activityState = null;
        }
    }

    final ImagePickerDelegate constructDelegate(Activity activity) {
        ImagePickerCache imagePickerCache = new ImagePickerCache(activity);
        File cacheDir = activity.getCacheDir();
        return new ImagePickerDelegate(activity, cacheDir, new ImageResizer(cacheDir, new ExifDataCopier()), imagePickerCache);
    }

    /* loaded from: classes2.dex */
    private static class MethodResultWrapper implements MethodChannel.Result {
        private Handler handler = new Handler(Looper.getMainLooper());
        private MethodChannel.Result methodResult;

        MethodResultWrapper(MethodChannel.Result result) {
            this.methodResult = result;
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void success(final Object obj) {
            this.handler.post(new Runnable() { // from class: io.flutter.plugins.imagepicker.ImagePickerPlugin.MethodResultWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    MethodResultWrapper.this.methodResult.success(obj);
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void error(final String str, final String str2, final Object obj) {
            this.handler.post(new Runnable() { // from class: io.flutter.plugins.imagepicker.ImagePickerPlugin.MethodResultWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    MethodResultWrapper.this.methodResult.error(str, str2, obj);
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void notImplemented() {
            this.handler.post(new Runnable() { // from class: io.flutter.plugins.imagepicker.ImagePickerPlugin.MethodResultWrapper.3
                @Override // java.lang.Runnable
                public void run() {
                    MethodResultWrapper.this.methodResult.notImplemented();
                }
            });
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        CameraDevice cameraDevice;
        ActivityState activityState = this.activityState;
        if (activityState == null || activityState.getActivity() == null) {
            result.error("no_activity", "image_picker plugin requires a foreground activity.", null);
            return;
        }
        MethodResultWrapper methodResultWrapper = new MethodResultWrapper(result);
        ImagePickerDelegate delegate = this.activityState.getDelegate();
        if (methodCall.argument("cameraDevice") != null) {
            if (((Integer) methodCall.argument("cameraDevice")).intValue() == 1) {
                cameraDevice = CameraDevice.FRONT;
            } else {
                cameraDevice = CameraDevice.REAR;
            }
            delegate.setCameraDevice(cameraDevice);
        }
        String str = methodCall.method;
        char c = 65535;
        switch (str.hashCode()) {
            case -1708939613:
                if (str.equals(METHOD_CALL_MULTI_IMAGE)) {
                    c = 1;
                    break;
                }
                break;
            case -1457314374:
                if (str.equals(METHOD_CALL_IMAGE)) {
                    c = 0;
                    break;
                }
                break;
            case -1445424934:
                if (str.equals(METHOD_CALL_VIDEO)) {
                    c = 2;
                    break;
                }
                break;
            case -310034372:
                if (str.equals(METHOD_CALL_RETRIEVE)) {
                    c = 3;
                    break;
                }
                break;
        }
        if (c == 0) {
            int intValue = ((Integer) methodCall.argument("source")).intValue();
            if (intValue == 0) {
                delegate.takeImageWithCamera(methodCall, methodResultWrapper);
            } else if (intValue == 1) {
                delegate.chooseImageFromGallery(methodCall, methodResultWrapper);
            } else {
                throw new IllegalArgumentException("Invalid image source: " + intValue);
            }
        } else if (c == 1) {
            delegate.chooseMultiImageFromGallery(methodCall, methodResultWrapper);
        } else if (c == 2) {
            int intValue2 = ((Integer) methodCall.argument("source")).intValue();
            if (intValue2 == 0) {
                delegate.takeVideoWithCamera(methodCall, methodResultWrapper);
            } else if (intValue2 == 1) {
                delegate.chooseVideoFromGallery(methodCall, methodResultWrapper);
            } else {
                throw new IllegalArgumentException("Invalid video source: " + intValue2);
            }
        } else if (c == 3) {
            delegate.retrieveLostImage(methodResultWrapper);
        } else {
            throw new IllegalArgumentException("Unknown method " + methodCall.method);
        }
    }
}
