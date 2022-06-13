.class public Lxyz/ipig/native_dialog/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# static fields
.field private static alertDefaultBuilder:Lxyz/ipig/native_dialog/Builder;

.field private static defaultBuilder:Lxyz/ipig/native_dialog/Builder;


# instance fields
.field backAlpha:I

.field backColor:I

.field cancleAble:Z

.field icon:I

.field loadingDuration:J

.field padding:F

.field round:F

.field roundAlpha:I

.field roundColor:I

.field sheetCellHeight:I

.field sheetCellPad:I

.field sheetPressAlph:I

.field stayDuration:J

.field text:Ljava/lang/String;

.field textColor:I

.field textSize:F

.field touchAble:Z

.field withAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lxyz/ipig/native_dialog/Builder;->backColor:I

    .line 14
    iput v0, p0, Lxyz/ipig/native_dialog/Builder;->backAlpha:I

    const/high16 v1, -0x1000000

    .line 15
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->textColor:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 16
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->textSize:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 17
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->padding:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 18
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->round:F

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->roundColor:I

    const/16 v1, 0x64

    .line 20
    iput v1, p0, Lxyz/ipig/native_dialog/Builder;->roundAlpha:I

    .line 21
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/Builder;->touchAble:Z

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/Builder;->withAnim:Z

    const-wide/16 v0, 0x3e8

    .line 23
    iput-wide v0, p0, Lxyz/ipig/native_dialog/Builder;->stayDuration:J

    const/16 v0, 0xf

    .line 29
    iput v0, p0, Lxyz/ipig/native_dialog/Builder;->sheetPressAlph:I

    const/16 v0, 0x30

    .line 30
    iput v0, p0, Lxyz/ipig/native_dialog/Builder;->sheetCellHeight:I

    const/16 v0, 0xd

    .line 31
    iput v0, p0, Lxyz/ipig/native_dialog/Builder;->sheetCellPad:I

    return-void
.end method

.method static getAlertDefaultBuilder()Lxyz/ipig/native_dialog/Builder;
    .locals 2

    .line 122
    sget-object v0, Lxyz/ipig/native_dialog/Builder;->alertDefaultBuilder:Lxyz/ipig/native_dialog/Builder;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lxyz/ipig/native_dialog/Builder;

    invoke-direct {v0}, Lxyz/ipig/native_dialog/Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->roundColor(I)Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->roundAlpha(I)Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    const v1, -0x777778

    .line 124
    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->textColor(I)Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->textSize(F)Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->cancleAble(Z)Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    sput-object v0, Lxyz/ipig/native_dialog/Builder;->alertDefaultBuilder:Lxyz/ipig/native_dialog/Builder;

    .line 125
    :cond_0
    sget-object v0, Lxyz/ipig/native_dialog/Builder;->alertDefaultBuilder:Lxyz/ipig/native_dialog/Builder;

    return-object v0
.end method

.method static getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;
    .locals 1

    .line 116
    sget-object v0, Lxyz/ipig/native_dialog/Builder;->defaultBuilder:Lxyz/ipig/native_dialog/Builder;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lxyz/ipig/native_dialog/Builder;

    invoke-direct {v0}, Lxyz/ipig/native_dialog/Builder;-><init>()V

    sput-object v0, Lxyz/ipig/native_dialog/Builder;->defaultBuilder:Lxyz/ipig/native_dialog/Builder;

    .line 118
    :cond_0
    sget-object v0, Lxyz/ipig/native_dialog/Builder;->defaultBuilder:Lxyz/ipig/native_dialog/Builder;

    return-object v0
.end method


# virtual methods
.method public backAlpha(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 55
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->backAlpha:I

    return-object p0
.end method

.method public backColor(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 50
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->backColor:I

    return-object p0
.end method

.method public cancleAble(Z)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 105
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/Builder;->cancleAble:Z

    return-object p0
.end method

.method public icon(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 129
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->icon:I

    return-object p0
.end method

.method public loadingDuration(J)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 139
    iput-wide p1, p0, Lxyz/ipig/native_dialog/Builder;->loadingDuration:J

    return-object p0
.end method

.method public padding(F)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 70
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->padding:F

    return-object p0
.end method

.method public round(F)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 75
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->round:F

    return-object p0
.end method

.method public roundAlpha(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 85
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->roundAlpha:I

    return-object p0
.end method

.method public roundColor(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 80
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->roundColor:I

    return-object p0
.end method

.method public sheetCellHeight(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 39
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->sheetCellHeight:I

    return-object p0
.end method

.method public sheetCellPad(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 34
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->sheetCellPad:I

    return-object p0
.end method

.method public sheetPressAlph(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 45
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->sheetPressAlph:I

    return-object p0
.end method

.method public stayDuration(J)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 100
    iput-wide p1, p0, Lxyz/ipig/native_dialog/Builder;->stayDuration:J

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lxyz/ipig/native_dialog/Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public textColor(I)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 60
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->textColor:I

    return-object p0
.end method

.method public textSize(F)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 65
    iput p1, p0, Lxyz/ipig/native_dialog/Builder;->textSize:F

    return-object p0
.end method

.method public touchAble(Z)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 90
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/Builder;->touchAble:Z

    return-object p0
.end method

.method public withAnim(Z)Lxyz/ipig/native_dialog/Builder;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/Builder;->withAnim:Z

    return-object p0
.end method
