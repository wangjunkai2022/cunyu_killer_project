package com.tencent.liteav.txcplayer;

import com.tencent.liteav.txcplayer.ITXVCubePlayer;

/* compiled from: AbstractTXVCubePlayer.java */
/* loaded from: classes2.dex */
public abstract class a implements ITXVCubePlayer {
    private ITXVCubePlayer.b mOnBufferingUpdateListener;
    private ITXVCubePlayer.c mOnCompletionListener;
    private ITXVCubePlayer.d mOnErrorListener;
    private ITXVCubePlayer.a mOnGetTargetState;
    private ITXVCubePlayer.e mOnHLSKeyErrorListener;
    private ITXVCubePlayer.f mOnHevcVideoDecoderErrorListener;
    private ITXVCubePlayer.g mOnInfoListener;
    private ITXVCubePlayer.h mOnPreparedListener;
    private ITXVCubePlayer.i mOnSeekCompleteListener;
    private ITXVCubePlayer.j mOnTimedTextListener;
    private ITXVCubePlayer.k mOnVideoDecoderErrorListener;
    private ITXVCubePlayer.l mOnVideoSizeChangedListener;

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnPreparedListener(ITXVCubePlayer.h hVar) {
        this.mOnPreparedListener = hVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnCompletionListener(ITXVCubePlayer.c cVar) {
        this.mOnCompletionListener = cVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnBufferingUpdateListener(ITXVCubePlayer.b bVar) {
        this.mOnBufferingUpdateListener = bVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnSeekCompleteListener(ITXVCubePlayer.i iVar) {
        this.mOnSeekCompleteListener = iVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoSizeChangedListener(ITXVCubePlayer.l lVar) {
        this.mOnVideoSizeChangedListener = lVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnErrorListener(ITXVCubePlayer.d dVar) {
        this.mOnErrorListener = dVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnInfoListener(ITXVCubePlayer.g gVar) {
        this.mOnInfoListener = gVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnTimedTextListener(ITXVCubePlayer.j jVar) {
        this.mOnTimedTextListener = jVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHLSKeyErrorListener(ITXVCubePlayer.e eVar) {
        this.mOnHLSKeyErrorListener = eVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHevcVideoDecoderErrorListener(ITXVCubePlayer.f fVar) {
        this.mOnHevcVideoDecoderErrorListener = fVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoDecoderErrorListener(ITXVCubePlayer.k kVar) {
        this.mOnVideoDecoderErrorListener = kVar;
    }

    public void resetListeners() {
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnTimedTextListener = null;
        this.mOnHLSKeyErrorListener = null;
        this.mOnHevcVideoDecoderErrorListener = null;
        this.mOnVideoDecoderErrorListener = null;
    }

    public final void notifyOnPrepared() {
        ITXVCubePlayer.h hVar = this.mOnPreparedListener;
        if (hVar != null) {
            hVar.a(this);
        }
    }

    public final void notifyOnCompletion() {
        ITXVCubePlayer.c cVar = this.mOnCompletionListener;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    public final void notifyOnBufferingUpdate(int i) {
        ITXVCubePlayer.b bVar = this.mOnBufferingUpdateListener;
        if (bVar != null) {
            bVar.a(this, i);
        }
    }

    public final void notifyOnSeekComplete() {
        ITXVCubePlayer.i iVar = this.mOnSeekCompleteListener;
        if (iVar != null) {
            iVar.a(this);
        }
    }

    public final void notifyOnVideoSizeChanged(int i, int i2, int i3, int i4, String str) {
        ITXVCubePlayer.l lVar = this.mOnVideoSizeChangedListener;
        if (lVar != null) {
            lVar.a(this, i, i2, i3, i4, str);
        }
    }

    public final boolean notifyOnError(int i, int i2) {
        ITXVCubePlayer.d dVar = this.mOnErrorListener;
        return dVar != null && dVar.a(this, i, i2);
    }

    public final boolean notifyOnInfo(int i, int i2, int i3, Object obj) {
        ITXVCubePlayer.g gVar = this.mOnInfoListener;
        return gVar != null && gVar.a(this, i, i2, i3, obj);
    }

    public final void notifyOnTimedText(j jVar) {
        ITXVCubePlayer.j jVar2 = this.mOnTimedTextListener;
        if (jVar2 != null) {
            jVar2.a(this, jVar);
        }
    }

    public final void notifyHLSKeyError() {
        ITXVCubePlayer.e eVar = this.mOnHLSKeyErrorListener;
        if (eVar != null) {
            eVar.a(this);
        }
    }

    public final void notifyHevcVideoDecoderError() {
        ITXVCubePlayer.f fVar = this.mOnHevcVideoDecoderErrorListener;
        if (fVar != null) {
            fVar.a(this);
        }
    }

    public final void notifyVideoDecoderError() {
        ITXVCubePlayer.k kVar = this.mOnVideoDecoderErrorListener;
        if (kVar != null) {
            kVar.a(this);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setOnGetTXCVodVideoViewTargetState(ITXVCubePlayer.a aVar) {
        this.mOnGetTargetState = aVar;
    }

    public int getTXCVodVideoViewTargetState() {
        ITXVCubePlayer.a aVar = this.mOnGetTargetState;
        if (aVar != null) {
            return aVar.a();
        }
        return 0;
    }
}
