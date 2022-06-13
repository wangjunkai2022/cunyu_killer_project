package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_nclc = 1852009571;
    private static final int TYPE_nclx = 1852009592;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    /* loaded from: classes2.dex */
    public interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == TYPE_soun) {
            return 1;
        }
        if (i == TYPE_vide) {
            return 2;
        }
        if (i == TYPE_text || i == TYPE_sbtl || i == TYPE_subt || i == TYPE_clcp) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static List<TrackSampleTable> parseTraks(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function) throws ParserException {
        Track apply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (apply = function.apply(parseTrak(containerAtom2, (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(apply, (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia))).getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Pair<Metadata, Metadata> parseUdta(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1835365473) {
                parsableByteArray.setPosition(position);
                metadata = parseUdtaMeta(parsableByteArray, position + readInt);
            } else if (readInt2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata2 = parseSmta(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return Pair.create(metadata, metadata2);
    }

    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_hdlr);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_keys);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ilst);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        String[] strArr = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i] = parsableByteArray.readString(readInt2 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int readInt3 = parsableByteArray2.readInt();
            int readInt4 = parsableByteArray2.readInt() - 1;
            if (readInt4 < 0 || readInt4 >= strArr.length) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(readInt4);
                Log.w(TAG, sb.toString());
            } else {
                MdtaMetadataEntry parseMdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + readInt3, strArr[readInt4]);
                if (parseMdtaMetadataEntryFromIlst != null) {
                    arrayList.add(parseMdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + readInt3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    private static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long j2;
        Atom.LeafAtom leafAtom2;
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType;
        Pair<long[], long[]> parseEdts;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.checkNotNull(containerAtom.getContainerAtomOfType(Atom.TYPE_mdia));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_hdlr))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd))).data);
        long j3 = C.TIME_UNSET;
        if (j == C.TIME_UNSET) {
            j2 = parseTkhd.duration;
            leafAtom2 = leafAtom;
        } else {
            leafAtom2 = leafAtom;
            j2 = j;
        }
        long parseMvhd = parseMvhd(leafAtom2.data);
        if (j2 != C.TIME_UNSET) {
            j3 = Util.scaleLargeTimestamp(j2, 1000000, parseMvhd);
        }
        Pair<Long, String> parseMdhd = parseMdhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_mdhd))).data);
        StsdData parseStsd = parseStsd(((Atom.LeafAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl))).getLeafAtomOfType(Atom.TYPE_stsd))).data, parseTkhd.id, parseTkhd.rotationDegrees, (String) parseMdhd.second, drmInitData, z2);
        if (z || (containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_edts)) == null || (parseEdts = parseEdts(containerAtomOfType)) == null) {
            jArr2 = null;
            jArr = null;
        } else {
            jArr = (long[]) parseEdts.second;
            jArr2 = (long[]) parseEdts.first;
        }
        if (parseStsd.format == null) {
            return null;
        }
        return new Track(parseTkhd.id, trackTypeForHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, j3, parseStsd.format, parseStsd.requiredSampleTransformation, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, jArr2, jArr);
    }

    private static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox sampleSizeBox;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        long j;
        long[] jArr;
        int[] iArr;
        Track track2;
        int i5;
        int[] iArr2;
        long[] jArr2;
        int i6;
        int i7;
        long[] jArr3;
        int[] iArr3;
        int i8;
        int i9;
        boolean z3;
        int i10;
        int i11;
        boolean z4;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            sampleSizeBox = new StszSampleSizeBox(leafAtomOfType, track.format);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 != null) {
                sampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
            } else {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
        }
        int sampleCount = sampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_co64));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stsc))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stts))).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt2 = parsableByteArray3.readUnsignedIntToInt();
        int readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            i = parsableByteArray5.readUnsignedIntToInt();
        } else {
            i = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            i3 = parsableByteArray4.readUnsignedIntToInt();
            if (i3 > 0) {
                i2 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                i2 = -1;
                parsableByteArray4 = null;
            }
        } else {
            i2 = -1;
            i3 = 0;
        }
        int fixedSampleSize = sampleSizeBox.getFixedSampleSize();
        String str = track.format.sampleMimeType;
        if (fixedSampleSize == -1 || !((MimeTypes.AUDIO_RAW.equals(str) || MimeTypes.AUDIO_MLAW.equals(str) || MimeTypes.AUDIO_ALAW.equals(str)) && readUnsignedIntToInt == 0 && i == 0 && i3 == 0)) {
            i4 = i3;
            z2 = false;
        } else {
            i4 = i3;
            z2 = true;
        }
        if (z2) {
            long[] jArr4 = new long[chunkIterator.length];
            int[] iArr4 = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                jArr4[chunkIterator.index] = chunkIterator.offset;
                iArr4[chunkIterator.index] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results rechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr4, iArr4, (long) readUnsignedIntToInt3);
            long[] jArr5 = rechunk.offsets;
            int[] iArr5 = rechunk.sizes;
            int i18 = rechunk.maximumSize;
            long[] jArr6 = rechunk.timestamps;
            int[] iArr6 = rechunk.flags;
            j = rechunk.duration;
            i6 = sampleCount;
            jArr2 = jArr5;
            iArr2 = iArr5;
            i5 = i18;
            jArr = jArr6;
            iArr = iArr6;
            track2 = track;
        } else {
            long[] jArr7 = new long[sampleCount];
            int[] iArr7 = new int[sampleCount];
            jArr = new long[sampleCount];
            int[] iArr8 = new int[sampleCount];
            int i19 = readUnsignedIntToInt;
            int i20 = readUnsignedIntToInt3;
            int i21 = i2;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            long j2 = 0;
            long j3 = 0;
            int i25 = 0;
            int i26 = 0;
            int i27 = i4;
            int i28 = i;
            while (true) {
                if (i23 >= sampleCount) {
                    i10 = sampleCount;
                    i11 = readUnsignedIntToInt2;
                    break;
                }
                long j4 = j3;
                boolean z5 = true;
                while (i24 == 0) {
                    z5 = chunkIterator.moveNext();
                    if (!z5) {
                        break;
                    }
                    long j5 = chunkIterator.offset;
                    i24 = chunkIterator.numSamples;
                    j4 = j5;
                    readUnsignedIntToInt2 = readUnsignedIntToInt2;
                    i20 = i20;
                    sampleCount = sampleCount;
                }
                i11 = readUnsignedIntToInt2;
                if (!z5) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    jArr7 = Arrays.copyOf(jArr7, i23);
                    iArr7 = Arrays.copyOf(iArr7, i23);
                    jArr = Arrays.copyOf(jArr, i23);
                    iArr8 = Arrays.copyOf(iArr8, i23);
                    i10 = i23;
                    break;
                }
                if (parsableByteArray5 != null) {
                    int i29 = i28;
                    while (i25 == 0 && i29 > 0) {
                        i25 = parsableByteArray5.readUnsignedIntToInt();
                        i26 = parsableByteArray5.readInt();
                        i29--;
                    }
                    i25--;
                    i12 = i29;
                } else {
                    i12 = i28;
                }
                jArr7[i23] = j4;
                iArr7[i23] = sampleSizeBox.readNextSampleSize();
                if (iArr7[i23] > i22) {
                    i22 = iArr7[i23];
                }
                jArr[i23] = j2 + ((long) i26);
                iArr8[i23] = parsableByteArray4 == null ? 1 : 0;
                if (i23 == i21) {
                    iArr8[i23] = 1;
                    i27--;
                    if (i27 > 0) {
                        i14 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray4)).readUnsignedIntToInt() - 1;
                        i13 = i22;
                        i15 = i26;
                        i16 = i20;
                        j2 += (long) i16;
                        i17 = i11 - 1;
                        if (i17 == 0 && i19 > 0) {
                            i17 = parsableByteArray3.readUnsignedIntToInt();
                            i16 = parsableByteArray3.readInt();
                            i19--;
                        }
                        j3 = j4 + ((long) iArr7[i23]);
                        i24--;
                        i23++;
                        i26 = i15;
                        readUnsignedIntToInt2 = i17;
                        i22 = i13;
                        i28 = i12;
                        sampleCount = sampleCount;
                        i21 = i14;
                        i20 = i16;
                    }
                }
                i13 = i22;
                i15 = i26;
                i14 = i21;
                i16 = i20;
                j2 += (long) i16;
                i17 = i11 - 1;
                if (i17 == 0) {
                    i17 = parsableByteArray3.readUnsignedIntToInt();
                    i16 = parsableByteArray3.readInt();
                    i19--;
                }
                j3 = j4 + ((long) iArr7[i23]);
                i24--;
                i23++;
                i26 = i15;
                readUnsignedIntToInt2 = i17;
                i22 = i13;
                i28 = i12;
                sampleCount = sampleCount;
                i21 = i14;
                i20 = i16;
            }
            j = j2 + ((long) i26);
            if (parsableByteArray5 != null) {
                for (int i30 = i28; i30 > 0; i30--) {
                    if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                        z4 = false;
                        break;
                    }
                    parsableByteArray5.readInt();
                }
            }
            z4 = true;
            if (i27 == 0 && i11 == 0 && i24 == 0 && i19 == 0 && i25 == 0 && z4) {
                track2 = track;
            } else {
                track2 = track;
                int i31 = track2.id;
                String str2 = !z4 ? ", ctts invalid" : "";
                StringBuilder sb = new StringBuilder(str2.length() + 262);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i31);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i27);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i11);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i24);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i19);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i25);
                sb.append(str2);
                Log.w(TAG, sb.toString());
            }
            jArr2 = jArr7;
            iArr2 = iArr7;
            iArr = iArr8;
            i6 = i10;
            i5 = i22;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j, 1000000, track2.timescale);
        if (track2.editListDurations == null) {
            Util.scaleLargeTimestampsInPlace(jArr, 1000000, track2.timescale);
            return new TrackSampleTable(track, jArr2, iArr2, i5, jArr, iArr, scaleLargeTimestamp);
        }
        if (track2.editListDurations.length == 1 && track2.type == 1 && jArr.length >= 2) {
            long j6 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
            i7 = i6;
            long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale) + j6;
            if (canApplyEditWithGaplessInfo(jArr, j, j6, scaleLargeTimestamp2)) {
                long j7 = j - scaleLargeTimestamp2;
                long scaleLargeTimestamp3 = Util.scaleLargeTimestamp(j6 - jArr[0], (long) track2.format.sampleRate, track2.timescale);
                long scaleLargeTimestamp4 = Util.scaleLargeTimestamp(j7, (long) track2.format.sampleRate, track2.timescale);
                if (!(scaleLargeTimestamp3 == 0 && scaleLargeTimestamp4 == 0) && scaleLargeTimestamp3 <= 2147483647L && scaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) scaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) scaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr, 1000000, track2.timescale);
                    return new TrackSampleTable(track, jArr2, iArr2, i5, jArr, iArr, Util.scaleLargeTimestamp(track2.editListDurations[0], 1000000, track2.movieTimescale));
                }
            }
        } else {
            i7 = i6;
        }
        if (track2.editListDurations.length == 1 && track2.editListDurations[0] == 0) {
            long j8 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
            for (int i32 = 0; i32 < jArr.length; i32++) {
                jArr[i32] = Util.scaleLargeTimestamp(jArr[i32] - j8, 1000000, track2.timescale);
            }
            return new TrackSampleTable(track, jArr2, iArr2, i5, jArr, iArr, Util.scaleLargeTimestamp(j - j8, 1000000, track2.timescale));
        }
        boolean z6 = track2.type == 1;
        int[] iArr9 = new int[track2.editListDurations.length];
        int[] iArr10 = new int[track2.editListDurations.length];
        long[] jArr8 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
        int i33 = 0;
        boolean z7 = false;
        int i34 = 0;
        int i35 = 0;
        while (i33 < track2.editListDurations.length) {
            long j9 = jArr8[i33];
            if (j9 != -1) {
                i8 = i5;
                long scaleLargeTimestamp5 = Util.scaleLargeTimestamp(track2.editListDurations[i33], track2.timescale, track2.movieTimescale);
                iArr9[i33] = Util.binarySearchFloor(jArr, j9, true, true);
                iArr10[i33] = Util.binarySearchCeil(jArr, j9 + scaleLargeTimestamp5, z6, false);
                while (iArr9[i33] < iArr10[i33] && (iArr[iArr9[i33]] & 1) == 0) {
                    iArr9[i33] = iArr9[i33] + 1;
                }
                i34 += iArr10[i33] - iArr9[i33];
                z3 = z7 | (i35 != iArr9[i33]);
                i9 = iArr10[i33];
            } else {
                i8 = i5;
                i9 = i35;
                z3 = z7;
            }
            i33++;
            jArr8 = jArr8;
            z7 = z3;
            i35 = i9;
            i5 = i8;
            iArr2 = iArr2;
        }
        int[] iArr11 = iArr2;
        int i36 = i5;
        int i37 = 0;
        boolean z8 = true;
        if (i34 == i7) {
            z8 = false;
        }
        boolean z9 = z7 | z8;
        long[] jArr9 = z9 ? new long[i34] : jArr2;
        int[] iArr12 = z9 ? new int[i34] : iArr11;
        if (z9) {
            i36 = 0;
        }
        int[] iArr13 = z9 ? new int[i34] : iArr;
        long[] jArr10 = new long[i34];
        int i38 = 0;
        int i39 = i36;
        long j10 = 0;
        while (i37 < track2.editListDurations.length) {
            long j11 = track2.editListMediaTimes[i37];
            int i40 = iArr9[i37];
            int i41 = iArr10[i37];
            if (z9) {
                int i42 = i41 - i40;
                System.arraycopy(jArr2, i40, jArr9, i38, i42);
                jArr3 = jArr2;
                iArr3 = iArr11;
                System.arraycopy(iArr3, i40, iArr12, i38, i42);
                System.arraycopy(iArr, i40, iArr13, i38, i42);
            } else {
                jArr3 = jArr2;
                iArr3 = iArr11;
            }
            int i43 = i38;
            int i44 = i40;
            while (i44 < i41) {
                jArr10[i43] = Util.scaleLargeTimestamp(j10, 1000000, track2.movieTimescale) + Util.scaleLargeTimestamp(Math.max(0L, jArr[i44] - j11), 1000000, track2.timescale);
                if (z9 && iArr12[i43] > i39) {
                    i39 = iArr3[i44];
                }
                i43++;
                i44++;
                iArr = iArr;
                iArr10 = iArr10;
                jArr = jArr;
                iArr13 = iArr13;
                i41 = i41;
            }
            j10 += track2.editListDurations[i37];
            i37++;
            iArr = iArr;
            iArr11 = iArr3;
            iArr10 = iArr10;
            jArr = jArr;
            iArr9 = iArr9;
            jArr2 = jArr3;
            i38 = i43;
            iArr13 = iArr13;
        }
        return new TrackSampleTable(track, jArr9, iArr12, i39, jArr10, iArr13, Util.scaleLargeTimestamp(j10, 1000000, track2.movieTimescale));
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry parseIlstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (parseIlstElement != null) {
                arrayList.add(parseIlstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Metadata parseSmta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() != 1935766900) {
                parsableByteArray.setPosition(position + readInt);
            } else if (readInt < 14) {
                return null;
            } else {
                parsableByteArray.skipBytes(5);
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                if (readUnsignedByte != 12 && readUnsignedByte != 13) {
                    return null;
                }
                float f = readUnsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new Metadata(new SmtaMetadataEntry(f, parsableByteArray.readUnsignedByte()));
            }
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0) {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                z = true;
                break;
            } else if (parsableByteArray.getData()[position + i3] != -1) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        long j = C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i);
        } else {
            long readUnsignedInt = parseFullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (readUnsignedInt != 0) {
                j = readUnsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == -65536 && readInt5 == 0) {
            i2 = 90;
        } else if (readInt2 == 0 && readInt3 == -65536 && readInt4 == 65536 && readInt5 == 0) {
            i2 = 270;
        } else if (readInt2 == -65536 && readInt3 == 0 && readInt4 == 0 && readInt5 == -65536) {
            i2 = 180;
        }
        return new TkhdData(readInt, j, i2);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        parsableByteArray.skipBytes(i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        StringBuilder sb = new StringBuilder(3);
        sb.append((char) (((readUnsignedShort >> 10) & 31) + 96));
        sb.append((char) (((readUnsignedShort >> 5) & 31) + 96));
        sb.append((char) ((readUnsignedShort & 31) + 96));
        return Pair.create(Long.valueOf(readUnsignedInt), sb.toString());
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt2 > 0, "childAtomSize must be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == 1635148593 || readInt3 == 1635148595 || readInt3 == 1701733238 || readInt3 == 1831958048 || readInt3 == 1836070006 || readInt3 == 1752589105 || readInt3 == 1751479857 || readInt3 == 1932670515 || readInt3 == 1211250227 || readInt3 == 1987063864 || readInt3 == 1987063865 || readInt3 == 1635135537 || readInt3 == 1685479798 || readInt3 == 1685479729 || readInt3 == 1685481573 || readInt3 == 1685481521) {
                i3 = position;
                parseVideoSampleEntry(parsableByteArray, readInt3, i3, readInt2, i, i2, drmInitData, stsdData, i4);
            } else if (readInt3 == 1836069985 || readInt3 == 1701733217 || readInt3 == 1633889587 || readInt3 == 1700998451 || readInt3 == 1633889588 || readInt3 == 1685353315 || readInt3 == 1685353317 || readInt3 == 1685353320 || readInt3 == 1685353324 || readInt3 == 1685353336 || readInt3 == 1935764850 || readInt3 == 1935767394 || readInt3 == 1819304813 || readInt3 == 1936684916 || readInt3 == 1953984371 || readInt3 == 778924082 || readInt3 == 778924083 || readInt3 == 1835557169 || readInt3 == 1835560241 || readInt3 == 1634492771 || readInt3 == 1634492791 || readInt3 == 1970037111 || readInt3 == 1332770163 || readInt3 == 1716281667) {
                i3 = position;
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, stsdData, i4);
            } else {
                if (readInt3 == 1414810956 || readInt3 == 1954034535 || readInt3 == 2004251764 || readInt3 == 1937010800 || readInt3 == 1664495672) {
                    parseTextSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, stsdData);
                } else if (readInt3 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, readInt3, position, i, stsdData);
                } else if (readInt3 == 1667329389) {
                    stsdData.format = new Format.Builder().setId(i).setSampleMimeType(MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + readInt2);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableList = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = (i3 - 8) - 8;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableList = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else if (i == 1664495672) {
                stsdData.requiredSampleTransformation = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            } else {
                throw new IllegalStateException();
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableList).build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x019a, code lost:
        if (r1 != 3) goto L_0x01a1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static void parseVideoSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray r20, int r21, int r22, int r23, int r24, int r25, com.google.android.exoplayer2.drm.DrmInitData r26, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData r27, int r28) throws com.google.android.exoplayer2.ParserException {
        /*
        // Method dump skipped, instructions count: 627
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseVideoSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray, int, int, int, int, int, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.AtomParsers$StsdData, int):void");
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (readNullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(readNullTerminatedString).build();
            }
        }
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst);
        if (leafAtomOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            jArr[i] = parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = parseFullAtomVersion == 1 ? parsableByteArray.readLong() : (long) parsableByteArray.readInt();
            if (parsableByteArray.readShort() == 1) {
                parsableByteArray.skipBytes(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return ((float) parsableByteArray.readUnsignedIntToInt()) / ((float) parsableByteArray.readUnsignedIntToInt());
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x0154  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static void parseAudioSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray r20, int r21, int r22, int r23, int r24, java.lang.String r25, boolean r26, com.google.android.exoplayer2.drm.DrmInitData r27, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData r28, int r29) throws com.google.android.exoplayer2.ParserException {
        /*
        // Method dump skipped, instructions count: 774
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseAudioSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.AtomParsers$StsdData, int):void");
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1702061171) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int parseExpandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[parseExpandableClassSize];
        parsableByteArray.readBytes(bArr, 0, parseExpandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (parseCommonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, readInt)) != null) {
                return parseCommonEncryptionSinfFromParent;
            }
            position += readInt;
        }
        return null;
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int i3 = i + 8;
        int i4 = -1;
        String str = null;
        Integer num = null;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1718775137) {
                num = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == 1935894637) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
            } else if (readInt2 == 1935894633) {
                i4 = i3;
                i5 = readInt;
            }
            i3 += readInt;
        }
        if (!C.CENC_TYPE_cenc.equals(str) && !C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str) && !C.CENC_TYPE_cbcs.equals(str)) {
            return null;
        }
        boolean z = true;
        ExtractorUtil.checkContainerInput(num != null, "frma atom is mandatory");
        ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox parseSchiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, str);
        if (parseSchiFromParent == null) {
            z = false;
        }
        ExtractorUtil.checkContainerInput(z, "tenc atom is mandatory");
        return Pair.create(num, (TrackEncryptionBox) Util.castNonNull(parseSchiFromParent));
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (parseFullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i4 = (readUnsignedByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                    i3 = readUnsignedByte & 15;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, bArr2.length);
                if (z && readUnsignedByte2 == 0) {
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[readUnsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, readUnsignedByte3);
                }
                return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += readInt;
        }
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, readInt + i3);
            }
            i3 += readInt;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private AtomParsers() {
    }

    /* loaded from: classes2.dex */
    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() != 1 ? false : true, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            long j;
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            if (this.chunkOffsetsAreLongs) {
                j = this.chunkOffsets.readUnsignedLongToLong();
            } else {
                j = this.chunkOffsets.readUnsignedInt();
            }
            this.offset = j;
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    /* loaded from: classes2.dex */
    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            int readUnsignedIntToInt = this.data.readUnsignedIntToInt();
            if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (readUnsignedIntToInt == 0 || readUnsignedIntToInt % pcmFrameSize != 0) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Audio sample size mismatch. stsd sample size: ");
                    sb.append(pcmFrameSize);
                    sb.append(", stsz sample size: ");
                    sb.append(readUnsignedIntToInt);
                    Log.w(AtomParsers.TAG, sb.toString());
                    readUnsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = readUnsignedIntToInt == 0 ? -1 : readUnsignedIntToInt;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            this.currentByte = this.data.readUnsignedByte();
            return (this.currentByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }
    }
}
