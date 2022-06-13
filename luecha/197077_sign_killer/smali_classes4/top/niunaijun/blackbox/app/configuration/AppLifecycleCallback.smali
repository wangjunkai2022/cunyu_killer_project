.class public Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;
.super Ljava/lang/Object;
.source "AppLifecycleCallback.java"


# static fields
.field public static EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "application"
        }
    .end annotation

    return-void
.end method

.method public beforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "application"
        }
    .end annotation

    return-void
.end method

.method public beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "context"
        }
    .end annotation

    return-void
.end method
