.class public final Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;
.super Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/PermissionGroupInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PermissionGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 376
    iget-object v0, p1, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 377
    iget-object v0, p1, Landroid/content/pm/PackageParser$PermissionGroup;->intents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p1, Landroid/content/pm/PackageParser$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    .line 380
    iget-object p1, p1, Landroid/content/pm/PackageParser$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$IntentInfo;

    .line 381
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {v2, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 387
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;-><init>(Landroid/os/Parcel;)V

    .line 388
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 392
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 393
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
