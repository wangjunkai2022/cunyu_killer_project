package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.util.StreamUtil;
import com.facebook.imagepipeline.memory.ByteArrayPool;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class ProgressiveJpegParser {
    private static final int BUFFER_SIZE = 16384;
    private static final int NOT_A_JPEG = 6;
    private static final int READ_FIRST_JPEG_BYTE = 0;
    private static final int READ_MARKER_FIRST_BYTE_OR_ENTROPY_DATA = 2;
    private static final int READ_MARKER_SECOND_BYTE = 3;
    private static final int READ_SECOND_JPEG_BYTE = 1;
    private static final int READ_SIZE_FIRST_BYTE = 4;
    private static final int READ_SIZE_SECOND_BYTE = 5;
    private final ByteArrayPool mByteArrayPool;
    private int mBytesParsed = 0;
    private int mLastByteRead = 0;
    private int mNextFullScanNumber = 0;
    private int mBestScanEndOffset = 0;
    private int mBestScanNumber = 0;
    private int mParserState = 0;

    private static boolean doesMarkerStartSegment(int i) {
        if (i == 1) {
            return false;
        }
        if (i < 208 || i > 215) {
            return (i == 217 || i == 216) ? false : true;
        }
        return false;
    }

    public ProgressiveJpegParser(ByteArrayPool byteArrayPool) {
        this.mByteArrayPool = (ByteArrayPool) Preconditions.checkNotNull(byteArrayPool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.facebook.imagepipeline.memory.PooledByteArrayBufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.facebook.imagepipeline.decoder.ProgressiveJpegParser] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean parseMoreData(com.facebook.imagepipeline.image.EncodedImage r5) {
        /*
            r4 = this;
            int r0 = r4.mParserState
            r1 = 0
            r2 = 6
            if (r0 != r2) goto L_0x0007
            return r1
        L_0x0007:
            int r0 = r5.getSize()
            int r2 = r4.mBytesParsed
            if (r0 > r2) goto L_0x0010
            return r1
        L_0x0010:
            com.facebook.imagepipeline.memory.PooledByteArrayBufferedInputStream r0 = new com.facebook.imagepipeline.memory.PooledByteArrayBufferedInputStream
            java.io.InputStream r5 = r5.getInputStream()
            com.facebook.imagepipeline.memory.ByteArrayPool r2 = r4.mByteArrayPool
            r3 = 16384(0x4000, float:2.2959E-41)
            java.lang.Object r2 = r2.get(r3)
            byte[] r2 = (byte[]) r2
            com.facebook.imagepipeline.memory.ByteArrayPool r3 = r4.mByteArrayPool
            r0.<init>(r5, r2, r3)
            int r5 = r4.mBytesParsed     // Catch: IOException -> 0x0035, all -> 0x0033
            long r2 = (long) r5     // Catch: IOException -> 0x0035, all -> 0x0033
            com.facebook.common.util.StreamUtil.skip(r0, r2)     // Catch: IOException -> 0x0035, all -> 0x0033
            boolean r5 = r4.doParseMoreData(r0)     // Catch: IOException -> 0x0035, all -> 0x0033
            com.facebook.common.internal.Closeables.closeQuietly(r0)
            return r5
        L_0x0033:
            r5 = move-exception
            goto L_0x003d
        L_0x0035:
            r5 = move-exception
            com.facebook.common.internal.Throwables.propagate(r5)     // Catch: all -> 0x0033
            com.facebook.common.internal.Closeables.closeQuietly(r0)
            return r1
        L_0x003d:
            com.facebook.common.internal.Closeables.closeQuietly(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.decoder.ProgressiveJpegParser.parseMoreData(com.facebook.imagepipeline.image.EncodedImage):boolean");
    }

    private boolean doParseMoreData(InputStream inputStream) {
        int read;
        int i = this.mBestScanNumber;
        while (this.mParserState != 6 && (read = inputStream.read()) != -1) {
            try {
                this.mBytesParsed++;
                int i2 = this.mParserState;
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                if (i2 == 4) {
                                    this.mParserState = 5;
                                } else if (i2 != 5) {
                                    Preconditions.checkState(false);
                                } else {
                                    int i3 = ((this.mLastByteRead << 8) + read) - 2;
                                    StreamUtil.skip(inputStream, (long) i3);
                                    this.mBytesParsed += i3;
                                    this.mParserState = 2;
                                }
                            } else if (read == 255) {
                                this.mParserState = 3;
                            } else if (read == 0) {
                                this.mParserState = 2;
                            } else {
                                if (read == 218 || read == 217) {
                                    newScanOrImageEndFound(this.mBytesParsed - 2);
                                }
                                if (doesMarkerStartSegment(read)) {
                                    this.mParserState = 4;
                                } else {
                                    this.mParserState = 2;
                                }
                            }
                        } else if (read == 255) {
                            this.mParserState = 3;
                        }
                    } else if (read == 216) {
                        this.mParserState = 2;
                    } else {
                        this.mParserState = 6;
                    }
                } else if (read == 255) {
                    this.mParserState = 1;
                } else {
                    this.mParserState = 6;
                }
                this.mLastByteRead = read;
            } catch (IOException e) {
                Throwables.propagate(e);
            }
        }
        return (this.mParserState == 6 || this.mBestScanNumber == i) ? false : true;
    }

    private void newScanOrImageEndFound(int i) {
        if (this.mNextFullScanNumber > 0) {
            this.mBestScanEndOffset = i;
        }
        int i2 = this.mNextFullScanNumber;
        this.mNextFullScanNumber = i2 + 1;
        this.mBestScanNumber = i2;
    }

    public boolean isJpeg() {
        return this.mBytesParsed > 1 && this.mParserState != 6;
    }

    public int getBestScanEndOffset() {
        return this.mBestScanEndOffset;
    }

    public int getBestScanNumber() {
        return this.mBestScanNumber;
    }
}
