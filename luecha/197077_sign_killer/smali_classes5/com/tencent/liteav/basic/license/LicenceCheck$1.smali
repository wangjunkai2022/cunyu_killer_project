.class Lcom/tencent/liteav/basic/license/LicenceCheck$1;
.super Ljava/lang/Object;
.source "LicenceCheck.java"

# interfaces
.implements Lcom/tencent/liteav/basic/license/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

.field final synthetic b:Lcom/tencent/liteav/basic/license/LicenceCheck;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iput-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LicenceCheck"

    const-string v1, "downloadLicense, onProcessEnd"

    .line 252
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->f:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    const-string p1, "LicenceCheck"

    const-string v0, "downloadLicense, onProgressUpdate"

    .line 247
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "LicenceCheck"

    const-string p2, "downloadLicense, onSaveFailed"

    .line 242
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    const-string v0, "LicenceCheck"

    if-nez p1, :cond_0

    const-string p1, "downloadLicense, license not modified"

    .line 220
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iget-object v1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-static {p1, v1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    iget-object v1, p2, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    const-string p1, "downloadLicense, onSaveSuccess"

    .line 226
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "downloadLicense, readDownloadTempLicence is empty!"

    .line 229
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->f:Z

    return-void

    .line 233
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->b:Lcom/tencent/liteav/basic/license/LicenceCheck;

    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$1;->a:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V

    :cond_2
    return-void
.end method
