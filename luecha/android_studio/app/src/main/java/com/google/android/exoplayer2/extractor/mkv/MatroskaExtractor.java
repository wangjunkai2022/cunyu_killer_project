package com.google.android.exoplayer2.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.DolbyVisionConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public class MatroskaExtractor implements Extractor {
    private static final int BLOCK_ADDITIONAL_ID_VP9_ITU_T_35 = 4;
    private static final int BLOCK_ADD_ID_TYPE_DVCC = 1685480259;
    private static final int BLOCK_ADD_ID_TYPE_DVVC = 1685485123;
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_ASS = "S_TEXT/ASS";
    private static final String CODEC_ID_AV1 = "V_AV1";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_DVBSUB = "S_DVBSUB";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP2 = "A_MPEG/L2";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_FLOAT = "A_PCM/FLOAT/IEEE";
    private static final String CODEC_ID_PCM_INT_BIG = "A_PCM/INT/BIG";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_THEORA = "V_THEORA";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    private static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    private static final int FOURCC_COMPRESSION_H263 = 859189832;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_ADDITIONAL = 165;
    private static final int ID_BLOCK_ADDITIONS = 30113;
    private static final int ID_BLOCK_ADDITION_MAPPING = 16868;
    private static final int ID_BLOCK_ADD_ID = 238;
    private static final int ID_BLOCK_ADD_ID_EXTRA_DATA = 16877;
    private static final int ID_BLOCK_ADD_ID_TYPE = 16871;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_BLOCK_MORE = 166;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_COLOUR = 21936;
    private static final int ID_COLOUR_PRIMARIES = 21947;
    private static final int ID_COLOUR_RANGE = 21945;
    private static final int ID_COLOUR_TRANSFER = 21946;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_FLAG_DEFAULT = 136;
    private static final int ID_FLAG_FORCED = 21930;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_LUMNINANCE_MAX = 21977;
    private static final int ID_LUMNINANCE_MIN = 21978;
    private static final int ID_MASTERING_METADATA = 21968;
    private static final int ID_MAX_BLOCK_ADDITION_ID = 21998;
    private static final int ID_MAX_CLL = 21948;
    private static final int ID_MAX_FALL = 21949;
    private static final int ID_NAME = 21358;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    private static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    private static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    private static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    private static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    private static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    private static final int ID_PROJECTION = 30320;
    private static final int ID_PROJECTION_POSE_PITCH = 30324;
    private static final int ID_PROJECTION_POSE_ROLL = 30325;
    private static final int ID_PROJECTION_POSE_YAW = 30323;
    private static final int ID_PROJECTION_PRIVATE = 30322;
    private static final int ID_PROJECTION_TYPE = 30321;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_STEREO_MODE = 21432;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    private static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    private static final String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    private static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    private static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final String TAG = "MatroskaExtractor";
    private static final Map<String, Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    private static final int TRACK_TYPE_AUDIO = 2;
    private static final int UNSET_ENTRY_ID = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    private final ParsableByteArray blockAdditionalData;
    private int blockAdditionalId;
    private long blockDurationUs;
    private int blockFlags;
    private boolean blockHasReferenceBlock;
    private int blockSampleCount;
    private int blockSampleIndex;
    private int[] blockSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private LongArray cueClusterPositions;
    private LongArray cueTimesUs;
    private long cuesContentPosition;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private boolean haveOutputSample;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final ParsableByteArray subtitleSample;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;
    public static final ExtractorsFactory FACTORY = $$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs.INSTANCE;
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Flags {
    }

    protected int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case ID_BLOCK_DURATION /* 155 */:
            case ID_CHANNELS /* 159 */:
            case ID_PIXEL_WIDTH /* 176 */:
            case ID_CUE_TIME /* 179 */:
            case ID_PIXEL_HEIGHT /* 186 */:
            case 215:
            case ID_TIME_CODE /* 231 */:
            case ID_BLOCK_ADD_ID /* 238 */:
            case ID_CUE_CLUSTER_POSITION /* 241 */:
            case 251:
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
            case ID_SEEK_POSITION /* 21420 */:
            case ID_STEREO_MODE /* 21432 */:
            case ID_DISPLAY_WIDTH /* 21680 */:
            case ID_DISPLAY_UNIT /* 21682 */:
            case ID_DISPLAY_HEIGHT /* 21690 */:
            case ID_FLAG_FORCED /* 21930 */:
            case ID_COLOUR_RANGE /* 21945 */:
            case ID_COLOUR_TRANSFER /* 21946 */:
            case ID_COLOUR_PRIMARIES /* 21947 */:
            case ID_MAX_CLL /* 21948 */:
            case ID_MAX_FALL /* 21949 */:
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
            case ID_PROJECTION_TYPE /* 30321 */:
            case ID_DEFAULT_DURATION /* 2352003 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case 134:
            case ID_DOC_TYPE /* 17026 */:
            case ID_NAME /* 21358 */:
            case ID_LANGUAGE /* 2274716 */:
                return 3;
            case ID_BLOCK_GROUP /* 160 */:
            case 166:
            case ID_TRACK_ENTRY /* 174 */:
            case ID_CUE_TRACK_POSITIONS /* 183 */:
            case ID_CUE_POINT /* 187 */:
            case 224:
            case 225:
            case ID_BLOCK_ADDITION_MAPPING /* 16868 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /* 18407 */:
            case ID_SEEK /* 19899 */:
            case ID_CONTENT_COMPRESSION /* 20532 */:
            case ID_CONTENT_ENCRYPTION /* 20533 */:
            case ID_COLOUR /* 21936 */:
            case ID_MASTERING_METADATA /* 21968 */:
            case ID_CONTENT_ENCODING /* 25152 */:
            case ID_CONTENT_ENCODINGS /* 28032 */:
            case ID_BLOCK_ADDITIONS /* 30113 */:
            case ID_PROJECTION /* 30320 */:
            case ID_SEEK_HEAD /* 290298740 */:
            case 357149030:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case ID_EBML /* 440786851 */:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
            case ID_BLOCK_ADDITIONAL /* 165 */:
            case ID_BLOCK_ADD_ID_EXTRA_DATA /* 16877 */:
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
            case ID_SEEK_ID /* 21419 */:
            case ID_CODEC_PRIVATE /* 25506 */:
            case ID_PROJECTION_PRIVATE /* 30322 */:
                return 4;
            case 181:
            case ID_DURATION /* 17545 */:
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
            case ID_LUMNINANCE_MAX /* 21977 */:
            case ID_LUMNINANCE_MIN /* 21978 */:
            case ID_PROJECTION_POSE_YAW /* 30323 */:
            case ID_PROJECTION_POSE_PITCH /* 30324 */:
            case ID_PROJECTION_POSE_ROLL /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    protected boolean isLevel1Element(int i) {
        return i == 357149030 || i == ID_CLUSTER || i == ID_CUES || i == ID_TRACKS;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void release() {
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = Collections.unmodifiableMap(hashMap);
    }

    public static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new MatroskaExtractor()};
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new DefaultEbmlReader(), i);
    }

    MatroskaExtractor(EbmlReader ebmlReader, int i) {
        this.segmentContentPosition = -1;
        this.timecodeScale = C.TIME_UNSET;
        this.durationTimecode = C.TIME_UNSET;
        this.durationUs = C.TIME_UNSET;
        this.cuesContentPosition = -1;
        this.seekPositionAfterBuildingCues = -1;
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.reader = ebmlReader;
        this.reader.init(new InnerEbmlProcessor());
        this.seekForCuesEnabled = (i & 1) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
        this.blockAdditionalData = new ParsableByteArray();
        this.blockSampleSizes = new int[1];
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final boolean sniff(ExtractorInput extractorInput) throws IOException {
        return new Sniffer().sniff(extractorInput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetWriteSampleData();
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        this.haveOutputSample = false;
        boolean z = true;
        while (z && !this.haveOutputSample) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            Track valueAt = this.tracks.valueAt(i);
            valueAt.assertOutputInitialized();
            valueAt.outputPendingSampleMetadata();
        }
        return -1;
    }

    protected void startMasterElement(int i, long j, long j2) throws ParserException {
        assertInitialized();
        if (i == ID_BLOCK_GROUP) {
            this.blockHasReferenceBlock = false;
        } else if (i == ID_TRACK_ENTRY) {
            this.currentTrack = new Track();
        } else if (i == ID_CUE_POINT) {
            this.seenClusterPositionForCurrentCuePoint = false;
        } else if (i == ID_SEEK) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1;
        } else if (i == ID_CONTENT_ENCRYPTION) {
            getCurrentTrack(i).hasContentEncryption = true;
        } else if (i == ID_MASTERING_METADATA) {
            getCurrentTrack(i).hasColorInfo = true;
        } else if (i == ID_CONTENT_ENCODING) {
        } else {
            if (i == ID_SEGMENT) {
                long j3 = this.segmentContentPosition;
                if (j3 == -1 || j3 == j) {
                    this.segmentContentPosition = j;
                    this.segmentContentSize = j2;
                    return;
                }
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            } else if (i == ID_CUES) {
                this.cueTimesUs = new LongArray();
                this.cueClusterPositions = new LongArray();
            } else if (i != ID_CLUSTER || this.sentSeekMap) {
            } else {
                if (!this.seekForCuesEnabled || this.cuesContentPosition == -1) {
                    this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                    this.sentSeekMap = true;
                    return;
                }
                this.seekForCues = true;
            }
        }
    }

    protected void endMasterElement(int i) throws ParserException {
        assertInitialized();
        if (i != ID_BLOCK_GROUP) {
            if (i == ID_TRACK_ENTRY) {
                Track track = (Track) Assertions.checkStateNotNull(this.currentTrack);
                if (track.codecId != null) {
                    if (isCodecSupported(track.codecId)) {
                        track.initializeOutput(this.extractorOutput, track.number);
                        this.tracks.put(track.number, track);
                    }
                    this.currentTrack = null;
                    return;
                }
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            } else if (i == ID_SEEK) {
                int i2 = this.seekEntryId;
                if (i2 != -1) {
                    long j = this.seekEntryPosition;
                    if (j != -1) {
                        if (i2 == ID_CUES) {
                            this.cuesContentPosition = j;
                            return;
                        }
                        return;
                    }
                }
                throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
            } else if (i == ID_CONTENT_ENCODING) {
                assertInTrackEntry(i);
                if (!this.currentTrack.hasContentEncryption) {
                    return;
                }
                if (this.currentTrack.cryptoData != null) {
                    this.currentTrack.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C.UUID_NIL, MimeTypes.VIDEO_WEBM, this.currentTrack.cryptoData.encryptionKey));
                    return;
                }
                throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
            } else if (i == ID_CONTENT_ENCODINGS) {
                assertInTrackEntry(i);
                if (this.currentTrack.hasContentEncryption && this.currentTrack.sampleStrippedBytes != null) {
                    throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
                }
            } else if (i == 357149030) {
                if (this.timecodeScale == C.TIME_UNSET) {
                    this.timecodeScale = 1000000;
                }
                long j2 = this.durationTimecode;
                if (j2 != C.TIME_UNSET) {
                    this.durationUs = scaleTimecodeToUs(j2);
                }
            } else if (i != ID_TRACKS) {
                if (i == ID_CUES) {
                    if (!this.sentSeekMap) {
                        this.extractorOutput.seekMap(buildSeekMap(this.cueTimesUs, this.cueClusterPositions));
                        this.sentSeekMap = true;
                    }
                    this.cueTimesUs = null;
                    this.cueClusterPositions = null;
                }
            } else if (this.tracks.size() != 0) {
                this.extractorOutput.endTracks();
            } else {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
        } else if (this.blockState == 2) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.blockSampleCount; i4++) {
                i3 += this.blockSampleSizes[i4];
            }
            Track track2 = this.tracks.get(this.blockTrackNumber);
            track2.assertOutputInitialized();
            int i5 = i3;
            int i6 = 0;
            while (i6 < this.blockSampleCount) {
                long j3 = this.blockTimeUs + ((long) ((track2.defaultSampleDurationNs * i6) / 1000));
                int i7 = this.blockFlags;
                if (i6 == 0 && !this.blockHasReferenceBlock) {
                    i7 |= 1;
                }
                int i8 = this.blockSampleSizes[i6];
                int i9 = i5 - i8;
                commitSampleToOutput(track2, j3, i7, i8, i9);
                i6++;
                i5 = i9;
            }
            this.blockState = 0;
        }
    }

    protected void integerElement(int i, long j) throws ParserException {
        if (i != ID_CONTENT_ENCODING_ORDER) {
            if (i != ID_CONTENT_ENCODING_SCOPE) {
                boolean z = false;
                switch (i) {
                    case 131:
                        getCurrentTrack(i).type = (int) j;
                        return;
                    case 136:
                        Track currentTrack = getCurrentTrack(i);
                        if (j == 1) {
                            z = true;
                        }
                        currentTrack.flagDefault = z;
                        return;
                    case ID_BLOCK_DURATION /* 155 */:
                        this.blockDurationUs = scaleTimecodeToUs(j);
                        return;
                    case ID_CHANNELS /* 159 */:
                        getCurrentTrack(i).channelCount = (int) j;
                        return;
                    case ID_PIXEL_WIDTH /* 176 */:
                        getCurrentTrack(i).width = (int) j;
                        return;
                    case ID_CUE_TIME /* 179 */:
                        assertInCues(i);
                        this.cueTimesUs.add(scaleTimecodeToUs(j));
                        return;
                    case ID_PIXEL_HEIGHT /* 186 */:
                        getCurrentTrack(i).height = (int) j;
                        return;
                    case 215:
                        getCurrentTrack(i).number = (int) j;
                        return;
                    case ID_TIME_CODE /* 231 */:
                        this.clusterTimecodeUs = scaleTimecodeToUs(j);
                        return;
                    case ID_BLOCK_ADD_ID /* 238 */:
                        this.blockAdditionalId = (int) j;
                        return;
                    case ID_CUE_CLUSTER_POSITION /* 241 */:
                        if (!this.seenClusterPositionForCurrentCuePoint) {
                            assertInCues(i);
                            this.cueClusterPositions.add(j);
                            this.seenClusterPositionForCurrentCuePoint = true;
                            return;
                        }
                        return;
                    case 251:
                        this.blockHasReferenceBlock = true;
                        return;
                    case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
                        getCurrentTrack(i).blockAddIdType = (int) j;
                        return;
                    case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw ParserException.createForMalformedContainer(sb.toString(), null);
                        }
                        return;
                    case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw ParserException.createForMalformedContainer(sb2.toString(), null);
                        }
                        return;
                    case ID_EBML_READ_VERSION /* 17143 */:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw ParserException.createForMalformedContainer(sb3.toString(), null);
                        }
                        return;
                    case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw ParserException.createForMalformedContainer(sb4.toString(), null);
                        }
                        return;
                    case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw ParserException.createForMalformedContainer(sb5.toString(), null);
                        }
                        return;
                    case ID_SEEK_POSITION /* 21420 */:
                        this.seekEntryPosition = j + this.segmentContentPosition;
                        return;
                    case ID_STEREO_MODE /* 21432 */:
                        int i2 = (int) j;
                        assertInTrackEntry(i);
                        if (i2 == 0) {
                            this.currentTrack.stereoMode = 0;
                            return;
                        } else if (i2 == 1) {
                            this.currentTrack.stereoMode = 2;
                            return;
                        } else if (i2 == 3) {
                            this.currentTrack.stereoMode = 1;
                            return;
                        } else if (i2 == 15) {
                            this.currentTrack.stereoMode = 3;
                            return;
                        } else {
                            return;
                        }
                    case ID_DISPLAY_WIDTH /* 21680 */:
                        getCurrentTrack(i).displayWidth = (int) j;
                        return;
                    case ID_DISPLAY_UNIT /* 21682 */:
                        getCurrentTrack(i).displayUnit = (int) j;
                        return;
                    case ID_DISPLAY_HEIGHT /* 21690 */:
                        getCurrentTrack(i).displayHeight = (int) j;
                        return;
                    case ID_FLAG_FORCED /* 21930 */:
                        Track currentTrack2 = getCurrentTrack(i);
                        if (j == 1) {
                            z = true;
                        }
                        currentTrack2.flagForced = z;
                        return;
                    case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
                        getCurrentTrack(i).maxBlockAdditionId = (int) j;
                        return;
                    case ID_CODEC_DELAY /* 22186 */:
                        getCurrentTrack(i).codecDelayNs = j;
                        return;
                    case ID_SEEK_PRE_ROLL /* 22203 */:
                        getCurrentTrack(i).seekPreRollNs = j;
                        return;
                    case ID_AUDIO_BIT_DEPTH /* 25188 */:
                        getCurrentTrack(i).audioBitDepth = (int) j;
                        return;
                    case ID_PROJECTION_TYPE /* 30321 */:
                        assertInTrackEntry(i);
                        int i3 = (int) j;
                        if (i3 == 0) {
                            this.currentTrack.projectionType = 0;
                            return;
                        } else if (i3 == 1) {
                            this.currentTrack.projectionType = 1;
                            return;
                        } else if (i3 == 2) {
                            this.currentTrack.projectionType = 2;
                            return;
                        } else if (i3 == 3) {
                            this.currentTrack.projectionType = 3;
                            return;
                        } else {
                            return;
                        }
                    case ID_DEFAULT_DURATION /* 2352003 */:
                        getCurrentTrack(i).defaultSampleDurationNs = (int) j;
                        return;
                    case ID_TIMECODE_SCALE /* 2807729 */:
                        this.timecodeScale = j;
                        return;
                    default:
                        switch (i) {
                            case ID_COLOUR_RANGE /* 21945 */:
                                assertInTrackEntry(i);
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    this.currentTrack.colorRange = 2;
                                    return;
                                } else if (i4 == 2) {
                                    this.currentTrack.colorRange = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case ID_COLOUR_TRANSFER /* 21946 */:
                                assertInTrackEntry(i);
                                int isoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j);
                                if (isoTransferCharacteristicsToColorTransfer != -1) {
                                    this.currentTrack.colorTransfer = isoTransferCharacteristicsToColorTransfer;
                                    return;
                                }
                                return;
                            case ID_COLOUR_PRIMARIES /* 21947 */:
                                assertInTrackEntry(i);
                                this.currentTrack.hasColorInfo = true;
                                int isoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) j);
                                if (isoColorPrimariesToColorSpace != -1) {
                                    this.currentTrack.colorSpace = isoColorPrimariesToColorSpace;
                                    return;
                                }
                                return;
                            case ID_MAX_CLL /* 21948 */:
                                getCurrentTrack(i).maxContentLuminance = (int) j;
                                return;
                            case ID_MAX_FALL /* 21949 */:
                                getCurrentTrack(i).maxFrameAverageLuminance = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                StringBuilder sb6 = new StringBuilder(55);
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(" not supported");
                throw ParserException.createForMalformedContainer(sb6.toString(), null);
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw ParserException.createForMalformedContainer(sb7.toString(), null);
        }
    }

    protected void floatElement(int i, double d) throws ParserException {
        if (i == 181) {
            getCurrentTrack(i).sampleRate = (int) d;
        } else if (i != ID_DURATION) {
            switch (i) {
                case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
                    getCurrentTrack(i).primaryRChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                    getCurrentTrack(i).primaryRChromaticityY = (float) d;
                    return;
                case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
                    getCurrentTrack(i).primaryGChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                    getCurrentTrack(i).primaryGChromaticityY = (float) d;
                    return;
                case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
                    getCurrentTrack(i).primaryBChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                    getCurrentTrack(i).primaryBChromaticityY = (float) d;
                    return;
                case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
                    getCurrentTrack(i).whitePointChromaticityX = (float) d;
                    return;
                case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                    getCurrentTrack(i).whitePointChromaticityY = (float) d;
                    return;
                case ID_LUMNINANCE_MAX /* 21977 */:
                    getCurrentTrack(i).maxMasteringLuminance = (float) d;
                    return;
                case ID_LUMNINANCE_MIN /* 21978 */:
                    getCurrentTrack(i).minMasteringLuminance = (float) d;
                    return;
                default:
                    switch (i) {
                        case ID_PROJECTION_POSE_YAW /* 30323 */:
                            getCurrentTrack(i).projectionPoseYaw = (float) d;
                            return;
                        case ID_PROJECTION_POSE_PITCH /* 30324 */:
                            getCurrentTrack(i).projectionPosePitch = (float) d;
                            return;
                        case ID_PROJECTION_POSE_ROLL /* 30325 */:
                            getCurrentTrack(i).projectionPoseRoll = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.durationTimecode = (long) d;
        }
    }

    protected void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            getCurrentTrack(i).codecId = str;
        } else if (i != ID_DOC_TYPE) {
            if (i == ID_NAME) {
                getCurrentTrack(i).name = str;
            } else if (i == ID_LANGUAGE) {
                getCurrentTrack(i).language = str;
            }
        } else if (!DOC_TYPE_WEBM.equals(str) && !DOC_TYPE_MATROSKA.equals(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0252, code lost:
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    protected void binaryElement(int r21, int r22, com.google.android.exoplayer2.extractor.ExtractorInput r23) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 782
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.binaryElement(int, int, com.google.android.exoplayer2.extractor.ExtractorInput):void");
    }

    protected void handleBlockAddIDExtraData(Track track, ExtractorInput extractorInput, int i) throws IOException {
        if (track.blockAddIdType == 1685485123 || track.blockAddIdType == 1685480259) {
            track.dolbyVisionConfigBytes = new byte[i];
            extractorInput.readFully(track.dolbyVisionConfigBytes, 0, i);
            return;
        }
        extractorInput.skipFully(i);
    }

    protected void handleBlockAdditionalData(Track track, int i, ExtractorInput extractorInput, int i2) throws IOException {
        if (i != 4 || !CODEC_ID_VP9.equals(track.codecId)) {
            extractorInput.skipFully(i2);
            return;
        }
        this.blockAdditionalData.reset(i2);
        extractorInput.readFully(this.blockAdditionalData.getData(), 0, i2);
    }

    @EnsuresNonNull({"currentTrack"})
    private void assertInTrackEntry(int i) throws ParserException {
        if (this.currentTrack == null) {
            StringBuilder sb = new StringBuilder(43);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a TrackEntry");
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private void assertInCues(int i) throws ParserException {
        if (this.cueTimesUs == null || this.cueClusterPositions == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    private Track getCurrentTrack(int i) throws ParserException {
        assertInTrackEntry(i);
        return this.currentTrack;
    }

    @RequiresNonNull({"#1.output"})
    private void commitSampleToOutput(Track track, long j, int i, int i2, int i3) {
        if (track.trueHdSampleRechunker != null) {
            track.trueHdSampleRechunker.sampleMetadata(track, j, i, i2, i3);
        } else {
            if (CODEC_ID_SUBRIP.equals(track.codecId) || CODEC_ID_ASS.equals(track.codecId)) {
                if (this.blockSampleCount > 1) {
                    Log.w(TAG, "Skipping subtitle sample in laced block.");
                } else if (this.blockDurationUs == C.TIME_UNSET) {
                    Log.w(TAG, "Skipping subtitle sample with no duration.");
                } else {
                    setSubtitleEndTime(track.codecId, this.blockDurationUs, this.subtitleSample.getData());
                    int position = this.subtitleSample.getPosition();
                    while (true) {
                        if (position >= this.subtitleSample.limit()) {
                            break;
                        } else if (this.subtitleSample.getData()[position] == 0) {
                            this.subtitleSample.setLimit(position);
                            break;
                        } else {
                            position++;
                        }
                    }
                    TrackOutput trackOutput = track.output;
                    ParsableByteArray parsableByteArray = this.subtitleSample;
                    trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
                    i2 += this.subtitleSample.limit();
                }
            }
            if ((268435456 & i) != 0) {
                if (this.blockSampleCount > 1) {
                    i &= -268435457;
                } else {
                    int limit = this.blockAdditionalData.limit();
                    track.output.sampleData(this.blockAdditionalData, limit, 2);
                    i2 += limit;
                }
            }
            track.output.sampleMetadata(j, i, i2, i3, track.cryptoData);
        }
        this.haveOutputSample = true;
    }

    private void readScratch(ExtractorInput extractorInput, int i) throws IOException {
        if (this.scratch.limit() < i) {
            if (this.scratch.capacity() < i) {
                ParsableByteArray parsableByteArray = this.scratch;
                parsableByteArray.ensureCapacity(Math.max(parsableByteArray.capacity() * 2, i));
            }
            extractorInput.readFully(this.scratch.getData(), this.scratch.limit(), i - this.scratch.limit());
            this.scratch.setLimit(i);
        }
    }

    @RequiresNonNull({"#2.output"})
    private int writeSampleData(ExtractorInput extractorInput, Track track, int i) throws IOException {
        int i2;
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SUBRIP_PREFIX, i);
            return finishWriteSampleData();
        } else if (CODEC_ID_ASS.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SSA_PREFIX, i);
            return finishWriteSampleData();
        } else {
            TrackOutput trackOutput = track.output;
            boolean z = true;
            if (!this.sampleEncodingHandled) {
                if (track.hasContentEncryption) {
                    this.blockFlags &= -1073741825;
                    int i3 = 128;
                    if (!this.sampleSignalByteRead) {
                        extractorInput.readFully(this.scratch.getData(), 0, 1);
                        this.sampleBytesRead++;
                        if ((this.scratch.getData()[0] & 128) != 128) {
                            this.sampleSignalByte = this.scratch.getData()[0];
                            this.sampleSignalByteRead = true;
                        } else {
                            throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                        }
                    }
                    if ((this.sampleSignalByte & 1) == 1) {
                        boolean z2 = (this.sampleSignalByte & 2) == 2;
                        this.blockFlags |= 1073741824;
                        if (!this.sampleInitializationVectorRead) {
                            extractorInput.readFully(this.encryptionInitializationVector.getData(), 0, 8);
                            this.sampleBytesRead += 8;
                            this.sampleInitializationVectorRead = true;
                            byte[] data = this.scratch.getData();
                            if (!z2) {
                                i3 = 0;
                            }
                            data[0] = (byte) (i3 | 8);
                            this.scratch.setPosition(0);
                            trackOutput.sampleData(this.scratch, 1, 1);
                            this.sampleBytesWritten++;
                            this.encryptionInitializationVector.setPosition(0);
                            trackOutput.sampleData(this.encryptionInitializationVector, 8, 1);
                            this.sampleBytesWritten += 8;
                        }
                        if (z2) {
                            if (!this.samplePartitionCountRead) {
                                extractorInput.readFully(this.scratch.getData(), 0, 1);
                                this.sampleBytesRead++;
                                this.scratch.setPosition(0);
                                this.samplePartitionCount = this.scratch.readUnsignedByte();
                                this.samplePartitionCountRead = true;
                            }
                            int i4 = this.samplePartitionCount * 4;
                            this.scratch.reset(i4);
                            extractorInput.readFully(this.scratch.getData(), 0, i4);
                            this.sampleBytesRead += i4;
                            short s = (short) ((this.samplePartitionCount / 2) + 1);
                            int i5 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                            if (byteBuffer == null || byteBuffer.capacity() < i5) {
                                this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i5);
                            }
                            this.encryptionSubsampleDataBuffer.position(0);
                            this.encryptionSubsampleDataBuffer.putShort(s);
                            int i6 = 0;
                            int i7 = 0;
                            while (true) {
                                i2 = this.samplePartitionCount;
                                if (i6 >= i2) {
                                    break;
                                }
                                int readUnsignedIntToInt = this.scratch.readUnsignedIntToInt();
                                if (i6 % 2 == 0) {
                                    this.encryptionSubsampleDataBuffer.putShort((short) (readUnsignedIntToInt - i7));
                                } else {
                                    this.encryptionSubsampleDataBuffer.putInt(readUnsignedIntToInt - i7);
                                }
                                i6++;
                                i7 = readUnsignedIntToInt;
                            }
                            int i8 = (i - this.sampleBytesRead) - i7;
                            if (i2 % 2 == 1) {
                                this.encryptionSubsampleDataBuffer.putInt(i8);
                            } else {
                                this.encryptionSubsampleDataBuffer.putShort((short) i8);
                                this.encryptionSubsampleDataBuffer.putInt(0);
                            }
                            this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i5);
                            trackOutput.sampleData(this.encryptionSubsampleData, i5, 1);
                            this.sampleBytesWritten += i5;
                        }
                    }
                } else if (track.sampleStrippedBytes != null) {
                    this.sampleStrippedBytes.reset(track.sampleStrippedBytes, track.sampleStrippedBytes.length);
                }
                if (track.maxBlockAdditionId > 0) {
                    this.blockFlags |= 268435456;
                    this.blockAdditionalData.reset(0);
                    this.scratch.reset(4);
                    this.scratch.getData()[0] = (byte) ((i >> 24) & 255);
                    this.scratch.getData()[1] = (byte) ((i >> 16) & 255);
                    this.scratch.getData()[2] = (byte) ((i >> 8) & 255);
                    this.scratch.getData()[3] = (byte) (i & 255);
                    trackOutput.sampleData(this.scratch, 4, 2);
                    this.sampleBytesWritten += 4;
                }
                this.sampleEncodingHandled = true;
            }
            int limit = i + this.sampleStrippedBytes.limit();
            if (!CODEC_ID_H264.equals(track.codecId) && !CODEC_ID_H265.equals(track.codecId)) {
                if (track.trueHdSampleRechunker != null) {
                    if (this.sampleStrippedBytes.limit() != 0) {
                        z = false;
                    }
                    Assertions.checkState(z);
                    track.trueHdSampleRechunker.startSample(extractorInput);
                }
                while (true) {
                    int i9 = this.sampleBytesRead;
                    if (i9 >= limit) {
                        break;
                    }
                    int writeToOutput = writeToOutput(extractorInput, trackOutput, limit - i9);
                    this.sampleBytesRead += writeToOutput;
                    this.sampleBytesWritten += writeToOutput;
                }
            } else {
                byte[] data2 = this.nalLength.getData();
                data2[0] = 0;
                data2[1] = 0;
                data2[2] = 0;
                int i10 = track.nalUnitLengthFieldLength;
                int i11 = 4 - track.nalUnitLengthFieldLength;
                while (this.sampleBytesRead < limit) {
                    int i12 = this.sampleCurrentNalBytesRemaining;
                    if (i12 == 0) {
                        writeToTarget(extractorInput, data2, i11, i10);
                        this.sampleBytesRead += i10;
                        this.nalLength.setPosition(0);
                        this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                        this.nalStartCode.setPosition(0);
                        trackOutput.sampleData(this.nalStartCode, 4);
                        this.sampleBytesWritten += 4;
                    } else {
                        int writeToOutput2 = writeToOutput(extractorInput, trackOutput, i12);
                        this.sampleBytesRead += writeToOutput2;
                        this.sampleBytesWritten += writeToOutput2;
                        this.sampleCurrentNalBytesRemaining -= writeToOutput2;
                    }
                }
            }
            if (CODEC_ID_VORBIS.equals(track.codecId)) {
                this.vorbisNumPageSamples.setPosition(0);
                trackOutput.sampleData(this.vorbisNumPageSamples, 4);
                this.sampleBytesWritten += 4;
            }
            return finishWriteSampleData();
        }
    }

    private int finishWriteSampleData() {
        int i = this.sampleBytesWritten;
        resetWriteSampleData();
        return i;
    }

    private void resetWriteSampleData() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset(0);
    }

    private void writeSubtitleSampleData(ExtractorInput extractorInput, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.subtitleSample.capacity() < length) {
            this.subtitleSample.reset(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.getData(), 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.getData(), bArr.length, i);
        this.subtitleSample.setPosition(0);
        this.subtitleSample.setLimit(length);
    }

    private static void setSubtitleEndTime(String str, long j, byte[] bArr) {
        char c;
        int i;
        byte[] bArr2;
        int hashCode = str.hashCode();
        if (hashCode != 738597099) {
            if (hashCode == 1422270023 && str.equals(CODEC_ID_SUBRIP)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(CODEC_ID_ASS)) {
                c = 1;
            }
            c = 65535;
        }
        if (c == 0) {
            bArr2 = formatSubtitleTimecode(j, SUBRIP_TIMECODE_FORMAT, 1000);
            i = 19;
        } else if (c == 1) {
            bArr2 = formatSubtitleTimecode(j, SSA_TIMECODE_FORMAT, SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR);
            i = 21;
        } else {
            throw new IllegalArgumentException();
        }
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
    }

    private static byte[] formatSubtitleTimecode(long j, String str, long j2) {
        Assertions.checkArgument(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) (i * 3600)) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) (i2 * 60)) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    private void writeToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) throws IOException {
        int min = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, min);
        }
    }

    private int writeToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) throws IOException {
        int bytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (bytesLeft <= 0) {
            return trackOutput.sampleData((DataReader) extractorInput, i, false);
        }
        int min = Math.min(i, bytesLeft);
        trackOutput.sampleData(this.sampleStrippedBytes, min);
        return min;
    }

    private SeekMap buildSeekMap(LongArray longArray, LongArray longArray2) {
        int i;
        if (this.segmentContentPosition == -1 || this.durationUs == C.TIME_UNSET || longArray == null || longArray.size() == 0 || longArray2 == null || longArray2.size() != longArray.size()) {
            return new SeekMap.Unseekable(this.durationUs);
        }
        int size = longArray.size();
        int[] iArr = new int[size];
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        long[] jArr3 = new long[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jArr3[i3] = longArray.get(i3);
            jArr[i3] = this.segmentContentPosition + longArray2.get(i3);
        }
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArr[i2] = (int) (jArr[i4] - jArr[i2]);
            jArr2[i2] = jArr3[i4] - jArr3[i2];
            i2 = i4;
        }
        iArr[i] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArr[i]);
        jArr2[i] = this.durationUs - jArr3[i];
        long j = jArr2[i];
        if (j <= 0) {
            StringBuilder sb = new StringBuilder(72);
            sb.append("Discarding last cue point with unexpected duration: ");
            sb.append(j);
            Log.w(TAG, sb.toString());
            iArr = Arrays.copyOf(iArr, iArr.length - 1);
            jArr = Arrays.copyOf(jArr, jArr.length - 1);
            jArr2 = Arrays.copyOf(jArr2, jArr2.length - 1);
            jArr3 = Arrays.copyOf(jArr3, jArr3.length - 1);
        }
        return new ChunkIndex(iArr, jArr, jArr2, jArr3);
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1;
                return true;
            }
        }
        return false;
    }

    private long scaleTimecodeToUs(long j) throws ParserException {
        long j2 = this.timecodeScale;
        if (j2 != C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(j, j2, 1000);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static boolean isCodecSupported(String str) {
        char c;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals(CODEC_ID_MPEG4_AP)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str.equals(CODEC_ID_MPEG4_SP)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str.equals(CODEC_ID_ACM)) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str.equals(CODEC_ID_TRUEHD)) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str.equals(CODEC_ID_VORBIS)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str.equals(CODEC_ID_MP2)) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str.equals(CODEC_ID_MP3)) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str.equals(CODEC_ID_FOURCC)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str.equals(CODEC_ID_DVBSUB)) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str.equals(CODEC_ID_MPEG4_ASP)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str.equals(CODEC_ID_H264)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str.equals(CODEC_ID_VOBSUB)) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str.equals(CODEC_ID_DTS_LOSSLESS)) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str.equals(CODEC_ID_AAC)) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str.equals(CODEC_ID_AC3)) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str.equals(CODEC_ID_DTS)) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 82318131:
                if (str.equals(CODEC_ID_AV1)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str.equals(CODEC_ID_VP8)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str.equals(CODEC_ID_VP9)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str.equals(CODEC_ID_PGS)) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str.equals(CODEC_ID_THEORA)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str.equals(CODEC_ID_DTS_EXPRESS)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 635596514:
                if (str.equals(CODEC_ID_PCM_FLOAT)) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 725948237:
                if (str.equals(CODEC_ID_PCM_INT_BIG)) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str.equals(CODEC_ID_PCM_INT_LIT)) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 738597099:
                if (str.equals(CODEC_ID_ASS)) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str.equals(CODEC_ID_H265)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str.equals(CODEC_ID_SUBRIP)) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str.equals(CODEC_ID_MPEG2)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str.equals(CODEC_ID_E_AC3)) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str.equals(CODEC_ID_FLAC)) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str.equals(CODEC_ID_OPUS)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                return true;
            default:
                return false;
        }
    }

    private static int[] ensureArrayCapacity(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        if (iArr.length >= i) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i)];
    }

    @EnsuresNonNull({"extractorOutput"})
    private void assertInitialized() {
        Assertions.checkStateNotNull(this.extractorOutput);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
            MatroskaExtractor.this = r1;
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }
    }

    /* loaded from: classes2.dex */
    public static final class TrueHdSampleRechunker {
        private int chunkFlags;
        private int chunkOffset;
        private int chunkSampleCount;
        private int chunkSize;
        private long chunkTimeUs;
        private boolean foundSyncframe;
        private final byte[] syncframePrefix = new byte[10];

        public void reset() {
            this.foundSyncframe = false;
            this.chunkSampleCount = 0;
        }

        public void startSample(ExtractorInput extractorInput) throws IOException {
            if (!this.foundSyncframe) {
                extractorInput.peekFully(this.syncframePrefix, 0, 10);
                extractorInput.resetPeekPosition();
                if (Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.syncframePrefix) != 0) {
                    this.foundSyncframe = true;
                }
            }
        }

        @RequiresNonNull({"#1.output"})
        public void sampleMetadata(Track track, long j, int i, int i2, int i3) {
            if (this.foundSyncframe) {
                int i4 = this.chunkSampleCount;
                this.chunkSampleCount = i4 + 1;
                if (i4 == 0) {
                    this.chunkTimeUs = j;
                    this.chunkFlags = i;
                    this.chunkSize = 0;
                }
                this.chunkSize += i2;
                this.chunkOffset = i3;
                if (this.chunkSampleCount >= 16) {
                    outputPendingSampleMetadata(track);
                }
            }
        }

        @RequiresNonNull({"#1.output"})
        public void outputPendingSampleMetadata(Track track) {
            if (this.chunkSampleCount > 0) {
                track.output.sampleMetadata(this.chunkTimeUs, this.chunkFlags, this.chunkSize, this.chunkOffset, track.cryptoData);
                this.chunkSampleCount = 0;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class Track {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        public int audioBitDepth;
        private int blockAddIdType;
        public int channelCount;
        public long codecDelayNs;
        public String codecId;
        public byte[] codecPrivate;
        public int colorRange;
        public int colorSpace;
        public int colorTransfer;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public int displayHeight;
        public int displayUnit;
        public int displayWidth;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagDefault;
        public boolean flagForced;
        public boolean hasColorInfo;
        public boolean hasContentEncryption;
        public int height;
        private String language;
        public int maxBlockAdditionId;
        public int maxContentLuminance;
        public int maxFrameAverageLuminance;
        public float maxMasteringLuminance;
        public float minMasteringLuminance;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public float primaryBChromaticityX;
        public float primaryBChromaticityY;
        public float primaryGChromaticityX;
        public float primaryGChromaticityY;
        public float primaryRChromaticityX;
        public float primaryRChromaticityY;
        public byte[] projectionData;
        public float projectionPosePitch;
        public float projectionPoseRoll;
        public float projectionPoseYaw;
        public int projectionType;
        public int sampleRate;
        public byte[] sampleStrippedBytes;
        public long seekPreRollNs;
        public int stereoMode;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public float whitePointChromaticityX;
        public float whitePointChromaticityY;
        public int width;

        private Track() {
            this.width = -1;
            this.height = -1;
            this.displayWidth = -1;
            this.displayHeight = -1;
            this.displayUnit = 0;
            this.projectionType = -1;
            this.projectionPoseYaw = 0.0f;
            this.projectionPosePitch = 0.0f;
            this.projectionPoseRoll = 0.0f;
            this.projectionData = null;
            this.stereoMode = -1;
            this.hasColorInfo = false;
            this.colorSpace = -1;
            this.colorTransfer = -1;
            this.colorRange = -1;
            this.maxContentLuminance = 1000;
            this.maxFrameAverageLuminance = 200;
            this.primaryRChromaticityX = -1.0f;
            this.primaryRChromaticityY = -1.0f;
            this.primaryGChromaticityX = -1.0f;
            this.primaryGChromaticityY = -1.0f;
            this.primaryBChromaticityX = -1.0f;
            this.primaryBChromaticityY = -1.0f;
            this.whitePointChromaticityX = -1.0f;
            this.whitePointChromaticityY = -1.0f;
            this.maxMasteringLuminance = -1.0f;
            this.minMasteringLuminance = -1.0f;
            this.channelCount = 1;
            this.audioBitDepth = -1;
            this.sampleRate = 8000;
            this.codecDelayNs = 0;
            this.seekPreRollNs = 0;
            this.flagDefault = true;
            this.language = "eng";
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @EnsuresNonNull({"this.output"})
        @RequiresNonNull({"codecId"})
        public void initializeOutput(ExtractorOutput extractorOutput, int i) throws ParserException {
            char c;
            String str;
            List<byte[]> list;
            String str2;
            int i2;
            DolbyVisionConfig parse;
            List<byte[]> singletonList;
            String str3;
            String str4;
            List<byte[]> list2;
            String str5;
            String str6;
            List<byte[]> list3;
            int i3;
            String str7 = this.codecId;
            int i4 = 2;
            int i5 = 4;
            int i6 = 0;
            switch (str7.hashCode()) {
                case -2095576542:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MPEG4_AP)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -2095575984:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MPEG4_SP)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1985379776:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_ACM)) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case -1784763192:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_TRUEHD)) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case -1730367663:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_VORBIS)) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -1482641358:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MP2)) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1482641357:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MP3)) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case -1373388978:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_FOURCC)) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -933872740:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_DVBSUB)) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case -538363189:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MPEG4_ASP)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -538363109:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_H264)) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -425012669:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_VOBSUB)) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -356037306:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_DTS_LOSSLESS)) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case 62923557:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_AAC)) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 62923603:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_AC3)) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 62927045:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_DTS)) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case 82318131:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_AV1)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 82338133:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_VP8)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 82338134:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_VP9)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 99146302:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_PGS)) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case 444813526:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_THEORA)) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 542569478:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_DTS_EXPRESS)) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case 635596514:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_PCM_FLOAT)) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case 725948237:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_PCM_INT_BIG)) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case 725957860:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_PCM_INT_LIT)) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 738597099:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_ASS)) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case 855502857:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_H265)) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1422270023:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_SUBRIP)) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case 1809237540:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_MPEG2)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1950749482:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_E_AC3)) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 1950789798:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_FLAC)) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951062397:
                    if (str7.equals(MatroskaExtractor.CODEC_ID_OPUS)) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            int i7 = 4096;
            ColorInfo colorInfo = null;
            switch (c) {
                case 0:
                    str2 = MimeTypes.VIDEO_VP8;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 1:
                    str2 = "video/x-vnd.on2.vp9";
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 2:
                    str2 = "video/av01";
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 3:
                    str2 = MimeTypes.VIDEO_MPEG2;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 4:
                case 5:
                case 6:
                    byte[] bArr = this.codecPrivate;
                    singletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str3 = MimeTypes.VIDEO_MP4V;
                    list = singletonList;
                    str2 = str3;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                case 7:
                    AvcConfig parse2 = AvcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list2 = parse2.initializationData;
                    this.nalUnitLengthFieldLength = parse2.nalUnitLengthFieldLength;
                    str5 = parse2.codecs;
                    str4 = "video/avc";
                    str = str5;
                    str2 = str4;
                    i7 = -1;
                    list = list2;
                    i5 = -1;
                    break;
                case '\b':
                    HevcConfig parse3 = HevcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list2 = parse3.initializationData;
                    this.nalUnitLengthFieldLength = parse3.nalUnitLengthFieldLength;
                    str5 = parse3.codecs;
                    str4 = "video/hevc";
                    str = str5;
                    str2 = str4;
                    i7 = -1;
                    list = list2;
                    i5 = -1;
                    break;
                case '\t':
                    Pair<String, List<byte[]>> parseFourCcPrivate = parseFourCcPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    str3 = (String) parseFourCcPrivate.first;
                    singletonList = (List) parseFourCcPrivate.second;
                    list = singletonList;
                    str2 = str3;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                case '\n':
                    str2 = MimeTypes.VIDEO_UNKNOWN;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 11:
                    i3 = 8192;
                    list3 = parseVorbisCodecPrivate(getCodecPrivate(this.codecId));
                    str6 = MimeTypes.AUDIO_VORBIS;
                    i7 = i3;
                    str2 = str6;
                    str = null;
                    list = list3;
                    i5 = -1;
                    break;
                case '\f':
                    i3 = MatroskaExtractor.OPUS_MAX_INPUT_SIZE;
                    list3 = new ArrayList<>(3);
                    list3.add(getCodecPrivate(this.codecId));
                    list3.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.codecDelayNs).array());
                    list3.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.seekPreRollNs).array());
                    str6 = MimeTypes.AUDIO_OPUS;
                    i7 = i3;
                    str2 = str6;
                    str = null;
                    list = list3;
                    i5 = -1;
                    break;
                case '\r':
                    List<byte[]> singletonList2 = Collections.singletonList(getCodecPrivate(this.codecId));
                    AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(this.codecPrivate);
                    this.sampleRate = parseAudioSpecificConfig.sampleRateHz;
                    this.channelCount = parseAudioSpecificConfig.channelCount;
                    String str8 = parseAudioSpecificConfig.codecs;
                    str2 = MimeTypes.AUDIO_AAC;
                    str = str8;
                    i5 = -1;
                    i7 = -1;
                    list = singletonList2;
                    break;
                case 14:
                    str2 = MimeTypes.AUDIO_MPEG_L2;
                    i5 = -1;
                    list = null;
                    str = null;
                    break;
                case 15:
                    str2 = MimeTypes.AUDIO_MPEG;
                    i5 = -1;
                    list = null;
                    str = null;
                    break;
                case 16:
                    str2 = MimeTypes.AUDIO_AC3;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 17:
                    str2 = MimeTypes.AUDIO_E_AC3;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 18:
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    str2 = MimeTypes.AUDIO_TRUEHD;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 19:
                case 20:
                    str2 = MimeTypes.AUDIO_DTS;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 21:
                    str2 = MimeTypes.AUDIO_DTS_HD;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 22:
                    singletonList = Collections.singletonList(getCodecPrivate(this.codecId));
                    str3 = MimeTypes.AUDIO_FLAC;
                    list = singletonList;
                    str2 = str3;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                case 23:
                    if (parseMsAcmCodecPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)))) {
                        i5 = Util.getPcmEncoding(this.audioBitDepth);
                        if (i5 == 0) {
                            int i8 = this.audioBitDepth;
                            StringBuilder sb = new StringBuilder(MimeTypes.AUDIO_UNKNOWN.length() + 60);
                            sb.append("Unsupported PCM bit depth: ");
                            sb.append(i8);
                            sb.append(". Setting mimeType to ");
                            sb.append(MimeTypes.AUDIO_UNKNOWN);
                            Log.w(MatroskaExtractor.TAG, sb.toString());
                        }
                        i7 = -1;
                        str2 = MimeTypes.AUDIO_RAW;
                        list = null;
                        str = null;
                        break;
                    } else {
                        Log.w(MatroskaExtractor.TAG, MimeTypes.AUDIO_UNKNOWN.length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat(MimeTypes.AUDIO_UNKNOWN) : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to "));
                    }
                    i5 = -1;
                    i7 = -1;
                    str2 = MimeTypes.AUDIO_UNKNOWN;
                    list = null;
                    str = null;
                case 24:
                    i5 = Util.getPcmEncoding(this.audioBitDepth);
                    if (i5 == 0) {
                        int i9 = this.audioBitDepth;
                        StringBuilder sb2 = new StringBuilder(MimeTypes.AUDIO_UNKNOWN.length() + 74);
                        sb2.append("Unsupported little endian PCM bit depth: ");
                        sb2.append(i9);
                        sb2.append(". Setting mimeType to ");
                        sb2.append(MimeTypes.AUDIO_UNKNOWN);
                        Log.w(MatroskaExtractor.TAG, sb2.toString());
                        i5 = -1;
                        i7 = -1;
                        str2 = MimeTypes.AUDIO_UNKNOWN;
                        list = null;
                        str = null;
                        break;
                    }
                    i7 = -1;
                    str2 = MimeTypes.AUDIO_RAW;
                    list = null;
                    str = null;
                case 25:
                    int i10 = this.audioBitDepth;
                    if (i10 != 8) {
                        if (i10 != 16) {
                            StringBuilder sb3 = new StringBuilder(MimeTypes.AUDIO_UNKNOWN.length() + 71);
                            sb3.append("Unsupported big endian PCM bit depth: ");
                            sb3.append(i10);
                            sb3.append(". Setting mimeType to ");
                            sb3.append(MimeTypes.AUDIO_UNKNOWN);
                            Log.w(MatroskaExtractor.TAG, sb3.toString());
                            i5 = -1;
                            i7 = -1;
                            str2 = MimeTypes.AUDIO_UNKNOWN;
                            list = null;
                            str = null;
                            break;
                        } else {
                            i5 = 268435456;
                        }
                    } else {
                        i5 = 3;
                    }
                    i7 = -1;
                    str2 = MimeTypes.AUDIO_RAW;
                    list = null;
                    str = null;
                case 26:
                    int i11 = this.audioBitDepth;
                    if (i11 != 32) {
                        StringBuilder sb4 = new StringBuilder(MimeTypes.AUDIO_UNKNOWN.length() + 75);
                        sb4.append("Unsupported floating point PCM bit depth: ");
                        sb4.append(i11);
                        sb4.append(". Setting mimeType to ");
                        sb4.append(MimeTypes.AUDIO_UNKNOWN);
                        Log.w(MatroskaExtractor.TAG, sb4.toString());
                        i5 = -1;
                        i7 = -1;
                        str2 = MimeTypes.AUDIO_UNKNOWN;
                        list = null;
                        str = null;
                        break;
                    }
                    i7 = -1;
                    str2 = MimeTypes.AUDIO_RAW;
                    list = null;
                    str = null;
                case 27:
                    i5 = -1;
                    i7 = -1;
                    str2 = MimeTypes.APPLICATION_SUBRIP;
                    list = null;
                    str = null;
                    break;
                case 28:
                    list = ImmutableList.of(MatroskaExtractor.SSA_DIALOGUE_FORMAT, getCodecPrivate(this.codecId));
                    str2 = MimeTypes.TEXT_SSA;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                case 29:
                    singletonList = ImmutableList.of(getCodecPrivate(this.codecId));
                    str3 = MimeTypes.APPLICATION_VOBSUB;
                    list = singletonList;
                    str2 = str3;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                case 30:
                    str2 = MimeTypes.APPLICATION_PGS;
                    i5 = -1;
                    i7 = -1;
                    list = null;
                    str = null;
                    break;
                case 31:
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(getCodecPrivate(this.codecId), 0, bArr2, 0, 4);
                    singletonList = ImmutableList.of(bArr2);
                    str3 = MimeTypes.APPLICATION_DVBSUBS;
                    list = singletonList;
                    str2 = str3;
                    i5 = -1;
                    i7 = -1;
                    str = null;
                    break;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
            byte[] bArr3 = this.dolbyVisionConfigBytes;
            if (!(bArr3 == null || (parse = DolbyVisionConfig.parse(new ParsableByteArray(bArr3))) == null)) {
                str = parse.codecs;
                str2 = "video/dolby-vision";
            }
            int i12 = (this.flagDefault ? 1 : 0) | 0 | (this.flagForced ? 2 : 0);
            Format.Builder builder = new Format.Builder();
            if (MimeTypes.isAudio(str2)) {
                i4 = 1;
                builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i5);
            } else if (MimeTypes.isVideo(str2)) {
                if (this.displayUnit == 0) {
                    int i13 = this.displayWidth;
                    if (i13 == -1) {
                        i13 = this.width;
                    }
                    this.displayWidth = i13;
                    int i14 = this.displayHeight;
                    if (i14 == -1) {
                        i14 = this.height;
                    }
                    this.displayHeight = i14;
                }
                float f = -1.0f;
                int i15 = this.displayWidth;
                if (!(i15 == -1 || (i2 = this.displayHeight) == -1)) {
                    f = ((float) (this.height * i15)) / ((float) (this.width * i2));
                }
                if (this.hasColorInfo) {
                    colorInfo = new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, getHdrStaticInfo());
                }
                int intValue = (this.name == null || !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) ? -1 : ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                if (this.projectionType == 0 && Float.compare(this.projectionPoseYaw, 0.0f) == 0 && Float.compare(this.projectionPosePitch, 0.0f) == 0) {
                    if (Float.compare(this.projectionPoseRoll, 0.0f) != 0) {
                        if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                            i6 = 90;
                        } else if (Float.compare(this.projectionPosePitch, -180.0f) == 0 || Float.compare(this.projectionPosePitch, 180.0f) == 0) {
                            i6 = 180;
                        } else if (Float.compare(this.projectionPosePitch, -90.0f) == 0) {
                            i6 = 270;
                        }
                    }
                    builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i6).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfo);
                }
                i6 = intValue;
                builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i6).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfo);
            } else if (MimeTypes.APPLICATION_SUBRIP.equals(str2) || MimeTypes.TEXT_SSA.equals(str2) || MimeTypes.APPLICATION_VOBSUB.equals(str2) || MimeTypes.APPLICATION_PGS.equals(str2) || MimeTypes.APPLICATION_DVBSUBS.equals(str2)) {
                i4 = 3;
            } else {
                throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
            }
            if (this.name != null && !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                builder.setLabel(this.name);
            }
            Format build = builder.setId(i).setSampleMimeType(str2).setMaxInputSize(i7).setLanguage(this.language).setSelectionFlags(i12).setInitializationData(list).setCodecs(str).setDrmInitData(this.drmInitData).build();
            this.output = extractorOutput.track(this.number, i4);
            this.output.format(build);
        }

        @RequiresNonNull({"output"})
        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((int) ((this.primaryRChromaticityX * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.primaryRChromaticityY * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.primaryGChromaticityX * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.primaryGChromaticityY * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.primaryBChromaticityX * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.primaryBChromaticityY * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.whitePointChromaticityX * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) ((this.whitePointChromaticityY * 50000.0f) + 0.5f)));
            order.putShort((short) ((int) (this.maxMasteringLuminance + 0.5f)));
            order.putShort((short) ((int) (this.minMasteringLuminance + 0.5f)));
            order.putShort((short) this.maxContentLuminance);
            order.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (readLittleEndianUnsignedInt == 1482049860) {
                    return new Pair<>(MimeTypes.VIDEO_DIVX, null);
                }
                if (readLittleEndianUnsignedInt == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (readLittleEndianUnsignedInt == 826496599) {
                    byte[] data = parsableByteArray.getData();
                    for (int position = parsableByteArray.getPosition() + 20; position < data.length - 4; position++) {
                        if (data[position] == 0 && data[position + 1] == 0 && data[position + 2] == 1 && data[position + 3] == 15) {
                            return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(data, position, data.length)));
                        }
                    }
                    throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
                }
                Log.w(MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] == 2) {
                    int i = 0;
                    int i2 = 1;
                    while ((bArr[i2] & 255) == 255) {
                        i += 255;
                        i2++;
                    }
                    int i3 = i2 + 1;
                    int i4 = i + (bArr[i2] & 255);
                    int i5 = 0;
                    while ((bArr[i3] & 255) == 255) {
                        i5 += 255;
                        i3++;
                    }
                    int i6 = i3 + 1;
                    int i7 = i5 + (bArr[i3] & 255);
                    if (bArr[i6] == 1) {
                        byte[] bArr2 = new byte[i4];
                        System.arraycopy(bArr, i6, bArr2, 0, i4);
                        int i8 = i6 + i4;
                        if (bArr[i8] == 3) {
                            int i9 = i8 + i7;
                            if (bArr[i9] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i9];
                                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                        }
                        throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                    }
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (readLittleEndianUnsignedShort == 1) {
                    return true;
                }
                if (readLittleEndianUnsignedShort != 65534) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                if (parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits()) {
                    if (parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        @EnsuresNonNull({"output"})
        public void assertOutputInitialized() {
            Assertions.checkNotNull(this.output);
        }

        @EnsuresNonNull({"codecPrivate"})
        private byte[] getCodecPrivate(String str) throws ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            String valueOf = String.valueOf(str);
            throw ParserException.createForMalformedContainer(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }
    }
}
