.class public Lreflection/android/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mActivityCallbacks:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.servertransaction.ClientTransaction"

    .line 8
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/servertransaction/ClientTransaction;->REF:Lreflection/MirrorReflection;

    const-string v1, "mActivityCallbacks"

    .line 10
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/servertransaction/ClientTransaction;->mActivityCallbacks:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
