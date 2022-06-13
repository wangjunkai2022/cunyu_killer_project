.class public abstract Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;
.super Landroid/os/Binder;
.source "IHwAudioEngine.java"

# interfaces
.implements Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.multimedia.audioengine.IHwAudioEngine"

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_init:I = 0x3

.field static final TRANSACTION_isFeatureSupported:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioEngine"

    .line 25
    invoke-virtual {p0, p0, v0}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioEngine"

    .line 32
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    instance-of v1, v0, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioEngine"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 65
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 58
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;->isFeatureSupported(I)Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 51
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;->getSupportedFeatures()Ljava/util/List;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1
.end method
