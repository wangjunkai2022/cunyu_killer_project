package io.flutter.plugin.common;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface MessageCodec<T> {
    T decodeMessage(ByteBuffer byteBuffer);

    ByteBuffer encodeMessage(T t);
}
