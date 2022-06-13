package io.flutter.embedding.engine.dart;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface PlatformMessageHandler {
    void handleMessageFromDart(String str, ByteBuffer byteBuffer, int i, long j);

    void handlePlatformMessageResponse(int i, ByteBuffer byteBuffer);
}
