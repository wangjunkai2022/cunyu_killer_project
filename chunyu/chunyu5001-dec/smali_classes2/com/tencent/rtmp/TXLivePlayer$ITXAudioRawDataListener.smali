.class public interface abstract Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;
.super Ljava/lang/Object;
.source "TXLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/TXLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITXAudioRawDataListener"
.end annotation


# virtual methods
.method public abstract onAudioInfoChanged(III)V
.end method

.method public abstract onPcmDataAvailable([BJ)V
.end method
