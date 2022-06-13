.class public Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;
.super Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;
.source "BPackageInstallerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BPackageInstallerService"

.field private static final sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;
    .locals 1

    .line 30
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    return-object v0
.end method


# virtual methods
.method public installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    .line 46
    invoke-interface {v2, p1, v1, p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackageAsUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BPackageInstallerService"

    invoke-static {v4, v2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "removeApp",
            "userId"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 60
    new-instance p2, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveAppExecutor;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveAppExecutor;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    new-instance p2, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    .line 66
    invoke-interface {v1, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallPackageAsUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exec: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BPackageInstallerService"

    invoke-static {v3, v1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ps"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    const/4 v3, -0x1

    .line 82
    invoke-interface {v2, p1, v1, v3}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BPackageInstallerService"

    invoke-static {v4, v2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
