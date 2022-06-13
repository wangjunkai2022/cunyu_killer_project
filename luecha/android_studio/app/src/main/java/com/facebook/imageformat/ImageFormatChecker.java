package com.facebook.imageformat;

import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Ints;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.webp.WebpSupportStatus;
import com.google.common.base.Ascii;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class ImageFormatChecker {
    private static final int EXTENDED_WEBP_HEADER_LENGTH = 21;
    private static final int GIF_HEADER_LENGTH = 6;
    private static final int SIMPLE_WEBP_HEADER_LENGTH = 20;
    private static final byte[] JPEG_HEADER = {-1, -40, -1};
    private static final byte[] PNG_HEADER = {-119, 80, 78, 71, 13, 10, Ascii.SUB, 10};
    private static final byte[] GIF_HEADER_87A = asciiBytes("GIF87a");
    private static final byte[] GIF_HEADER_89A = asciiBytes("GIF89a");
    private static final byte[] BMP_HEADER = asciiBytes("BM");
    private static final int MAX_HEADER_LENGTH = Ints.max(21, 20, JPEG_HEADER.length, PNG_HEADER.length, 6, BMP_HEADER.length);

    private ImageFormatChecker() {
    }

    private static ImageFormat doGetImageFormat(byte[] bArr, int i) {
        Preconditions.checkNotNull(bArr);
        if (WebpSupportStatus.isWebpHeader(bArr, 0, i)) {
            return getWebpFormat(bArr, i);
        }
        if (isJpegHeader(bArr, i)) {
            return ImageFormat.JPEG;
        }
        if (isPngHeader(bArr, i)) {
            return ImageFormat.PNG;
        }
        if (isGifHeader(bArr, i)) {
            return ImageFormat.GIF;
        }
        if (isBmpHeader(bArr, i)) {
            return ImageFormat.BMP;
        }
        return ImageFormat.UNKNOWN;
    }

    private static int readHeaderFromStream(InputStream inputStream, byte[] bArr) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length >= MAX_HEADER_LENGTH);
        if (!inputStream.markSupported()) {
            return ByteStreams.read(inputStream, bArr, 0, MAX_HEADER_LENGTH);
        }
        try {
            inputStream.mark(MAX_HEADER_LENGTH);
            return ByteStreams.read(inputStream, bArr, 0, MAX_HEADER_LENGTH);
        } finally {
            inputStream.reset();
        }
    }

    public static ImageFormat getImageFormat(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        byte[] bArr = new byte[MAX_HEADER_LENGTH];
        return doGetImageFormat(bArr, readHeaderFromStream(inputStream, bArr));
    }

    public static ImageFormat getImageFormat_WrapIOException(InputStream inputStream) {
        try {
            return getImageFormat(inputStream);
        } catch (IOException e) {
            throw Throwables.propagate(e);
        }
    }

    public static ImageFormat getImageFormat(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        try {
            fileInputStream = null;
            try {
                fileInputStream2 = new FileInputStream(str);
            } catch (IOException unused) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ImageFormat imageFormat = getImageFormat(fileInputStream2);
            Closeables.closeQuietly(fileInputStream2);
            return imageFormat;
        } catch (IOException unused2) {
            fileInputStream = fileInputStream2;
            ImageFormat imageFormat2 = ImageFormat.UNKNOWN;
            Closeables.closeQuietly(fileInputStream);
            return imageFormat2;
        } catch (Throwable th3) {
            th = th3;
            Closeables.closeQuietly(fileInputStream2);
            throw th;
        }
    }

    private static boolean matchBytePattern(byte[] bArr, int i, byte[] bArr2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkNotNull(bArr2);
        Preconditions.checkArgument(i >= 0);
        if (bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2 + i] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] asciiBytes(String str) {
        Preconditions.checkNotNull(str);
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII not found!", e);
        }
    }

    private static ImageFormat getWebpFormat(byte[] bArr, int i) {
        Preconditions.checkArgument(WebpSupportStatus.isWebpHeader(bArr, 0, i));
        if (WebpSupportStatus.isSimpleWebpHeader(bArr, 0)) {
            return ImageFormat.WEBP_SIMPLE;
        }
        if (WebpSupportStatus.isLosslessWebpHeader(bArr, 0)) {
            return ImageFormat.WEBP_LOSSLESS;
        }
        if (!WebpSupportStatus.isExtendedWebpHeader(bArr, 0, i)) {
            return ImageFormat.UNKNOWN;
        }
        if (WebpSupportStatus.isAnimatedWebpHeader(bArr, 0)) {
            return ImageFormat.WEBP_ANIMATED;
        }
        if (WebpSupportStatus.isExtendedWebpHeaderWithAlpha(bArr, 0)) {
            return ImageFormat.WEBP_EXTENDED_WITH_ALPHA;
        }
        return ImageFormat.WEBP_EXTENDED;
    }

    private static boolean isJpegHeader(byte[] bArr, int i) {
        byte[] bArr2 = JPEG_HEADER;
        return i >= bArr2.length && matchBytePattern(bArr, 0, bArr2);
    }

    private static boolean isPngHeader(byte[] bArr, int i) {
        byte[] bArr2 = PNG_HEADER;
        return i >= bArr2.length && matchBytePattern(bArr, 0, bArr2);
    }

    private static boolean isGifHeader(byte[] bArr, int i) {
        if (i < 6) {
            return false;
        }
        if (matchBytePattern(bArr, 0, GIF_HEADER_87A) || matchBytePattern(bArr, 0, GIF_HEADER_89A)) {
            return true;
        }
        return false;
    }

    private static boolean isBmpHeader(byte[] bArr, int i) {
        byte[] bArr2 = BMP_HEADER;
        if (i < bArr2.length) {
            return false;
        }
        return matchBytePattern(bArr, 0, bArr2);
    }
}
