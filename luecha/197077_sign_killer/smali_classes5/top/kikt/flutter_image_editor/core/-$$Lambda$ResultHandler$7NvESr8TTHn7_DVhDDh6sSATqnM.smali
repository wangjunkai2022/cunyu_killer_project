.class public final synthetic Ltop/kikt/flutter_image_editor/core/-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM;
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

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/core/-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Ltop/kikt/flutter_image_editor/core/-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/-$$Lambda$ResultHandler$7NvESr8TTHn7_DVhDDh6sSATqnM;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->lambda$7NvESr8TTHn7_DVhDDh6sSATqnM(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method
