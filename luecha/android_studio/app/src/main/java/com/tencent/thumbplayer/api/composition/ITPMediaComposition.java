package com.tencent.thumbplayer.api.composition;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPMediaComposition extends ITPMediaAsset {
    ITPMediaTrack addAVTrack();

    ITPMediaTrack addAudioTrack();

    ITPMediaTrack addVideoTrack();

    List<ITPMediaTrack> getAllAVTracks();

    List<ITPMediaTrack> getAllAudioTracks();

    List<ITPMediaTrack> getAllVideoTracks();

    long getDurationMs();

    void release();

    boolean removeAVTrack(ITPMediaTrack iTPMediaTrack);

    boolean removeAudioTrack(ITPMediaTrack iTPMediaTrack);

    boolean removeVideoTrack(ITPMediaTrack iTPMediaTrack);
}
