.class public Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;
.super Ljava/lang/Object;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public componentName:Landroid/content/ComponentName;

.field public intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;)V"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->className:Ljava/lang/String;

    .line 552
    iget-object p1, p1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->metaData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->className:Ljava/lang/String;

    .line 547
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->metaData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 556
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->componentName:Landroid/content/ComponentName;

    .line 563
    :cond_1
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method
