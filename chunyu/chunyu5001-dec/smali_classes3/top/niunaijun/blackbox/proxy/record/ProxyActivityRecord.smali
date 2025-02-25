.class public Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;
.super Ljava/lang/Object;
.source "ProxyActivityRecord.java"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityRecord:Landroid/os/IBinder;

.field public mTarget:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "activityInfo",
            "target",
            "activityRecord"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    .line 25
    iput-object p2, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 26
    iput-object p3, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    .line 27
    iput-object p4, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    return-void
.end method

.method public static create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "_VM_|_user_id_"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "_VM_|_activity_info_"

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    const-string v2, "_VM_|_target_"

    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "_VM_|_activity_record_v_"

    .line 41
    invoke-static {p0, v3}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 42
    new-instance v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    invoke-direct {v3, v0, v1, v2, p0}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    return-object v3
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shadow",
            "target",
            "activityInfo",
            "activityRecord",
            "userId"
        }
    .end annotation

    const-string v0, "_VM_|_user_id_"

    .line 31
    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "_VM_|_activity_info_"

    .line 32
    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "_VM_|_target_"

    .line 33
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_VM_|_activity_record_v_"

    .line 34
    invoke-static {p0, p1, p3}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->putBinder(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
