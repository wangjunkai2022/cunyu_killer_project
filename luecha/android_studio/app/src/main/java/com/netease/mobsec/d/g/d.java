package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d extends c.b {
    private final f m;

    public d(boolean z, f fVar) throws IOException {
        this.a = z;
        this.m = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = fVar.b(allocate, 16);
        this.c = fVar.e(allocate, 28);
        this.d = fVar.e(allocate, 32);
        this.e = fVar.b(allocate, 42);
        this.f = fVar.b(allocate, 44);
        this.g = fVar.b(allocate, 46);
        this.h = fVar.b(allocate, 48);
        this.i = fVar.b(allocate, 50);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.a a(long j, int i) throws IOException {
        return new a(this.m, this, j, i);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.AbstractC0003c a(long j) throws IOException {
        return new g(this.m, this, j);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.d a(int i) throws IOException {
        return new i(this.m, this, i);
    }
}
