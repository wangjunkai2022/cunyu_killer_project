.class public Lcom/tencent/liteav/AudioServerConfig;
.super Ljava/lang/Object;
.source "AudioServerConfig.java"


# static fields
.field private static final AUDIO_SERVER_CONFIG:Ljava/lang/String; = "trtc_audio_server_config"

.field private static final DEFAULT_16K_PACKAGE_STRATEGY:I = 0x0

.field private static final DEFAULT_AEC_LEVEL:I = -0x1

.field private static final DEFAULT_AGC_LEVEL:I = -0x1

.field private static final DEFAULT_ANS_LEVEL:I = -0x1

.field private static final DEFAULT_AUDIO_BITRATE:I = 0x0

.field private static final DEFAULT_AUDIO_CHANNEL:I = 0x0

.field private static final DEFAULT_AUDIO_SAMPLE_RATE:I = 0x0

.field private static final DEFAULT_DEVICE_AUTO_RESTART_MIN_INTERVAL:I = 0x1388

.field private static final DEFAULT_ENABLE_AUTO_RESTART_DEVICE:Z = false

.field private static final DEFAULT_ENABLE_DEVICE_ABNORMAL_DETECTION:I = 0x1

.field private static final DEFAULT_ENABLE_OPENSL:Z = false

.field private static final DEFAULT_ENCODE_MODE:I = 0x0

.field private static final DEFAULT_ENGINE_SOLUTION:I = 0x0

.field private static final DEFAULT_FORCE_ENGINE_SOLUTION:I = 0x0

.field private static final DEFAULT_IS_ENABLE_INBAND_FEC:I = 0x0

.field private static final DEFAULT_IS_LOW_LATENCY_SAMPLERATE_SUPPORTED:Z = false

.field private static final DEFAULT_LOW_LATENCY_SAMPLERATE_BLOCK_TIME:J

.field private static final DEFAULT_MAX_SELECTED_PLAY_STREAMS:I = 0x0

.field private static final DEFAULT_SUPPORT_AAUDIO:Z

.field private static final DEFAULT_SYSTEM_VOLUME_TYPE:I = 0x0

.field private static final KEY_16K_PACKAGE_STRATEGY:Ljava/lang/String; = "16k_package_strategy"

.field private static final KEY_AEC_LEVEL:Ljava/lang/String; = "aec_level"

.field private static final KEY_AGC_LEVEL:Ljava/lang/String; = "agc_level"

.field private static final KEY_ANS_LEVEL:Ljava/lang/String; = "ans_level"

.field private static final KEY_AUDIO_QUALITY_CONFIG_BITRATE:Ljava/lang/String; = "audio_quality_config_bitrate"

.field private static final KEY_AUDIO_QUALITY_CONFIG_CHANNEL:Ljava/lang/String; = "audio_quality_config_channel"

.field private static final KEY_AUDIO_QUALITY_CONFIG_ENCODE_MODE:Ljava/lang/String; = "audio_quality_config_encode_mode"

.field private static final KEY_AUDIO_QUALITY_CONFIG_SAMPLERATE:Ljava/lang/String; = "audio_quality_config_samplerate"

.field private static final KEY_AUDIO_QUALITY_CONFIG_SYSTEM_VOLUME_TYPE:Ljava/lang/String; = "audio_quality_config_system_volume_type"

.field private static final KEY_DEVICE_AUTO_RESTART_MIN_INTERVAL:Ljava/lang/String; = "device_auto_restart_interval"

.field private static final KEY_ENABLE_AUTO_RESTART_DEVICE:Ljava/lang/String; = "enable_auto_restart_device"

.field private static final KEY_ENABLE_DEVICE_ABNORMAL_DETECTION:Ljava/lang/String; = "enable_device_abnormal_detection"

.field private static final KEY_ENABLE_INBAND_FEC:Ljava/lang/String; = "enable_inband_fec"

.field private static final KEY_ENABLE_OPENSL:Ljava/lang/String; = "enable_opensl"

.field private static final KEY_ENGINE_SOLUTION:Ljava/lang/String; = "engine_solution"

.field private static final KEY_FORCE_USE_ENGINE_SOLUTION:Ljava/lang/String; = "force_use_engine_solution"

.field private static final KEY_IS_LOW_LATENCY_SAMPLERATE_SUPPORTED:Ljava/lang/String; = "is_low_latency_samplerate_supported"

.field private static final KEY_LOW_LATENCY_SAMPLERATE_BLOCK_TIME:Ljava/lang/String; = "low_latency_samplerate_block_time"

.field private static final KEY_MAX_SELECTED_PLAY_STREAMS:Ljava/lang/String; = "max_selected_play_streams"

