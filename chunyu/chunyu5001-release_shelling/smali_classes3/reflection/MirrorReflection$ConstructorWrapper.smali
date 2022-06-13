.class public Lreflection/MirrorReflection$ConstructorWrapper;
.super Lreflection/MirrorReflection$MemberWrapper;
.source "MirrorReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lreflection/MirrorReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lreflection/MirrorReflection$MemberWrapper<",
        "Ljava/lang/reflect/Constructor<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1}, Lreflection/MirrorReflection$MemberWrapper;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 399
    :try_start_0
    iget-object v0, p0, Lreflection/MirrorReflection$ConstructorWrapper;->member:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method
