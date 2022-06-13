.class public interface abstract Lcom/netease/mobsec/AbstractNetClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendGet(Ljava/lang/String;I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendPost(Ljava/lang/String;Ljava/lang/String;I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
