.class public final synthetic Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

.field private final synthetic f$3:Ljava/nio/ByteBuffer;

.field private final synthetic f$4:I

.field private final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger;Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$2:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    iput-object p4, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$3:Ljava/nio/ByteBuffer;

    iput p5, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$4:I

    iput-wide p6, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$2:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    iget-object v3, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$3:Ljava/nio/ByteBuffer;

    iget v4, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$4:I

    iget-wide v5, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$AIEPqY6mWzaNK15HekX9bftoAXs;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lio/flutter/embedding/engine/dart/DartMessenger;->lambda$dispatchMessageToQueue$0$DartMessenger(Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method
