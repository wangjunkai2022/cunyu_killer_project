.class final enum Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;
.super Ljava/lang/Enum;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

.field public static final enum CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

.field public static final enum TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 531
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v1, 0x0

    const-string v2, "CONTENT"

    const-string v3, ".cnt"

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    .line 532
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x1

    const-string v3, "TEMP"

    const-string v4, ".tmp"

    invoke-direct {v0, v3, v2, v4}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    .line 530
    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->$VALUES:[Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 537
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->extension:Ljava/lang/String;

    return-void
.end method

.method public static fromExtension(Ljava/lang/String;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;
    .locals 1

    const-string v0, ".cnt"

    .line 541
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    sget-object p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    return-object p0

    :cond_0
    const-string v0, ".tmp"

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 544
    sget-object p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;
    .locals 1

    .line 530
    const-class v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;
    .locals 1

    .line 530
    sget-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->$VALUES:[Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    invoke-virtual {v0}, [Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    return-object v0
.end method
