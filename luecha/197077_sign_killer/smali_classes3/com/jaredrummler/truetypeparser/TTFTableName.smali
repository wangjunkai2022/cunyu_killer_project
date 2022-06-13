.class public final Lcom/jaredrummler/truetypeparser/TTFTableName;
.super Ljava/lang/Object;
.source "TTFTableName.java"


# static fields
.field public static final NAME:Lcom/jaredrummler/truetypeparser/TTFTableName;

.field public static final OS2:Lcom/jaredrummler/truetypeparser/TTFTableName;

.field public static final TABLE_DIRECTORY:Lcom/jaredrummler/truetypeparser/TTFTableName;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    const-string v1, "tableDirectory"

    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->TABLE_DIRECTORY:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 32
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->NAME:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 35
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    const-string v1, "OS/2"

    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->OS2:Lcom/jaredrummler/truetypeparser/TTFTableName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->name:Ljava/lang/String;

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/jaredrummler/truetypeparser/TTFTableName;
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    invoke-direct {v0, p0}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A TrueType font table name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/jaredrummler/truetypeparser/TTFTableName;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_1
    check-cast p1, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 65
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/TTFTableName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->name:Ljava/lang/String;

    return-object v0
.end method
