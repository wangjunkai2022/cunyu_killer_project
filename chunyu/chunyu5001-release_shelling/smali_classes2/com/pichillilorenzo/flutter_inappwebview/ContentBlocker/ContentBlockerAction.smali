.class public Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;
.super Ljava/lang/Object;
.source "ContentBlockerAction.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field selector:Ljava/lang/String;

.field type:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->type:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    .line 11
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->type:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->CSS_DISPLAY_NONE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    invoke-virtual {p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 14
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->selector:Ljava/lang/String;

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;"
        }
    .end annotation

    const-string v0, "type"

    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    move-result-object v0

    const-string v1, "selector"

    .line 19
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 20
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

    invoke-direct {v1, v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;Ljava/lang/String;)V

    return-object v1
.end method
