.class public interface abstract Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlatformViewsHandler"
.end annotation


# virtual methods
.method public abstract clearFocus(I)V
.end method

.method public abstract createAndroidViewForPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V
.end method

.method public abstract createVirtualDisplayForPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)J
.end method

.method public abstract disposeAndroidViewForPlatformView(I)V
.end method

.method public abstract disposeVirtualDisplayForPlatformView(I)V
.end method

.method public abstract onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;)V
.end method

.method public abstract resizePlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Ljava/lang/Runnable;)V
.end method

.method public abstract setDirection(II)V
.end method

.method public abstract synchronizeToNativeViewHierarchy(Z)V
.end method
