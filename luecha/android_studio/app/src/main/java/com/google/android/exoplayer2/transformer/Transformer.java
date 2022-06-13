package com.google.android.exoplayer2.transformer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.transformer.FrameworkMuxer;
import com.google.android.exoplayer2.transformer.Muxer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.exoplayer2.video.VideoSize;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: classes2.dex */
public final class Transformer {
    public static final int PROGRESS_STATE_AVAILABLE = 1;
    public static final int PROGRESS_STATE_NO_TRANSFORMATION = 4;
    public static final int PROGRESS_STATE_UNAVAILABLE = 2;
    public static final int PROGRESS_STATE_WAITING_FOR_AVAILABILITY = 0;
    private final Clock clock;
    private final Context context;
    private Listener listener;
    private final Looper looper;
    private final MediaSourceFactory mediaSourceFactory;
    private final Muxer.Factory muxerFactory;
    private MuxerWrapper muxerWrapper;
    private SimpleExoPlayer player;
    private int progressState;
    private final Transformation transformation;

    /* loaded from: classes2.dex */
    public interface Listener {

        /* renamed from: com.google.android.exoplayer2.transformer.Transformer$Listener$-CC  reason: invalid class name */
        /* loaded from: classes2.dex */
        public final /* synthetic */ class CC {
            public static void $default$onTransformationCompleted(Listener listener, MediaItem mediaItem) {
            }

            public static void $default$onTransformationError(Listener listener, MediaItem mediaItem, Exception exc) {
            }
        }

        void onTransformationCompleted(MediaItem mediaItem);

        void onTransformationError(MediaItem mediaItem, Exception exc);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ProgressState {
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Clock clock;
        private Context context;
        private boolean flattenForSlowMotion;
        private Listener listener;
        private Looper looper;
        private MediaSourceFactory mediaSourceFactory;
        private Muxer.Factory muxerFactory;
        private String outputMimeType;
        private boolean removeAudio;
        private boolean removeVideo;

        public Builder() {
            this.muxerFactory = new FrameworkMuxer.Factory();
            this.outputMimeType = MimeTypes.VIDEO_MP4;
            this.listener = new Listener(this) { // from class: com.google.android.exoplayer2.transformer.Transformer.Builder.1
                @Override // com.google.android.exoplayer2.transformer.Transformer.Listener
                public /* synthetic */ void onTransformationCompleted(MediaItem mediaItem) {
                    Listener.CC.$default$onTransformationCompleted(this, mediaItem);
                }

                @Override // com.google.android.exoplayer2.transformer.Transformer.Listener
                public /* synthetic */ void onTransformationError(MediaItem mediaItem, Exception exc) {
                    Listener.CC.$default$onTransformationError(this, mediaItem, exc);
                }
            };
            this.looper = Util.getCurrentOrMainLooper();
            this.clock = Clock.DEFAULT;
        }

        private Builder(Transformer transformer) {
            this.context = transformer.context;
            this.mediaSourceFactory = transformer.mediaSourceFactory;
            this.muxerFactory = transformer.muxerFactory;
            this.removeAudio = transformer.transformation.removeAudio;
            this.removeVideo = transformer.transformation.removeVideo;
            this.flattenForSlowMotion = transformer.transformation.flattenForSlowMotion;
            this.outputMimeType = transformer.transformation.outputMimeType;
            this.listener = transformer.listener;
            this.looper = transformer.looper;
            this.clock = transformer.clock;
        }

        public Builder setContext(Context context) {
            this.context = context.getApplicationContext();
            return this;
        }

        public Builder setMediaSourceFactory(MediaSourceFactory mediaSourceFactory) {
            this.mediaSourceFactory = mediaSourceFactory;
            return this;
        }

        public Builder setRemoveAudio(boolean z) {
            this.removeAudio = z;
            return this;
        }

        public Builder setRemoveVideo(boolean z) {
            this.removeVideo = z;
            return this;
        }

        public Builder setFlattenForSlowMotion(boolean z) {
            this.flattenForSlowMotion = z;
            return this;
        }

        public Builder setOutputMimeType(String str) {
            this.outputMimeType = str;
            return this;
        }

        public Builder setListener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder setLooper(Looper looper) {
            this.looper = looper;
            return this;
        }

        Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        Builder setMuxerFactory(Muxer.Factory factory) {
            this.muxerFactory = factory;
            return this;
        }

        public Transformer build() {
            Assertions.checkStateNotNull(this.context);
            if (this.mediaSourceFactory == null) {
                DefaultExtractorsFactory defaultExtractorsFactory = new DefaultExtractorsFactory();
                if (this.flattenForSlowMotion) {
                    defaultExtractorsFactory.setMp4ExtractorFlags(4);
                }
                this.mediaSourceFactory = new DefaultMediaSourceFactory(this.context, defaultExtractorsFactory);
            }
            boolean supportsOutputMimeType = this.muxerFactory.supportsOutputMimeType(this.outputMimeType);
            String valueOf = String.valueOf(this.outputMimeType);
            Assertions.checkState(supportsOutputMimeType, valueOf.length() != 0 ? "Unsupported output MIME type: ".concat(valueOf) : new String("Unsupported output MIME type: "));
            return new Transformer(this.context, this.mediaSourceFactory, this.muxerFactory, new Transformation(this.removeAudio, this.removeVideo, this.flattenForSlowMotion, this.outputMimeType), this.listener, this.looper, this.clock);
        }
    }

