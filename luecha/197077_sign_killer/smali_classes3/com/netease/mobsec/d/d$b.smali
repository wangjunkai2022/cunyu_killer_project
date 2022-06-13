.class Lcom/netease/mobsec/d/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mobsec/d/d;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/d/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/d/d$b;->b:Lcom/netease/mobsec/d/d;

    iput-object p2, p0, Lcom/netease/mobsec/d/d$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/netease/mobsec/d/d$b;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
