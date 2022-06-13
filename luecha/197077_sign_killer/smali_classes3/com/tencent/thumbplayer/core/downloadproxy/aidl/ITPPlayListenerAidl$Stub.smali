.class public abstract Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;
.super Landroid/os/Binder;
.source "ITPPlayListenerAidl.java"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl"

.field static final TRANSACTION_getAdvRemainTime:I = 0xe

.field static final TRANSACTION_getContentType:I = 0x15

.field static final TRANSACTION_getCurrentPlayClipNo:I = 0xd

.field static final TRANSACTION_getCurrentPlayOffset:I = 0xc

.field static final TRANSACTION_getCurrentPosition:I = 0xb

.field static final TRANSACTION_getDataFilePath:I = 0x14

.field static final TRANSACTION_getDataTotalSize:I = 0x13

.field static final TRANSACTION_getPlayInfo:I = 0xf

.field static final TRANSACTION_getPlayerBufferLength:I = 0xa

.field static final TRANSACTION_onDownloadCdnUrlExpired:I = 0x7

.field static final TRANSACTION_onDownloadCdnUrlInfoUpdate:I = 0x6

.field static final TRANSACTION_onDownloadCdnUrlUpdate:I = 0x5

.field static final TRANSACTION_onDownloadError:I = 0x3

.field static final TRANSACTION_onDownloadFinish:I = 0x2

.field static final TRANSACTION_onDownloadProgressUpdate:I = 0x1

.field static final TRANSACTION_onDownloadProtocolUpdate:I = 0x9

.field static final TRANSACTION_onDownloadStatusUpdate:I = 0x8

.field static final TRANSACTION_onPlayCallback:I = 0x4

.field static final TRANSACTION_onReadData:I = 0x11

.field static final TRANSACTION_onStartReadData:I = 0x10

.field static final TRANSACTION_onStopReadData:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 272
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getContentType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 260
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getDataFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 248
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getDataTotalSize(ILjava/lang/String;)J

    move-result-wide p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 234
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 241
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onStopReadData(ILjava/lang/String;I)I

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 218
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v2, p0

    .line 227
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onReadData(ILjava/lang/String;JJ)I

    move-result p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 202
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v2, p0

    .line 211
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onStartReadData(ILjava/lang/String;JJ)I

    move-result p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 192
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getPlayInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 184
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getAdvRemainTime()J

    move-result-wide p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 176
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getCurrentPlayClipNo()I

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 168
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getCurrentPlayOffset()J

    move-result-wide p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 160
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getCurrentPosition()J

    move-result-wide p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 152
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->getPlayerBufferLength()J

    move-result-wide p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 141
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 132
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadStatusUpdate(I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 107
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 85
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 90
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onPlayCallback(ILjava/util/List;)I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 72
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadError(IILjava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 65
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadFinish()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    .line 59
    invoke-virtual/range {v2 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
