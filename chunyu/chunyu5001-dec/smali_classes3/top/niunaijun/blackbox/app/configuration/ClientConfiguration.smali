.class public abstract Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# instance fields
.field private mExternalDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDexDumpDir()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->mExternalDir:Ljava/io/File;

    const-string v2, "dump"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHostPackageName()Ljava/lang/String;
.end method

.method public final init()V
    .locals 1

    .line 20
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->mExternalDir:Ljava/io/File;

    return-void
.end method

.method public isEnableHookDump()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFixCodeItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
