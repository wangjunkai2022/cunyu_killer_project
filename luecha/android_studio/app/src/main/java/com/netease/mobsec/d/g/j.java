package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class j extends c.d {
    public j(f fVar, c.b bVar, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.a = fVar.e(allocate, bVar.d + ((long) (i * bVar.g)) + 44);
    }
}
