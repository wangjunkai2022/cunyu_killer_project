.class public Lreflection/android/app/IActivityManager$ContentProviderHolder;
.super Ljava/lang/Object;
.source "IActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lreflection/android/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderHolder"
.end annotation


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static info:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static provider:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.IActivityManager$ContentProviderHolder"

    .line 14
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/IActivityManager$ContentProviderHolder;->REF:Lreflection/MirrorReflection;

    const-string v1, "info"

    .line 15
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/IActivityManager$ContentProviderHolder;->info:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "provider"

    .line 16
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/IActivityManager$ContentProviderHolder;->provider:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
