.class Lokhttp3/mockwebserver/MockWebServer$1;
.super Ljava/lang/Object;
.source "MockWebServer.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    # inserted by apk-mitm to disable certificate pinning
    .locals 0
    return-void

    # commented out by apk-mitm to disable old method body
    #
    # .locals 0
    # .annotation system Ldalvik/annotation/Throws;
    #     value = {
    #         Ljava/security/cert/CertificateException;
    #     }
    # .end annotation
    #
    # .line 112
    # new-instance p1, Ljava/security/cert/CertificateException;
    #
    # invoke-direct {p1}, Ljava/security/cert/CertificateException;-><init>()V
    #
    # throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    # inserted by apk-mitm to disable certificate pinning
    .locals 0
    return-void

    # commented out by apk-mitm to disable old method body
    #
    # .locals 0
    #
    # .line 116
    # new-instance p1, Ljava/lang/AssertionError;
    #
    # invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V
    #
    # throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    # inserted by apk-mitm to disable certificate pinning
    .locals 1
    const/4 v0, 0x0
    new-array v0, v0, [Ljava/security/cert/X509Certificate;
    return-object v0

    # commented out by apk-mitm to disable old method body
    #
    # .locals 1
    #
    # .line 120
    # new-instance v0, Ljava/lang/AssertionError;
    #
    # invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
    #
    # throw v0
.end method
