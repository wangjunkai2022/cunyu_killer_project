.class public final synthetic Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/example/flutterimagecompress/core/ResultHandler;->lambda$XZIUhs0LoF8is4lTjiov0oczSBw(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method
