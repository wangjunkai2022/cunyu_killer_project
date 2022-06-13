.class public final Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
.super Ljava/lang/Object;
.source "ProviderCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/provider/ProviderCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arg:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private method:Ljava/lang/String;

.field private retryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "auth"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x5

    .line 45
    iput v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->retryCount:I

    .line 48
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->auth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/String;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 64
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 66
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 68
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 72
    :cond_3
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 74
    :cond_4
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 76
    :cond_5
    instance-of v0, p2, [I

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 79
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in Bundle."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-object p0
.end method

.method public arg(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->arg:Ljava/lang/String;

    return-object p0
.end method

.method public call()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->auth:Ljava/lang/String;

    iget-object v1, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->method:Ljava/lang/String;

    iget-object v3, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->arg:Ljava/lang/String;

    iget-object v4, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    iget v5, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->retryCount:I

    invoke-static/range {v0 .. v5}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall;->call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public callSafely()Landroid/os/Bundle;
    .locals 1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->call()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public methodName(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public retry(I)Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryCount"
        }
    .end annotation

    .line 86
    iput p1, p0, Ltop/niunaijun/blackbox/utils/provider/ProviderCall$Builder;->retryCount:I

    return-object p0
.end method
