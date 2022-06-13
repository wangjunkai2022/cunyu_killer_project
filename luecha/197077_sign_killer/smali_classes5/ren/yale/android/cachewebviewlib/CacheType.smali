.class public final enum Lren/yale/android/cachewebviewlib/CacheType;
.super Ljava/lang/Enum;
.source "CacheType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lren/yale/android/cachewebviewlib/CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lren/yale/android/cachewebviewlib/CacheType;

.field public static final enum FORCE:Lren/yale/android/cachewebviewlib/CacheType;

.field public static final enum NORMAL:Lren/yale/android/cachewebviewlib/CacheType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lren/yale/android/cachewebviewlib/CacheType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lren/yale/android/cachewebviewlib/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lren/yale/android/cachewebviewlib/CacheType;->NORMAL:Lren/yale/android/cachewebviewlib/CacheType;

    new-instance v0, Lren/yale/android/cachewebviewlib/CacheType;

    const/4 v2, 0x1

    const-string v3, "FORCE"

    invoke-direct {v0, v3, v2}, Lren/yale/android/cachewebviewlib/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lren/yale/android/cachewebviewlib/CacheType;->FORCE:Lren/yale/android/cachewebviewlib/CacheType;

    const/4 v0, 0x2

    new-array v0, v0, [Lren/yale/android/cachewebviewlib/CacheType;

    .line 6
    sget-object v3, Lren/yale/android/cachewebviewlib/CacheType;->NORMAL:Lren/yale/android/cachewebviewlib/CacheType;

    aput-object v3, v0, v1

    sget-object v1, Lren/yale/android/cachewebviewlib/CacheType;->FORCE:Lren/yale/android/cachewebviewlib/CacheType;

    aput-object v1, v0, v2

    sput-object v0, Lren/yale/android/cachewebviewlib/CacheType;->$VALUES:[Lren/yale/android/cachewebviewlib/CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/CacheType;
    .locals 1

    .line 6
    const-class v0, Lren/yale/android/cachewebviewlib/CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lren/yale/android/cachewebviewlib/CacheType;

    return-object p0
.end method

.method public static values()[Lren/yale/android/cachewebviewlib/CacheType;
    .locals 1

    .line 6
    sget-object v0, Lren/yale/android/cachewebviewlib/CacheType;->$VALUES:[Lren/yale/android/cachewebviewlib/CacheType;

    invoke-virtual {v0}, [Lren/yale/android/cachewebviewlib/CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lren/yale/android/cachewebviewlib/CacheType;

    return-object v0
.end method
