package com.facebook.imagepipeline.core;

import com.facebook.common.webp.WebpSupportStatus;
import com.facebook.imagepipeline.core.ImagePipelineConfig;

/* loaded from: classes2.dex */
public class ImagePipelineExperiments {
    private boolean mDecodeFileDescriptorEnabled;
    private final int mForceSmallCacheThresholdBytes;
    private final int mThrottlingMaxSimultaneousRequests;
    private final boolean mWebpSupportEnabled;

    private ImagePipelineExperiments(Builder builder, ImagePipelineConfig.Builder builder2) {
        this.mForceSmallCacheThresholdBytes = builder.mForceSmallCacheThresholdBytes;
        boolean z = true;
        this.mWebpSupportEnabled = builder.mWebpSupportEnabled && WebpSupportStatus.sWebpLibraryPresent;
        this.mDecodeFileDescriptorEnabled = (!builder2.isDownsampleEnabled() || !builder.mDecodeFileDescriptorEnabled) ? false : z;
        this.mThrottlingMaxSimultaneousRequests = builder.mThrottlingMaxSimultaneousRequests;
    }

    public boolean isDecodeFileDescriptorEnabled() {
        return this.mDecodeFileDescriptorEnabled;
    }

    public int getForceSmallCacheThresholdBytes() {
        return this.mForceSmallCacheThresholdBytes;
    }

    public boolean isWebpSupportEnabled() {
        return this.mWebpSupportEnabled;
    }

    public int getThrottlingMaxSimultaneousRequests() {
        return this.mThrottlingMaxSimultaneousRequests;
    }

    public static Builder newBuilder(ImagePipelineConfig.Builder builder) {
        return new Builder(builder);
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private static final int DEFAULT_MAX_SIMULTANEOUS_FILE_FETCH_AND_RESIZE = 5;
        private final ImagePipelineConfig.Builder mConfigBuilder;
        private int mForceSmallCacheThresholdBytes = 0;
        private boolean mWebpSupportEnabled = false;
        private boolean mDecodeFileDescriptorEnabled = false;
        private int mThrottlingMaxSimultaneousRequests = 5;

        public Builder(ImagePipelineConfig.Builder builder) {
            this.mConfigBuilder = builder;
        }

        public ImagePipelineConfig.Builder setDecodeFileDescriptorEnabled(boolean z) {
            this.mDecodeFileDescriptorEnabled = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setForceSmallCacheThresholdBytes(int i) {
            this.mForceSmallCacheThresholdBytes = i;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setWebpSupportEnabled(boolean z) {
            this.mWebpSupportEnabled = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setThrottlingMaxSimultaneousRequests(int i) {
            this.mThrottlingMaxSimultaneousRequests = i;
            return this.mConfigBuilder;
        }

        public ImagePipelineExperiments build() {
            return new ImagePipelineExperiments(this, this.mConfigBuilder);
        }
    }
}
