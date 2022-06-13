.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityState"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private application:Landroid/app/Application;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 115
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    .line 117
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 118
    iput-object p7, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 120
    invoke-virtual {p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->constructDelegate(Landroid/app/Activity;)Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 121
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/image_picker"

    invoke-direct {v0, p4, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 122
    iget-object p4, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p4, p5}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 123
    new-instance p4, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-direct {p4, p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Landroid/app/Activity;)V

    iput-object p4, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    if-eqz p6, :cond_0

    .line 126
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 127
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p6, p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 128
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p6, p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p7, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 132
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p7, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 133
    invoke-static {p7}, Lio/flutter/embedding/engine/plugins/lifecycle/FlutterLifecycleAdapter;->getActivityLifecycle(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 134
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_0
    return-void
.end method

.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Landroid/app/Activity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 141
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 172
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getDelegate()Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    return-object v0
.end method

.method release()V
    .locals 3

    .line 145
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 147
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 148
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 151
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_1

    .line 152
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 153
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 156
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 158
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 161
    :cond_2
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 162
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 163
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    .line 166
    :cond_3
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 167
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    .line 168
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    return-void
.end method
