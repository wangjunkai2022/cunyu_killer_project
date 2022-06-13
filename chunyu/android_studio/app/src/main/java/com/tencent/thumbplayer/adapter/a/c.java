package com.tencent.thumbplayer.adapter.a;

import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;

/* loaded from: classes2.dex */
public class c {

    /* loaded from: classes2.dex */
    public interface a {
        void a(TPAudioFrameBuffer tPAudioFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface b {
        TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* renamed from: com.tencent.thumbplayer.adapter.a.c$c */
    /* loaded from: classes2.dex */
    public interface AbstractC0037c {
        void b();
    }

    /* loaded from: classes2.dex */
    public interface d {
        TPRemoteSdpInfo a(String str, int i);
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(TPPlayerDetailInfo tPPlayerDetailInfo);
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(@TPCommonEnum.TPErrorType int i, int i2, long j, long j2);
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a(TPDrmInfo tPDrmInfo);
    }

    /* loaded from: classes2.dex */
    public interface h {
        void a(int i, long j, long j2, Object obj);
    }

    /* loaded from: classes2.dex */
    public interface i {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface j {
        void c();
    }

    /* loaded from: classes2.dex */
    public interface k {
        void b(int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface l {
        void a(TPSubtitleData tPSubtitleData);
    }

    /* loaded from: classes2.dex */
    public interface m {
        void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface n {
        void a(TPVideoFrameBuffer tPVideoFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface o {
        TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface p {
        void a(long j, long j2);
    }
}
