.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;
.super Ljava/lang/Object;
.source "ProtectionSpace.java"


# instance fields
.field public host:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public port:Ljava/lang/Integer;

.field public procotol:Ljava/lang/String;

.field public realm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    .line 15
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->host:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->procotol:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->realm:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->port:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
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

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->host:Ljava/lang/String;

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->procotol:Ljava/lang/String;

    const-string v2, "protocol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->realm:Ljava/lang/String;

    const-string v2, "realm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->port:Ljava/lang/Integer;

    const-string v2, "port"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
