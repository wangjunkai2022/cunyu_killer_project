.class Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "it"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TF;>;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->this$0:Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 254
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 245
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->next()Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object v0

    return-object v0
.end method

.method public next()Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mCur:Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 262
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mCur:Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->this$0:Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->removeFilterInternal(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    .line 265
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
