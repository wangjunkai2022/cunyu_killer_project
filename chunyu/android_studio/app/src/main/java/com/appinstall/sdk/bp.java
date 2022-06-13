package com.appinstall.sdk;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class bp {
    private static int a(FileChannel fileChannel, long j, ByteBuffer byteBuffer) throws IOException {
        int read;
        int i = 0;
        while (byteBuffer.hasRemaining() && (read = fileChannel.read(byteBuffer, j)) != -1) {
            j += (long) read;
            i += read;
        }
        return i;
    }

    private static int a(FileChannel fileChannel, long j, byte[] bArr, int i, int i2) throws IOException {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        int i3 = 0;
        while (i3 < i2) {
            int read = fileChannel.read(wrap, ((long) i3) + j);
            if (read == -1) {
                break;
            }
            i3 += read;
        }
        return i3;
    }

    public static bo a(FileChannel fileChannel) throws IOException {
        bt b = b(fileChannel);
        if (b == null) {
            return null;
        }
        if (b.f < 32) {
            return new bo(b);
        }
        byte[] bArr = new byte[24];
        a(fileChannel, b.f - ((long) bArr.length), bArr, 0, bArr.length);
        long c = bq.c(bArr, bArr.length - 24, ByteOrder.LITTLE_ENDIAN);
        long c2 = bq.c(bArr, bArr.length - 16, ByteOrder.LITTLE_ENDIAN);
        long c3 = bq.c(bArr, bArr.length - 8, ByteOrder.LITTLE_ENDIAN);
        if (c2 != 2334950737559900225L || c3 != 3617552046287187010L) {
            return new bo(b);
        }
        int i = (int) (8 + c);
        long j = (long) i;
        long j2 = b.f - j;
        if (i < 32 || j2 < 0) {
            return new bo(b);
        }
        if (j > 20971520) {
            return new bo(b);
        }
        ByteBuffer allocate = ByteBuffer.allocate(i - 24);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (a(fileChannel, j2, allocate) != allocate.capacity() || ((ByteBuffer) allocate.flip()).getLong() != c) {
            return new bo(b);
        }
        bs bsVar = new bs(j2);
        while (allocate.remaining() >= 12) {
            long j3 = allocate.getLong();
            int i2 = allocate.getInt();
            int i3 = (int) (j3 - 4);
            if (i3 < 0 || i3 > allocate.remaining()) {
                break;
            }
            byte[] bArr2 = new byte[i3];
            allocate.get(bArr2, 0, bArr2.length);
            bsVar.a(i2, bArr2);
        }
        return new bo(bsVar, b);
    }

    private static void a(FileChannel fileChannel, FileChannel fileChannel2, long j, long j2) throws IOException {
        while (j2 > 0) {
            long transferTo = fileChannel.transferTo(j, j2, fileChannel2);
            j += transferTo;
            j2 -= transferTo;
        }
    }

    public static void a(byte[] bArr, File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            FileChannel channel = fileInputStream.getChannel();
            FileChannel channel2 = fileOutputStream.getChannel();
            bo a = a(channel);
            channel.position(0L);
            if (a == null) {
                a(channel, channel2, 0, channel.size());
                return;
            }
            a.a(bArr);
            bs b = a.b();
            bt a2 = a.a();
            if (b != null) {
                a(channel, channel2, 0, b.b());
                ByteBuffer[] e = b.e();
                for (ByteBuffer byteBuffer : e) {
                    while (byteBuffer.hasRemaining()) {
                        channel2.write(byteBuffer);
                    }
                }
                a(channel, channel2, a2.f, a2.h - a2.f);
            } else {
                a(channel, channel2, 0, a2.h);
            }
            ByteBuffer a3 = a2.a(b != null ? b.a() : a2.f);
            while (a3.hasRemaining()) {
                channel2.write(a3);
            }
        } finally {
            fileInputStream.close();
            fileOutputStream.close();
        }
    }

    private static bt b(FileChannel fileChannel) throws IOException {
        int i;
        byte[] bArr = new byte[128];
        long size = fileChannel.size();
        if (size < 22) {
            return null;
        }
        long j = 0;
        long max = Math.max(0L, (size > 65557 ? size - 65557 : 0) - ((long) (bArr.length - 22)));
        long length = size - ((long) bArr.length);
        while (length >= max) {
            int i2 = (length > j ? 1 : (length == j ? 0 : -1));
            if (i2 < 0) {
                int i3 = (int) (-length);
                Arrays.fill(bArr, 0, i3, (byte) 0);
                i = i3;
            } else {
                i = 0;
            }
            a(fileChannel, i2 < 0 ? j : length, bArr, i, bArr.length - i);
            for (int length2 = bArr.length - 22; length2 >= 0; length2--) {
                if (bArr[length2 + 0] == 80 && bArr[length2 + 1] == 75 && bArr[length2 + 2] == 5 && bArr[length2 + 3] == 6) {
                    int b = bq.b(bArr, length2 + 20, ByteOrder.LITTLE_ENDIAN) & 65535;
                    long j2 = length + ((long) length2);
                    if (j2 + 22 + ((long) b) == size) {
                        bt btVar = new bt();
                        btVar.h = j2;
                        btVar.a = bq.b(bArr, length2 + 4, ByteOrder.LITTLE_ENDIAN) & 65535;
                        btVar.b = bq.b(bArr, length2 + 6, ByteOrder.LITTLE_ENDIAN) & 65535;
                        btVar.c = bq.b(bArr, length2 + 8, ByteOrder.LITTLE_ENDIAN) & 65535;
                        btVar.d = 65535 & bq.b(bArr, length2 + 10, ByteOrder.LITTLE_ENDIAN);
                        btVar.e = ((long) bq.a(bArr, length2 + 12, ByteOrder.LITTLE_ENDIAN)) & 4294967295L;
                        btVar.f = ((long) bq.a(bArr, length2 + 16, ByteOrder.LITTLE_ENDIAN)) & 4294967295L;
                        if (b > 0) {
                            btVar.g = new byte[b];
                            a(fileChannel, btVar.h + 22, btVar.g, 0, b);
                        }
                        return btVar;
                    }
                }
            }
            length -= (long) (bArr.length - 22);
            j = 0;
        }
        return null;
    }
}
