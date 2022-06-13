package com.tencent.liteav.txcplayer;

import com.tencent.liteav.txcplayer.ITXVCubePlayer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: AbstractTXVCubePlayer.java */
/* loaded from: classes5.dex */
public abstract class a implements ITXVCubePlayer {
    private ITXVCubePlayer.a mOnBufferingUpdateListener;
    private ITXVCubePlayer.b mOnCompletionListener;
    private ITXVCubePlayer.c mOnErrorListener;
    private ITXVCubePlayer.d mOnHLSKeyErrorListener;
    private ITXVCubePlayer.e mOnHevcVideoDecoderErrorListener;
    private ITXVCubePlayer.f mOnInfoListener;
    private ITXVCubePlayer.g mOnPreparedListener;
    private ITXVCubePlayer.h mOnSeekCompleteListener;
    private ITXVCubePlayer.i mOnTimedTextListener;
    private ITXVCubePlayer.j mOnVideoDecoderErrorListener;
    private ITXVCubePlayer.k mOnVideoSizeChangedListener;

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnPreparedListener(ITXVCubePlayer.g gVar) {
        this.mOnPreparedListener = gVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnCompletionListener(ITXVCubePlayer.b bVar) {
        this.mOnCompletionListener = bVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnBufferingUpdateListener(ITXVCubePlayer.a aVar) {
        this.mOnBufferingUpdateListener = aVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnSeekCompleteListener(ITXVCubePlayer.h hVar) {
        this.mOnSeekCompleteListener = hVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoSizeChangedListener(ITXVCubePlayer.k kVar) {
        this.mOnVideoSizeChangedListener = kVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnErrorListener(ITXVCubePlayer.c cVar) {
        this.mOnErrorListener = cVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnInfoListener(ITXVCubePlayer.f fVar) {
        this.mOnInfoListener = fVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnTimedTextListener(ITXVCubePlayer.i iVar) {
        this.mOnTimedTextListener = iVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHLSKeyErrorListener(ITXVCubePlayer.d dVar) {
        this.mOnHLSKeyErrorListener = dVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHevcVideoDecoderErrorListener(ITXVCubePlayer.e eVar) {
        this.mOnHevcVideoDecoderErrorListener = eVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoDecoderErrorListener(ITXVCubePlayer.j jVar) {
        this.mOnVideoDecoderErrorListener = jVar;
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
        ITXVCubePlayer.g gVar = this.mOnPreparedListener;
        if (gVar != null) {
            gVar.a(this);
        }
    }

    public final void notifyOnCompletion() {
        ITXVCubePlayer.b bVar = this.mOnCompletionListener;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public final void notifyOnBufferingUpdate(int i) {
        ITXVCubePlayer.a aVar = this.mOnBufferingUpdateListener;
        if (aVar != null) {
            aVar.a(this, i);
        }
    }

    public final void notifyOnSeekComplete() {
        ITXVCubePlayer.h hVar = this.mOnSeekCompleteListener;
        if (hVar != null) {
            hVar.a(this);
        }
    }

    public final void notifyOnVideoSizeChanged(int i, int i2, int i3, int i4, String str) {
        ITXVCubePlayer.k kVar = this.mOnVideoSizeChangedListener;
        if (kVar != null) {
            kVar.a(this, i, i2, i3, i4, str);
        }
    }

    public final boolean notifyOnError(int i, int i2) {
        ITXVCubePlayer.c cVar = this.mOnErrorListener;
        return cVar != null && cVar.a(this, i, i2);
    }

    public final boolean notifyOnInfo(int i, int i2, int i3, Object obj) {
        ITXVCubePlayer.f fVar = this.mOnInfoListener;
        return fVar != null && fVar.a(this, i, i2, i3, obj);
    }

    public final void notifyOnTimedText(j jVar) {
        ITXVCubePlayer.i iVar = this.mOnTimedTextListener;
        if (iVar != null) {
            iVar.a(this, jVar);
        }
    }

    public final void notifyHLSKeyError() {
        ITXVCubePlayer.d dVar = this.mOnHLSKeyErrorListener;
        if (dVar != null) {
            dVar.a(this);
        }
    }

    public final void notifyHevcVideoDecoderError() {
        ITXVCubePlayer.e eVar = this.mOnHevcVideoDecoderErrorListener;
        if (eVar != null) {
            eVar.a(this);
        }
    }

    public final void notifyVideoDecoderError() {
        ITXVCubePlayer.j jVar = this.mOnVideoDecoderErrorListener;
        if (jVar != null) {
            jVar.a(this);
        }
    }
}
