.class public Lcom/netease/nis/captcha/g$b;
.super Ljava/lang/Object;
.source "StatisticsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/captcha/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/g$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/netease/nis/captcha/g$b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "captcha"

    .line 2
    iput-object v0, p0, Lcom/netease/nis/captcha/g$b;->a:Ljava/lang/String;

    const-string v0, "Android"

    .line 5
    iput-object v0, p0, Lcom/netease/nis/captcha/g$b;->d:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/netease/nis/captcha/g$b$a;

    invoke-direct {v0}, Lcom/netease/nis/captcha/g$b$a;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    return-void
.end method
