.class public Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
.super Ljava/lang/Object;
.source "CaptchaConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/captcha/CaptchaConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiServer:Ljava/lang/String;

.field private backgroundDimAmount:F

.field private captchaId:Ljava/lang/String;

.field private debug:Z

.field private errorIconUrl:Ljava/lang/String;

.field private extraData:Ljava/lang/String;

.field private failedMaxRetryCount:I

.field private height:I

.field private isHideCloseButton:Z

.field private isIpv6:Z

.field private isTouchOutsideDisappear:Z

.field private isUsedDefaultFallback:Z

.field private langType:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

.field private listener:Lcom/netease/nis/captcha/CaptchaListener;

.field private loadingAnimResId:I

.field private loadingText:Ljava/lang/String;

.field private loadingTextId:I

.field private mWmApiServer:Ljava/lang/String;

.field private mWmConfigServer:Ljava/lang/String;

.field private mWmStaticServer:Ljava/lang/String;

.field private mode:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

.field private movingIconUrl:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private startIconUrl:Ljava/lang/String;

.field private staticServer:Ljava/lang/String;

.field private theme:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

.field private timeout:J

.field private url:Ljava/lang/String;

.field private width:I

.field private xCoordinate:I

.field private yCoordinate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://cstaticdun.126.net/api/v2/mobile.v2.10.1.html"

    .line 3
    iput-object v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->url:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_CAPTCHA:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    iput-object v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mode:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    .line 5
    sget-object v0, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_DEFAULT:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    iput-object v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->langType:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    .line 6
    sget-object v0, Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;->LIGHT:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    iput-object v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->theme:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    const-wide/16 v0, 0x2710

    .line 7
    iput-wide v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->timeout:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 9
    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->backgroundDimAmount:F

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->xCoordinate:I

    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->yCoordinate:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->width:I

    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->height:I

    .line 13
    iput-boolean v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isHideCloseButton:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isTouchOutsideDisappear:Z

    .line 15
    iput-boolean v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isUsedDefaultFallback:Z

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->failedMaxRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->captchaId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->yCoordinate:I

    return p0
.end method

.method static synthetic access$1100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->width:I

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->listener:Lcom/netease/nis/captcha/CaptchaListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->timeout:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isHideCloseButton:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isTouchOutsideDisappear:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isUsedDefaultFallback:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->failedMaxRetryCount:I

    return p0
.end method

.method static synthetic access$1800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->apiServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mode:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->staticServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isIpv6:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmConfigServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmApiServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmStaticServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingTextId:I

    return p0
.end method

.method static synthetic access$2700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingAnimResId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->extraData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->debug:Z

    return p0
.end method

.method static synthetic access$300(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->langType:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->theme:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->backgroundDimAmount:F

    return p0
.end method

.method static synthetic access$600(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->startIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->movingIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->errorIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->xCoordinate:I

    return p0
.end method


# virtual methods
.method public apiServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->apiServer:Ljava/lang/String;

    return-object p0
.end method

.method public backgroundDimAmount(F)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->backgroundDimAmount:F

    return-object p0
.end method

.method public build(Landroid/content/Context;)Lcom/netease/nis/captcha/CaptchaConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/captcha/CaptchaConfiguration;

    invoke-direct {v0, p1, p0}, Lcom/netease/nis/captcha/CaptchaConfiguration;-><init>(Landroid/content/Context;Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;)V

    return-object v0
.end method

.method public captchaId(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->captchaId:Ljava/lang/String;

    return-object p0
.end method

.method public controlBarImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->startIconUrl:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->movingIconUrl:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->errorIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public debug(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->debug:Z

    return-object p0
.end method

.method public extraData(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->extraData:Ljava/lang/String;

    return-object p0
.end method

.method public failedMaxRetryCount(I)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->failedMaxRetryCount:I

    return-object p0
.end method

.method public hideCloseButton(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isHideCloseButton:Z

    return-object p0
.end method

.method public ipv6(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isIpv6:Z

    return-object p0
.end method

.method public languageType(Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->langType:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    return-object p0
.end method

.method public listener(Lcom/netease/nis/captcha/CaptchaListener;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->listener:Lcom/netease/nis/captcha/CaptchaListener;

    return-object p0
.end method

.method public loadingAnimResId(I)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingAnimResId:I

    return-object p0
.end method

.method public loadingText(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingText:Ljava/lang/String;

    return-object p0
.end method

.method public loadingTextId(I)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingTextId:I

    return-object p0
.end method

.method public mode(Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mode:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    return-object p0
.end method

.method public position(II)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 5
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->xCoordinate:I

    .line 6
    iput p2, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->yCoordinate:I

    return-object p0
.end method

.method public position(IIII)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->xCoordinate:I

    .line 2
    iput p2, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->yCoordinate:I

    .line 3
    iput p3, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->width:I

    .line 4
    iput p4, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->height:I

    return-object p0
.end method

.method public protocol(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 2

    const-string v0, "http"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, v1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public staticServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->staticServer:Ljava/lang/String;

    return-object p0
.end method

.method public theme(Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->theme:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    return-object p0
.end method

.method public timeout(J)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->timeout:J

    return-object p0
.end method

.method public touchOutsideDisappear(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isTouchOutsideDisappear:Z

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->url:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public useDefaultFallback(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->isUsedDefaultFallback:Z

    return-object p0
.end method

.method public wmApiServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmApiServer:Ljava/lang/String;

    return-object p0
.end method

.method public wmConfigServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmConfigServer:Ljava/lang/String;

    return-object p0
.end method

.method public wmStaticServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mWmStaticServer:Ljava/lang/String;

    return-object p0
.end method
