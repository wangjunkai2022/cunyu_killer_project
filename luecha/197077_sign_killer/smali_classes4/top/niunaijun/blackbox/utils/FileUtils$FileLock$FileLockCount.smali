.class Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLockCount"
.end annotation


# instance fields
.field fChannel:Ljava/nio/channels/FileChannel;

.field fOs:Ljava/io/RandomAccessFile;

.field mFileLock:Ljava/nio/channels/FileLock;

.field mRefCount:I

.field final synthetic this$0:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fileLock",
            "mRefCount",
            "fOs",
            "fChannel"
        }
    .end annotation

    .line 474
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->this$0:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 476
    iput p3, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    .line 477
    iput-object p4, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 478
    iput-object p5, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method
