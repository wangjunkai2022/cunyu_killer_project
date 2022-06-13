package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C;

/* loaded from: classes4.dex */
public final class TimestampAdjuster {
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    public static final long MODE_NO_OFFSET = Long.MAX_VALUE;
    public static final long MODE_SHARED = 9223372036854775806L;
    private long firstSampleTimestampUs;
    private long lastUnadjustedTimestampUs;
    private final ThreadLocal<Long> nextSampleTimestampUs = new ThreadLocal<>();
    private long timestampOffsetUs;

    public TimestampAdjuster(long j) {
        reset(j);
    }

    public synchronized void sharedInitializeOrWait(boolean z, long j) throws InterruptedException {
        Assertions.checkState(this.firstSampleTimestampUs == MODE_SHARED);
        if (this.timestampOffsetUs == C.TIME_UNSET) {
            if (z) {
                this.nextSampleTimestampUs.set(Long.valueOf(j));
            } else {
                while (this.timestampOffsetUs == C.TIME_UNSET) {
                    wait();
                }
            }
        }
    }

    public synchronized long getFirstSampleTimestampUs() {
        long j;
        if (!(this.firstSampleTimestampUs == Long.MAX_VALUE || this.firstSampleTimestampUs == MODE_SHARED)) {
            j = this.firstSampleTimestampUs;
        }
        j = C.TIME_UNSET;
        return j;
    }

    public synchronized long getLastAdjustedTimestampUs() {
        long j;
        if (this.lastUnadjustedTimestampUs != C.TIME_UNSET) {
            j = this.lastUnadjustedTimestampUs + this.timestampOffsetUs;
        } else {
            j = getFirstSampleTimestampUs();
        }
        return j;
    }

    public synchronized long getTimestampOffsetUs() {
        return this.timestampOffsetUs;
    }

    public synchronized void reset(long j) {
        this.firstSampleTimestampUs = j;
        this.timestampOffsetUs = j == Long.MAX_VALUE ? 0 : -9223372036854775807L;
        this.lastUnadjustedTimestampUs = C.TIME_UNSET;
    }

    public synchronized long adjustTsTimestamp(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.lastUnadjustedTimestampUs != C.TIME_UNSET) {
            long usToNonWrappedPts = usToNonWrappedPts(this.lastUnadjustedTimestampUs);
            long j2 = (4294967296L + usToNonWrappedPts) / MAX_PTS_PLUS_ONE;
            long j3 = ((j2 - 1) * MAX_PTS_PLUS_ONE) + j;
            j += j2 * MAX_PTS_PLUS_ONE;
            if (Math.abs(j3 - usToNonWrappedPts) < Math.abs(j - usToNonWrappedPts)) {
                j = j3;
            }
        }
        return adjustSampleTimestamp(ptsToUs(j));
    }

    public synchronized long adjustSampleTimestamp(long j) {
        long j2;
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.timestampOffsetUs == C.TIME_UNSET) {
            if (this.firstSampleTimestampUs == MODE_SHARED) {
                j2 = ((Long) Assertions.checkNotNull(this.nextSampleTimestampUs.get())).longValue();
            } else {
                j2 = this.firstSampleTimestampUs;
            }
            this.timestampOffsetUs = j2 - j;
            notifyAll();
        }
        this.lastUnadjustedTimestampUs = j;
        return j + this.timestampOffsetUs;
    }

    public static long ptsToUs(long j) {
        return (j * 1000000) / 90000;
    }

    public static long usToWrappedPts(long j) {
        return usToNonWrappedPts(j) % MAX_PTS_PLUS_ONE;
    }

    public static long usToNonWrappedPts(long j) {
        return (j * 90000) / 1000000;
    }
}
