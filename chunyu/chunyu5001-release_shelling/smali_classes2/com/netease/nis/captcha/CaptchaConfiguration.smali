.class public Lcom/netease/nis/captcha/CaptchaConfiguration;
.super Ljava/lang/Object;
.source "CaptchaConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;,
        Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;,
        Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;,
        Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    }
.end annotation


# instance fields
.field final A:Ljava/lang/String;

.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

.field final d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

.field final e:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

.field final f:F

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:I

.field final k:Lcom/netease/nis/captcha/CaptchaListener;

.field final l:J

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:I

.field final q:Ljava/lang/String;

.field final r:Ljava/lang/String;

.field final s:Ljava/lang/String;

.field final t:Z

.field final u:Ljava/lang/String;

.field final v:Ljava/lang/String;

.field final w:Ljava/lang/String;

.field final x:Ljava/lang/String;

.field final y:I

.field final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->b:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    .line 6
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    .line 7
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->e:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    .line 8
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)F

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->f:F

    .line 9
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->g:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    .line 12
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->h:I

    .line 13
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->i:I

    .line 14
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->j:I

    .line 15
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    .line 16
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->l:J

    .line 17
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->m:Z

    .line 18
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->n:Z

    .line 19
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->o:Z

    .line 20
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->p:I

    .line 21
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->s:Ljava/lang/String;

    .line 22
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$1900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->q:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->r:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->t:Z

    .line 25
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->u:Ljava/lang/String;

    .line 26
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->v:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->w:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->x:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->y:I

    .line 30
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->z:I

    .line 31
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration;->A:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->access$2900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/nis/captcha/c;->a(Z)V

    return-void
.end method
