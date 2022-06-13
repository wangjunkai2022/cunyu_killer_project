.class public Lcom/humrousz/sequence/AnimationImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AnimationImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;
    }
.end annotation


# static fields
.field private static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

.field private mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

.field private mDrawableFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

.field private mFinishedListener:Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;

.field private mLoopBehavior:I

.field private mLoopCount:I

.field private mSequenceFactory:Lcom/humrousz/sequence/BaseSequenceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "raw"

    const-string v1, "drawable"

    const-string v2, "mipmap"

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/humrousz/sequence/AnimationImageView;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/humrousz/sequence/AnimationImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 30
    iput p3, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    const/4 p3, 0x3

    .line 31
    iput p3, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/humrousz/sequence/AnimationImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/humrousz/sequence/AnimationImageView;)Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationImageView;->mFinishedListener:Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;

    return-object p0
.end method

.method private createDrawable(Ljava/io/InputStream;)Lcom/humrousz/sequence/AnimationSequenceDrawable;
    .locals 2

    .line 235
    new-instance v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationImageView;->mSequenceFactory:Lcom/humrousz/sequence/BaseSequenceFactory;

    invoke-virtual {v1, p1}, Lcom/humrousz/sequence/BaseSequenceFactory;->createSequence(Ljava/io/InputStream;)Lcom/humrousz/sequence/BaseAnimationSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;-><init>(Lcom/humrousz/sequence/BaseAnimationSequence;)V

    .line 236
    iget p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    invoke-virtual {v0, p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopCount(I)V

    .line 237
    iget p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    invoke-virtual {v0, p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopBehavior(I)V

    .line 238
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mDrawableFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    invoke-virtual {v0, p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setOnFinishedListener(Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;)V

    return-object v0
.end method

.method private getInputStreamByResource(Landroid/content/res/Resources;I)Ljava/io/InputStream;
    .locals 0

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private getInputStreamByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance p1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 85
    new-instance v0, Lcom/humrousz/sequence/AnimationImageView$1;

    invoke-direct {v0, p0}, Lcom/humrousz/sequence/AnimationImageView$1;-><init>(Lcom/humrousz/sequence/AnimationImageView;)V

    iput-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mDrawableFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    if-eqz p2, :cond_2

    .line 94
    sget-object v0, Lcom/humrousz/sequence/R$styleable;->AnimationImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Lcom/humrousz/sequence/R$styleable;->AnimationImageView_loopCount:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    .line 96
    iget v1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    if-eq v1, v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationImageView;->setLoopFinite()V

    goto :goto_0

    .line 101
    :cond_0
    sget v1, Lcom/humrousz/sequence/R$styleable;->AnimationImageView_loopBehavior:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    .line 103
    :goto_0
    sget v1, Lcom/humrousz/sequence/R$styleable;->AnimationImageView_srcType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/humrousz/sequence/FrescoSequence;->getSequenceFactory(I)Lcom/humrousz/sequence/BaseSequenceFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/humrousz/sequence/AnimationImageView;->mSequenceFactory:Lcom/humrousz/sequence/BaseSequenceFactory;

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const/4 v1, 0x0

    const-string v3, "src"

    .line 107
    invoke-interface {p2, v0, v3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    sget-object v5, Lcom/humrousz/sequence/AnimationImageView;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-direct {p0, v2, v3}, Lcom/humrousz/sequence/AnimationImageView;->setAnimatedResource(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-super {p0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    const-string v2, "background"

    .line 117
    invoke-interface {p2, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/humrousz/sequence/AnimationImageView;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-direct {p0, v1, p2}, Lcom/humrousz/sequence/AnimationImageView;->setAnimatedResource(ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 122
    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private setAnimatedImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 218
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/humrousz/sequence/AnimationImageView;->getInputStreamByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 219
    invoke-direct {p0, p2}, Lcom/humrousz/sequence/AnimationImageView;->createDrawable(Ljava/io/InputStream;)Lcom/humrousz/sequence/AnimationSequenceDrawable;

    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 224
    :cond_0
    iput-object p2, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setAnimatedResource(ZI)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 133
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/humrousz/sequence/AnimationImageView;->getInputStreamByResource(Landroid/content/res/Resources;I)Ljava/io/InputStream;

    move-result-object p2

    .line 134
    invoke-direct {p0, p2}, Lcom/humrousz/sequence/AnimationImageView;->createDrawable(Ljava/io/InputStream;)Lcom/humrousz/sequence/AnimationSequenceDrawable;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0, p2}, Lcom/humrousz/sequence/AnimationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 140
    :cond_0
    iput-object p2, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    goto :goto_0

    .line 141
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    .line 142
    invoke-virtual {p0, p2}, Lcom/humrousz/sequence/AnimationImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 146
    :cond_2
    iput-object p2, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0, p2}, Lcom/humrousz/sequence/AnimationImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 152
    :cond_4
    iput-object p2, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_5
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 297
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/humrousz/sequence/AnimationImageView;->setAnimatedResource(ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/humrousz/sequence/AnimationImageView;->setAnimatedResource(ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImageResourceFromAssets(Ljava/lang/String;)Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 200
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 201
    invoke-direct {p0, p1}, Lcom/humrousz/sequence/AnimationImageView;->createDrawable(Ljava/io/InputStream;)Lcom/humrousz/sequence/AnimationSequenceDrawable;

    move-result-object p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/humrousz/sequence/AnimationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->destroy()V

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .line 172
    invoke-direct {p0, p0, p1}, Lcom/humrousz/sequence/AnimationImageView;->setAnimatedImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 256
    iput p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    .line 257
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationImageView;->setLoopFinite()V

    .line 258
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedBgDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_0

    .line 259
    iget v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    invoke-virtual {p1, v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopCount(I)V

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz p1, :cond_1

    .line 262
    iget v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopCount:I

    invoke-virtual {p1, v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopCount(I)V

    :cond_1
    return-void
.end method

.method public setLoopDefault()V
    .locals 1

    const/4 v0, 0x3

    .line 267
    iput v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    return-void
.end method

.method public setLoopFinite()V
    .locals 1

    const/4 v0, 0x1

    .line 271
    iput v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    return-void
.end method

.method public setLoopInf()V
    .locals 1

    const/4 v0, 0x2

    .line 275
    iput v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mLoopBehavior:I

    return-void
.end method

.method public setOnFinishedListener(Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mFinishedListener:Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;

    return-void
.end method

.method public setSequenceFactory(Lcom/humrousz/sequence/BaseSequenceFactory;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 290
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationImageView;->mSequenceFactory:Lcom/humrousz/sequence/BaseSequenceFactory;

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationImageView;->mAnimatedSrcDrawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->stop()V

    :cond_0
    return-void
.end method
