package com.example.super_network_kit;

import okhttp3.WebSocket;
import okio.ByteString;

/* loaded from: classes2.dex */
interface IWsManager {
    int getCurrentStatus();

    WebSocket getWebSocket();

    boolean isWsConnected();

    boolean sendMessage(String str);

    boolean sendMessage(ByteString byteString);

    void setCurrentStatus(int i);

    void startConnect();

    void stopConnect();
}
