package com.tencent.thumbplayer.api;

/* loaded from: classes2.dex */
public class TPJitterBufferConfig {
    private long mAdjustIntervalThresholdMs;
    private long mFrozenThresholdMs;
    private long mMaxIncreaseDurationMs;
    private long mMinDecreaseDurationMs;
    private long mPerDecreaseDurationMs;
    private long mPerIncreaseDurationMs;

    /* loaded from: classes2.dex */
    public static final class Builder {
        public static final long DEFAULT_ADJUST_INTERVAL_THRESHOLD_MS = 60000;
        public static final long DEFAULT_FROZEN_THRESHOLD_MS = 800;
        public static final long DEFAULT_MAX_DECREASE_DURATION_MS = 8000;
        public static final long DEFAULT_MIN_DECREASE_DURATION_MS = 2000;
        public static final long DEFAULT_PER_DECREASE_DURATION_MS = 500;
        public static final long DEFAULT_PER_INCREASE_DURATION_MS = 1000;
        private long mMinDecreaseDurationMs = 2000;
        private long mMaxIncreaseDurationMs = 8000;
        private long mPerIncreaseDurationMs = 1000;
        private long mPerDecreaseDurationMs = 500;
        private long mAdjustIntervalThresholdMs = 60000;
        private long mFrozenThresholdMs = 800;

        public TPJitterBufferConfig build() {
            return new TPJitterBufferConfig(this.mMinDecreaseDurationMs, this.mMaxIncreaseDurationMs, this.mPerIncreaseDurationMs, this.mPerDecreaseDurationMs, this.mAdjustIntervalThresholdMs, this.mFrozenThresholdMs);
        }

        public Builder setAdjustIntervalThresholdMs(long j) {
            this.mAdjustIntervalThresholdMs = j;
            return this;
        }

        public Builder setFrozenThresholdMs(long j) {
            this.mFrozenThresholdMs = j;
            return this;
        }

        public Builder setMaxIncreaseDurationMs(long j) {
            this.mMaxIncreaseDurationMs = j;
            return this;
        }

        public Builder setMinDecreaseDurationMs(long j) {
            this.mMinDecreaseDurationMs = j;
            return this;
        }

        public Builder setPerDecreaseDurationMs(long j) {
            this.mPerDecreaseDurationMs = j;
            return this;
        }

        public Builder setPerIncreaseDurationMs(long j) {
            this.mPerIncreaseDurationMs = j;
            return this;
        }
    }

    protected TPJitterBufferConfig(long j, long j2, long j3, long j4, long j5, long j6) {
        this.mMinDecreaseDurationMs = j;
        this.mMaxIncreaseDurationMs = j2;
        this.mPerIncreaseDurationMs = j3;
        this.mPerDecreaseDurationMs = j4;
        this.mAdjustIntervalThresholdMs = j5;
        this.mFrozenThresholdMs = j6;
    }

    public long getAdjustIntervalThresholdMs() {
        return this.mAdjustIntervalThresholdMs;
    }

    public long getFrozenThresholdMs() {
        return this.mFrozenThresholdMs;
    }

    public long getMaxIncreaseDurationMs() {
        return this.mMaxIncreaseDurationMs;
    }

    public long getMinDecreaseDurationMs() {
        return this.mMinDecreaseDurationMs;
    }

    public long getPerDecreaseDurationMs() {
        return this.mPerDecreaseDurationMs;
    }

    public long getPerIncreaseDurationMs() {
        return this.mPerIncreaseDurationMs;
    }
}
