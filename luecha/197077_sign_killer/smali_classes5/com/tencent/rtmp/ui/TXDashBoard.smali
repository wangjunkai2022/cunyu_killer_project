.class public Lcom/tencent/rtmp/ui/TXDashBoard;
.super Landroid/widget/LinearLayout;
.source "TXDashBoard.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/ScrollView;

.field protected d:Ljava/lang/StringBuffer;

.field protected e:I

.field private final f:Ljava/text/SimpleDateFormat;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp/ui/TXDashBoard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    const/16 p1, 0xbb8

    .line 29
    iput p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->e:I

    .line 30
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm:ss.SSS"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->f:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->g:Z

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->setOrientation(I)V

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    if-gez p2, :cond_1

    move p2, v0

    .line 236
    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    .line 92
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    const v1, -0xbf7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    iget-object v3, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 104
    iget-object v3, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 109
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    iget-object v2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXDashBoard;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXDashBoard;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liteav sdk version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    const-string v0, "AUDIO_PLAY_INFO"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CPU_USAGE"

    .line 207
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RES:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VIDEO_WIDTH"

    .line 208
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VIDEO_HEIGHT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NET_SPEED"

    .line 209
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "Kbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JIT:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NET_JITTER"

    .line 210
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "VIDEO_FPS"

    .line 211
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GOP:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "VIDEO_GOP"

    .line 212
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "s"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ARA:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AUDIO_BITRATE"

    .line 213
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUE:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AUDIO_CACHE"

    .line 214
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "VIDEO_CACHE"

    .line 215
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "V_SUM_CACHE_SIZE"

    .line 216
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "V_DEC_CACHE_SIZE"

    .line 217
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AV_RECV_INTERVAL"

    .line 218
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AV_PLAY_INTERVAL"

    .line 219
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "AUDIO_CACHE_THRESHOLD"

    .line 220
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "%.1f"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VRA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VIDEO_BITRATE"

    .line 221
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AUDIO_DROP"

    .line 222
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VIDEO_DROP"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SVR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SERVER_IP"

    .line 223
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/16 p1, 0xb

    aput-object v0, v1, p1

    const-string p1, "%-16s %-16s %-16s\n%-12s %-12s %-12s %-12s\n%-14s %-14s %-14s\n%-16s %-16s"

    .line 206
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 152
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v1, p3, p4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->e:I

    if-le v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7db

    if-eq p3, v0, :cond_5

    const/16 v0, 0x7dc

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-gtz p1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "liteav sdk version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p2, :cond_5

    const-string p1, "EVT_MSG"

    .line 173
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 175
    invoke-virtual {p0, p3, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(ILjava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Landroid/widget/ScrollView;Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->f:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liteav sdk version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->e:I

    if-le v1, v2, :cond_3

    .line 135
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    .line 141
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 142
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->g:Z

    return-void
.end method

.method public setEventTextSize(F)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setLogMsgLenLimit(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->e:I

    return-void
.end method

.method public setShowLevel(I)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->b()V

    .line 80
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/tencent/rtmp/ui/TXDashBoard;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXDashBoard;->b()V

    .line 74
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/tencent/rtmp/ui/TXDashBoard;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->c:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 70
    :cond_3
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXDashBoard;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setStatusTextSize(F)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXDashBoard;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method
