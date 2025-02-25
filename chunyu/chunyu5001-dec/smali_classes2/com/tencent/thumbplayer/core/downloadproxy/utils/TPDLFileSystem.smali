.class public Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;
.super Ljava/lang/Object;
.source "TPDLFileSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 0

    .line 323
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->clearInternalCache(Landroid/content/Context;)V

    .line 324
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->clearExternalCache(Landroid/content/Context;)V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 333
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->clearInternalCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->clearExternalCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearExternalCache(Landroid/content/Context;)V
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static clearExternalCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static clearInternalCache(Landroid/content/Context;)V
    .locals 0

    .line 268
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static clearInternalCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static deleteDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->deleteInternalDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->deleteExternalDirectory(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteExternalDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static deleteInternalDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public static getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getExternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getExternalDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 235
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 256
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInternalDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 175
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 207
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getNewerCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 370
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 371
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 372
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->compare(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getNewerFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 356
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 358
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->compare(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getProperCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 377
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 383
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getProperCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 310
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 314
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getProperDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 389
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getProperFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 291
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLIOUtil;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
