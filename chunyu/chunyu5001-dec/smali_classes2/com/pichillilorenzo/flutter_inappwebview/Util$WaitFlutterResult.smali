.class public Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pichillilorenzo/flutter_inappwebview/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitFlutterResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->result:Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->error:Ljava/lang/String;

    return-void
.end method
