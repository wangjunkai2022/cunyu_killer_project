.class public interface abstract annotation Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
.super Ljava/lang/Object;
.source "ProxyMethods.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
