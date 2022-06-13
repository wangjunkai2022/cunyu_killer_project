.class public Lcom/netease/mobsec/factory/JNIFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/netease/mobsec/factory/JNIFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/mobsec/factory/JNIFactory;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/factory/JNIFactory;->a:Lcom/netease/mobsec/factory/JNIFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsec/factory/JNIFactory;

    invoke-direct {v0}, Lcom/netease/mobsec/factory/JNIFactory;-><init>()V

    sput-object v0, Lcom/netease/mobsec/factory/JNIFactory;->a:Lcom/netease/mobsec/factory/JNIFactory;

    :cond_0
    sget-object v0, Lcom/netease/mobsec/factory/JNIFactory;->a:Lcom/netease/mobsec/factory/JNIFactory;

    return-object v0
.end method


# virtual methods
.method public native w230921e1b36f7799(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native w238jfd9349jdj394(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
.end method
