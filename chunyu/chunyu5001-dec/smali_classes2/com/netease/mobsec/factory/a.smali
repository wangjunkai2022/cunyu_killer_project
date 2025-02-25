.class public Lcom/netease/mobsec/factory/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/netease/mobsec/factory/JNIFactory;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/mobsec/factory/JNIFactory;->getInstance()Lcom/netease/mobsec/factory/JNIFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsec/factory/a;->a:Lcom/netease/mobsec/factory/JNIFactory;

    iput-object p1, p0, Lcom/netease/mobsec/factory/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/mobsec/factory/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mobsec/factory/a;->a:Lcom/netease/mobsec/factory/JNIFactory;

    iget-object v2, p0, Lcom/netease/mobsec/factory/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/netease/mobsec/factory/JNIFactory;->w230921e1b36f7799(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/mobsec/factory/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mobsec/factory/a;->a:Lcom/netease/mobsec/factory/JNIFactory;

    iget-object v2, p0, Lcom/netease/mobsec/factory/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/netease/mobsec/factory/JNIFactory;->w238jfd9349jdj394(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
