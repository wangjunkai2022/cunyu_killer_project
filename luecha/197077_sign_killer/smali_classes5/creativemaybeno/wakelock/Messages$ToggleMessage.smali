.class public Lcreativemaybeno/wakelock/Messages$ToggleMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcreativemaybeno/wakelock/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleMessage"
.end annotation


# instance fields
.field private enable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/Map;)Lcreativemaybeno/wakelock/Messages$ToggleMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcreativemaybeno/wakelock/Messages$ToggleMessage;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcreativemaybeno/wakelock/Messages$ToggleMessage;

    invoke-direct {v0}, Lcreativemaybeno/wakelock/Messages$ToggleMessage;-><init>()V

    const-string v1, "enable"

    .line 35
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    iput-object p0, v0, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->enable:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getEnable()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->enable:Ljava/lang/Boolean;

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

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->enable:Ljava/lang/Boolean;

    const-string v2, "enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
