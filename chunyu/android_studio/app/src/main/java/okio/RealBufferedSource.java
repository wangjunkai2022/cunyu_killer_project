package okio;

import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.tekartik.sqflite.Constant;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import okio.internal.BufferKt;

/* compiled from: RealBufferedSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J(\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'H\u0016J \u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'2\u0006\u0010 \u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0018\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010%\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0014H\u0016J\b\u0010+\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020'2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0018H\u0016J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0012H\u0016J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020'H\u0016J\u0018\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\"H\u0016J\b\u00101\u001a\u00020\"H\u0016J\b\u00102\u001a\u00020\u0012H\u0016J\b\u00103\u001a\u00020\u0012H\u0016J\b\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u000205H\u0016J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0018\u00107\u001a\u0002082\u0006\u0010#\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u000208H\u0016J\u0010\u0010;\u001a\u0002082\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010<\u001a\u00020\"H\u0016J\n\u0010=\u001a\u0004\u0018\u000108H\u0016J\b\u0010>\u001a\u000208H\u0016J\u0010\u0010>\u001a\u0002082\u0006\u0010?\u001a\u00020\u0012H\u0016J\u0010\u0010@\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010A\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u000208H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "source", "Lokio/Source;", "(Lokio/Source;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", "close", "", "exhausted", "indexOf", "", "b", "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "peek", "rangeEquals", "offset", "bytesOffset", "", "byteCount", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "", "charset", "Ljava/nio/charset/Charset;", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", NotificationAction.ACTION_SELECT, Constant.METHOD_OPTIONS, "Lokio/Options;", "skip", "timeout", "Lokio/Timeout;", "toString", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer bufferField = new Buffer();
    public boolean closed;
    public final Source source;

    public static /* synthetic */ void getBuffer$annotations() {
    }

    public RealBufferedSource(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "sink");
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        require(j);
        return this.bufferField.readString(j, charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "bytes");
        return indexOf(byteString, 0);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "targetBytes");
        return indexOfElement(byteString, 0);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "bytes");
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int read() {
                if (RealBufferedSource.this.closed) {
                    throw new IOException("closed");
                } else if (RealBufferedSource.this.bufferField.size() == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.bufferField, (long) 8192) == -1) {
                    return -1;
                } else {
                    return RealBufferedSource.this.bufferField.readByte() & 255;
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                Intrinsics.checkNotNullParameter(bArr, "data");
                if (!RealBufferedSource.this.closed) {
                    Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
                    if (RealBufferedSource.this.bufferField.size() == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.bufferField, (long) 8192) == -1) {
                        return -1;
                    }
                    return RealBufferedSource.this.bufferField.read(bArr, i, i2);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int available() {
                if (!RealBufferedSource.this.closed) {
                    return (int) Math.min(RealBufferedSource.this.bufferField.size(), (long) Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.lang.Object
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else if (this.bufferField.size() == 0 && this.source.read(this.bufferField, (long) 8192) == -1) {
            return -1;
        } else {
            return this.bufferField.read(buffer, Math.min(j, this.bufferField.size()));
        }
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else if (!this.bufferField.exhausted() || this.source.read(this.bufferField, (long) 8192) != -1) {
            return false;
        } else {
            return true;
        }
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!this.closed) {
            while (this.bufferField.size() < j) {
                if (this.source.read(this.bufferField, (long) 8192) == -1) {
                    return false;
                }
            }
            return true;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        require(j);
        return this.bufferField.readByteString(j);
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Intrinsics.checkNotNullParameter(options, Constant.METHOD_OPTIONS);
        if (!this.closed) {
            do {
                int selectPrefix = BufferKt.selectPrefix(this.bufferField, options, true);
                if (selectPrefix != -2) {
                    if (selectPrefix == -1) {
                        return -1;
                    }
                    this.bufferField.skip((long) options.getByteStrings$okio()[selectPrefix].size());
                    return selectPrefix;
                }
            } while (this.source.read(this.bufferField, (long) 8192) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        require(j);
        return this.bufferField.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "sink");
        try {
            require((long) bArr.length);
            this.bufferField.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int read = buffer.read(bArr, i, (int) buffer.size());
                if (read != -1) {
                    i += read;
                } else {
                    throw new AssertionError();
                }
            }
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "sink");
        long j = (long) i2;
        Util.checkOffsetAndCount((long) bArr.length, (long) i, j);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, (long) 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(bArr, i, (int) Math.min(j, this.bufferField.size()));
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, (long) 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(byteBuffer);
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "sink");
        try {
            require(j);
            this.bufferField.readFully(buffer, j);
        } catch (EOFException e) {
            buffer.writeAll(this.bufferField);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (this.source.read(this.bufferField, (long) 8192) != -1) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j += completeSegmentByteCount;
                sink.write(this.bufferField, completeSegmentByteCount);
            }
        }
        if (this.bufferField.size() <= 0) {
            return j;
        }
        long size = j + this.bufferField.size();
        Buffer buffer = this.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        require(j);
        return this.bufferField.readUtf8(j);
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return BufferKt.readUtf8Line(this.bufferField, indexOf);
        }
        if (this.bufferField.size() != 0) {
            return readUtf8(this.bufferField.size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            byte b = (byte) 10;
            long indexOf = indexOf(b, 0, j2);
            if (indexOf != -1) {
                return BufferKt.readUtf8Line(this.bufferField, indexOf);
            }
            if (j2 < Long.MAX_VALUE && request(j2) && this.bufferField.getByte(j2 - 1) == ((byte) 13) && request(1 + j2) && this.bufferField.getByte(j2) == b) {
                return BufferKt.readUtf8Line(this.bufferField, j2);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.bufferField;
            buffer2.copyTo(buffer, 0, Math.min((long) 32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j) + " content=" + buffer.readByteString().hex() + "…");
        }
        throw new IllegalArgumentException(("limit < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1);
        byte b = this.bufferField.getByte(0);
        if ((b & 224) == 192) {
            require(2);
        } else if ((b & 240) == 224) {
            require(3);
        } else if ((b & 248) == 240) {
            require(4);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8);
        return this.bufferField.readLongLe();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r4 == 0) goto L_0x002f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9] or '-' character but was 0x");
        r2 = java.lang.Integer.toString(r8, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16)));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /* Code decompiled incorrectly, please refer to instructions dump */
    public long readDecimalLong() {
        /*
            r10 = this;
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        L_0x0008:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L_0x005b
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L_0x0020
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L_0x002a
        L_0x0020:
            int r4 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x002c
            r5 = 45
            byte r5 = (byte) r5
            if (r8 == r5) goto L_0x002a
            goto L_0x002c
        L_0x002a:
            r4 = r6
            goto L_0x0008
        L_0x002c:
            if (r4 == 0) goto L_0x002f
            goto L_0x005b
        L_0x002f:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.append(r2)
            r2 = 16
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            java.lang.String r3 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x005b:
            okio.Buffer r0 = r10.bufferField
            long r0 = r0.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readDecimalLong():long");
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        byte b;
        require(1);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request((long) i2)) {
                break;
            }
            b = this.bufferField.getByte((long) i);
            if ((b < ((byte) 48) || b > ((byte) 57)) && ((b < ((byte) 97) || b > ((byte) 102)) && (b < ((byte) 65) || b > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            String num = Integer.toString(b, CharsKt.checkRadix(CharsKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        if (!this.closed) {
            while (j > 0) {
                if (this.bufferField.size() == 0 && this.source.read(this.bufferField, (long) 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.bufferField.size());
                this.bufferField.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        boolean z = true;
        if (!this.closed) {
            if (0 > j || j2 < j) {
                z = false;
            }
            if (z) {
                while (j < j2) {
                    long indexOf = this.bufferField.indexOf(b, j, j2);
                    if (indexOf != -1) {
                        return indexOf;
                    }
                    long size = this.bufferField.size();
                    if (size >= j2 || this.source.read(this.bufferField, (long) 8192) == -1) {
                        return -1;
                    }
                    j = Math.max(j, size);
                }
                return -1;
            }
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) {
        Intrinsics.checkNotNullParameter(byteString, "bytes");
        if (!this.closed) {
            while (true) {
                long indexOf = this.bufferField.indexOf(byteString, j);
                if (indexOf != -1) {
                    return indexOf;
                }
                long size = this.bufferField.size();
                if (this.source.read(this.bufferField, (long) 8192) == -1) {
                    return -1;
                }
                j = Math.max(j, (size - ((long) byteString.size())) + 1);
            }
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        Intrinsics.checkNotNullParameter(byteString, "targetBytes");
        if (!this.closed) {
            while (true) {
                long indexOfElement = this.bufferField.indexOfElement(byteString, j);
                if (indexOfElement != -1) {
                    return indexOfElement;
                }
                long size = this.bufferField.size();
                if (this.source.read(this.bufferField, (long) 8192) == -1) {
                    return -1;
                }
                j = Math.max(j, size);
            }
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "bytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
            return false;
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = ((long) i3) + j;
                if (!(request(1 + j2) && this.bufferField.getByte(j2) == byteString.getByte(i + i3))) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            this.closed = true;
            this.source.close();
            this.bufferField.clear();
        }
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    @Override // java.lang.Object
    public String toString() {
        return "buffer(" + this.source + ')';
    }
}
