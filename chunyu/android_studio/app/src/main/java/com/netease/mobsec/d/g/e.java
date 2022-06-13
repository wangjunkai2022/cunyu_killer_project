package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public class e extends c.b {
    private final f m;

    public e(boolean z, f fVar) throws IOException {
        this.a = z;
        this.m = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = fVar.b(allocate, 16);
        this.c = fVar.c(allocate, 32);
        this.d = fVar.c(allocate, 40);
        this.e = fVar.b(allocate, 54);
        this.f = fVar.b(allocate, 56);
        this.g = fVar.b(allocate, 58);
        this.h = fVar.b(allocate, 60);
        this.i = fVar.b(allocate, 62);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.a a(long j, int i) throws IOException {
        return new b(this.m, this, j, i);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.AbstractC0003c a(long j) throws IOException {
        return new h(this.m, this, j);
    }

    @Override // com.netease.mobsec.d.g.c.b
    public c.d a(int i) throws IOException {
        return new j(this.m, this, i);
    }
}
