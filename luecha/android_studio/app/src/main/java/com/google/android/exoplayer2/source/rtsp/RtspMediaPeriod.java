package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;
import com.google.android.exoplayer2.source.rtsp.RtpDataLoadable;
import com.google.android.exoplayer2.source.rtsp.RtspClient;
import com.google.android.exoplayer2.source.rtsp.RtspMediaPeriod;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public final class RtspMediaPeriod implements MediaPeriod {
    private static final int PORT_BINDING_MAX_RETRY_COUNT = 3;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private boolean isUsingRtpTcp;
    private long lastSeekPositionUs;
    private final Listener listener;
    private boolean loadingFinished;
    private RtspMediaSource.RtspPlaybackException playbackException;
    private int portBindingRetryCount;
    private IOException preparationError;
    private boolean prepared;
    private boolean released;
    private final RtpDataChannel.Factory rtpDataChannelFactory;
    private final RtspClient rtspClient;
    private ImmutableList<TrackGroup> trackGroups;
    private boolean trackSelected;
    private final Handler handler = Util.createHandlerForCurrentLooper();
    private final InternalListener internalListener = new InternalListener();
    private final List<RtspLoaderWrapper> rtspLoaderWrappers = new ArrayList();
    private final List<RtpLoadInfo> selectedLoadInfos = new ArrayList();
    private long pendingSeekPositionUs = C.TIME_UNSET;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Listener {
        void onSourceInfoRefreshed(RtspSessionTiming rtspSessionTiming);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    static /* synthetic */ int access$1008(RtspMediaPeriod rtspMediaPeriod) {
        int i = rtspMediaPeriod.portBindingRetryCount;
        rtspMediaPeriod.portBindingRetryCount = i + 1;
        return i;
    }

    public RtspMediaPeriod(Allocator allocator, RtpDataChannel.Factory factory, Uri uri, Listener listener, String str) {
        this.allocator = allocator;
        this.rtpDataChannelFactory = factory;
        this.listener = listener;
        InternalListener internalListener = this.internalListener;
        this.rtspClient = new RtspClient(internalListener, internalListener, str, uri);
    }

    public void release() {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            this.rtspLoaderWrappers.get(i).release();
        }
        Util.closeQuietly(this.rtspClient);
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        try {
            this.rtspClient.start();
        } catch (IOException e) {
            this.preparationError = e;
            Util.closeQuietly(this.rtspClient);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.preparationError;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        Assertions.checkState(this.prepared);
        return new TrackGroupArray((TrackGroup[]) ((ImmutableList) Assertions.checkNotNull(this.trackGroups)).toArray(new TrackGroup[0]));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public ImmutableList<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        return ImmutableList.of();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                sampleStreamArr[i] = null;
            }
        }
        this.selectedLoadInfos.clear();
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int indexOf = ((ImmutableList) Assertions.checkNotNull(this.trackGroups)).indexOf(trackGroup);
                this.selectedLoadInfos.add(((RtspLoaderWrapper) Assertions.checkNotNull(this.rtspLoaderWrappers.get(indexOf))).loadInfo);
                if (this.trackGroups.contains(trackGroup) && sampleStreamArr[i2] == null) {
                    sampleStreamArr[i2] = new SampleStreamImpl(indexOf);
                    zArr2[i2] = true;
                }
            }
        }
        for (int i3 = 0; i3 < this.rtspLoaderWrappers.size(); i3++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i3);
            if (!this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                rtspLoaderWrapper.cancelLoad();
            }
        }
        this.trackSelected = true;
        maybeSetupTracks();
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        if (!isSeekPending()) {
            for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
                RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
                if (!rtspLoaderWrapper.canceled) {
                    rtspLoaderWrapper.sampleQueue.discardTo(j, z, true);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        if (isSeekPending()) {
            return this.pendingSeekPositionUs;
        }
        if (seekInsideBufferUs(j)) {
            return j;
        }
        this.lastSeekPositionUs = j;
        this.pendingSeekPositionUs = j;
        this.rtspClient.seekToUs(j);
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            this.rtspLoaderWrappers.get(i).seekTo(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished || this.rtspLoaderWrappers.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (isSeekPending()) {
            return this.pendingSeekPositionUs;
        }
        long j = Long.MAX_VALUE;
        boolean z = true;
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
            if (!rtspLoaderWrapper.canceled) {
                j = Math.min(j, rtspLoaderWrapper.getBufferedPositionUs());
                z = false;
            }
        }
        return (z || j == Long.MIN_VALUE) ? this.lastSeekPositionUs : j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return !this.loadingFinished;
    }

    boolean isReady(int i) {
        return this.rtspLoaderWrappers.get(i).isSampleQueueReady();
    }

    int readData(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        return this.rtspLoaderWrappers.get(i).read(formatHolder, decoderInputBuffer, i2);
    }

    public RtpDataLoadable getLoadableByTrackUri(Uri uri) {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            if (!this.rtspLoaderWrappers.get(i).canceled) {
                RtpLoadInfo rtpLoadInfo = this.rtspLoaderWrappers.get(i).loadInfo;
                if (rtpLoadInfo.getTrackUri().equals(uri)) {
                    return rtpLoadInfo.loadable;
                }
            }
        }
        return null;
    }

    public boolean isSeekPending() {
        return this.pendingSeekPositionUs != C.TIME_UNSET;
    }

    public void maybeFinishPrepare() {
        if (!(this.released || this.prepared)) {
            for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
                if (this.rtspLoaderWrappers.get(i).sampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            this.prepared = true;
            this.trackGroups = buildTrackGroups(ImmutableList.copyOf((Collection) this.rtspLoaderWrappers));
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
        }
    }

    private boolean seekInsideBufferUs(long j) {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            if (!this.rtspLoaderWrappers.get(i).sampleQueue.seekTo(j, false)) {
                return false;
            }
        }
        return true;
    }

    public void maybeSetupTracks() {
        boolean z = true;
        for (int i = 0; i < this.selectedLoadInfos.size(); i++) {
            z &= this.selectedLoadInfos.get(i).isTransportReady();
        }
        if (z && this.trackSelected) {
            this.rtspClient.setupSelectedTracks(this.selectedLoadInfos);
        }
    }

    public void updateLoadingFinished() {
        this.loadingFinished = true;
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            this.loadingFinished &= this.rtspLoaderWrappers.get(i).canceled;
        }
    }

    private static ImmutableList<TrackGroup> buildTrackGroups(ImmutableList<RtspLoaderWrapper> immutableList) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < immutableList.size(); i++) {
            builder.add((ImmutableList.Builder) new TrackGroup((Format) Assertions.checkNotNull(immutableList.get(i).sampleQueue.getUpstreamFormat())));
        }
        return builder.build();
    }

    /* loaded from: classes2.dex */
    public final class InternalListener implements ExtractorOutput, Loader.Callback<RtpDataLoadable>, SampleQueue.UpstreamFormatChangedListener, RtspClient.SessionInfoListener, RtspClient.PlaybackEventListener {
        public void onLoadCanceled(RtpDataLoadable rtpDataLoadable, long j, long j2, boolean z) {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
        }

        private InternalListener() {
            RtspMediaPeriod.this = r1;
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            return ((RtspLoaderWrapper) Assertions.checkNotNull((RtspLoaderWrapper) RtspMediaPeriod.this.rtspLoaderWrappers.get(i))).sampleQueue;
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            RtspMediaPeriod.this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.-$$Lambda$RtspMediaPeriod$InternalListener$8TO2IFeZYGqw8TljTsNySC8SYG8
                @Override // java.lang.Runnable
                public final void run() {
                    RtspMediaPeriod.this.maybeFinishPrepare();
                }
            });
        }

        public void onLoadCompleted(RtpDataLoadable rtpDataLoadable, long j, long j2) {
            if (RtspMediaPeriod.this.getBufferedPositionUs() != 0) {
                for (int i = 0; i < RtspMediaPeriod.this.rtspLoaderWrappers.size(); i++) {
                    RtspLoaderWrapper rtspLoaderWrapper = (RtspLoaderWrapper) RtspMediaPeriod.this.rtspLoaderWrappers.get(i);
                    if (rtspLoaderWrapper.loadInfo.loadable == rtpDataLoadable) {
                        rtspLoaderWrapper.cancelLoad();
                        return;
                    }
                }
            } else if (!RtspMediaPeriod.this.isUsingRtpTcp) {
                RtspMediaPeriod.this.retryWithRtpTcp();
                RtspMediaPeriod.this.isUsingRtpTcp = true;
            }
        }

        public Loader.LoadErrorAction onLoadError(RtpDataLoadable rtpDataLoadable, long j, long j2, IOException iOException, int i) {
            if (!RtspMediaPeriod.this.prepared) {
                RtspMediaPeriod.this.preparationError = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                RtspMediaPeriod.this.playbackException = new RtspMediaSource.RtspPlaybackException(rtpDataLoadable.rtspMediaTrack.uri.toString(), iOException);
            } else if (RtspMediaPeriod.access$1008(RtspMediaPeriod.this) < 3) {
                return Loader.RETRY;
            }
            return Loader.DONT_RETRY;
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
        public void onUpstreamFormatChanged(Format format) {
            RtspMediaPeriod.this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.-$$Lambda$RtspMediaPeriod$InternalListener$3uROljRL8tHcB0-8VDetUhVh2Wo
                @Override // java.lang.Runnable
                public final void run() {
                    RtspMediaPeriod.this.maybeFinishPrepare();
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onRtspSetupCompleted() {
            RtspMediaPeriod.this.rtspClient.startPlayback(0);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackStarted(long j, ImmutableList<RtspTrackTiming> immutableList) {
            ArrayList arrayList = new ArrayList(immutableList.size());
            for (int i = 0; i < immutableList.size(); i++) {
                arrayList.add((String) Assertions.checkNotNull(immutableList.get(i).uri.getPath()));
            }
            for (int i2 = 0; i2 < RtspMediaPeriod.this.selectedLoadInfos.size(); i2++) {
                RtpLoadInfo rtpLoadInfo = (RtpLoadInfo) RtspMediaPeriod.this.selectedLoadInfos.get(i2);
                if (!arrayList.contains(rtpLoadInfo.getTrackUri().getPath())) {
                    RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                    String valueOf = String.valueOf(rtpLoadInfo.getTrackUri());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 40);
                    sb.append("Server did not provide timing for track ");
                    sb.append(valueOf);
                    rtspMediaPeriod.playbackException = new RtspMediaSource.RtspPlaybackException(sb.toString());
                    return;
                }
            }
            for (int i3 = 0; i3 < immutableList.size(); i3++) {
                RtspTrackTiming rtspTrackTiming = immutableList.get(i3);
                RtpDataLoadable loadableByTrackUri = RtspMediaPeriod.this.getLoadableByTrackUri(rtspTrackTiming.uri);
                if (loadableByTrackUri != null) {
                    loadableByTrackUri.setTimestamp(rtspTrackTiming.rtpTimestamp);
                    loadableByTrackUri.setSequenceNumber(rtspTrackTiming.sequenceNumber);
                    if (RtspMediaPeriod.this.isSeekPending()) {
                        loadableByTrackUri.seekToUs(j, rtspTrackTiming.rtpTimestamp);
                    }
                }
            }
            if (RtspMediaPeriod.this.isSeekPending()) {
                RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
            }
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackError(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            RtspMediaPeriod.this.playbackException = rtspPlaybackException;
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineUpdated(RtspSessionTiming rtspSessionTiming, ImmutableList<RtspMediaTrack> immutableList) {
            for (int i = 0; i < immutableList.size(); i++) {
                RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                RtspLoaderWrapper rtspLoaderWrapper = new RtspLoaderWrapper(immutableList.get(i), i, rtspMediaPeriod.rtpDataChannelFactory);
                RtspMediaPeriod.this.rtspLoaderWrappers.add(rtspLoaderWrapper);
                rtspLoaderWrapper.startLoading();
            }
            RtspMediaPeriod.this.listener.onSourceInfoRefreshed(rtspSessionTiming);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineRequestFailed(String str, Throwable th) {
            RtspMediaPeriod.this.preparationError = th == null ? new IOException(str) : new IOException(str, th);
        }
    }

    public void retryWithRtpTcp() {
        this.rtspClient.retryWithRtpTcp();
        RtpDataChannel.Factory createFallbackDataChannelFactory = this.rtpDataChannelFactory.createFallbackDataChannelFactory();
        if (createFallbackDataChannelFactory == null) {
            this.playbackException = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.rtspLoaderWrappers.size());
        ArrayList arrayList2 = new ArrayList(this.selectedLoadInfos.size());
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
            if (!rtspLoaderWrapper.canceled) {
                RtspLoaderWrapper rtspLoaderWrapper2 = new RtspLoaderWrapper(rtspLoaderWrapper.loadInfo.mediaTrack, i, createFallbackDataChannelFactory);
                arrayList.add(rtspLoaderWrapper2);
                rtspLoaderWrapper2.startLoading();
                if (this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                    arrayList2.add(rtspLoaderWrapper2.loadInfo);
                }
            } else {
                arrayList.add(rtspLoaderWrapper);
            }
        }
        ImmutableList copyOf = ImmutableList.copyOf((Collection) this.rtspLoaderWrappers);
        this.rtspLoaderWrappers.clear();
        this.rtspLoaderWrappers.addAll(arrayList);
        this.selectedLoadInfos.clear();
        this.selectedLoadInfos.addAll(arrayList2);
        for (int i2 = 0; i2 < copyOf.size(); i2++) {
            ((RtspLoaderWrapper) copyOf.get(i2)).cancelLoad();
        }
    }

    /* loaded from: classes2.dex */
    private final class SampleStreamImpl implements SampleStream {
        private final int track;

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return 0;
        }

        public SampleStreamImpl(int i) {
            RtspMediaPeriod.this = r1;
            this.track = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return RtspMediaPeriod.this.isReady(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (RtspMediaPeriod.this.playbackException != null) {
                throw RtspMediaPeriod.this.playbackException;
            }
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return RtspMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, i);
        }
    }

    /* loaded from: classes2.dex */
    public final class RtspLoaderWrapper {
        private boolean canceled;
        public final RtpLoadInfo loadInfo;
        private final Loader loader;
        private boolean released;
        private final SampleQueue sampleQueue;

        public RtspLoaderWrapper(RtspMediaTrack rtspMediaTrack, int i, RtpDataChannel.Factory factory) {
            RtspMediaPeriod.this = r2;
            this.loadInfo = new RtpLoadInfo(rtspMediaTrack, i, factory);
            StringBuilder sb = new StringBuilder(55);
            sb.append("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper ");
            sb.append(i);
            this.loader = new Loader(sb.toString());
            this.sampleQueue = SampleQueue.createWithoutDrm(r2.allocator);
            this.sampleQueue.setUpstreamFormatChangeListener(r2.internalListener);
        }

        public long getBufferedPositionUs() {
            return this.sampleQueue.getLargestQueuedTimestampUs();
        }

        public void startLoading() {
            this.loader.startLoading(this.loadInfo.loadable, RtspMediaPeriod.this.internalListener, 0);
        }

        public boolean isSampleQueueReady() {
            return this.sampleQueue.isReady(this.canceled);
        }

        public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return this.sampleQueue.read(formatHolder, decoderInputBuffer, i, this.canceled);
        }

        public void cancelLoad() {
            if (!this.canceled) {
                this.loadInfo.loadable.cancelLoad();
                this.canceled = true;
                RtspMediaPeriod.this.updateLoadingFinished();
            }
        }

        public void seekTo(long j) {
            if (!this.canceled) {
                this.loadInfo.loadable.resetForSeek();
                this.sampleQueue.reset();
                this.sampleQueue.setStartTimeUs(j);
            }
        }

        public void release() {
            if (!this.released) {
                this.loader.release();
                this.sampleQueue.release();
                this.released = true;
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class RtpLoadInfo {
        private final RtpDataLoadable loadable;
        public final RtspMediaTrack mediaTrack;
        private String transport;

        public RtpLoadInfo(RtspMediaTrack rtspMediaTrack, int i, RtpDataChannel.Factory factory) {
            RtspMediaPeriod.this = r8;
            this.mediaTrack = rtspMediaTrack;
            this.loadable = new RtpDataLoadable(i, rtspMediaTrack, new RtpDataLoadable.EventListener() { // from class: com.google.android.exoplayer2.source.rtsp.-$$Lambda$RtspMediaPeriod$RtpLoadInfo$Fv8i8YrDLbiHHJJvtz9-xrrWlKg
                @Override // com.google.android.exoplayer2.source.rtsp.RtpDataLoadable.EventListener
                public final void onTransportReady(String str, RtpDataChannel rtpDataChannel) {
                    RtspMediaPeriod.RtpLoadInfo.this.lambda$new$0$RtspMediaPeriod$RtpLoadInfo(str, rtpDataChannel);
                }
            }, r8.internalListener, factory);
        }

        public /* synthetic */ void lambda$new$0$RtspMediaPeriod$RtpLoadInfo(String str, RtpDataChannel rtpDataChannel) {
            this.transport = str;
            RtspMessageChannel.InterleavedBinaryDataListener interleavedBinaryDataListener = rtpDataChannel.getInterleavedBinaryDataListener();
            if (interleavedBinaryDataListener != null) {
                RtspMediaPeriod.this.rtspClient.registerInterleavedDataChannel(rtpDataChannel.getLocalPort(), interleavedBinaryDataListener);
                RtspMediaPeriod.this.isUsingRtpTcp = true;
            }
            RtspMediaPeriod.this.maybeSetupTracks();
        }

        public boolean isTransportReady() {
            return this.transport != null;
        }

        public String getTransport() {
            Assertions.checkStateNotNull(this.transport);
            return this.transport;
        }

        public Uri getTrackUri() {
            return this.loadable.rtspMediaTrack.uri;
        }
    }
}
