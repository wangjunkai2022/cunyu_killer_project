.class public Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcreativemaybeno/wakelock/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsEnabledMessage"
.end annotation


# instance fields
.field private enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/Map;)Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    invoke-direct {v0}, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;-><init>()V

    const-string v1, "enabled"

    .line 54
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Boolean;

    iput-object p0, v0, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 44
    iget-object v0, p0, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->enabled:Ljava/lang/Boolean;

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
