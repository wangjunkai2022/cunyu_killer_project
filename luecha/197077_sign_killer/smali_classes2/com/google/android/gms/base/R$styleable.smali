.class public final Lcom/google/android/gms/base/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/base/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 99
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/base/R$styleable;->LoadingImageView:[I

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/base/R$styleable;->SignInButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f04009e
        0x7f040160
        0x7f040161
    .end array-data

    :array_1
    .array-data 4
        0x7f040075
        0x7f0400c1
        0x7f0401f7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
