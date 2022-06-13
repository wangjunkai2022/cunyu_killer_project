package com.google.android.exoplayer2.source.chunk;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.rawcc.RawCcExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class BundledChunkExtractor implements ExtractorOutput, ChunkExtractor {
    public static final ChunkExtractor.Factory FACTORY = $$Lambda$BundledChunkExtractor$hcsWJL5DYVWIyXAFnRKV4t2qwQA.INSTANCE;
    private static final PositionHolder POSITION_HOLDER = new PositionHolder();
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    private long endTimeUs;
    private final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;
    private ChunkExtractor.TrackOutputProvider trackOutputProvider;

    public static /* synthetic */ ChunkExtractor lambda$static$0(int i, Format format, boolean z, List list, TrackOutput trackOutput) {
        Extractor extractor;
        String str = format.containerMimeType;
        if (MimeTypes.isText(str)) {
            if (!MimeTypes.APPLICATION_RAWCC.equals(str)) {
                return null;
            }
            extractor = new RawCcExtractor(format);
        } else if (MimeTypes.isMatroska(str)) {
            extractor = new MatroskaExtractor(1);
        } else {
            int i2 = 0;
            if (z) {
                i2 = 4;
            }
            extractor = new FragmentedMp4Extractor(i2, null, null, list, trackOutput);
        }
        return new BundledChunkExtractor(extractor, i, format);
    }

    public BundledChunkExtractor(Extractor extractor, int i, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i;
        this.primaryTrackManifestFormat = format;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public ChunkIndex getChunkIndex() {
        SeekMap seekMap = this.seekMap;
        if (seekMap instanceof ChunkIndex) {
            return (ChunkIndex) seekMap;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void init(ChunkExtractor.TrackOutputProvider trackOutputProvider, long j, long j2) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = j2;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j != C.TIME_UNSET) {
                this.extractor.seek(0, j);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        if (j == C.TIME_UNSET) {
            j = 0;
        }
        extractor.seek(0, j);
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            this.bindingTrackOutputs.valueAt(i).bind(trackOutputProvider, j2);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void release() {
        this.extractor.release();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public boolean read(ExtractorInput extractorInput) throws IOException {
        int read = this.extractor.read(extractorInput, POSITION_HOLDER);
        Assertions.checkState(read != 1);
        return read == 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i);
        if (bindingTrackOutput == null) {
            Assertions.checkState(this.sampleFormats == null);
            bindingTrackOutput = new BindingTrackOutput(i, i2, i2 == this.primaryTrackType ? this.primaryTrackManifestFormat : null);
            bindingTrackOutput.bind(this.trackOutputProvider, this.endTimeUs);
            this.bindingTrackOutputs.put(i, bindingTrackOutput);
        }
        return bindingTrackOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            formatArr[i] = (Format) Assertions.checkStateNotNull(this.bindingTrackOutputs.valueAt(i).sampleFormat);
        }
        this.sampleFormats = formatArr;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class BindingTrackOutput implements TrackOutput {
        private long endTimeUs;
        private final DummyTrackOutput fakeTrackOutput = new DummyTrackOutput();
        private final int id;
        private final Format manifestFormat;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ int sampleData(DataReader dataReader, int i, boolean z) throws IOException {
            return TrackOutput.CC.$default$sampleData(this, dataReader, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i) {
            TrackOutput.CC.$default$sampleData(this, parsableByteArray, i);
        }

        public BindingTrackOutput(int i, int i2, Format format) {
            this.id = i;
            this.type = i2;
            this.manifestFormat = format;
        }

        public void bind(ChunkExtractor.TrackOutputProvider trackOutputProvider, long j) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.fakeTrackOutput;
                return;
            }
            this.endTimeUs = j;
            this.trackOutput = trackOutputProvider.track(this.id, this.type);
            Format format = this.sampleFormat;
            if (format != null) {
                this.trackOutput.format(format);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.manifestFormat;
            if (format2 != null) {
                format = format.withManifestFormatInfo(format2);
            }
            this.sampleFormat = format;
            ((TrackOutput) Util.castNonNull(this.trackOutput)).format(this.sampleFormat);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
            return ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleData(dataReader, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
            ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleData(parsableByteArray, i);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
            long j2 = this.endTimeUs;
            if (j2 != C.TIME_UNSET && j >= j2) {
                this.trackOutput = this.fakeTrackOutput;
            }
            ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleMetadata(j, i, i2, i3, cryptoData);
        }
    }
}
