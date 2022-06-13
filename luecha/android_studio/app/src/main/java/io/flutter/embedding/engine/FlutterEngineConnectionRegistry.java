package io.flutter.embedding.engine;

import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.tracing.Trace;
import io.flutter.Log;
import io.flutter.embedding.android.ExclusiveAppComponent;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityControlSurface;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverAware;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverControlSurface;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverPluginBinding;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderAware;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderControlSurface;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderPluginBinding;
import io.flutter.embedding.engine.plugins.lifecycle.HiddenLifecycleReference;
import io.flutter.embedding.engine.plugins.service.ServiceAware;
import io.flutter.embedding.engine.plugins.service.ServiceControlSurface;
import io.flutter.embedding.engine.plugins.service.ServicePluginBinding;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterEngineConnectionRegistry implements PluginRegistry, ActivityControlSurface, ServiceControlSurface, BroadcastReceiverControlSurface, ContentProviderControlSurface {
    private static final String TAG = "FlutterEngineCxnRegstry";
    private FlutterEngineActivityPluginBinding activityPluginBinding;
    private BroadcastReceiver broadcastReceiver;
    private FlutterEngineBroadcastReceiverPluginBinding broadcastReceiverPluginBinding;
    private ContentProvider contentProvider;
    private FlutterEngineContentProviderPluginBinding contentProviderPluginBinding;
    private ExclusiveAppComponent<Activity> exclusiveActivity;
    private final FlutterEngine flutterEngine;
    private final FlutterPlugin.FlutterPluginBinding pluginBinding;
    private Service service;
    private FlutterEngineServicePluginBinding servicePluginBinding;
    private final Map<Class<? extends FlutterPlugin>, FlutterPlugin> plugins = new HashMap();
    private final Map<Class<? extends FlutterPlugin>, ActivityAware> activityAwarePlugins = new HashMap();
    private boolean isWaitingForActivityReattachment = false;
    private final Map<Class<? extends FlutterPlugin>, ServiceAware> serviceAwarePlugins = new HashMap();
    private final Map<Class<? extends FlutterPlugin>, BroadcastReceiverAware> broadcastReceiverAwarePlugins = new HashMap();
    private final Map<Class<? extends FlutterPlugin>, ContentProviderAware> contentProviderAwarePlugins = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterEngineConnectionRegistry(Context context, FlutterEngine flutterEngine, FlutterLoader flutterLoader) {
        this.flutterEngine = flutterEngine;
        this.pluginBinding = new FlutterPlugin.FlutterPluginBinding(context, flutterEngine, flutterEngine.getDartExecutor(), flutterEngine.getRenderer(), flutterEngine.getPlatformViewsController().getRegistry(), new DefaultFlutterAssets(flutterLoader));
    }

    public void destroy() {
        Log.v("FlutterEngineCxnRegstry", "Destroying.");
        detachFromAppComponent();
        removeAll();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public void add(FlutterPlugin flutterPlugin) {
        Trace.beginSection("FlutterEngineConnectionRegistry#add " + flutterPlugin.getClass().getSimpleName());
        try {
            if (has(flutterPlugin.getClass())) {
                Log.w("FlutterEngineCxnRegstry", "Attempted to register plugin (" + flutterPlugin + ") but it was already registered with this FlutterEngine (" + this.flutterEngine + ").");
                return;
            }
            Log.v("FlutterEngineCxnRegstry", "Adding plugin: " + flutterPlugin);
            this.plugins.put(flutterPlugin.getClass(), flutterPlugin);
            flutterPlugin.onAttachedToEngine(this.pluginBinding);
            if (flutterPlugin instanceof ActivityAware) {
                ActivityAware activityAware = (ActivityAware) flutterPlugin;
                this.activityAwarePlugins.put(flutterPlugin.getClass(), activityAware);
                if (isAttachedToActivity()) {
                    activityAware.onAttachedToActivity(this.activityPluginBinding);
                }
            }
            if (flutterPlugin instanceof ServiceAware) {
                ServiceAware serviceAware = (ServiceAware) flutterPlugin;
                this.serviceAwarePlugins.put(flutterPlugin.getClass(), serviceAware);
                if (isAttachedToService()) {
                    serviceAware.onAttachedToService(this.servicePluginBinding);
                }
            }
            if (flutterPlugin instanceof BroadcastReceiverAware) {
                BroadcastReceiverAware broadcastReceiverAware = (BroadcastReceiverAware) flutterPlugin;
                this.broadcastReceiverAwarePlugins.put(flutterPlugin.getClass(), broadcastReceiverAware);
                if (isAttachedToBroadcastReceiver()) {
                    broadcastReceiverAware.onAttachedToBroadcastReceiver(this.broadcastReceiverPluginBinding);
                }
            }
            if (flutterPlugin instanceof ContentProviderAware) {
                ContentProviderAware contentProviderAware = (ContentProviderAware) flutterPlugin;
                this.contentProviderAwarePlugins.put(flutterPlugin.getClass(), contentProviderAware);
                if (isAttachedToContentProvider()) {
                    contentProviderAware.onAttachedToContentProvider(this.contentProviderPluginBinding);
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public void add(Set<FlutterPlugin> set) {
        for (FlutterPlugin flutterPlugin : set) {
            add(flutterPlugin);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public boolean has(Class<? extends FlutterPlugin> cls) {
        return this.plugins.containsKey(cls);
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public FlutterPlugin get(Class<? extends FlutterPlugin> cls) {
        return this.plugins.get(cls);
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public void remove(Class<? extends FlutterPlugin> cls) {
        FlutterPlugin flutterPlugin = this.plugins.get(cls);
        if (flutterPlugin != null) {
            Trace.beginSection("FlutterEngineConnectionRegistry#remove " + cls.getSimpleName());
            try {
                Log.v("FlutterEngineCxnRegstry", "Removing plugin: " + flutterPlugin);
                if (flutterPlugin instanceof ActivityAware) {
                    if (isAttachedToActivity()) {
                        ((ActivityAware) flutterPlugin).onDetachedFromActivity();
                    }
                    this.activityAwarePlugins.remove(cls);
                }
                if (flutterPlugin instanceof ServiceAware) {
                    if (isAttachedToService()) {
                        ((ServiceAware) flutterPlugin).onDetachedFromService();
                    }
                    this.serviceAwarePlugins.remove(cls);
                }
                if (flutterPlugin instanceof BroadcastReceiverAware) {
                    if (isAttachedToBroadcastReceiver()) {
                        ((BroadcastReceiverAware) flutterPlugin).onDetachedFromBroadcastReceiver();
                    }
                    this.broadcastReceiverAwarePlugins.remove(cls);
                }
                if (flutterPlugin instanceof ContentProviderAware) {
                    if (isAttachedToContentProvider()) {
                        ((ContentProviderAware) flutterPlugin).onDetachedFromContentProvider();
                    }
                    this.contentProviderAwarePlugins.remove(cls);
                }
                flutterPlugin.onDetachedFromEngine(this.pluginBinding);
                this.plugins.remove(cls);
            } finally {
                Trace.endSection();
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public void remove(Set<Class<? extends FlutterPlugin>> set) {
        for (Class<? extends FlutterPlugin> cls : set) {
            remove(cls);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.PluginRegistry
    public void removeAll() {
        remove(new HashSet(this.plugins.keySet()));
        this.plugins.clear();
    }

    private void detachFromAppComponent() {
        if (isAttachedToActivity()) {
            detachFromActivity();
        } else if (isAttachedToService()) {
            detachFromService();
        } else if (isAttachedToBroadcastReceiver()) {
            detachFromBroadcastReceiver();
        } else if (isAttachedToContentProvider()) {
            detachFromContentProvider();
        }
    }

    private boolean isAttachedToActivity() {
        return this.exclusiveActivity != null;
    }

    private Activity attachedActivity() {
        ExclusiveAppComponent<Activity> exclusiveAppComponent = this.exclusiveActivity;
        if (exclusiveAppComponent != null) {
            return exclusiveAppComponent.getAppComponent();
        }
        return null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void attachToActivity(ExclusiveAppComponent<Activity> exclusiveAppComponent, Lifecycle lifecycle) {
        String str;
        Trace.beginSection("FlutterEngineConnectionRegistry#attachToActivity");
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Attaching to an exclusive Activity: ");
            sb.append(exclusiveAppComponent.getAppComponent());
            String str2 = "";
            if (isAttachedToActivity()) {
                str = " evicting previous activity " + attachedActivity();
            } else {
                str = str2;
            }
            sb.append(str);
            sb.append(".");
            if (this.isWaitingForActivityReattachment) {
                str2 = " This is after a config change.";
            }
            sb.append(str2);
            Log.v("FlutterEngineCxnRegstry", sb.toString());
            if (this.exclusiveActivity != null) {
                this.exclusiveActivity.detachFromFlutterEngine();
            }
            detachFromAppComponent();
            this.exclusiveActivity = exclusiveAppComponent;
            attachToActivityInternal(exclusiveAppComponent.getAppComponent(), lifecycle);
        } finally {
            Trace.endSection();
        }
    }

    private void attachToActivityInternal(Activity activity, Lifecycle lifecycle) {
        this.activityPluginBinding = new FlutterEngineActivityPluginBinding(activity, lifecycle);
        this.flutterEngine.getPlatformViewsController().attach(activity, this.flutterEngine.getRenderer(), this.flutterEngine.getDartExecutor());
        for (ActivityAware activityAware : this.activityAwarePlugins.values()) {
            if (this.isWaitingForActivityReattachment) {
                activityAware.onReattachedToActivityForConfigChanges(this.activityPluginBinding);
            } else {
                activityAware.onAttachedToActivity(this.activityPluginBinding);
            }
        }
        this.isWaitingForActivityReattachment = false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void detachFromActivityForConfigChanges() {
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#detachFromActivityForConfigChanges");
            Log.v("FlutterEngineCxnRegstry", "Detaching from an Activity for config changes: " + attachedActivity());
            try {
                this.isWaitingForActivityReattachment = true;
                for (ActivityAware activityAware : this.activityAwarePlugins.values()) {
                    activityAware.onDetachedFromActivityForConfigChanges();
                }
                detachFromActivityInternal();
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to detach plugins from an Activity when no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void detachFromActivity() {
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#detachFromActivity");
            try {
                Log.v("FlutterEngineCxnRegstry", "Detaching from an Activity: " + attachedActivity());
                for (ActivityAware activityAware : this.activityAwarePlugins.values()) {
                    activityAware.onDetachedFromActivity();
                }
                detachFromActivityInternal();
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to detach plugins from an Activity when no Activity was attached.");
        }
    }

    private void detachFromActivityInternal() {
        this.flutterEngine.getPlatformViewsController().detach();
        this.exclusiveActivity = null;
        this.activityPluginBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onRequestPermissionsResult() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onRequestPermissionsResult");
            try {
                return this.activityPluginBinding.onRequestPermissionsResult(i, strArr, iArr);
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached.");
            return false;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public boolean onActivityResult(int i, int i2, Intent intent) {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onActivityResult() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onActivityResult");
            try {
                return this.activityPluginBinding.onActivityResult(i, i2, intent);
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached.");
            return false;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void onNewIntent(Intent intent) {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onNewIntent() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onNewIntent");
            try {
                this.activityPluginBinding.onNewIntent(intent);
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void onUserLeaveHint() {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onUserLeaveHint() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onUserLeaveHint");
            try {
                this.activityPluginBinding.onUserLeaveHint();
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void onSaveInstanceState(Bundle bundle) {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onSaveInstanceState() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onSaveInstanceState");
            try {
                this.activityPluginBinding.onSaveInstanceState(bundle);
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityControlSurface
    public void onRestoreInstanceState(Bundle bundle) {
        Log.v("FlutterEngineCxnRegstry", "Forwarding onRestoreInstanceState() to plugins.");
        if (isAttachedToActivity()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onRestoreInstanceState");
            try {
                this.activityPluginBinding.onRestoreInstanceState(bundle);
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached.");
        }
    }

    private boolean isAttachedToService() {
        return this.service != null;
    }

    @Override // io.flutter.embedding.engine.plugins.service.ServiceControlSurface
    public void attachToService(Service service, Lifecycle lifecycle, boolean z) {
        Trace.beginSection("FlutterEngineConnectionRegistry#attachToService");
        Log.v("FlutterEngineCxnRegstry", "Attaching to a Service: " + service);
        try {
            detachFromAppComponent();
            this.service = service;
            this.servicePluginBinding = new FlutterEngineServicePluginBinding(service, lifecycle);
            for (ServiceAware serviceAware : this.serviceAwarePlugins.values()) {
                serviceAware.onAttachedToService(this.servicePluginBinding);
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.service.ServiceControlSurface
    public void detachFromService() {
        if (isAttachedToService()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#detachFromService");
            Log.v("FlutterEngineCxnRegstry", "Detaching from a Service: " + this.service);
            try {
                for (ServiceAware serviceAware : this.serviceAwarePlugins.values()) {
                    serviceAware.onDetachedFromService();
                }
                this.service = null;
                this.servicePluginBinding = null;
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to detach plugins from a Service when no Service was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.service.ServiceControlSurface
    public void onMoveToForeground() {
        if (isAttachedToService()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onMoveToForeground");
            try {
                Log.v("FlutterEngineCxnRegstry", "Attached Service moved to foreground.");
                this.servicePluginBinding.onMoveToForeground();
            } finally {
                Trace.endSection();
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.service.ServiceControlSurface
    public void onMoveToBackground() {
        if (isAttachedToService()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#onMoveToBackground");
            Log.v("FlutterEngineCxnRegstry", "Attached Service moved to background.");
            try {
                this.servicePluginBinding.onMoveToBackground();
            } finally {
                Trace.endSection();
            }
        }
    }

    private boolean isAttachedToBroadcastReceiver() {
        return this.broadcastReceiver != null;
    }

    @Override // io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverControlSurface
    public void attachToBroadcastReceiver(BroadcastReceiver broadcastReceiver, Lifecycle lifecycle) {
        Trace.beginSection("FlutterEngineConnectionRegistry#attachToBroadcastReceiver");
        Log.v("FlutterEngineCxnRegstry", "Attaching to BroadcastReceiver: " + broadcastReceiver);
        try {
            detachFromAppComponent();
            this.broadcastReceiver = broadcastReceiver;
            this.broadcastReceiverPluginBinding = new FlutterEngineBroadcastReceiverPluginBinding(broadcastReceiver);
            for (BroadcastReceiverAware broadcastReceiverAware : this.broadcastReceiverAwarePlugins.values()) {
                broadcastReceiverAware.onAttachedToBroadcastReceiver(this.broadcastReceiverPluginBinding);
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverControlSurface
    public void detachFromBroadcastReceiver() {
        if (isAttachedToBroadcastReceiver()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#detachFromBroadcastReceiver");
            Log.v("FlutterEngineCxnRegstry", "Detaching from BroadcastReceiver: " + this.broadcastReceiver);
            try {
                for (BroadcastReceiverAware broadcastReceiverAware : this.broadcastReceiverAwarePlugins.values()) {
                    broadcastReceiverAware.onDetachedFromBroadcastReceiver();
                }
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached.");
        }
    }

    private boolean isAttachedToContentProvider() {
        return this.contentProvider != null;
    }

    @Override // io.flutter.embedding.engine.plugins.contentprovider.ContentProviderControlSurface
    public void attachToContentProvider(ContentProvider contentProvider, Lifecycle lifecycle) {
        Trace.beginSection("FlutterEngineConnectionRegistry#attachToContentProvider");
        Log.v("FlutterEngineCxnRegstry", "Attaching to ContentProvider: " + contentProvider);
        try {
            detachFromAppComponent();
            this.contentProvider = contentProvider;
            this.contentProviderPluginBinding = new FlutterEngineContentProviderPluginBinding(contentProvider);
            for (ContentProviderAware contentProviderAware : this.contentProviderAwarePlugins.values()) {
                contentProviderAware.onAttachedToContentProvider(this.contentProviderPluginBinding);
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.contentprovider.ContentProviderControlSurface
    public void detachFromContentProvider() {
        if (isAttachedToContentProvider()) {
            Trace.beginSection("FlutterEngineConnectionRegistry#detachFromContentProvider");
            Log.v("FlutterEngineCxnRegstry", "Detaching from ContentProvider: " + this.contentProvider);
            try {
                for (ContentProviderAware contentProviderAware : this.contentProviderAwarePlugins.values()) {
                    contentProviderAware.onDetachedFromContentProvider();
                }
            } finally {
                Trace.endSection();
            }
        } else {
            Log.e("FlutterEngineCxnRegstry", "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached.");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class DefaultFlutterAssets implements FlutterPlugin.FlutterAssets {
        final FlutterLoader flutterLoader;

        private DefaultFlutterAssets(FlutterLoader flutterLoader) {
            this.flutterLoader = flutterLoader;
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterAssets
        public String getAssetFilePathByName(String str) {
            return this.flutterLoader.getLookupKeyForAsset(str);
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterAssets
        public String getAssetFilePathByName(String str, String str2) {
            return this.flutterLoader.getLookupKeyForAsset(str, str2);
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterAssets
        public String getAssetFilePathBySubpath(String str) {
            return this.flutterLoader.getLookupKeyForAsset(str);
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterAssets
        public String getAssetFilePathBySubpath(String str, String str2) {
            return this.flutterLoader.getLookupKeyForAsset(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FlutterEngineActivityPluginBinding implements ActivityPluginBinding {
        private final Activity activity;
        private final HiddenLifecycleReference hiddenLifecycleReference;
        private final Set<PluginRegistry.RequestPermissionsResultListener> onRequestPermissionsResultListeners = new HashSet();
        private final Set<PluginRegistry.ActivityResultListener> onActivityResultListeners = new HashSet();
        private final Set<PluginRegistry.NewIntentListener> onNewIntentListeners = new HashSet();
        private final Set<PluginRegistry.UserLeaveHintListener> onUserLeaveHintListeners = new HashSet();
        private final Set<ActivityPluginBinding.OnSaveInstanceStateListener> onSaveInstanceStateListeners = new HashSet();

        public FlutterEngineActivityPluginBinding(Activity activity, Lifecycle lifecycle) {
            this.activity = activity;
            this.hiddenLifecycleReference = new HiddenLifecycleReference(lifecycle);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public Activity getActivity() {
            return this.activity;
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public Object getLifecycle() {
            return this.hiddenLifecycleReference;
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void addRequestPermissionsResultListener(PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener) {
            this.onRequestPermissionsResultListeners.add(requestPermissionsResultListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void removeRequestPermissionsResultListener(PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener) {
            this.onRequestPermissionsResultListeners.remove(requestPermissionsResultListener);
        }

        boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            boolean z = false;
            while (true) {
                for (PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener : this.onRequestPermissionsResultListeners) {
                    if (requestPermissionsResultListener.onRequestPermissionsResult(i, strArr, iArr) || z) {
                        z = true;
                    }
                }
                return z;
            }
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void addActivityResultListener(PluginRegistry.ActivityResultListener activityResultListener) {
            this.onActivityResultListeners.add(activityResultListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void removeActivityResultListener(PluginRegistry.ActivityResultListener activityResultListener) {
            this.onActivityResultListeners.remove(activityResultListener);
        }

        boolean onActivityResult(int i, int i2, Intent intent) {
            Iterator it = new HashSet(this.onActivityResultListeners).iterator();
            boolean z = false;
            while (true) {
                while (it.hasNext()) {
                    if (((PluginRegistry.ActivityResultListener) it.next()).onActivityResult(i, i2, intent) || z) {
                        z = true;
                    }
                }
                return z;
            }
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void addOnNewIntentListener(PluginRegistry.NewIntentListener newIntentListener) {
            this.onNewIntentListeners.add(newIntentListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void removeOnNewIntentListener(PluginRegistry.NewIntentListener newIntentListener) {
            this.onNewIntentListeners.remove(newIntentListener);
        }

        void onNewIntent(Intent intent) {
            for (PluginRegistry.NewIntentListener newIntentListener : this.onNewIntentListeners) {
                newIntentListener.onNewIntent(intent);
            }
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void addOnUserLeaveHintListener(PluginRegistry.UserLeaveHintListener userLeaveHintListener) {
            this.onUserLeaveHintListeners.add(userLeaveHintListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void removeOnUserLeaveHintListener(PluginRegistry.UserLeaveHintListener userLeaveHintListener) {
            this.onUserLeaveHintListeners.remove(userLeaveHintListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void addOnSaveStateListener(ActivityPluginBinding.OnSaveInstanceStateListener onSaveInstanceStateListener) {
            this.onSaveInstanceStateListeners.add(onSaveInstanceStateListener);
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
        public void removeOnSaveStateListener(ActivityPluginBinding.OnSaveInstanceStateListener onSaveInstanceStateListener) {
            this.onSaveInstanceStateListeners.remove(onSaveInstanceStateListener);
        }

        void onUserLeaveHint() {
            for (PluginRegistry.UserLeaveHintListener userLeaveHintListener : this.onUserLeaveHintListeners) {
                userLeaveHintListener.onUserLeaveHint();
            }
        }

        void onSaveInstanceState(Bundle bundle) {
            for (ActivityPluginBinding.OnSaveInstanceStateListener onSaveInstanceStateListener : this.onSaveInstanceStateListeners) {
                onSaveInstanceStateListener.onSaveInstanceState(bundle);
            }
        }

        void onRestoreInstanceState(Bundle bundle) {
            for (ActivityPluginBinding.OnSaveInstanceStateListener onSaveInstanceStateListener : this.onSaveInstanceStateListeners) {
                onSaveInstanceStateListener.onRestoreInstanceState(bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FlutterEngineServicePluginBinding implements ServicePluginBinding {
        private final HiddenLifecycleReference hiddenLifecycleReference;
        private final Set<ServiceAware.OnModeChangeListener> onModeChangeListeners = new HashSet();
        private final Service service;

        FlutterEngineServicePluginBinding(Service service, Lifecycle lifecycle) {
            this.service = service;
            this.hiddenLifecycleReference = lifecycle != null ? new HiddenLifecycleReference(lifecycle) : null;
        }

        @Override // io.flutter.embedding.engine.plugins.service.ServicePluginBinding
        public Service getService() {
            return this.service;
        }

        @Override // io.flutter.embedding.engine.plugins.service.ServicePluginBinding
        public Object getLifecycle() {
            return this.hiddenLifecycleReference;
        }

        @Override // io.flutter.embedding.engine.plugins.service.ServicePluginBinding
        public void addOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener) {
            this.onModeChangeListeners.add(onModeChangeListener);
        }

        @Override // io.flutter.embedding.engine.plugins.service.ServicePluginBinding
        public void removeOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener) {
            this.onModeChangeListeners.remove(onModeChangeListener);
        }

        void onMoveToForeground() {
            for (ServiceAware.OnModeChangeListener onModeChangeListener : this.onModeChangeListeners) {
                onModeChangeListener.onMoveToForeground();
            }
        }

        void onMoveToBackground() {
            for (ServiceAware.OnModeChangeListener onModeChangeListener : this.onModeChangeListeners) {
                onModeChangeListener.onMoveToBackground();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FlutterEngineBroadcastReceiverPluginBinding implements BroadcastReceiverPluginBinding {
        private final BroadcastReceiver broadcastReceiver;

        FlutterEngineBroadcastReceiverPluginBinding(BroadcastReceiver broadcastReceiver) {
            this.broadcastReceiver = broadcastReceiver;
        }

        @Override // io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverPluginBinding
        public BroadcastReceiver getBroadcastReceiver() {
            return this.broadcastReceiver;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FlutterEngineContentProviderPluginBinding implements ContentProviderPluginBinding {
        private final ContentProvider contentProvider;

        FlutterEngineContentProviderPluginBinding(ContentProvider contentProvider) {
            this.contentProvider = contentProvider;
        }

        @Override // io.flutter.embedding.engine.plugins.contentprovider.ContentProviderPluginBinding
        public ContentProvider getContentProvider() {
            return this.contentProvider;
        }
    }
}
