.class public Lcom/facebook/common/soloader/SoLoaderShim;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;,
        Lcom/facebook/common/soloader/SoLoaderShim$Handler;
    }
.end annotation


# static fields
.field private static volatile sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;

    invoke-direct {v0}, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;-><init>()V

    sput-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    invoke-interface {v0, p0}, Lcom/facebook/common/soloader/SoLoaderShim$Handler;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static setHandler(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 47
    sput-object p0, Lcom/facebook/common/soloader/SoLoaderShim;->sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Handler cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInTestMode()V
    .locals 1

    .line 60
    new-instance v0, Lcom/facebook/common/soloader/SoLoaderShim$1;

    invoke-direct {v0}, Lcom/facebook/common/soloader/SoLoaderShim$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/common/soloader/SoLoaderShim;->setHandler(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V

    return-void
.end method
