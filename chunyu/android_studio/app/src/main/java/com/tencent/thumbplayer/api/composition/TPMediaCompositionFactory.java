package com.tencent.thumbplayer.api.composition;

import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.c.a;
import com.tencent.thumbplayer.c.b;
import com.tencent.thumbplayer.c.c;
import com.tencent.thumbplayer.c.e;
import com.tencent.thumbplayer.c.g;
import com.tencent.thumbplayer.c.h;
import com.tencent.thumbplayer.c.j;
import com.tencent.thumbplayer.c.k;
import com.tencent.thumbplayer.c.l;
import java.util.List;

/* loaded from: classes2.dex */
public class TPMediaCompositionFactory {
    public static ITPMediaTrackClip createEmptyTrackClip(int i, long j, long j2) {
        a aVar = new a(i);
        aVar.setCutTimeRange(j, j2);
        return aVar;
    }

    public static ITPMediaAssetExtraParam createMediaAssetExtraParam() {
        return new b();
    }

    public static ITPMediaAssetOrderedMap createMediaAssetOrderedMap() {
        return new c();
    }

    public static ITPMediaComposition createMediaComposition() {
        return new e();
    }

    public static ITPMediaDRMAsset createMediaDRMAsset(@TPCommonEnum.TP_DRM_TYPE int i, String str) {
        return new j(i, str);
    }

    public static ITPMediaAsset createMediaRTCAsset(String str, String str2) {
        return new k(str, str2);
    }

    public static ITPMediaAsset createMediaRTCAsset(String str, String str2, int i) {
        return new k(str, str2, i);
    }

    public static ITPMediaTrack createMediaTrack(int i) {
        return new g(i);
    }

    public static ITPMediaTrack createMediaTrack(int i, List<ITPMediaTrackClip> list) {
        g gVar = new g(i);
        for (ITPMediaTrackClip iTPMediaTrackClip : list) {
            gVar.addTrackClip(iTPMediaTrackClip);
        }
        return gVar;
    }

    public static ITPMediaTrack createMediaTrack(int i, ITPMediaTrackClip... iTPMediaTrackClipArr) {
        g gVar = new g(i);
        for (ITPMediaTrackClip iTPMediaTrackClip : iTPMediaTrackClipArr) {
            gVar.addTrackClip(iTPMediaTrackClip);
        }
        return gVar;
    }

    public static ITPMediaTrackClip createMediaTrackClip(String str, int i) {
        return new h(str, i);
    }

    public static ITPMediaTrackClip createMediaTrackClip(String str, int i, long j, long j2) {
        return new h(str, i, j, j2);
    }

    public static ITPMediaUrlAsset createMediaUrlAsset(String str) {
        return new l(str);
    }
}
