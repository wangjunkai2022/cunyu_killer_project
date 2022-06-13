package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;

/* loaded from: classes2.dex */
public interface DrmSessionManager {
    public static final DrmSessionManager DRM_UNSUPPORTED = new DrmSessionManager() { // from class: com.google.android.exoplayer2.drm.DrmSessionManager.1
        @Override // com.google.android.exoplayer2.drm.DrmSessionManager
        public /* synthetic */ DrmSessionReference preacquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
            return CC.$default$preacquireSession(this, looper, eventDispatcher, format);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager
        public /* synthetic */ void prepare() {
            CC.$default$prepare(this);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager
        public /* synthetic */ void release() {
            CC.$default$release(this);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager
        public DrmSession acquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
            if (format.drmInitData == null) {
                return null;
            }
            return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager
        public Class<UnsupportedMediaCrypto> getExoMediaCryptoType(Format format) {
            if (format.drmInitData != null) {
                return UnsupportedMediaCrypto.class;
            }
            return null;
        }
    };
    @Deprecated
    public static final DrmSessionManager DUMMY = DRM_UNSUPPORTED;

    /* loaded from: classes2.dex */
    public interface DrmSessionReference {
        public static final DrmSessionReference EMPTY = $$Lambda$DrmSessionManager$DrmSessionReference$ktbHyW1Lyo4Pjea6292LrdiVDI.INSTANCE;

        /* renamed from: com.google.android.exoplayer2.drm.DrmSessionManager$DrmSessionReference$-CC */
        /* loaded from: classes2.dex */
        public final /* synthetic */ class CC {
            public static /* synthetic */ void lambda$static$0() {
            }
        }

        void release();
    }

    DrmSession acquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    Class<? extends ExoMediaCrypto> getExoMediaCryptoType(Format format);

    DrmSessionReference preacquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    void prepare();

    void release();

    /* renamed from: com.google.android.exoplayer2.drm.DrmSessionManager$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$prepare(DrmSessionManager drmSessionManager) {
        }

        public static void $default$release(DrmSessionManager drmSessionManager) {
        }

        @Deprecated
        public static DrmSessionManager getDummyDrmSessionManager() {
            return DrmSessionManager.DRM_UNSUPPORTED;
        }

        public static DrmSessionReference $default$preacquireSession(DrmSessionManager _this, Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
            return DrmSessionReference.EMPTY;
        }
    }
}
