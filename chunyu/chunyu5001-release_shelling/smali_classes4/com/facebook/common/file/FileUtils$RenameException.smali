.class public Lcom/facebook/common/file/FileUtils$RenameException;
.super Ljava/io/IOException;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/file/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/facebook/common/file/FileUtils$RenameException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
