.class public final Lcom/tencent/thumbplayer/h/c/b;
.super Landroid/graphics/SurfaceTexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/h/c/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/h/c/b$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/thumbplayer/h/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/c/b;->a:Lcom/tencent/thumbplayer/h/c/b$a;

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/c/b;->a:Lcom/tencent/thumbplayer/h/c/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/h/c/b$a;->a()V

    :cond_0
    return-void
.end method
