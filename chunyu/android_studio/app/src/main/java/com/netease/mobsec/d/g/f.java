package com.netease.mobsec.d.g;

import com.netease.mobsec.d.g.c;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public class f implements Closeable, c {
    private final int a = 1179403647;
    private final FileChannel b;

    public f(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.b = new FileInputStream(file).getChannel();
    }

    private long a(c.b bVar, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            c.AbstractC0003c a = bVar.a(j3);
            if (a.a == 1) {
                long j4 = a.c;
                if (j4 <= j2 && j2 <= a.d + j4) {
                    return (j2 - j4) + a.b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public c.b a() throws IOException {
        this.b.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (e(allocate, 0) == 1179403647) {
            short a = a(allocate, 4);
            boolean z = a(allocate, 5) == 2;
            if (a == 1) {
                return new d(z, this);
            }
            if (a == 2) {
                return new e(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    protected short a(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    protected void a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < ((long) i)) {
            int read = this.b.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += (long) read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }

    public int b(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    public List<String> b() throws IOException {
        long j;
        this.b.position(0L);
        ArrayList arrayList = new ArrayList();
        c.b a = a();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(a.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = (long) a.f;
        int i = 0;
        if (j2 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            j2 = a.a(0).a;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            c.AbstractC0003c a2 = a.a(j3);
            if (a2.a == 2) {
                j = a2.b;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        long j4 = 0;
        while (true) {
            c.a a3 = a.a(j, i);
            long j5 = a3.a;
            if (j5 == 1) {
                arrayList2.add(Long.valueOf(a3.b));
            } else if (j5 == 5) {
                j4 = a3.b;
            }
            i++;
            if (a3.a == 0) {
                break;
            }
        }
        if (j4 != 0) {
            long a4 = a(a, j2, j4);
            for (Long l : arrayList2) {
                arrayList.add(d(allocate, l.longValue() + a4));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    public long c(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b.close();
    }

    protected String d(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            j = 1 + j;
            short a = a(byteBuffer, j);
            if (a == 0) {
                return sb.toString();
            }
            sb.append((char) a);
        }
    }

    public long e(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }
}
