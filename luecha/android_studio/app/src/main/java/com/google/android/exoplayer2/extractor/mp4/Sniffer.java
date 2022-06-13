package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes2.dex */
final class Sniffer {
    public static final int BRAND_HEIC = 1751476579;
    public static final int BRAND_QUICKTIME = 1903435808;
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Atom.TYPE_avc1, Atom.TYPE_hvc1, Atom.TYPE_hev1, Atom.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};
    private static final int SEARCH_LENGTH = 4096;

    public static boolean sniffFragmented(ExtractorInput extractorInput) throws IOException {
        return sniffInternal(extractorInput, true, false);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) throws IOException {
        return sniffInternal(extractorInput, false, false);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput, boolean z) throws IOException {
        return sniffInternal(extractorInput, false, z);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z, boolean z2) throws IOException {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        long length = extractorInput.getLength();
        long j = -1;
        int i = (length > -1 ? 1 : (length == -1 ? 0 : -1));
        long j2 = 4096;
        if (i != 0 && length <= 4096) {
            j2 = length;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z8 = false;
        int i2 = (int) j2;
        int i3 = 0;
        boolean z9 = false;
        while (i3 < i2) {
            parsableByteArray.reset(8);
            byte[] data = parsableByteArray.getData();
            int i4 = z8 ? 1 : 0;
            int i5 = z8 ? 1 : 0;
            int i6 = z8 ? 1 : 0;
            int i7 = z8 ? 1 : 0;
            if (!extractorInput.peekFully(data, i4, 8, true)) {
                break;
            }
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int readInt = parsableByteArray.readInt();
            int i8 = 16;
            if (readUnsignedInt == 1) {
                extractorInput.peekFully(parsableByteArray.getData(), 8, 8);
                parsableByteArray.setLimit(16);
                readUnsignedInt = parsableByteArray.readLong();
            } else {
                if (readUnsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j) {
                        readUnsignedInt = (length2 - extractorInput.getPeekPosition()) + ((long) 8);
                    }
                }
                i8 = 8;
            }
            long j3 = (long) i8;
            if (readUnsignedInt < j3) {
                return z8;
            }
            i3 += i8;
            if (readInt == 1836019574) {
                i2 += (int) readUnsignedInt;
                if (i != 0 && ((long) i2) > length) {
                    i2 = (int) length;
                }
            } else if (readInt == 1836019558 || readInt == 1836475768) {
                z3 = z8;
                z4 = true;
                z5 = true;
                break;
            } else if ((((long) i3) + readUnsignedInt) - j3 >= ((long) i2)) {
                z4 = true;
                z3 = false;
                break;
            } else {
                int i9 = (int) (readUnsignedInt - j3);
                i3 += i9;
                if (readInt != 1718909296) {
                    z6 = false;
                    if (i9 != 0) {
                        extractorInput.advancePeekPosition(i9);
                    }
                } else if (i9 < 8) {
                    return false;
                } else {
                    parsableByteArray.reset(i9);
                    extractorInput.peekFully(parsableByteArray.getData(), 0, i9);
                    int i10 = i9 / 4;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= i10) {
                            z7 = z9;
                            break;
                        }
                        z7 = true;
                        if (i11 == 1) {
                            parsableByteArray.skipBytes(4);
                        } else if (isCompatibleBrand(parsableByteArray.readInt(), z2)) {
                            break;
                        }
                        i11++;
                    }
                    if (!z7) {
                        return false;
                    }
                    z6 = false;
                    z9 = z7;
                }
                i2 = i2;
                z8 = z6;
            }
            j = -1;
        }
        boolean z10 = z8 ? 1 : 0;
        Object[] objArr = z8 ? 1 : 0;
        Object[] objArr2 = z8 ? 1 : 0;
        Object[] objArr3 = z8 ? 1 : 0;
        z3 = z10;
        z4 = true;
        z5 = z3;
        return (!z9 || z != z5) ? z3 : z4;
    }

    private static boolean isCompatibleBrand(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