.field private static final KEY_SUPPORT_AAUDIO:Ljava/lang/String; = "support_aaudio"


# instance fields
.field public aecLevel:I

.field public agcLevel:I

.field public ansLevel:I

.field public audio16KPackageStrategy:I

.field public audioBitrate:I

.field public audioChannel:I

.field public audioSampleRate:I

.field public deviceAutoRestartMinInterval:I

.field public enableAutoRestartDevice:Z

.field public enableDeviceAbnormalDetection:I

.field public enableInbandFEC:I

.field public enableOpenSL:Z

.field public encodeMode:I

.field public engineSolution:I

.field public forceUseEngineSolution:I

.field public isLowLatencySampleRateSupported:Z

.field public lowLatencySampleRateBlockTime:J

.field public maxSelectedPlayStreams:I

.field public supportAAudio:Z

.field public systemVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/liteav/AudioServerConfig;->DEFAULT_LOW_LATENCY_SAMPLERATE_BLOCK_TIME:J

    .line 36
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/tencent/liteav/AudioServerConfig;->DEFAULT_SUPPORT_AAUDIO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->aecLevel:I

    .line 61
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->ansLevel:I

    .line 62
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->agcLevel:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/tencent/liteav/AudioServerConfig;->enableOpenSL:Z

    .line 72
    iput-boolean v0, p0, Lcom/tencent/liteav/AudioServerConfig;->enableAutoRestartDevice:Z

    const/16 v1, 0x1388

    .line 77
    iput v1, p0, Lcom/tencent/liteav/AudioServerConfig;->deviceAutoRestartMinInterval:I

    .line 79
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->audio16KPackageStrategy:I

    .line 81
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->maxSelectedPlayStreams:I

    .line 86
    iput-boolean v0, p0, Lcom/tencent/liteav/AudioServerConfig;->isLowLatencySampleRateSupported:Z

    .line 91
    sget-wide v1, Lcom/tencent/liteav/AudioServerConfig;->DEFAULT_LOW_LATENCY_SAMPLERATE_BLOCK_TIME:J

    iput-wide v1, p0, Lcom/tencent/liteav/AudioServerConfig;->lowLatencySampleRateBlockTime:J

    .line 96
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->enableInbandFEC:I

    const/4 v1, 0x1

    .line 101
    iput v1, p0, Lcom/tencent/liteav/AudioServerConfig;->enableDeviceAbnormalDetection:I

    .line 106
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->engineSolution:I

    .line 111
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->forceUseEngineSolution:I

    .line 116
    iput-boolean v0, p0, Lcom/tencent/liteav/AudioServerConfig;->supportAAudio:Z

    .line 131
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->audioSampleRate:I

    .line 136
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->audioChannel:I

    .line 141
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->audioBitrate:I

    .line 146
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->encodeMode:I

    .line 152
    iput v0, p0, Lcom/tencent/liteav/AudioServerConfig;->systemVolumeType:I

    return-void
.end method

