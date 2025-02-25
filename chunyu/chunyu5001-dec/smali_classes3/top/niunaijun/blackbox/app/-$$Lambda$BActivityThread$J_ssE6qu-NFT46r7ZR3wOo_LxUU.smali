.class public final synthetic Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

.field public final synthetic f$1:Ljava/lang/ClassLoader;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ltop/niunaijun/blackbox/entity/dump/DumpResult;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/ClassLoader;Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    iput-object p2, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$1:Ljava/lang/ClassLoader;

    iput-object p3, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$2:Ljava/lang/String;

    iput-object p4, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$3:Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    iget-object v1, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$1:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$2:Ljava/lang/String;

    iget-object v3, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;->f$3:Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    invoke-virtual {v0, v1, v2, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$handleDumpDex$1$BActivityThread(Ljava/lang/ClassLoader;Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    return-void
.end method
