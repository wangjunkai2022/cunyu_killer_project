.class public final synthetic Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;->f$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/example/flutterimagecompress/core/ResultHandler;->lambda$P1Hm55vc1xPCht2mzCVjY-jMYto(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
