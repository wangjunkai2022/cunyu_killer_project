package okio.internal;

import com.google.common.base.Ascii;
import com.umeng.analytics.pro.ai;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Base64;
import okio.Buffer;
import okio.ByteString;
import okio.Platform;
import okio.Util;

/* compiled from: ByteString.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0018\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0002\u001a\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0080\b\u001a\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\nH\u0080\b\u001a\r\u0010\u0011\u001a\u00020\u0010*\u00020\nH\u0080\b\u001a\u0015\u0010\u0012\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0080\b\u001a\u000f\u0010\u0014\u001a\u0004\u0018\u00010\n*\u00020\u0010H\u0080\b\u001a\r\u0010\u0015\u001a\u00020\n*\u00020\u0010H\u0080\b\u001a\r\u0010\u0016\u001a\u00020\n*\u00020\u0010H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\u0018*\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\u0018*\u00020\n2\u0006\u0010\u0019\u001a\u00020\nH\u0080\b\u001a\u0017\u0010\u001a\u001a\u00020\u0018*\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001bH\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\u001d*\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0005H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0005*\u00020\nH\u0080\b\u001a\r\u0010 \u001a\u00020\u0005*\u00020\nH\u0080\b\u001a\r\u0010!\u001a\u00020\u0010*\u00020\nH\u0080\b\u001a\u001d\u0010\"\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0080\b\u001a\r\u0010$\u001a\u00020\u0007*\u00020\nH\u0080\b\u001a\u001d\u0010%\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0080\b\u001a\u001d\u0010%\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u0005H\u0080\b\u001a-\u0010&\u001a\u00020\u0018*\u00020\n2\u0006\u0010'\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005H\u0080\b\u001a-\u0010&\u001a\u00020\u0018*\u00020\n2\u0006\u0010'\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010*\u001a\u00020\u0018*\u00020\n2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010*\u001a\u00020\u0018*\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0080\b\u001a\u001d\u0010,\u001a\u00020\n*\u00020\n2\u0006\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u0005H\u0080\b\u001a\r\u0010/\u001a\u00020\n*\u00020\nH\u0080\b\u001a\r\u00100\u001a\u00020\n*\u00020\nH\u0080\b\u001a\r\u00101\u001a\u00020\u0007*\u00020\nH\u0080\b\u001a\u001d\u00102\u001a\u00020\n*\u00020\u00072\u0006\u0010'\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005H\u0080\b\u001a\r\u00103\u001a\u00020\u0010*\u00020\nH\u0080\b\u001a\r\u00104\u001a\u00020\u0010*\u00020\nH\u0080\b\u001a$\u00105\u001a\u000206*\u00020\n2\u0006\u00107\u001a\u0002082\u0006\u0010'\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u00069"}, d2 = {"HEX_DIGIT_CHARS", "", "getHEX_DIGIT_CHARS", "()[C", "codePointIndexToCharIndex", "", ai.az, "", "codePointCount", "commonOf", "Lokio/ByteString;", "data", "decodeHexDigit", ai.aD, "", "commonBase64", "", "commonBase64Url", "commonCompareTo", "other", "commonDecodeBase64", "commonDecodeHex", "commonEncodeUtf8", "commonEndsWith", "", "suffix", "commonEquals", "", "commonGetByte", "", "pos", "commonGetSize", "commonHashCode", "commonHex", "commonIndexOf", "fromIndex", "commonInternalArray", "commonLastIndexOf", "commonRangeEquals", "offset", "otherOffset", "byteCount", "commonStartsWith", "prefix", "commonSubstring", "beginIndex", "endIndex", "commonToAsciiLowercase", "commonToAsciiUppercase", "commonToByteArray", "commonToByteString", "commonToString", "commonUtf8", "commonWrite", "", "buffer", "Lokio/Buffer;", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class ByteStringKt {
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final /* synthetic */ int access$codePointIndexToCharIndex(byte[] bArr, int i) {
        return codePointIndexToCharIndex(bArr, i);
    }

    public static final /* synthetic */ int access$decodeHexDigit(char c) {
        return decodeHexDigit(c);
    }

    public static final String commonUtf8(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonUtf8");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = Platform.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final String commonBase64(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonBase64");
        return Base64.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    public static final String commonBase64Url(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonBase64Url");
        return Base64.encodeBase64(byteString.getData$okio(), Base64.getBASE64_URL_SAFE());
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static final String commonHex(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonHex");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        byte[] data$okio = byteString.getData$okio();
        int i = 0;
        for (byte b : data$okio) {
            int i2 = i + 1;
            cArr[i] = getHEX_DIGIT_CHARS()[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = getHEX_DIGIT_CHARS()[b & 15];
        }
        return new String(cArr);
    }

    public static final ByteString commonToAsciiLowercase(ByteString byteString) {
        byte b;
        Intrinsics.checkNotNullParameter(byteString, "$this$commonToAsciiLowercase");
        for (int i = 0; i < byteString.getData$okio().length; i++) {
            byte b2 = byteString.getData$okio()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b4 = copyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        copyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return byteString;
    }

    public static final ByteString commonToAsciiUppercase(ByteString byteString) {
        byte b;
        Intrinsics.checkNotNullParameter(byteString, "$this$commonToAsciiUppercase");
        for (int i = 0; i < byteString.getData$okio().length; i++) {
            byte b2 = byteString.getData$okio()[i];
            byte b3 = (byte) 97;
            if (b2 >= b3 && b2 <= (b = (byte) 122)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b4 = copyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        copyOf[i2] = (byte) (b4 - 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return byteString;
    }

    public static final ByteString commonSubstring(ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonSubstring");
        boolean z = true;
        if (i >= 0) {
            if (i2 <= byteString.getData$okio().length) {
                if (i2 - i < 0) {
                    z = false;
                }
                if (!z) {
                    throw new IllegalArgumentException("endIndex < beginIndex".toString());
                } else if (i == 0 && i2 == byteString.getData$okio().length) {
                    return byteString;
                } else {
                    return new ByteString(ArraysKt.copyOfRange(byteString.getData$okio(), i, i2));
                }
            } else {
                throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
    }

    public static final byte commonGetByte(ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonGetByte");
        return byteString.getData$okio()[i];
    }

    public static final int commonGetSize(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonGetSize");
        return byteString.getData$okio().length;
    }

    public static final byte[] commonToByteArray(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonToByteArray");
        byte[] data$okio = byteString.getData$okio();
        byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    public static final byte[] commonInternalArray(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonInternalArray");
        return byteString.getData$okio();
    }

    public static final boolean commonRangeEquals(ByteString byteString, int i, ByteString byteString2, int i2, int i3) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(byteString2, "other");
        return byteString2.rangeEquals(i2, byteString.getData$okio(), i, i3);
    }

    public static final boolean commonRangeEquals(ByteString byteString, int i, byte[] bArr, int i2, int i3) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(bArr, "other");
        return i >= 0 && i <= byteString.getData$okio().length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && Util.arrayRangeEquals(byteString.getData$okio(), i, bArr, i2, i3);
    }

    public static final boolean commonStartsWith(ByteString byteString, ByteString byteString2) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonStartsWith");
        Intrinsics.checkNotNullParameter(byteString2, "prefix");
        return byteString.rangeEquals(0, byteString2, 0, byteString2.size());
    }

    public static final boolean commonStartsWith(ByteString byteString, byte[] bArr) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonStartsWith");
        Intrinsics.checkNotNullParameter(bArr, "prefix");
        return byteString.rangeEquals(0, bArr, 0, bArr.length);
    }

    public static final boolean commonEndsWith(ByteString byteString, ByteString byteString2) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonEndsWith");
        Intrinsics.checkNotNullParameter(byteString2, "suffix");
        return byteString.rangeEquals(byteString.size() - byteString2.size(), byteString2, 0, byteString2.size());
    }

    public static final boolean commonEndsWith(ByteString byteString, byte[] bArr) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonEndsWith");
        Intrinsics.checkNotNullParameter(bArr, "suffix");
        return byteString.rangeEquals(byteString.size() - bArr.length, bArr, 0, bArr.length);
    }

    public static final int commonIndexOf(ByteString byteString, byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonIndexOf");
        Intrinsics.checkNotNullParameter(bArr, "other");
        int length = byteString.getData$okio().length - bArr.length;
        int max = Math.max(i, 0);
        if (max > length) {
            return -1;
        }
        while (!Util.arrayRangeEquals(byteString.getData$okio(), max, bArr, 0, bArr.length)) {
            if (max == length) {
                return -1;
            }
            max++;
        }
        return max;
    }

    public static final int commonLastIndexOf(ByteString byteString, ByteString byteString2, int i) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonLastIndexOf");
        Intrinsics.checkNotNullParameter(byteString2, "other");
        return byteString.lastIndexOf(byteString2.internalArray$okio(), i);
    }

    public static final int commonLastIndexOf(ByteString byteString, byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonLastIndexOf");
        Intrinsics.checkNotNullParameter(bArr, "other");
        for (int min = Math.min(i, byteString.getData$okio().length - bArr.length); min >= 0; min--) {
            if (Util.arrayRangeEquals(byteString.getData$okio(), min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public static final boolean commonEquals(ByteString byteString, Object obj) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonEquals");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString2 = (ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final int commonHashCode(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonHashCode");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(hashCode);
        return hashCode;
    }

    public static final int commonCompareTo(ByteString byteString, ByteString byteString2) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonCompareTo");
        Intrinsics.checkNotNullParameter(byteString2, "other");
        int size = byteString.size();
        int size2 = byteString2.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int i2 = byteString.getByte(i) & 255;
            int i3 = byteString2.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final ByteString commonOf(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "data");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new ByteString(copyOf);
    }

    public static final ByteString commonToByteString(byte[] bArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "$this$commonToByteString");
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        return new ByteString(ArraysKt.copyOfRange(bArr, i, i2 + i));
    }

    public static final ByteString commonEncodeUtf8(String str) {
        Intrinsics.checkNotNullParameter(str, "$this$commonEncodeUtf8");
        ByteString byteString = new ByteString(Platform.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final ByteString commonDecodeBase64(String str) {
        Intrinsics.checkNotNullParameter(str, "$this$commonDecodeBase64");
        byte[] decodeBase64ToArray = Base64.decodeBase64ToArray(str);
        if (decodeBase64ToArray != null) {
            return new ByteString(decodeBase64ToArray);
        }
        return null;
    }

    public static final ByteString commonDecodeHex(String str) {
        Intrinsics.checkNotNullParameter(str, "$this$commonDecodeHex");
        if (str.length() % 2 == 0) {
            byte[] bArr = new byte[str.length() / 2];
            int length = bArr.length;
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((decodeHexDigit(str.charAt(i2)) << 4) + decodeHexDigit(str.charAt(i2 + 1)));
            }
            return new ByteString(bArr);
        }
        throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
    }

    public static final void commonWrite(ByteString byteString, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i, i2);
    }

    public static final int decodeHexDigit(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }

    public static final String commonToString(ByteString byteString) {
        ByteString byteString2 = byteString;
        Intrinsics.checkNotNullParameter(byteString2, "$this$commonToString");
        boolean z = true;
        if (byteString.getData$okio().length == 0) {
            return "[size=0]";
        }
        int codePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
        if (codePointIndexToCharIndex != -1) {
            String utf8 = byteString.utf8();
            if (utf8 != null) {
                String substring = utf8.substring(0, codePointIndexToCharIndex);
                Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String replace$default = StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(substring, "\\", "\\\\", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null);
                if (codePointIndexToCharIndex < utf8.length()) {
                    return "[size=" + byteString.getData$okio().length + " text=" + replace$default + "…]";
                }
                return "[text=" + replace$default + ']';
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } else if (byteString.getData$okio().length <= 64) {
            return "[hex=" + byteString.hex() + ']';
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("[size=");
            sb.append(byteString.getData$okio().length);
            sb.append(" hex=");
            if (64 > byteString.getData$okio().length) {
                z = false;
            }
            if (z) {
                if (64 != byteString.getData$okio().length) {
                    byteString2 = new ByteString(ArraysKt.copyOfRange(byteString.getData$okio(), 0, 64));
                }
                sb.append(byteString2.hex());
                sb.append("…]");
                return sb.toString();
            }
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
        }
    }

    public static final int codePointIndexToCharIndex(byte[] bArr, int i) {
        int i2;
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < length) {
            byte b = bArr[i3];
            int i6 = 1;
            if (b >= 0) {
                int i7 = i5 + 1;
                if (i5 == i) {
                    return i4;
                }
                if (!(b == 10 || b == 13)) {
                    if ((b >= 0 && 31 >= b) || (Byte.MAX_VALUE <= b && 159 >= b)) {
                        return -1;
                    }
                }
                if (b == 65533) {
                    return -1;
                }
                int i8 = i4 + (b < 65536 ? 1 : 2);
                i3++;
                while (i3 < length && bArr[i3] >= 0) {
                    int i9 = i3 + 1;
                    byte b2 = bArr[i3];
                    i7++;
                    if (i7 == i) {
                        return i8;
                    }
                    if (!(b2 == 10 || b2 == 13)) {
                        if ((b2 >= 0 && 31 >= b2) || (Byte.MAX_VALUE <= b2 && 159 >= b2)) {
                            return -1;
                        }
                    }
                    if (b2 == 65533) {
                        return -1;
                    }
                    i8 += b2 < 65536 ? 1 : 2;
                    i3 = i9;
                }
                i5 = i7;
                i4 = i8;
            } else {
                if ((b >> 5) == -2) {
                    int i10 = i3 + 1;
                    if (length > i10) {
                        byte b3 = bArr[i3];
                        byte b4 = bArr[i10];
                        if ((b4 & 192) == 128) {
                            int i11 = (b4 ^ 3968) ^ (b3 << 6);
                            if (i11 >= 128) {
                                i2 = i5 + 1;
                                if (i5 == i) {
                                    return i4;
                                }
                                if (!(i11 == 10 || i11 == 13)) {
                                    if ((i11 >= 0 && 31 >= i11) || (127 <= i11 && 159 >= i11)) {
                                        return -1;
                                    }
                                }
                                if (i11 == 65533) {
                                    return -1;
                                }
                                if (i11 >= 65536) {
                                    i6 = 2;
                                }
                                i4 += i6;
                                Unit unit = Unit.INSTANCE;
                                i3 += 2;
                            } else if (i5 == i) {
                                return i4;
                            } else {
                                return -1;
                            }
                        } else if (i5 == i) {
                            return i4;
                        } else {
                            return -1;
                        }
                    } else if (i5 == i) {
                        return i4;
                    } else {
                        return -1;
                    }
                } else if ((b >> 4) == -2) {
                    int i12 = i3 + 2;
                    if (length > i12) {
                        byte b5 = bArr[i3];
                        byte b6 = bArr[i3 + 1];
                        if ((b6 & 192) == 128) {
                            byte b7 = bArr[i12];
                            if ((b7 & 192) == 128) {
                                int i13 = ((b7 ^ -123008) ^ (b6 << 6)) ^ (b5 << 12);
                                if (i13 < 2048) {
                                    if (i5 == i) {
                                        return i4;
                                    }
                                    return -1;
                                } else if (55296 > i13 || 57343 < i13) {
                                    i2 = i5 + 1;
                                    if (i5 == i) {
                                        return i4;
                                    }
                                    if (!(i13 == 10 || i13 == 13)) {
                                        if ((i13 >= 0 && 31 >= i13) || (127 <= i13 && 159 >= i13)) {
                                            return -1;
                                        }
                                    }
                                    if (i13 == 65533) {
                                        return -1;
                                    }
                                    if (i13 >= 65536) {
                                        i6 = 2;
                                    }
                                    i4 += i6;
                                    Unit unit2 = Unit.INSTANCE;
                                    i3 += 3;
                                } else if (i5 == i) {
                                    return i4;
                                } else {
                                    return -1;
                                }
                            } else if (i5 == i) {
                                return i4;
                            } else {
                                return -1;
                            }
                        } else if (i5 == i) {
                            return i4;
                        } else {
                            return -1;
                        }
                    } else if (i5 == i) {
                        return i4;
                    } else {
                        return -1;
                    }
                } else if ((b >> 3) == -2) {
                    int i14 = i3 + 3;
                    if (length > i14) {
                        byte b8 = bArr[i3];
                        byte b9 = bArr[i3 + 1];
                        if ((b9 & 192) == 128) {
                            byte b10 = bArr[i3 + 2];
                            if ((b10 & 192) == 128) {
                                byte b11 = bArr[i14];
                                if ((b11 & 192) == 128) {
                                    int i15 = (((b11 ^ 3678080) ^ (b10 << 6)) ^ (b9 << 12)) ^ (b8 << Ascii.DC2);
                                    if (i15 > 1114111) {
                                        if (i5 == i) {
                                            return i4;
                                        }
                                        return -1;
                                    } else if (55296 <= i15 && 57343 >= i15) {
                                        if (i5 == i) {
                                            return i4;
                                        }
                                        return -1;
                                    } else if (i15 >= 65536) {
                                        i2 = i5 + 1;
                                        if (i5 == i) {
                                            return i4;
                                        }
                                        if (!(i15 == 10 || i15 == 13)) {
                                            if ((i15 >= 0 && 31 >= i15) || (127 <= i15 && 159 >= i15)) {
                                                return -1;
                                            }
                                        }
                                        if (i15 == 65533) {
                                            return -1;
                                        }
                                        if (i15 >= 65536) {
                                            i6 = 2;
                                        }
                                        i4 += i6;
                                        Unit unit3 = Unit.INSTANCE;
                                        i3 += 4;
                                    } else if (i5 == i) {
                                        return i4;
                                    } else {
                                        return -1;
                                    }
                                } else if (i5 == i) {
                                    return i4;
                                } else {
                                    return -1;
                                }
                            } else if (i5 == i) {
                                return i4;
                            } else {
                                return -1;
                            }
                        } else if (i5 == i) {
                            return i4;
                        } else {
                            return -1;
                        }
                    } else if (i5 == i) {
                        return i4;
                    } else {
                        return -1;
                    }
                } else if (i5 == i) {
                    return i4;
                } else {
                    return -1;
                }
                i5 = i2;
            }
        }
        return i4;
    }
}
