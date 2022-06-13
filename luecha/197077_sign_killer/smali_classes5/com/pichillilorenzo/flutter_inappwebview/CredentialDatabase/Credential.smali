.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# instance fields
.field public id:Ljava/lang/Long;

.field public password:Ljava/lang/String;

.field public protectionSpaceId:Ljava/lang/Long;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->id:Ljava/lang/Long;

    .line 14
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->protectionSpaceId:Ljava/lang/Long;

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

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
