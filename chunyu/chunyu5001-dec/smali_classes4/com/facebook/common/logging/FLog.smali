.class public Lcom/facebook/common/logging/FLog;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sHandler:Lcom/facebook/common/logging/LoggingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->getInstance()Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p2, 0x2

    aput-object p4, v2, p2

    aput-object p5, v2, v1

    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 161
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 167
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 173
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 179
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p2, 0x2

    aput-object p4, v2, p2

    aput-object p5, v2, v1

    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 240
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 216
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 222
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 397
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 433
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 409
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 415
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinimumLoggingLevel()I
    .locals 1

    .line 54
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0}, Lcom/facebook/common/logging/LoggingDelegate;->getMinimumLoggingLevel()I

    move-result v0

    return v0
.end method

.method private static getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 331
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 252
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 258
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 264
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 270
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 276
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 337
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 313
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 319
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1

    .line 46
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result p0

    return p0
.end method

.method public static setLoggingDelegate(Lcom/facebook/common/logging/LoggingDelegate;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 42
    sput-object p0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static setMinimumLoggingLevel(I)V
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->setMinimumLoggingLevel(I)V

    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 106
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    aput-object p4, v1, v0

    .line 107
    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 70
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 76
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 82
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 379
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 349
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 385
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 361
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 367
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 469
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 445
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 481
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 457
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 463
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
