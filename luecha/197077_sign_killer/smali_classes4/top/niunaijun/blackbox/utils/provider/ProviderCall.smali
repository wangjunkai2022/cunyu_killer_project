.class public Ltop/niunaijun/blackbox/utils/provider/ProviderCall;
.super Ljava/lang/Object;
.source "ProviderCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "context",
            "method",
            "arg",
            "bundle",
            "retryCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 33
    invoke-static/range {v0 .. v5}, Ltop/niunaijun/blackbox/utils/compat/ContentProviderCompat;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "methodName",
            "arg",
            "bundle"
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall;->call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
