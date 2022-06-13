package com.tencent.thumbplayer.g;

import android.content.Context;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizerListener;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeatureData;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaInnerProcessorCallback;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeatureData;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaProcessor;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.g.a;
import com.tencent.thumbplayer.tplayer.plugins.c;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b implements a {
    private ITPNativeRichMediaProcessor a;
    private a b = new a();
    private C0044b c = new C0044b();
    private c d = new c();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class a implements ITPNativeRichMediaInnerProcessorCallback {
        private a.AbstractC0042a b;

        a() {
        }

        public void a(a.AbstractC0042a aVar) {
            this.b = aVar;
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaInnerProcessorCallback
        public long onGetCurrentPositionMs(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            a.AbstractC0042a aVar = this.b;
            if (aVar == null) {
                return -1;
            }
            long a = aVar.a(b.this);
            b.this.a(311, (int) a, 0, null, null);
            return a;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.thumbplayer.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private class C0044b implements ITPNativeRichMediaProcessorCallback {
        private ITPRichMediaSynchronizerListener b;

        C0044b() {
        }

        public void a(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
            this.b = iTPRichMediaSynchronizerListener;
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onDeselectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(305, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onDeselectFeatureSuccess(b.this, i);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaError(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(308, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaError(b.this, i);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureData(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureData(b.this, i, new TPRichMediaFeatureData(tPNativeRichMediaFeatureData));
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureFailure(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, int i2) {
            b.this.a(310, i, i2, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureFailure(b.this, i, i2);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaInfo(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, long j, long j2, long j3, Object obj) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaInfo(b.this, i, j, j2, j3, obj);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaPrepared(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            b.this.a(301, 0, 0, null, b.this.getFeatures());
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaPrepared(b.this);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onSelectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(303, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onSelectFeatureSuccess(b.this, i);
            }
        }
    }

    public b(Context context) {
        this.a = new TPNativeRichMediaProcessor(context);
        this.a.setInnerProcessorCallback(this.b);
        this.a.setProcessorCallback(this.c);
        this.d.a(new com.tencent.thumbplayer.g.a.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, String str, Object obj) {
        this.d.a(i, i2, i3, str, obj);
    }

    @Override // com.tencent.thumbplayer.g.a
    public void a(float f) {
        this.a.setPlaybackRate(f);
    }

    @Override // com.tencent.thumbplayer.g.a
    public void a(long j) {
        this.a.seek(j);
    }

    @Override // com.tencent.thumbplayer.g.a
    public void a(a.AbstractC0042a aVar) {
        this.b.a(aVar);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void deselectFeatureAsync(int i) {
        this.a.deselectFeatureAsync(i);
        a(304, i, 0, null, null);
    }

    protected void finalize() {
        this.a.setInnerProcessorCallback(null);
        this.a.setProcessorCallback(null);
        this.a.release();
        this.c.a(null);
        this.b.a(null);
        super.finalize();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public TPRichMediaFeature[] getFeatures() {
        TPNativeRichMediaFeature[] features = this.a.getFeatures();
        int i = 0;
        if (features == null) {
            return new TPRichMediaFeature[0];
        }
        TPRichMediaFeature[] tPRichMediaFeatureArr = new TPRichMediaFeature[features.length];
        while (i < features.length && features[i] != null) {
            tPRichMediaFeatureArr[i] = new TPRichMediaFeature(features[i]);
            i++;
        }
        return tPRichMediaFeatureArr;
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void prepareAsync() {
        this.a.prepareAsync();
        a(300, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void release() {
        this.a.setInnerProcessorCallback(null);
        this.a.setProcessorCallback(null);
        this.a.release();
        this.c.a(null);
        this.b.a(null);
        a(307, 0, 0, null, null);
        this.d.c();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void reset() {
        this.a.reset();
        a(306, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void selectFeatureAsync(int i, TPRichMediaRequestExtraInfo tPRichMediaRequestExtraInfo) {
        TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo = new TPNativeRichMediaRequestExtraInfo();
        tPNativeRichMediaRequestExtraInfo.setActOnOptional(tPRichMediaRequestExtraInfo.getActOnOption());
        this.a.selectFeatureAsync(i, tPNativeRichMediaRequestExtraInfo);
        a(302, i, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void setListener(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
        this.c.a(iTPRichMediaSynchronizerListener);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void setRichMediaSource(String str) {
        this.a.setRichMediaSource(str);
        a(309, 0, 0, str, null);
    }
}
