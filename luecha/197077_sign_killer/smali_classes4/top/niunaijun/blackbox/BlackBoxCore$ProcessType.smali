.class final enum Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
.super Ljava/lang/Enum;
.source "BlackBoxCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/BlackBoxCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 214
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 215
    new-instance v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v3, "BAppClient"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 216
    new-instance v3, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v5, "Main"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const/4 v5, 0x3

    new-array v5, v5, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 213
    sput-object v5, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->$VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 213
    const-class v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-object p0
.end method

.method public static values()[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    .locals 1

    .line 213
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->$VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    invoke-virtual {v0}, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-object v0
.end method
