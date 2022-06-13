package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class g extends c.AbstractC0003c {
    public g(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(bVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.c + (j * ((long) bVar.e));
        this.a = fVar.e(allocate, j2);
        this.b = fVar.e(allocate, 4 + j2);
        this.c = fVar.e(allocate, 8 + j2);
        this.d = fVar.e(allocate, j2 + 20);
    }
}