.method public static loadFromSharedPreferences(Landroid/content/Context;)Lcom/tencent/liteav/AudioServerConfig;
    .locals 6

    .line 202
    const-class v0, Lcom/tencent/liteav/AudioServerConfig;

    monitor-enter v0

    .line 203
    :try_start_0
    new-instance v1, Lcom/tencent/liteav/AudioServerConfig;

    invoke-direct {v1}, Lcom/tencent/liteav/AudioServerConfig;-><init>()V

    const-string v2, "trtc_audio_server_config"

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "aec_level"

    const/4 v4, -0x1

    .line 205
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->aecLevel:I

    const-string v2, "ans_level"

    .line 206
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->ansLevel:I

    const-string v2, "agc_level"

    .line 207
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->agcLevel:I

    const-string v2, "enable_opensl"

    .line 208
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/AudioServerConfig;->enableOpenSL:Z

    const-string v2, "enable_auto_restart_device"

    .line 209
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/AudioServerConfig;->enableAutoRestartDevice:Z

    const-string v2, "device_auto_restart_interval"

    const/16 v4, 0x1388

    .line 210
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->deviceAutoRestartMinInterval:I

    const-string v2, "16k_package_strategy"

    .line 211
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->audio16KPackageStrategy:I

    const-string v2, "max_selected_play_streams"

    .line 212
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->maxSelectedPlayStreams:I

    const-string v2, "is_low_latency_samplerate_supported"

    .line 213
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/AudioServerConfig;->isLowLatencySampleRateSupported:Z

    const-string v2, "low_latency_samplerate_block_time"

    .line 214
    sget-wide v4, Lcom/tencent/liteav/AudioServerConfig;->DEFAULT_LOW_LATENCY_SAMPLERATE_BLOCK_TIME:J

    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/liteav/AudioServerConfig;->lowLatencySampleRateBlockTime:J

    const-string v2, "enable_inband_fec"

    .line 215
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->enableInbandFEC:I

    const-string v2, "enable_device_abnormal_detection"

    const/4 v4, 0x1

    .line 216
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->enableDeviceAbnormalDetection:I

    const-string v2, "engine_solution"

    .line 217
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->engineSolution:I

    const-string v2, "audio_quality_config_samplerate"

    .line 218
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->audioSampleRate:I

    const-string v2, "audio_quality_config_channel"

    .line 219
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->audioChannel:I

    const-string v2, "audio_quality_config_bitrate"

    .line 220
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->audioBitrate:I

    const-string v2, "audio_quality_config_encode_mode"

    .line 221
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->encodeMode:I

    const-string v2, "audio_quality_config_system_volume_type"

    .line 222
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->systemVolumeType:I

    const-string v2, "force_use_engine_solution"

    .line 223
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/AudioServerConfig;->forceUseEngineSolution:I

    const-string v2, "support_aaudio"

    .line 224
    sget-boolean v3, Lcom/tencent/liteav/AudioServerConfig;->DEFAULT_SUPPORT_AAUDIO:Z

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v1, Lcom/tencent/liteav/AudioServerConfig;->supportAAudio:Z

    .line 225
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static saveToSharedPreferences(Landroid/content/Context;Lcom/tencent/liteav/AudioServerConfig;)V
    .locals 4

    .line 175
    const-class v0, Lcom/tencent/liteav/AudioServerConfig;

    monitor-enter v0

    :try_start_0
    const-string v1, "trtc_audio_server_config"

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "aec_level"

    .line 178
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->aecLevel:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ans_level"

    .line 179
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->ansLevel:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "agc_level"

    .line 180
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->agcLevel:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_opensl"

    .line 181
    iget-boolean v2, p1, Lcom/tencent/liteav/AudioServerConfig;->enableOpenSL:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_auto_restart_device"

    .line 182
    iget-boolean v2, p1, Lcom/tencent/liteav/AudioServerConfig;->enableAutoRestartDevice:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_auto_restart_interval"

    .line 183
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->deviceAutoRestartMinInterval:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "16k_package_strategy"

    .line 184
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->audio16KPackageStrategy:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "max_selected_play_streams"

    .line 185
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->maxSelectedPlayStreams:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_low_latency_samplerate_supported"

    .line 186
    iget-boolean v2, p1, Lcom/tencent/liteav/AudioServerConfig;->isLowLatencySampleRateSupported:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_latency_samplerate_block_time"

    .line 187
    iget-wide v2, p1, Lcom/tencent/liteav/AudioServerConfig;->lowLatencySampleRateBlockTime:J

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_inband_fec"

    .line 188
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->enableInbandFEC:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_device_abnormal_detection"

    .line 189
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->enableDeviceAbnormalDetection:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "engine_solution"

    .line 190
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->engineSolution:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "audio_quality_config_samplerate"

    .line 191
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->audioSampleRate:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "audio_quality_config_channel"

    .line 192
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->audioChannel:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "audio_quality_config_bitrate"

    .line 193
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->audioBitrate:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "audio_quality_config_encode_mode"

    .line 194
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->encodeMode:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "audio_quality_config_system_volume_type"

    .line 195
    iget v2, p1, Lcom/tencent/liteav/AudioServerConfig;->systemVolumeType:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "support_aaudio"

    .line 196
    iget-boolean p1, p1, Lcom/tencent/liteav/AudioServerConfig;->supportAAudio:Z

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public isAudioDeviceDSPEnabled()Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/tencent/liteav/AudioServerConfig;->forceUseEngineSolution:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 122
    iget v0, p0, Lcom/tencent/liteav/AudioServerConfig;->engineSolution:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->aecLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ansLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->ansLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", agcLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->agcLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableOpenSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/AudioServerConfig;->enableOpenSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableAutoRestartDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/AudioServerConfig;->enableAutoRestartDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceAutoRestartMinInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->deviceAutoRestartMinInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio16KPackageStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->audio16KPackageStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLowLatencySampleRateSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/AudioServerConfig;->isLowLatencySampleRateSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lowLatencySampleRateBlockTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/AudioServerConfig;->lowLatencySampleRateBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", enableDeviceAbnormalDetection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->enableDeviceAbnormalDetection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", engineSolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->engineSolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->audioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->audioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioBitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->audioBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->encodeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemVolumeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/AudioServerConfig;->systemVolumeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
