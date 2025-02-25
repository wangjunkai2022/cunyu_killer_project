.class public final Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
.super Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 241
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 242
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    .line 245
    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 246
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-direct {v2, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;-><init>(Landroid/os/Parcel;)V

    .line 253
    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 257
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 258
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    new-instance v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-direct {v3, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