    private Transformer(Context context, MediaSourceFactory mediaSourceFactory, Muxer.Factory factory, Transformation transformation, Listener listener, Looper looper, Clock clock) {
        Assertions.checkState(!transformation.removeAudio || !transformation.removeVideo, "Audio and video cannot both be removed.");
        this.context = context;
        this.mediaSourceFactory = mediaSourceFactory;
        this.muxerFactory = factory;
        this.transformation = transformation;
        this.listener = listener;
        this.looper = looper;
        this.clock = clock;
        this.progressState = 4;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public void setListener(Listener listener) {
        verifyApplicationThread();
        this.listener = listener;
    }

    public void startTransformation(MediaItem mediaItem, String str) throws IOException {
        startTransformation(mediaItem, this.muxerFactory.create(str, this.transformation.outputMimeType));
    }

    public void startTransformation(MediaItem mediaItem, ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        startTransformation(mediaItem, this.muxerFactory.create(parcelFileDescriptor, this.transformation.outputMimeType));
    }

    private void startTransformation(MediaItem mediaItem, Muxer muxer) {
        verifyApplicationThread();
        if (this.player == null) {
            MuxerWrapper muxerWrapper = new MuxerWrapper(muxer);
            this.muxerWrapper = muxerWrapper;
            DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(this.context);
            defaultTrackSelector.setParameters(new DefaultTrackSelector.ParametersBuilder(this.context).setForceHighestSupportedBitrate(true).build());
            this.player = new SimpleExoPlayer.Builder(this.context, new TransformerRenderersFactory(muxerWrapper, this.transformation)).setMediaSourceFactory(this.mediaSourceFactory).setTrackSelector(defaultTrackSelector).setLoadControl(new DefaultLoadControl.Builder().setBufferDurationsMs(50000, 50000, 250, 500).build()).setLooper(this.looper).setClock(this.clock).build();
            this.player.setMediaItem(mediaItem);
            this.player.addAnalyticsListener(new TransformerAnalyticsListener(mediaItem, muxerWrapper));
            this.player.prepare();
            this.progressState = 0;
            return;
        }
        throw new IllegalStateException("There is already a transformation in progress.");
    }

    public Looper getApplicationLooper() {
        return this.looper;
    }

    public int getProgress(ProgressHolder progressHolder) {
        verifyApplicationThread();
        if (this.progressState == 1) {
            Player player = (Player) Assertions.checkNotNull(this.player);
            progressHolder.progress = Math.min((int) ((player.getCurrentPosition() * 100) / player.getDuration()), 99);
        }
        return this.progressState;
    }

    public void cancel() {
        releaseResources(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseResources(boolean z) {
        verifyApplicationThread();
        SimpleExoPlayer simpleExoPlayer = this.player;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.release();
            this.player = null;
        }
        MuxerWrapper muxerWrapper = this.muxerWrapper;
        if (muxerWrapper != null) {
            muxerWrapper.release(z);
            this.muxerWrapper = null;
        }
        this.progressState = 4;
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() != this.looper) {
            throw new IllegalStateException("Transformer is accessed on the wrong thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class TransformerRenderersFactory implements RenderersFactory {
        private final TransformerMediaClock mediaClock = new TransformerMediaClock();
        private final MuxerWrapper muxerWrapper;
        private final Transformation transformation;

        public TransformerRenderersFactory(MuxerWrapper muxerWrapper, Transformation transformation) {
            this.muxerWrapper = muxerWrapper;
            this.transformation = transformation;
        }

        @Override // com.google.android.exoplayer2.RenderersFactory
        public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
            char c = 1;
            Renderer[] rendererArr = new Renderer[(this.transformation.removeAudio || this.transformation.removeVideo) ? 1 : 2];
            if (!this.transformation.removeAudio) {
                rendererArr[0] = new TransformerAudioRenderer(this.muxerWrapper, this.mediaClock, this.transformation);
            } else {
                c = 0;
            }
            if (!this.transformation.removeVideo) {
                rendererArr[c] = new TransformerVideoRenderer(this.muxerWrapper, this.mediaClock, this.transformation);
            }
            return rendererArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class TransformerAnalyticsListener implements AnalyticsListener {
        private final MediaItem mediaItem;
        private final MuxerWrapper muxerWrapper;

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
            AnalyticsListener.CC.$default$onAudioAttributesChanged(this, eventTime, audioAttributes);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
            AnalyticsListener.CC.$default$onAudioCodecError(this, eventTime, exc);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
            AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
            AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j, j2);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
            AnalyticsListener.CC.$default$onAudioDecoderReleased(this, eventTime, str);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onAudioDisabled(this, eventTime, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onAudioEnabled(this, eventTime, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
            AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioPositionAdvancing(AnalyticsListener.EventTime eventTime, long j) {
            AnalyticsListener.CC.$default$onAudioPositionAdvancing(this, eventTime, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioSessionIdChanged(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onAudioSessionIdChanged(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioSinkError(AnalyticsListener.EventTime eventTime, Exception exc) {
            AnalyticsListener.CC.$default$onAudioSinkError(this, eventTime, exc);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
            AnalyticsListener.CC.$default$onAudioUnderrun(this, eventTime, i, j, j2);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onAvailableCommandsChanged(AnalyticsListener.EventTime eventTime, Player.Commands commands) {
            AnalyticsListener.CC.$default$onAvailableCommandsChanged(this, eventTime, commands);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
            AnalyticsListener.CC.$default$onBandwidthEstimate(this, eventTime, i, j, j2);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onDecoderDisabled(this, eventTime, i, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onDecoderEnabled(this, eventTime, i, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i, String str, long j) {
            AnalyticsListener.CC.$default$onDecoderInitialized(this, eventTime, i, str, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i, Format format) {
            AnalyticsListener.CC.$default$onDecoderInputFormatChanged(this, eventTime, i, format);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
            AnalyticsListener.CC.$default$onDownstreamFormatChanged(this, eventTime, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onDrmKeysLoaded(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onDrmKeysRemoved(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onDrmKeysRestored(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
            AnalyticsListener.CC.$default$onDrmSessionManagerError(this, eventTime, exc);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onDrmSessionReleased(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
            AnalyticsListener.CC.$default$onDroppedVideoFrames(this, eventTime, i, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onEvents(Player player, AnalyticsListener.Events events) {
            AnalyticsListener.CC.$default$onEvents(this, player, events);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onIsLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
            AnalyticsListener.CC.$default$onIsLoadingChanged(this, eventTime, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onIsPlayingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
            AnalyticsListener.CC.$default$onIsPlayingChanged(this, eventTime, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onLoadCanceled(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            AnalyticsListener.CC.$default$onLoadCanceled(this, eventTime, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onLoadCompleted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            AnalyticsListener.CC.$default$onLoadCompleted(this, eventTime, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            AnalyticsListener.CC.$default$onLoadError(this, eventTime, loadEventInfo, mediaLoadData, iOException, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onLoadStarted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            AnalyticsListener.CC.$default$onLoadStarted(this, eventTime, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
            AnalyticsListener.CC.$default$onLoadingChanged(this, eventTime, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onMaxSeekToPreviousPositionChanged(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onMaxSeekToPreviousPositionChanged(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onMediaItemTransition(AnalyticsListener.EventTime eventTime, MediaItem mediaItem, int i) {
            AnalyticsListener.CC.$default$onMediaItemTransition(this, eventTime, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onMediaMetadataChanged(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
            AnalyticsListener.CC.$default$onMediaMetadataChanged(this, eventTime, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
            AnalyticsListener.CC.$default$onMetadata(this, eventTime, metadata);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPlayWhenReadyChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
            AnalyticsListener.CC.$default$onPlayWhenReadyChanged(this, eventTime, z, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
            AnalyticsListener.CC.$default$onPlaybackParametersChanged(this, eventTime, playbackParameters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onPlaybackSuppressionReasonChanged(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPlayerReleased(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onPlayerReleased(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
            AnalyticsListener.CC.$default$onPlayerStateChanged(this, eventTime, z, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPlaylistMetadataChanged(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
            AnalyticsListener.CC.$default$onPlaylistMetadataChanged(this, eventTime, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, positionInfo, positionInfo2, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Object obj, long j) {
            AnalyticsListener.CC.$default$onRenderedFirstFrame(this, eventTime, obj, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
            AnalyticsListener.CC.$default$onRepeatModeChanged(this, eventTime, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onSeekBackIncrementChanged(AnalyticsListener.EventTime eventTime, long j) {
            AnalyticsListener.CC.$default$onSeekBackIncrementChanged(this, eventTime, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onSeekForwardIncrementChanged(AnalyticsListener.EventTime eventTime, long j) {
            AnalyticsListener.CC.$default$onSeekForwardIncrementChanged(this, eventTime, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onSeekProcessed(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            AnalyticsListener.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
            AnalyticsListener.CC.$default$onShuffleModeChanged(this, eventTime, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onSkipSilenceEnabledChanged(AnalyticsListener.EventTime eventTime, boolean z) {
            AnalyticsListener.CC.$default$onSkipSilenceEnabledChanged(this, eventTime, z);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onStaticMetadataChanged(AnalyticsListener.EventTime eventTime, List<Metadata> list) {
            AnalyticsListener.CC.$default$onStaticMetadataChanged(this, eventTime, list);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
            AnalyticsListener.CC.$default$onSurfaceSizeChanged(this, eventTime, i, i2);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
            AnalyticsListener.CC.$default$onUpstreamDiscarded(this, eventTime, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
            AnalyticsListener.CC.$default$onVideoCodecError(this, eventTime, exc);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
            AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
            AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j, j2);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
            AnalyticsListener.CC.$default$onVideoDecoderReleased(this, eventTime, str);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onVideoDisabled(this, eventTime, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
            AnalyticsListener.CC.$default$onVideoEnabled(this, eventTime, decoderCounters);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoFrameProcessingOffset(AnalyticsListener.EventTime eventTime, long j, int i) {
            AnalyticsListener.CC.$default$onVideoFrameProcessingOffset(this, eventTime, j, i);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
            AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        @Deprecated
        public /* synthetic */ void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
            AnalyticsListener.CC.$default$onVideoSizeChanged(this, eventTime, i, i2, i3, f);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
            AnalyticsListener.CC.$default$onVideoSizeChanged(this, eventTime, videoSize);
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public /* synthetic */ void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
            AnalyticsListener.CC.$default$onVolumeChanged(this, eventTime, f);
        }

        public TransformerAnalyticsListener(MediaItem mediaItem, MuxerWrapper muxerWrapper) {
            this.mediaItem = mediaItem;
            this.muxerWrapper = muxerWrapper;
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public void onPlaybackStateChanged(AnalyticsListener.EventTime eventTime, int i) {
            if (i == 4) {
                handleTransformationEnded(null);
            }
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
            if (Transformer.this.progressState == 0) {
                Timeline.Window window = new Timeline.Window();
                eventTime.timeline.getWindow(0, window);
                if (!window.isPlaceholder) {
                    long j = window.durationUs;
                    Transformer.this.progressState = (j <= 0 || j == C.TIME_UNSET) ? 2 : 1;
                    ((SimpleExoPlayer) Assertions.checkNotNull(Transformer.this.player)).play();
                }
            }
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            if (this.muxerWrapper.getTrackCount() == 0) {
                handleTransformationEnded(new IllegalStateException("The output does not contain any tracks. Check that at least one of the input sample formats is supported."));
            }
        }

        @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
        public void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
            handleTransformationEnded(playbackException);
        }

        private void handleTransformationEnded(Exception e) {
            try {
                Transformer.this.releaseResources(false);
            } catch (IllegalStateException e2) {
                e = e2;
                if (e == null) {
                }
            }
            if (e == null) {
                Transformer.this.listener.onTransformationCompleted(this.mediaItem);
            } else {
                Transformer.this.listener.onTransformationError(this.mediaItem, e);
            }
        }
    }
}
