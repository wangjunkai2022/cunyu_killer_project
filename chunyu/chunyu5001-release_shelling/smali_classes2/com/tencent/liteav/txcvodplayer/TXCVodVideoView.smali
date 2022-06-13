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

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:Z

.field private K:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

.field private L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

.field private M:I

.field private N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

.field private O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

.field private P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

.field private Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field private R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

.field private S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

.field private T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

.field private U:I

.field private V:Lcom/tencent/liteav/txcplayer/e;

.field private W:Landroid/os/Handler;

.field protected a:Z

.field private aa:Z

.field protected b:Z

.field protected final c:I

.field d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

.field e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

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

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 66
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 70
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 88
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 98
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v1, 0x2

    .line 104
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 108
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    const/16 v2, 0x64

    .line 111
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    .line 112
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:Z

    const/16 v2, -0x3e8

    .line 114
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 115
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 415
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 471
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 514
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 523
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 625
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 667
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 675
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 693
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 703
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 714
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 721
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 763
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1075
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    .line 1313
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Z

    .line 121
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 66
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 70
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 88
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 98
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v0, 0x2

    .line 104
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 108
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    const/16 v1, 0x64

    .line 111
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    .line 112
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:Z

    const/16 v1, -0x3e8

    .line 114
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 115
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 415
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 471
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 514
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 523
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 625
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 667
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 675
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 693
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 703
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 714
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 721
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 763
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1075
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    .line 1313
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Z

    .line 126
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 66
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    const/4 p3, 0x0

    .line 69
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 70
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 p3, 0x1

    .line 86
    iput-boolean p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    .line 88
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 98
    iput-boolean p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 p3, 0x2

    .line 104
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:I

    .line 108
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 p3, -0x1

    .line 109
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    const/16 v0, 0x64

    .line 111
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    .line 112
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:Z

    const/16 v0, -0x3e8

    .line 114
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 115
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 415
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 471
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 514
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 523
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 625
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 667
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 675
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 693
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 703
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 714
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 721
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 763
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 1075
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    .line 1313
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcvodplayer/a$b;)Lcom/tencent/liteav/txcvodplayer/a$b;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x83a

    const/16 v1, -0x900

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 1321
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Z

    if-eqz v2, :cond_1

    return-void

    .line 1325
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x65

    .line 1326
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1327
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1328
    iput p1, v2, Landroid/os/Message;->arg1:I

    const-string v4, "description"

    .line 1329
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1331
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 1332
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/16 p2, 0x7e2

    if-eq p1, p2, :cond_4

    const/16 p2, 0x7e0

    if-ne p1, p2, :cond_3

    goto :goto_0

    .line 1337
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

    .line 1339
    :goto_2
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    .line 142
    new-instance p1, Lcom/tencent/liteav/txcplayer/h;

    invoke-direct {p1}, Lcom/tencent/liteav/txcplayer/h;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    .line 145
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k()V

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    .line 148
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setFocusable(Z)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setFocusableInTouchMode(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->requestFocus()Z

    .line 152
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 153
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 156
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1512
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

    .line 748
    invoke-interface {p1, p2}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    const-string v0, "TXCVodVideoView"

    const-string v1, "bindSurfaceHolder"

    .line 751
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-interface {p2}, Lcom/tencent/liteav/txcvodplayer/a$b;->c()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 755
    invoke-interface {p2}, Lcom/tencent/liteav/txcvodplayer/a$b;->b()Landroid/view/Surface;

    move-result-object v0

    .line 758
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->connectPlayer(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 759
    invoke-interface {p2, p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    return p1
.end method

.method private c(Z)V
    .locals 4

    .line 882
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

    .line 883
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    if-lez p1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    goto :goto_0

    .line 885
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_1

    .line 886
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    if-lez v0, :cond_1

    .line 887
    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    .line 888
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    int-to-long v0, p1

    .line 889
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    .line 894
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 895
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return p0
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    return p0
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:Z

    return p0
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return p1
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    return-object p0
.end method

.method private h()Z
    .locals 9

    const-string v0, ".hls"

    .line 306
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

    .line 307
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    .line 317
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

    .line 322
    :cond_1
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    .line 323
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v6, 0x0

    .line 325
    invoke-virtual {v1, v6, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_2
    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 329
    :try_start_0
    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/tencent/liteav/txcplayer/i;->a(Landroid/content/Context;I)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 330
    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v4

    const-string v7, "/"

    .line 331
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 334
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 337
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 339
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 344
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    iget-wide v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    invoke-virtual {v0, v7, v8}, Lcom/tencent/liteav/txcplayer/h;->a(J)V

    .line 345
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    if-ltz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    invoke-virtual {v0, v7}, Lcom/tencent/liteav/txcplayer/h;->e(I)V

    .line 348
    :cond_6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    if-ne v0, v6, :cond_7

    .line 349
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->e(Z)V

    goto :goto_2

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/txcplayer/h;->e(Z)V

    .line 353
    :goto_2
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    if-ne v0, v6, :cond_8

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->enableAdaptiveBitrate()V

    goto :goto_3

    .line 355
    :cond_8
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    const/16 v7, -0x3e8

    if-eq v0, v7, :cond_9

    .line 356
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    .line 359
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setConfig(Lcom/tencent/liteav/txcplayer/h;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 363
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v8, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v8}, Lcom/tencent/liteav/txcplayer/h;->h()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v0, v7, v4, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_4

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Ljava/lang/String;)V

    .line 370
    :goto_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V

    .line 371
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;)V

    .line 372
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;)V

    .line 373
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V

    .line 374
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnBufferingUpdateListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    .line 376
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V

    .line 377
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V

    .line 379
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V

    .line 380
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V

    .line 381
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    new-instance v4, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;

    invoke-direct {v4, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnGetTXCVodVideoViewTargetState(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V

    .line 387
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    .line 389
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, v0, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    .line 390
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioStreamType(I)V

    .line 391
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setScreenOnWhilePlaying(Z)V

    .line 392
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->prepareAsync()V

    .line 396
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    .line 397
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:Z

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    .line 400
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 408
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 409
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v2, v1, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z

    goto :goto_5

    .line 402
    :catch_1
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 403
    iput v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 404
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/16 v3, -0x3ec

    const/16 v4, -0x8ff

    invoke-interface {v0, v2, v3, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z

    :goto_5
    return v1
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    return p0
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:I

    return p1
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 874
    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    return p1
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    return-object p0
.end method

.method private j()Z
    .locals 3

    .line 1060
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

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    return p0
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    return p1
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRender(I)V

    return-void
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return p0
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return p1
.end method

.method private l()V
    .locals 2

    .line 1517
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1518
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V

    .line 1519
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;)V

    .line 1520
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;)V

    .line 1521
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V

    .line 1522
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V

    .line 1523
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnBufferingUpdateListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    .line 1524
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V

    .line 1525
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V

    .line 1526
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V

    .line 1527
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V

    .line 1528
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V

    .line 1529
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnGetTXCVodVideoViewTargetState(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return p0
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return p1
.end method

.method static synthetic n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:J

    return-wide v0
.end method

.method static synthetic p(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:I

    return v0
.end method

.method static synthetic q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:Z

    return p0
.end method

.method static synthetic r(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i()V

    return-void
.end method

.method static synthetic s(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object p0
.end method

.method static synthetic t(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/e;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 817
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 987
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

    .line 988
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getUrlPathExtention()Ljava/lang/String;

    move-result-object v0

    const-string v2, "m3u8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    return-void

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 994
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 995
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result p1

    .line 997
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    if-nez v0, :cond_3

    .line 999
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 1000
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 1003
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    .line 1006
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    .line 1007
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1010
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

    .line 1493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PARAM_SUPER_RESOLUTION_TYPE"

    .line 1497
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1499
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1500
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1501
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->updateRenderProcessMode(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;I)V

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 825
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

    .line 826
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 827
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    .line 828
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l()V

    const/4 v0, 0x0

    .line 829
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    .line 830
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    .line 831
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    const/4 v2, -0x1

    .line 832
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    if-eqz p1, :cond_0

    .line 834
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 835
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    .line 836
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 837
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:F

    .line 838
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:Z

    const/16 p1, -0x3e8

    .line 839
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 841
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    if-eqz p1, :cond_1

    .line 842
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    .line 843
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 844
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 854
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

    .line 855
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 857
    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    if-nez v0, :cond_0

    .line 858
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/16 v0, 0x7d4

    const-string v3, "Playback started"

    const-string v4, "playing"

    .line 859
    invoke-direct {p0, v0, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 862
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 867
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

    .line 870
    :cond_1
    :goto_0
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 1154
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    if-nez v0, :cond_0

    .line 1155
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 4

    .line 903
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 904
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const-string v1, "TXCVodVideoView"

    if-eqz v0, :cond_1

    .line 911
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->stop()V

    const/4 v0, 0x1

    .line 912
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 914
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

    .line 918
    :cond_1
    :goto_0
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

    .line 925
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:I

    .line 926
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

    .line 927
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j()Z

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

    .line 1037
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

    .line 1480
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->publishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1487
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->unpublishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public getBitrateIndex()I
    .locals 2

    .line 1407
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 1411
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 1413
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    return v0
.end method

.method public getBufferDuration()J
    .locals 6

    .line 1047
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 1048
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    .line 1049
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v0

    .line 1052
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

    .line 1053
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
    .locals 5

    .line 964
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    if-ltz v0, :cond_0

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPosition IsSeeking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v0, v0

    return-wide v0

    .line 969
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 972
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 975
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->i()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    int-to-long v0, v2

    :cond_3
    return-wide v0
.end method

.method public getDuration()I
    .locals 3

    .line 951
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 952
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 953
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    .line 955
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    return v0
.end method

.method public getMediaInfo()Lcom/tencent/liteav/txcplayer/f;
    .locals 2

    const/4 v0, 0x0

    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v1, :cond_0

    return-object v0

    .line 1472
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getMediaInfo()Lcom/tencent/liteav/txcplayer/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1474
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMetaRotationDegree()I
    .locals 1

    .line 78
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

    .line 1375
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

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1461
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method getUrlPathExtention()Ljava/lang/String;
    .locals 3

    .line 1399
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v0

    .line 1400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    .line 1401
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

    .line 1366
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    return v0
.end method

.method public getVideoRotationDegree()I
    .locals 1

    .line 1120
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1357
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    return v0
.end method

.method public setAudioPlayoutVolume(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1029
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 1032
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    :cond_1
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/h;->d(Z)V

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 1193
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 4

    .line 1418
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

    .line 1419
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBitrateIndex()I

    move-result v0

    if-eq v0, p1, :cond_5

    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1422
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 1423
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    .line 1428
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 1429
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 1430
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

    .line 1431
    iget v3, v2, Lcom/tencent/liteav/txcplayer/b;->a:I

    if-ne v3, p1, :cond_2

    .line 1432
    iget v0, v2, Lcom/tencent/liteav/txcplayer/b;->d:I

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:I

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_5

    .line 1438
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 1439
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    goto :goto_0

    .line 1445
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1449
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcplayer/h;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1068
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/txcplayer/e;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/e;

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1017
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:Z

    .line 1018
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1021
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    goto :goto_0

    .line 1023
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:I

    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    :goto_0
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    return-void
.end method

.method public setRate(F)V
    .locals 2

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 1178
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setRate(F)V

    .line 1180
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

    .line 228
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

    .line 212
    :cond_0
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSize(II)V

    .line 216
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 217
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setAspectRatio(I)V

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1083
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    .line 1084
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_0

    .line 1085
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 1087
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_1

    .line 1088
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    :cond_1
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 1

    .line 245
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 271
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    :cond_0
    return-void
.end method

.method public setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V
    .locals 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {v2, v3}, Lcom/tencent/liteav/txcvodplayer/a;->removeRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 176
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 185
    :cond_2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    .line 186
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 187
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:I

    if-lez v1, :cond_3

    .line 188
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSize(II)V

    .line 189
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:I

    if-lez v1, :cond_4

    .line 190
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSampleAspectRatio(II)V

    .line 192
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object p1

    .line 193
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 199
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->addView(Landroid/view/View;)V

    .line 202
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->addRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 203
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

    .line 1184
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    return-void
.end method

.method public setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureRenderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSize(II)V

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 239
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setAspectRatio(I)V

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 282
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

    .line 1107
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

    .line 1110
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    .line 1111
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_2

    .line 1112
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    .line 1114
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz p1, :cond_3

    .line 1115
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    :cond_3
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:I

    const/4 v1, -0x1

    .line 295
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:I

    .line 296
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:I

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoURI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h()Z

    .line 300
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->requestLayout()V

    .line 301
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->invalidate()V

    return-void
.end method
