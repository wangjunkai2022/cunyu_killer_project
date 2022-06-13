.class public Lcreativemaybeno/wakelock/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcreativemaybeno/wakelock/Messages$WakelockApi;,
        Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;,
        Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;,
        Lcreativemaybeno/wakelock/Messages$ToggleMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 0

    .line 20
    invoke-static {p0}, Lcreativemaybeno/wakelock/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static wrapError(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "code"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "details"

    const/4 v1, 0x0

    .line 153
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
