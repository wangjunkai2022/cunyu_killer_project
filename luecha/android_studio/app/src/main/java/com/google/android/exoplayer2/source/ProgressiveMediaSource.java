package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.ProgressiveMediaExtractor;
import com.google.android.exoplayer2.source.ProgressiveMediaPeriod;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.util.List;

/* loaded from: classes2.dex */
public final class ProgressiveMediaSource extends BaseMediaSource implements ProgressiveMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    private final int continueLoadingCheckIntervalBytes;
    private final DataSource.Factory dataSourceFactory;
    private final DrmSessionManager drmSessionManager;
    private final LoadErrorHandlingPolicy loadableLoadErrorHandlingPolicy;
    private final MediaItem mediaItem;
    private final MediaItem.PlaybackProperties playbackProperties;
    private final ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;
    private long timelineDurationUs;
    private boolean timelineIsLive;
    private boolean timelineIsPlaceholder;
    private boolean timelineIsSeekable;
    private TransferListener transferListener;

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements MediaSourceFactory {
        private int continueLoadingCheckIntervalBytes;
        private String customCacheKey;
        private final DataSource.Factory dataSourceFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;
        private Object tag;
        private boolean usingCustomDrmSessionManagerProvider;

        public static /* synthetic */ DrmSessionManager lambda$setDrmSessionManager$2(DrmSessionManager drmSessionManager, MediaItem mediaItem) {
            return drmSessionManager;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @Deprecated
        public /* synthetic */ MediaSourceFactory setStreamKeys(List<StreamKey> list) {
            return MediaSourceFactory.CC.$default$setStreamKeys(this, list);
        }

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        public Factory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
            this(factory, new ProgressiveMediaExtractor.Factory() { // from class: com.google.android.exoplayer2.source.-$$Lambda$ProgressiveMediaSource$Factory$1BcUMd-B3B2CCKmsXimd6hUT8qQ
                @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
                public final ProgressiveMediaExtractor createProgressiveMediaExtractor() {
                    return ProgressiveMediaSource.Factory.lambda$new$0(ExtractorsFactory.this);
                }
            });
        }

        public static /* synthetic */ ProgressiveMediaExtractor lambda$new$0(ExtractorsFactory extractorsFactory) {
            return new BundledExtractorsAdapter(extractorsFactory);
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2) {
            this.dataSourceFactory = factory;
            this.progressiveMediaExtractorFactory = factory2;
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.continueLoadingCheckIntervalBytes = 1048576;
        }

        @Deprecated
        public Factory setExtractorsFactory(ExtractorsFactory extractorsFactory) {
            this.progressiveMediaExtractorFactory = new ProgressiveMediaExtractor.Factory() { // from class: com.google.android.exoplayer2.source.-$$Lambda$ProgressiveMediaSource$Factory$tWqqOWmGD1GvKo7X9KjQYPQSRBI
                @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
                public final ProgressiveMediaExtractor createProgressiveMediaExtractor() {
                    return ProgressiveMediaSource.Factory.lambda$setExtractorsFactory$1(ExtractorsFactory.this);
                }
            };
            return this;
        }

        public static /* synthetic */ ProgressiveMediaExtractor lambda$setExtractorsFactory$1(ExtractorsFactory extractorsFactory) {
            if (extractorsFactory == null) {
                extractorsFactory = new DefaultExtractorsFactory();
            }
            return new BundledExtractorsAdapter(extractorsFactory);
        }

        @Deprecated
        public Factory setCustomCacheKey(String str) {
            this.customCacheKey = str;
            return this;
        }

        @Deprecated
        public Factory setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public Factory setContinueLoadingCheckIntervalBytes(int i) {
            this.continueLoadingCheckIntervalBytes = i;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            if (drmSessionManagerProvider != null) {
                this.drmSessionManagerProvider = drmSessionManagerProvider;
                this.usingCustomDrmSessionManagerProvider = true;
            } else {
                this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
                this.usingCustomDrmSessionManagerProvider = false;
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public Factory setDrmSessionManager(DrmSessionManager drmSessionManager) {
            if (drmSessionManager == null) {
                setDrmSessionManagerProvider((DrmSessionManagerProvider) null);
            } else {
                setDrmSessionManagerProvider((DrmSessionManagerProvider) new DrmSessionManagerProvider() { // from class: com.google.android.exoplayer2.source.-$$Lambda$ProgressiveMediaSource$Factory$5D9Igg3si1A7lxAR2ztSKrLAWcY
                    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                    public final DrmSessionManager get(MediaItem mediaItem) {
                        return ProgressiveMediaSource.Factory.lambda$setDrmSessionManager$2(DrmSessionManager.this, mediaItem);
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public Factory setDrmHttpDataSourceFactory(HttpDataSource.Factory factory) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmHttpDataSourceFactory(factory);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public Factory setDrmUserAgent(String str) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmUserAgent(str);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @Deprecated
        public ProgressiveMediaSource createMediaSource(Uri uri) {
            return createMediaSource(new MediaItem.Builder().setUri(uri).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public ProgressiveMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.playbackProperties);
            boolean z = true;
            boolean z2 = mediaItem.playbackProperties.tag == null && this.tag != null;
            if (mediaItem.playbackProperties.customCacheKey != null || this.customCacheKey == null) {
                z = false;
            }
            if (z2 && z) {
                mediaItem = mediaItem.buildUpon().setTag(this.tag).setCustomCacheKey(this.customCacheKey).build();
            } else if (z2) {
                mediaItem = mediaItem.buildUpon().setTag(this.tag).build();
            } else if (z) {
                mediaItem = mediaItem.buildUpon().setCustomCacheKey(this.customCacheKey).build();
            }
            return new ProgressiveMediaSource(mediaItem, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes);
        }
    }

    private ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
        this.playbackProperties = (MediaItem.PlaybackProperties) Assertions.checkNotNull(mediaItem.playbackProperties);
        this.mediaItem = mediaItem;
        this.dataSourceFactory = factory;
        this.progressiveMediaExtractorFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadableLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.continueLoadingCheckIntervalBytes = i;
        this.timelineIsPlaceholder = true;
        this.timelineDurationUs = C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        this.transferListener = transferListener;
        this.drmSessionManager.prepare();
        notifySourceInfoRefreshed();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource createDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        return new ProgressiveMediaPeriod(this.playbackProperties.uri, createDataSource, this.progressiveMediaExtractorFactory.createProgressiveMediaExtractor(), this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadableLoadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this, allocator, this.playbackProperties.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ProgressiveMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void releaseSourceInternal() {
        this.drmSessionManager.release();
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaPeriod.Listener
    public void onSourceInfoRefreshed(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.timelineDurationUs;
        }
        if (this.timelineIsPlaceholder || this.timelineDurationUs != j || this.timelineIsSeekable != z || this.timelineIsLive != z2) {
            this.timelineDurationUs = j;
            this.timelineIsSeekable = z;
            this.timelineIsLive = z2;
            this.timelineIsPlaceholder = false;
            notifySourceInfoRefreshed();
        }
    }

    private void notifySourceInfoRefreshed() {
        SinglePeriodTimeline singlePeriodTimeline = new SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable, false, this.timelineIsLive, (Object) null, this.mediaItem);
        refreshSourceInfo(this.timelineIsPlaceholder ? new ForwardingTimeline(this, singlePeriodTimeline) { // from class: com.google.android.exoplayer2.source.ProgressiveMediaSource.1
            @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
            public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
                super.getWindow(i, window, j);
                window.isPlaceholder = true;
                return window;
            }

            @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
            public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
                super.getPeriod(i, period, z);
                period.isPlaceholder = true;
                return period;
            }
        } : singlePeriodTimeline);
    }
}
