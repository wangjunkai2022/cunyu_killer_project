package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class h extends c.AbstractC0003c {
    public h(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.c + (j * ((long) bVar.e));
        this.a = fVar.e(allocate, j2);
        this.b = fVar.c(allocate, 8 + j2);
        this.c = fVar.c(allocate, 16 + j2);
        this.d = fVar.c(allocate, j2 + 40);
    }
}
