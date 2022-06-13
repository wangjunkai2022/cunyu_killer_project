.class public Lcom/tencent/liteav/audio/TXCAudioSettings;
.super Ljava/lang/Object;
.source "TXCAudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/TXCAudioSettings$a;
    }
.end annotation


# static fields
.field private static final AUDIO_SETTINGS:Ljava/lang/String; = "txc_audio_settings"

.field private static final TAG:Ljava/lang/String; = "TXCAudioSettings"

.field public static final TIMESTAMP_ROLLBACK_TO_STABLE_SAMPLERATE:Ljava/lang/String; = "timestamp_rollback_to_stable_samplerate"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "txc_audio_settings"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "TXCAudioSettings"

    const-string v1, "context is null, getSharedPreferences failed."

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/audio/TXCAudioSettings$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioSettings;-><init>()V

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TXCAudioSettings"

    if-nez v0, :cond_0

    const-string p1, "getSharedPreferences is null"

    .line 71
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 76
    :cond_0
    :try_start_0
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 79
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 81
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 82
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 83
    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 84
    :cond_4
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 85
    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 86
    :cond_5
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_6

    .line 87
    move-object v2, p2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_6
    return-object p2

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "get value from sharedpreference failed for key: %s"

    .line 90
    invoke-static {v1, p1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/TXCAudioSettings;
    .locals 1

    .line 22
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioSettings$a;->a()Lcom/tencent/liteav/audio/TXCAudioSettings;

    move-result-object v0

    return-object v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "TXCAudioSettings"

    const-string p2, "getSharedPreferences is null"

    .line 48
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 54
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 55
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 57
    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 59
    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 60
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 61
    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 62
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :cond_5
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 64
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    :cond_6
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/TXCAudioSettings;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 0

    .line 38
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/TXCAudioSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
