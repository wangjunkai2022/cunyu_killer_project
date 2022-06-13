package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import java.util.List;

/* loaded from: classes4.dex */
public interface MediaSourceFactory {
    @Deprecated
    MediaSource createMediaSource(Uri uri);

    MediaSource createMediaSource(MediaItem mediaItem);

    int[] getSupportedTypes();

    @Deprecated
    MediaSourceFactory setDrmHttpDataSourceFactory(HttpDataSource.Factory factory);

    @Deprecated
    MediaSourceFactory setDrmSessionManager(DrmSessionManager drmSessionManager);

    MediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider);

    @Deprecated
    MediaSourceFactory setDrmUserAgent(String str);

    MediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy);

    @Deprecated
    MediaSourceFactory setStreamKeys(List<StreamKey> list);

    /* renamed from: com.google.android.exoplayer2.source.MediaSourceFactory$-CC  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        /* JADX WARN: Incorrect args count in method signature: (Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;)Lcom/google/android/exoplayer2/source/MediaSourceFactory; */
        @Deprecated
        public static MediaSourceFactory $default$setStreamKeys(MediaSourceFactory mediaSourceFactory, List list) {
            return mediaSourceFactory;
        }

        @Deprecated
        public static MediaSource $default$createMediaSource(MediaSourceFactory _this, Uri uri) {
            return _this.createMediaSource(MediaItem.fromUri(uri));
        }
    }
}
