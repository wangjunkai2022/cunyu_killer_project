package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b extends c.a {
    public b(f fVar, c.b bVar, long j, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 16));
        this.a = fVar.c(allocate, j2);
        this.b = fVar.c(allocate, j2 + 8);
    }
}
