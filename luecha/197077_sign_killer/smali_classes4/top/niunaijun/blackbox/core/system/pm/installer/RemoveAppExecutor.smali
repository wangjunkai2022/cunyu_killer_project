.class public Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveAppExecutor;
.super Ljava/lang/Object;
.source "RemoveAppExecutor.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "option",
            "userId"
        }
    .end annotation

    .line 19
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    const/4 p1, 0x0

    return p1
.end method
