.class public final enum Lcom/netease/nis/captcha/Captcha$CloseType;
.super Ljava/lang/Enum;
.source "Captcha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/captcha/Captcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/nis/captcha/Captcha$CloseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/nis/captcha/Captcha$CloseType;

.field public static final enum TIP_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

.field public static final enum UNDEFINE_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

.field public static final enum USER_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

.field public static final enum VERIFY_SUCCESS_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/netease/nis/captcha/Captcha$CloseType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINE_CLOSE"

    invoke-direct {v0, v2, v1}, Lcom/netease/nis/captcha/Captcha$CloseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/nis/captcha/Captcha$CloseType;->UNDEFINE_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    .line 5
    new-instance v2, Lcom/netease/nis/captcha/Captcha$CloseType;

    const/4 v3, 0x1

    const-string v4, "USER_CLOSE"

    invoke-direct {v2, v4, v3}, Lcom/netease/nis/captcha/Captcha$CloseType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/nis/captcha/Captcha$CloseType;->USER_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    .line 9
    new-instance v4, Lcom/netease/nis/captcha/Captcha$CloseType;

    const/4 v5, 0x2

    const-string v6, "VERIFY_SUCCESS_CLOSE"

    invoke-direct {v4, v6, v5}, Lcom/netease/nis/captcha/Captcha$CloseType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/nis/captcha/Captcha$CloseType;->VERIFY_SUCCESS_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    .line 14
    new-instance v6, Lcom/netease/nis/captcha/Captcha$CloseType;

    const/4 v7, 0x3

    const-string v8, "TIP_CLOSE"

    invoke-direct {v6, v8, v7}, Lcom/netease/nis/captcha/Captcha$CloseType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/nis/captcha/Captcha$CloseType;->TIP_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/netease/nis/captcha/Captcha$CloseType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 15
    sput-object v8, Lcom/netease/nis/captcha/Captcha$CloseType;->$VALUES:[Lcom/netease/nis/captcha/Captcha$CloseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/nis/captcha/Captcha$CloseType;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/nis/captcha/Captcha$CloseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/nis/captcha/Captcha$CloseType;

    return-object p0
.end method

.method public static values()[Lcom/netease/nis/captcha/Captcha$CloseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/captcha/Captcha$CloseType;->$VALUES:[Lcom/netease/nis/captcha/Captcha$CloseType;

    invoke-virtual {v0}, [Lcom/netease/nis/captcha/Captcha$CloseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/nis/captcha/Captcha$CloseType;

    return-object v0
.end method
