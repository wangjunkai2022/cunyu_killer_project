package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac4Extractor;
import com.google.android.exoplayer2.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class BundledHlsMediaChunkExtractor implements HlsMediaChunkExtractor {
    private static final PositionHolder POSITION_HOLDER = new PositionHolder();
    final Extractor extractor;
    private final Format masterPlaylistFormat;
    private final TimestampAdjuster timestampAdjuster;

    public BundledHlsMediaChunkExtractor(Extractor extractor, Format format, TimestampAdjuster timestampAdjuster) {
        this.extractor = extractor;
        this.masterPlaylistFormat = format;
        this.timestampAdjuster = timestampAdjuster;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractor.init(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean read(ExtractorInput extractorInput) throws IOException {
        return this.extractor.read(extractorInput, POSITION_HOLDER) == 0;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isPackedAudioExtractor() {
        Extractor extractor = this.extractor;
        return (extractor instanceof AdtsExtractor) || (extractor instanceof Ac3Extractor) || (extractor instanceof Ac4Extractor) || (extractor instanceof Mp3Extractor);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isReusable() {
        Extractor extractor = this.extractor;
        return (extractor instanceof TsExtractor) || (extractor instanceof FragmentedMp4Extractor);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public HlsMediaChunkExtractor recreate() {
        Extractor extractor;
        Assertions.checkState(!isReusable());
        Extractor extractor2 = this.extractor;
        if (extractor2 instanceof WebvttExtractor) {
            extractor = new WebvttExtractor(this.masterPlaylistFormat.language, this.timestampAdjuster);
        } else if (extractor2 instanceof AdtsExtractor) {
            extractor = new AdtsExtractor();
        } else if (extractor2 instanceof Ac3Extractor) {
            extractor = new Ac3Extractor();
        } else if (extractor2 instanceof Ac4Extractor) {
            extractor = new Ac4Extractor();
        } else if (extractor2 instanceof Mp3Extractor) {
            extractor = new Mp3Extractor();
        } else {
            String valueOf = String.valueOf(extractor2.getClass().getSimpleName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unexpected extractor type for recreation: ".concat(valueOf) : new String("Unexpected extractor type for recreation: "));
        }
        return new BundledHlsMediaChunkExtractor(extractor, this.masterPlaylistFormat, this.timestampAdjuster);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void onTruncatedSegmentParsed() {
        this.extractor.seek(0, 0);
    }
}
