.class public interface abstract Landroid/net/wifi/IWifiScanner;
.super Ljava/lang/Object;
.source "IWifiScanner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScanner$Stub;,
        Landroid/net/wifi/IWifiScanner$Default;
    }
.end annotation


# virtual methods
.method public abstract getAvailableChannels(I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMessenger()Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
