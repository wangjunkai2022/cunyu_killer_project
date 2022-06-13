.class public Lreflection/MirrorReflection$StaticMethodWrapper;
.super Lreflection/MirrorReflection$MemberWrapper;
.source "MirrorReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lreflection/MirrorReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticMethodWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lreflection/MirrorReflection$MemberWrapper<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1}, Lreflection/MirrorReflection$MemberWrapper;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    const/4 v0, 0x0

    .line 348
    :try_start_0
    iget-object v1, p0, Lreflection/MirrorReflection$StaticMethodWrapper;->member:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public varargs callWithException([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lreflection/MirrorReflection$StaticMethodWrapper;->member:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
