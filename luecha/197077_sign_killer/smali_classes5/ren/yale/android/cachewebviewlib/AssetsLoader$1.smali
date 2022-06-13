.class Lren/yale/android/cachewebviewlib/AssetsLoader$1;
.super Ljava/lang/Object;
.source "AssetsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lren/yale/android/cachewebviewlib/AssetsLoader;->initData()Lren/yale/android/cachewebviewlib/AssetsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lren/yale/android/cachewebviewlib/AssetsLoader;


# direct methods
.method constructor <init>(Lren/yale/android/cachewebviewlib/AssetsLoader;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader$1;->this$0:Lren/yale/android/cachewebviewlib/AssetsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader$1;->this$0:Lren/yale/android/cachewebviewlib/AssetsLoader;

    invoke-static {v0}, Lren/yale/android/cachewebviewlib/AssetsLoader;->access$000(Lren/yale/android/cachewebviewlib/AssetsLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->access$100(Lren/yale/android/cachewebviewlib/AssetsLoader;Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;

    return-void
.end method
