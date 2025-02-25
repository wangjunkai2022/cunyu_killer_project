.class public final synthetic Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    iput-object p2, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$3:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$0:Ltop/niunaijun/blackbox/app/BActivityThread;

    iget-object v1, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;->f$3:Landroid/os/ConditionVariable;

    invoke-virtual {v0, v1, v2, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$bindApplication$0$BActivityThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method
