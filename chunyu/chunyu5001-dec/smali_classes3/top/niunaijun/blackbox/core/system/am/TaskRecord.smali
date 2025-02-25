.class public Ltop/niunaijun/blackbox/core/system/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# instance fields
.field public final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public rootIntent:Landroid/content/Intent;

.field public taskAffinity:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "userId",
            "taskAffinity"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    .line 24
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    .line 25
    iput p2, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    .line 26
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addTopActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .locals 3

    .line 47
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 48
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 49
    iget-boolean v2, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public needNewTask()Z
    .locals 2

    .line 30
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 31
    iget-boolean v1, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public removeActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
