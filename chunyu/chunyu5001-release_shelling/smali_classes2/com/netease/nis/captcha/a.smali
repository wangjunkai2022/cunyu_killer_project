.class public Lcom/netease/nis/captcha/a;
.super Landroid/app/Dialog;
.source "CaptchaDialog.java"


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

.field private final d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

.field private final e:Ljava/lang/String;

.field private final f:F

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:J

.field private final n:I

.field private final o:Lcom/netease/nis/captcha/CaptchaListener;

.field private p:Lcom/netease/nis/captcha/CaptchaWebView;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private final t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private final x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Lcom/netease/nis/captcha/CaptchaConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    sget v1, Lcom/netease/nis/captcha/R$style;->yd_CaptchaDialogStyle:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/a;->y:Z

    .line 9
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    .line 10
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->b:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    .line 12
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    .line 13
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->e:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    sget-object v2, Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;->DARK:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    if-ne v1, v2, :cond_0

    const-string v1, "dark"

    goto :goto_0

    :cond_0
    const-string v1, "light"

    :goto_0
    iput-object v1, p0, Lcom/netease/nis/captcha/a;->e:Ljava/lang/String;

    .line 14
    iget v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->f:F

    iput v1, p0, Lcom/netease/nis/captcha/a;->f:F

    .line 15
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->g:Ljava/lang/String;

    .line 16
    iget v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->h:I

    iput v1, p0, Lcom/netease/nis/captcha/a;->h:I

    .line 17
    iget v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->i:I

    iput v1, p0, Lcom/netease/nis/captcha/a;->i:I

    .line 18
    iget v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->j:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/netease/nis/captcha/a;->b()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/netease/nis/captcha/a;->j:I

    .line 19
    iget-boolean v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->n:Z

    iput-boolean v1, p0, Lcom/netease/nis/captcha/a;->k:Z

    .line 20
    iget-boolean v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->o:Z

    iput-boolean v1, p0, Lcom/netease/nis/captcha/a;->l:Z

    .line 21
    iget-wide v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->l:J

    iput-wide v1, p0, Lcom/netease/nis/captcha/a;->m:J

    .line 22
    iget v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->p:I

    iput v1, p0, Lcom/netease/nis/captcha/a;->n:I

    .line 23
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->o:Lcom/netease/nis/captcha/CaptchaListener;

    .line 24
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->r:Ljava/lang/String;

    .line 25
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->s:Ljava/lang/String;

    .line 26
    iget-boolean v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->t:Z

    iput-boolean v1, p0, Lcom/netease/nis/captcha/a;->t:Z

    .line 27
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->u:Ljava/lang/String;

    .line 28
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->v:Ljava/lang/String;

    .line 29
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nis/captcha/a;->w:Ljava/lang/String;

    .line 30
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v2, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/a;->x:Z

    .line 31
    iget-boolean v0, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->m:Z

    iput-boolean v0, p0, Lcom/netease/nis/captcha/a;->z:Z

    .line 32
    iget-object v0, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nis/captcha/a;->A:Ljava/lang/String;

    .line 33
    iget-object p1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/nis/captcha/a;->B:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/netease/nis/captcha/a;->i()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const-string v0, "&popupStyles.width="

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://cstaticdun.126.net/api/v2/mobile.v2.13.5.html"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?captchaId="

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/nis/captcha/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v3, p0, Lcom/netease/nis/captcha/a;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v4, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v3, v4, :cond_0

    const-string v3, "&mode=bind"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "&os=android"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&osVer="

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sdkVer=3.3.6.1"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v3, p0, Lcom/netease/nis/captcha/a;->j:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 15
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    invoke-static {v0}, Lcom/netease/nis/captcha/c;->a(Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/netease/nis/captcha/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    invoke-static {v0}, Lcom/netease/nis/captcha/c;->a(Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&lang="

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&customStyles.icon.slider="

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "&defaultFallback="

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->l:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "&errorFallbackCount="

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/nis/captcha/a;->n:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&mobileTimeout="

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/nis/captcha/a;->m:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->t:Z

    if-eqz v0, :cond_5

    const-string v0, "&ipv6=true"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ac-v6.dun.163yun.com"

    .line 34
    iput-object v0, p0, Lcom/netease/nis/captcha/a;->v:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/netease/nis/captcha/a;->u:Ljava/lang/String;

    const-string v0, "acstatic-dun-v6.126.net"

    .line 36
    iput-object v0, p0, Lcom/netease/nis/captcha/a;->w:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "c-v6.dun.163.com"

    .line 38
    iput-object v0, p0, Lcom/netease/nis/captcha/a;->r:Ljava/lang/String;

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cstaticdun-v6.126.net"

    .line 41
    iput-object v0, p0, Lcom/netease/nis/captcha/a;->s:Ljava/lang/String;

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "&apiServer="

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "&staticServer="

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "&protocol="

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->A:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_8
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "&wmServerConfig.configServer="

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_9
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "&wmServerConfig.apiServer="

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "&wmServerConfig.staticServer="

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "&extraData="

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->B:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_c
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "&theme="

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nis/captcha/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/a;->x:Z

    return p0
.end method

.method private b()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    if-ge v2, v1, :cond_0

    mul-int/lit8 v2, v2, 0x3

    .line 10
    div-int/lit8 v1, v2, 0x4

    :cond_0
    mul-int/lit8 v1, v1, 0x4

    .line 12
    div-int/lit8 v1, v1, 0x5

    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    const/16 v3, 0x10e

    if-ge v2, v3, :cond_1

    int-to-float v1, v3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/netease/nis/captcha/a;)Lcom/netease/nis/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/a;->o:Lcom/netease/nis/captcha/CaptchaListener;

    return-object p0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u8bbe\u7f6eContentView"

    aput-object v2, v0, v1

    const-string v1, "%s"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/netease/nis/captcha/R$layout;->yd_dailog_captcha:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    if-nez v0, :cond_1

    .line 8
    sget v0, Lcom/netease/nis/captcha/R$id;->web_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/captcha/CaptchaWebView;

    iput-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    .line 9
    iget-object v1, p0, Lcom/netease/nis/captcha/a;->o:Lcom/netease/nis/captcha/CaptchaListener;

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/CaptchaWebView;->setCaptchaListener(Lcom/netease/nis/captcha/CaptchaListener;)V

    .line 12
    :cond_1
    sget v0, Lcom/netease/nis/captcha/R$id;->img_btn_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nis/captcha/a$a;

    invoke-direct {v1, p0, p0}, Lcom/netease/nis/captcha/a$a;-><init>(Lcom/netease/nis/captcha/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_2
    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->z:Z

    if-eqz v0, :cond_3

    .line 29
    sget v0, Lcom/netease/nis/captcha/R$id;->img_btn_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    sget v0, Lcom/netease/nis/captcha/R$id;->rl_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v1, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v0, v1, :cond_4

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/netease/nis/captcha/a;->f:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 38
    :goto_1
    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->k:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/netease/nis/captcha/a;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/nis/captcha/a;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/nis/captcha/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "set dialog position x:%d y:%d width:%d"

    invoke-static {v2, v1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/netease/nis/captcha/a;->h:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/2addr v0, v4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 7
    :cond_0
    iget v0, p0, Lcom/netease/nis/captcha/a;->i:I

    if-eq v0, v3, :cond_1

    .line 8
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v2, v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    :cond_1
    iget v0, p0, Lcom/netease/nis/captcha/a;->j:I

    if-eqz v0, :cond_2

    .line 12
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    const/16 v0, 0x11

    .line 15
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method c()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    return-object v0
.end method

.method d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->q:Landroid/view/View;

    return-object v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "about:blank"

    if-eqz v0, :cond_3

    :try_start_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 8
    :cond_1
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Captcha  Dialog dismiss Error: %s"

    aput-object v3, v1, v2

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Captcha"

    invoke-static {v0, v1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/netease/nis/captcha/a;->j:I

    if-eqz v1, :cond_0

    .line 3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v1, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-direct {p0}, Lcom/netease/nis/captcha/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request url is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s"

    invoke-static {v2, v1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    new-instance v2, Lcom/netease/nis/captcha/f;

    iget-object v3, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netease/nis/captcha/f;-><init>(Landroid/content/Context;)V

    const-string v3, "JSInterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/nis/captcha/R$layout;->yd_dailog_captcha:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/captcha/a;->q:Landroid/view/View;

    .line 2
    sget v1, Lcom/netease/nis/captcha/R$id;->web_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/captcha/CaptchaWebView;

    iput-object v0, p0, Lcom/netease/nis/captcha/a;->p:Lcom/netease/nis/captcha/CaptchaWebView;

    .line 3
    iget-object v1, p0, Lcom/netease/nis/captcha/a;->o:Lcom/netease/nis/captcha/CaptchaListener;

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/CaptchaWebView;->setCaptchaListener(Lcom/netease/nis/captcha/CaptchaListener;)V

    return-void
.end method

.method h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/nis/captcha/a;->y:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 2
    iget-boolean v0, p0, Lcom/netease/nis/captcha/a;->x:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/netease/nis/captcha/a;->y:Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/captcha/a;->f()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/captcha/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Captcha  Dialog show Error:%s"

    invoke-static {v0, v1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
