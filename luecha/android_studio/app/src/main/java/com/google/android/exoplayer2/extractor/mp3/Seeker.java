package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.SeekMap;

/* loaded from: classes2.dex */
interface Seeker extends SeekMap {
    long getDataEndPosition();

    long getTimeUs(long j);

    /* loaded from: classes2.dex */
    public static class UnseekableSeeker extends SeekMap.Unseekable implements Seeker {
        @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
        public long getDataEndPosition() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
        public long getTimeUs(long j) {
            return 0;
        }

        public UnseekableSeeker() {
            super(C.TIME_UNSET);
        }
    }
}
