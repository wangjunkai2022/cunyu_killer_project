.class public Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.super Landroid/widget/FrameLayout;
.source "TXCVodVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:F

.field private C:J

.field private volatile D:Z

.field private E:I

.field private F:F

.field private G:F

.field private H:Z

.field private I:I

.field private J:I

.field private K:Z

.field private L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field private M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

.field private N:I

.field private O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

.field private P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

.field private Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

.field private R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

.field private S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

.field private T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

.field private U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

.field private V:I

.field private W:Lcom/tencent/liteav/txcplayer/e;

.field protected a:Z

.field private aa:Landroid/os/Handler;

.field private ab:Z

.field protected b:Z

.field protected final c:I

.field d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

.field e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

.field f:Lcom/tencent/liteav/txcvodplayer/a$a;

.field private g:I

.field private h:I

.field private i:Lcom/tencent/liteav/txcvodplayer/a$b;

.field private j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Lcom/tencent/liteav/txcplayer/h;

.field private x:Lcom/tencent/liteav/txcvodplayer/a;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 64
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 68
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 86
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 96
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v1, 0x2

    .line 102
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 106
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 v1, -0x1

    .line 107
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 109
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    .line 110
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    .line 111
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:Z

    const/16 v2, -0x3e8

    .line 113
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 114
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 408
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 465
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 518
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 527
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 614
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 656
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 664
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 682
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    .line 692
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 703
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 710
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 752
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1082
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    .line 1323
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Z

    .line 120
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 64
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 68
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 86
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 96
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v0, 0x2

    .line 102
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 106
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 109
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    .line 110
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    .line 111
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:Z

    const/16 v1, -0x3e8

    .line 113
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 114
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 408
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 465
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 518
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 527
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 614
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 656
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 664
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 682
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    .line 692
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 703
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 710
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 752
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1082
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    .line 1323
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 64
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 p3, 0x0

    .line 67
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 68
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 p3, 0x1

    .line 84
    iput-boolean p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 86
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 96
    iput-boolean p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 p3, 0x2

    .line 102
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 106
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 p3, -0x1

    .line 107
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 109
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    .line 110
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    .line 111
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:Z

    const/16 v0, -0x3e8

    .line 113
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 114
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 408
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 465
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 518
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 527
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 614
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 656
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 664
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 682
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    .line 692
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 703
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 710
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 752
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1082
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    .line 1323
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcvodplayer/a$b;)Lcom/tencent/liteav/txcvodplayer/a$b;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x83a

    const/16 v1, -0x900

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 1331
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Z

    if-eqz v2, :cond_1

    return-void

    .line 1335
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x65

    .line 1336
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1337
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1338
    iput p1, v2, Landroid/os/Message;->arg1:I

    const-string v4, "description"

    .line 1339
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1341
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 1342
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/16 p2, 0x7e2

    if-eq p1, p2, :cond_4

    const/16 p2, 0x7e0

    if-ne p1, p2, :cond_3

    goto :goto_0

    .line 1347
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSimpleEvent "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " vod="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TXCVodVideoView"

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    .line 1349
    :goto_2
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    .line 141
    new-instance p1, Lcom/tencent/liteav/txcplayer/h;

    invoke-direct {p1}, Lcom/tencent/liteav/txcplayer/h;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    .line 144
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k()V

    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    .line 147
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setFocusable(Z)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setFocusableInTouchMode(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->requestFocus()Z

    .line 151
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 152
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 155
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1506
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->stopRenderProcess(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 737
    invoke-interface {p1, p2}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    const-string v0, "TXCVodVideoView"

    const-string v1, "bindSurfaceHolder"

    .line 740
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-interface {p2}, Lcom/tencent/liteav/txcvodplayer/a$b;->c()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 744
    invoke-interface {p2}, Lcom/tencent/liteav/txcvodplayer/a$b;->b()Landroid/view/Surface;

    move-result-object v0

    .line 747
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->connectPlayer(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 748
    invoke-interface {p2, p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    return p1
.end method

.method private c(Z)V
    .locals 4

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replay, isFromErrorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 868
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    if-lez p1, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    goto :goto_0

    .line 870
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_1

    .line 871
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    if-lez v0, :cond_1

    .line 872
    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    .line 873
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    int-to-long v0, p1

    .line 874
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    .line 879
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    return p0
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    return p0
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return p1
.end method

.method private h()Z
    .locals 9

    const-string v0, ".hls"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo vod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVodVideoView"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v1, :cond_1

    return v3

    .line 321
    :cond_1
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    .line 322
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v6, 0x0

    .line 324
    invoke-virtual {v1, v6, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_2
    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 328
    :try_start_0
    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/tencent/liteav/txcplayer/i;->a(Landroid/content/Context;I)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 329
    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v4

    const-string v7, "/"

    .line 330
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 333
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 334
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 336
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 338
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 343
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    iget-wide v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    invoke-virtual {v0, v7, v8}, Lcom/tencent/liteav/txcplayer/h;->a(J)V

    .line 344
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    if-ltz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    invoke-virtual {v0, v7}, Lcom/tencent/liteav/txcplayer/h;->e(I)V

    .line 347
    :cond_6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    if-ne v0, v6, :cond_7

    .line 348
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->e(Z)V

    goto :goto_2

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/txcplayer/h;->e(Z)V

    .line 352
    :goto_2
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    const/16 v7, -0x3e8

    if-eq v0, v7, :cond_8

    .line 353
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    goto :goto_3

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->enableAdaptiveBitrate()V

    .line 358
    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setConfig(Lcom/tencent/liteav/txcplayer/h;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v8, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v8}, Lcom/tencent/liteav/txcplayer/h;->h()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v0, v7, v4, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_4

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Ljava/lang/String;)V

    .line 369
    :goto_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V

    .line 370
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V

    .line 371
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    .line 372
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;)V

    .line 373
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V

    .line 374
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnBufferingUpdateListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V

    .line 376
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V

    .line 377
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V

    .line 379
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V

    .line 380
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    .line 382
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, v0, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    .line 383
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioStreamType(I)V

    .line 384
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setScreenOnWhilePlaying(Z)V

    .line 385
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->prepareAsync()V

    .line 389
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    iget v5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    invoke-interface {v0, v4, v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setVolume(FF)V

    .line 390
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:Z

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    .line 393
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 401
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v2, v1, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z

    goto :goto_5

    .line 395
    :catch_1
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 396
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 397
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/16 v3, -0x3ec

    const/16 v4, -0x8ff

    invoke-interface {v0, v2, v3, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z

    :goto_5
    return v1
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:I

    return p1
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    return-object p0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 859
    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    return p1
.end method

.method private j()Z
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return p0
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    return p1
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRender(I)V

    return-void
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return p0
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return p1
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    return p0
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return p1
.end method

.method static synthetic n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return p0
.end method

.method static synthetic o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return p0
.end method

.method static synthetic p(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:J

    return-wide v0
.end method

.method static synthetic r(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:I

    return v0
.end method

.method static synthetic s(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Z

    return p0
.end method

.method static synthetic t(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i()V

    return-void
.end method

.method static synthetic u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object p0
.end method

.method static synthetic v(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/e;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 806
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getUrlPathExtention()Ljava/lang/String;

    move-result-object v0

    const-string v2, "m3u8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    return-void

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 997
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result p1

    .line 999
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    if-nez v0, :cond_3

    .line 1001
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 1002
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 1005
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    .line 1008
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    .line 1009
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo Exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PARAM_SUPER_RESOLUTION_TYPE"

    .line 1491
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1493
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1494
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1495
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->updateRenderProcessMode(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;I)V

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release player "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 818
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    .line 820
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    if-eqz p1, :cond_0

    .line 822
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 823
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    .line 824
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    .line 826
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    if-eqz p1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 828
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 830
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 p1, -0x1

    .line 831
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    :cond_2
    return-void
.end method

.method public b()V
    .locals 5

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->start()V

    .line 843
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    if-nez v0, :cond_0

    .line 844
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/16 v0, 0x7d4

    const-string v3, "Playback started"

    const-string v4, "playing"

    .line 845
    invoke-direct {p0, v0, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 848
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    :goto_0
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 1161
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    if-nez v0, :cond_0

    .line 1162
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const-string v1, "TXCVodVideoView"

    if-eqz v0, :cond_0

    .line 890
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->stop()V

    .line 891
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v2, 0x0

    .line 897
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    .line 898
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 899
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 900
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    .line 901
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 902
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 903
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Z

    const/16 v3, -0x3e8

    .line 904
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 905
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    const/4 v2, -0x1

    .line 906
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 907
    iget-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    if-eqz v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 909
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v2, 0x66

    .line 913
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop vod="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x4

    .line 924
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause vod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVodVideoView"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :goto_0
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1044
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1475
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->publishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->unpublishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public getBitrateIndex()I
    .locals 2

    .line 1417
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 1420
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v1, :cond_1

    .line 1421
    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getBufferDuration()J
    .locals 6

    .line 1054
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 1055
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    .line 1056
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v0

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1060
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 965
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const-string v1, "TXCVodVideoView"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    if-ltz v0, :cond_0

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition IsSeeking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v0, v0

    return-wide v0

    .line 970
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 973
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    int-to-long v2, v0

    .line 979
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPosition pos: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public getDuration()I
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 953
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 954
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    .line 956
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    return v0
.end method

.method public getMediaInfo()Lcom/tencent/liteav/txcplayer/f;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1470
    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getMediaInfo()Lcom/tencent/liteav/txcplayer/f;

    move-result-object v0

    return-object v0
.end method

.method public getMetaRotationDegree()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedBitrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/txcplayer/b;",
            ">;"
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1463
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1464
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method getUrlPathExtention()Ljava/lang/String;
    .locals 3

    .line 1409
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    .line 1411
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1376
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return v0
.end method

.method public getVideoRotationDegree()I
    .locals 1

    .line 1127
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1367
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return v0
.end method

.method public setAudioPlayoutVolume(I)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/h;->d(Z)V

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 1200
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 4

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitrateIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    if-eq v0, p1, :cond_5

    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1431
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 1432
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 1437
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 1438
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/b;

    if-eqz v2, :cond_2

    .line 1439
    iget v3, v2, Lcom/tencent/liteav/txcplayer/b;->a:I

    if-ne v3, p1, :cond_2

    .line 1440
    iget v0, v2, Lcom/tencent/liteav/txcplayer/b;->d:I

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_5

    .line 1446
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 1447
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1448
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    goto :goto_0

    .line 1453
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcplayer/h;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1075
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/txcplayer/e;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/e;

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    .line 1019
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:Z

    .line 1020
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1023
    invoke-interface {v0, p1, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setVolume(FF)V

    goto :goto_0

    .line 1025
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    return-void
.end method

.method public setRate(F)V
    .locals 2

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1185
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setRate(F)V

    .line 1187
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    return-void
.end method

.method public setRender(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "invalid render %d\n"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSize(II)V

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 216
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setAspectRatio(I)V

    .line 218
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    .line 222
    :cond_2
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1090
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    .line 1091
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_0

    .line 1092
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 1094
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_1

    .line 1095
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    :cond_1
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 1

    .line 244
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 270
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    :cond_0
    return-void
.end method

.method public setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {v2, v3}, Lcom/tencent/liteav/txcvodplayer/a;->removeRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 175
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 184
    :cond_2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    .line 185
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 186
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    if-lez v1, :cond_3

    .line 187
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSize(II)V

    .line 188
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    if-lez v1, :cond_4

    .line 189
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSampleAspectRatio(II)V

    .line 191
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object p1

    .line 192
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 198
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->addView(Landroid/view/View;)V

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->addRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 202
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    return-void
.end method

.method public setStartTime(F)V
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 1191
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    return-void
.end method

.method public setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureRenderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSize(II)V

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 238
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setAspectRatio(I)V

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoRotationDegree(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x168

    if-eq p1, v0, :cond_0

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support degree "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1117
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    .line 1118
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_2

    .line 1119
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    .line 1121
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_3

    .line 1122
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    :cond_3
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    const/4 v1, -0x1

    .line 294
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 295
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:I

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoURI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    .line 299
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->requestLayout()V

    .line 300
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->invalidate()V

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1030
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    .line 1031
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    .line 1032
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_0

    .line 1033
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:F

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:F

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method
