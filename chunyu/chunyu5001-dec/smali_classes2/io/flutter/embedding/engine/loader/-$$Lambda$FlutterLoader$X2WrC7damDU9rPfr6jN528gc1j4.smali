.class public final synthetic Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:[Ljava/lang/String;

.field private final synthetic f$3:Landroid/os/Handler;

.field private final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$3:Landroid/os/Handler;

    iput-object p5, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$3:Landroid/os/Handler;

    iget-object v4, p0, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$X2WrC7damDU9rPfr6jN528gc1j4;->f$4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/loader/FlutterLoader;->lambda$ensureInitializationCompleteAsync$1$FlutterLoader(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
