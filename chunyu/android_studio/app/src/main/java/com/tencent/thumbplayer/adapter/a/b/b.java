package com.tencent.thumbplayer.adapter.a.b;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.thumbplayer.adapter.a.b.c;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.core.common.TPAudioFrame;
import com.tencent.thumbplayer.core.common.TPDetailInfo;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPPostProcessFrame;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback;
import com.tencent.thumbplayer.core.demuxer.TPNativeRemoteSdpInfo;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.core.player.ITPNativePlayerAudioFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerEventRecordCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerPostProcessFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerSubtitleFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerVideoFrameCallback;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.core.player.TPNativePlayer;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.thumbplayer.core.player.TPNativePlayerProgramInfo;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class b implements com.tencent.thumbplayer.adapter.a.b {
    static final Set<Integer> a = new HashSet<Integer>() { // from class: com.tencent.thumbplayer.adapter.a.b.b.8
        {
            add(503);
        }
    };
    private TPNativePlayer b;
    private a d;
    private com.tencent.thumbplayer.adapter.e e;
    private com.tencent.thumbplayer.adapter.a.a f;
    private com.tencent.thumbplayer.f.a h;
    private TPSubtitleData g = new TPSubtitleData();
    private ITPNativePlayerMessageCallback i = new ITPNativePlayerMessageCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.1
        private void a(int i, Object obj) {
            if (b.this.d != null) {
                Message.obtain(b.this.d, i, obj).sendToTarget();
            }
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onASyncCallResult(int i, long j, int i2, int i3) {
            com.tencent.thumbplayer.f.a aVar = b.this.h;
            aVar.c("onASyncCallResult, callType:" + i + ", opaque:" + j + ", errorType:" + i2 + ", errorCode:" + i3);
            C0036b bVar = new C0036b();
            bVar.a = i;
            bVar.b = j;
            bVar.c = i2;
            bVar.d = i3;
            a(1, bVar);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onDetailInfo(TPDetailInfo tPDetailInfo) {
            com.tencent.thumbplayer.f.a aVar = b.this.h;
            aVar.c("onDetailInfo, type:" + tPDetailInfo.type + ", time:" + tPDetailInfo.timeSince1970Us);
            a(5, tPDetailInfo);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onError(int i, int i2) {
            com.tencent.thumbplayer.f.a aVar = b.this.h;
            aVar.c("onError, msgType:" + i + ", errorCode:" + i2);
            c cVar = new c();
            cVar.a = i;
            cVar.b = i2;
            a(4, cVar);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onInfoLong(int i, long j, long j2) {
            com.tencent.thumbplayer.f.a aVar = b.this.h;
            aVar.c("onInfoLong, infoType:" + i + ", lParam1:" + j + ", lParam2:" + j2);
            if (i == 253) {
                a.b(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, (int) j));
                return;
            }
            d dVar = new d();
            dVar.a = i;
            dVar.b = j;
            dVar.c = j2;
            a(2, dVar);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onInfoObject(int i, Object obj) {
            if (!b.this.d(i)) {
                com.tencent.thumbplayer.f.a aVar = b.this.h;
                aVar.c("onInfoObject, infoType:" + i + ", objParam:" + obj);
            }
            e eVar = new e();
            eVar.a = i;
            eVar.b = obj;
            a(3, eVar);
        }
    };
    private ITPNativePlayerAudioFrameCallback j = new ITPNativePlayerAudioFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.2
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerAudioFrameCallback
        public void onAudioFrame(TPAudioFrame tPAudioFrame, int i) {
            b.this.e.a(c.a(tPAudioFrame));
        }
    };
    private ITPNativePlayerVideoFrameCallback k = new ITPNativePlayerVideoFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.3
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerVideoFrameCallback
        public void onVideoFrame(TPVideoFrame tPVideoFrame, int i) {
            b.this.e.a(c.a(tPVideoFrame));
        }
    };
    private ITPNativePlayerSubtitleFrameCallback l = new ITPNativePlayerSubtitleFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.4
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerSubtitleFrameCallback
        public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame, int i) {
            b.this.e.a(c.a(tPSubtitleFrame));
        }
    };
    private ITPNativePlayerPostProcessFrameCallback m = new ITPNativePlayerPostProcessFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.5
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerPostProcessFrameCallback
        public TPPostProcessFrame onPostProcessFrame(TPPostProcessFrame tPPostProcessFrame, int i) {
            TPPostProcessFrameBuffer b;
            TPPostProcessFrameBuffer a2 = c.a(tPPostProcessFrame);
            a2.eventFlag = i;
            if (tPPostProcessFrame.mediaType == 0) {
                b = b.this.e.a(a2);
            } else if (tPPostProcessFrame.mediaType != 1) {
                return null;
            } else {
                b = b.this.e.b(a2);
            }
            return c.a(b);
        }
    };
    private ITPNativeDemuxerCallback n = new ITPNativeDemuxerCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.6
        @Override // com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback
        public TPNativeRemoteSdpInfo onSdpExchange(String str, int i) {
            return c.a(b.this.e.a(str, i));
        }
    };
    private ITPNativePlayerEventRecordCallback o = new ITPNativePlayerEventRecordCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.7
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerEventRecordCallback
        public void onDrmInfo(TPGeneralPlayFlowParams.TPPlayerDrmParams tPPlayerDrmParams) {
            if (tPPlayerDrmParams == null) {
                b.this.h.e("Native DrmInfo is null!");
                return;
            }
            b.this.h.c("onDrmInfo");
            b.this.e.a(c.a(tPPlayerDrmParams));
        }
    };
    private TPNativePlayerInitConfig c = new TPNativePlayerInitConfig();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends Handler {
        private WeakReference<b> b;

        public a(Looper looper, b bVar) {
            super(looper);
            this.b = new WeakReference<>(bVar);
        }

        private void a(@TPCommonEnum.NativeErrorType int i, int i2) {
            b.this.e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapErrorType.class, i), i2, 0, 0);
        }

        private void a(C0036b bVar) {
            int i = bVar.a;
            if (i == 1) {
                b.this.b();
            } else if (i != 2) {
                b.this.a(bVar);
            } else {
                b.this.c();
            }
        }

        private void a(d dVar) {
            int i = dVar.a;
            if (i == 154) {
                b.this.d();
            } else if (i != 250) {
                b.this.a(dVar.a, dVar);
            } else {
                b.this.a(dVar.b, dVar.c);
            }
        }

        private void a(e eVar) {
            if (eVar.a != 502) {
                b.this.a(eVar.a, eVar);
            } else if (eVar.b instanceof String) {
                b.this.g.subtitleData = (String) eVar.b;
                b.this.e.a(b.this.g);
            }
        }

        private void a(TPDetailInfo tPDetailInfo) {
            b.this.e.a(c.a(tPDetailInfo));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.b.get() == null) {
                b.this.h.e("mWeakRef is null");
                return;
            }
            int i = message.what;
            if (i == 1) {
                a((C0036b) message.obj);
            } else if (i == 2) {
                a((d) message.obj);
            } else if (i == 3) {
                a((e) message.obj);
            } else if (i == 4) {
                c cVar = (c) message.obj;
                a(cVar.a, cVar.b);
            } else if (i != 5) {
                com.tencent.thumbplayer.f.a aVar = b.this.h;
                aVar.d("message :" + message.what + "  not recognition");
            } else {
                a((TPDetailInfo) message.obj);
            }
        }
    }

    /* renamed from: com.tencent.thumbplayer.adapter.a.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0036b {
        @TPCommonEnum.NativeMsgInfo
        int a;
        long b;
        int c;
        int d;
    }

    /* loaded from: classes2.dex */
    public static class c {
        int a;
        int b;
    }

    /* loaded from: classes2.dex */
    public static class d {
        int a;
        long b;
        long c;
    }

    /* loaded from: classes2.dex */
    public static class e {
        int a;
        Object b;
    }

    public b(Context context, com.tencent.thumbplayer.f.b bVar) {
        a aVar;
        this.h = new com.tencent.thumbplayer.f.a(bVar, "TPThumbPlayer");
        this.b = new TPNativePlayer(context);
        this.b.setMessageCallback(this.i);
        this.b.setAudioFrameCallback(this.j);
        this.b.setVideoFrameCallback(this.k);
        this.b.setSubtitleFrameCallback(this.l);
        this.b.setPostProcessFrameCallback(this.m);
        this.b.setDemuxerCallback(this.n);
        this.b.setEventRecordCallback(this.o);
        this.e = new com.tencent.thumbplayer.adapter.e(this.h.b());
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            aVar = new a(myLooper, this);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                aVar = new a(mainLooper, this);
            } else {
                this.d = null;
                return;
            }
        }
        this.d = aVar;
    }

    private TPProgramInfo a(TPNativePlayerProgramInfo tPNativePlayerProgramInfo) {
        if (tPNativePlayerProgramInfo == null) {
            return null;
        }
        TPProgramInfo tPProgramInfo = new TPProgramInfo();
        tPProgramInfo.url = tPNativePlayerProgramInfo.url;
        tPProgramInfo.bandwidth = tPNativePlayerProgramInfo.bandwidth;
        tPProgramInfo.resolution = tPNativePlayerProgramInfo.resolution;
        tPProgramInfo.programId = tPNativePlayerProgramInfo.programId;
        tPProgramInfo.actived = tPNativePlayerProgramInfo.actived;
        return tPProgramInfo;
    }

    private TPTrackInfo a(TPMediaTrackInfo tPMediaTrackInfo) {
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = tPMediaTrackInfo.trackName;
        tPTrackInfo.trackType = tPMediaTrackInfo.trackType;
        tPTrackInfo.hlsTag.name = tPMediaTrackInfo.hlsTag.name;
        tPTrackInfo.hlsTag.bandwidth = tPMediaTrackInfo.hlsTag.bandwidth;
        tPTrackInfo.hlsTag.resolution = tPMediaTrackInfo.hlsTag.resolution;
        tPTrackInfo.hlsTag.framerate = tPMediaTrackInfo.hlsTag.framerate;
        tPTrackInfo.hlsTag.codecs = tPMediaTrackInfo.hlsTag.codecs;
        tPTrackInfo.hlsTag.groupId = tPMediaTrackInfo.hlsTag.groupId;
        tPTrackInfo.hlsTag.language = tPMediaTrackInfo.hlsTag.language;
        tPTrackInfo.isExclusive = tPMediaTrackInfo.isExclusive;
        tPTrackInfo.isSelected = tPMediaTrackInfo.isSelected;
        tPTrackInfo.isInternal = tPMediaTrackInfo.isInternal;
        return tPTrackInfo;
    }

    private void a() {
        if (this.b == null) {
            throw new IllegalStateException("player has release");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@TPCommonEnum.NativeErrorType int i, d dVar) {
        Class cls;
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i);
        if (tPIntValue < 0) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.d("msgType:" + i + ", cannot convert to thumbPlayer Info");
            return;
        }
        long j = dVar.b;
        long j2 = dVar.c;
        if (tPIntValue == 203) {
            cls = TPNativeKeyMap.MapAudioDecoderType.class;
        } else if (tPIntValue != 204) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.d("unhandled thumbPlayerInfo=" + tPIntValue);
            this.e.a(tPIntValue, j, j2, (Object) null);
        } else {
            cls = TPNativeKeyMap.MapVideoDecoderType.class;
        }
        j = (long) TPNativeKeyMapUtil.toTPIntValue(cls, (int) dVar.b);
        this.e.a(tPIntValue, j, j2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@TPCommonEnum.NativeMsgInfo int i, e eVar) {
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i);
        if (tPIntValue < 0 || eVar.b == null) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.d("msgType:" + i + ", cannot convert to thumbPlayer Info");
            return;
        }
        Object obj = eVar.b;
        switch (tPIntValue) {
            case 500:
                obj = c.a((ITPNativePlayerMessageCallback.VideoCropInfo) eVar.b);
                break;
            case 502:
                obj = c.a((ITPNativePlayerMessageCallback.MediaCodecInfo) eVar.b);
                break;
            case 503:
                obj = c.a((ITPNativePlayerMessageCallback.VideoSeiInfo) eVar.b);
                break;
            case 505:
                obj = c.a((ITPNativePlayerMessageCallback.MediaDrmInfo) eVar.b);
                break;
            case 506:
                obj = (String) eVar.b;
                com.tencent.thumbplayer.f.a aVar2 = this.h;
                aVar2.c("TP_PLAYER_INFO_OBJECT_SUBTITLE_NOTE:" + obj);
                break;
        }
        this.e.a(tPIntValue, 0, 0, obj);
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping boolean is invalid, not found in array, id: " + i);
        } else if (convertToNativeOptionalId.b() != 3) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        } else {
            this.c.setBool(convertToNativeOptionalId.c(), optionalParamBoolean.value);
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamFloat optionalParamFloat) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping float is invalid, not found in array, id: " + i);
        } else if (7 != convertToNativeOptionalId.b()) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID:" + convertToNativeOptionalId.c() + " is not float");
        } else {
            this.c.setFloat(convertToNativeOptionalId.c(), optionalParamFloat.value);
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping long is invalid, not found in array, id: " + i);
            return;
        }
        int b = convertToNativeOptionalId.b();
        boolean z = true;
        if (b == 1) {
            this.c.setLong(convertToNativeOptionalId.c(), optionalParamLong.value);
        } else if (b == 3) {
            TPNativePlayerInitConfig tPNativePlayerInitConfig = this.c;
            int c2 = convertToNativeOptionalId.c();
            if (optionalParamLong.value <= 0) {
                z = false;
            }
            tPNativePlayerInitConfig.setBool(c2, z);
        } else if (b != 4) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        } else {
            this.c.setInt(convertToNativeOptionalId.c(), (int) optionalParamLong.value);
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamObject optionalParamObject) {
        Object obj;
        com.tencent.thumbplayer.f.a aVar;
        StringBuilder sb;
        String str;
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId == null) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "convertToNativeOptionalId failed, key: ";
        } else if (convertToNativeOptionalId.a()) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "player optionalIdMapping object is invalid, not found in array, id: ";
        } else {
            int c2 = convertToNativeOptionalId.c();
            if (c2 == 126) {
                obj = c.a((TPJitterBufferConfig) optionalParamObject.objectValue);
            } else if (c2 != 414) {
                com.tencent.thumbplayer.f.a aVar2 = this.h;
                aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
                return;
            } else {
                obj = c.a((TPAudioAttributes) optionalParamObject.objectValue);
            }
            this.c.setObject(convertToNativeOptionalId.c(), obj);
            return;
        }
        sb.append(str);
        sb.append(i);
        aVar.e(sb.toString());
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamQueueInt optionalParamQueueInt) {
        com.tencent.thumbplayer.f.a aVar;
        StringBuilder sb;
        String str;
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "player optionalIdMapping queue_int is invalid, not found in array, id: ";
        } else if (optionalParamQueueInt.queueValue == null || optionalParamQueueInt.queueValue.length == 0) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "queueint params is empty in";
        } else if (convertToNativeOptionalId.b() != 5) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
            return;
        } else {
            for (int i2 = 0; i2 < optionalParamQueueInt.queueValue.length; i2++) {
                this.c.addQueueInt(convertToNativeOptionalId.c(), optionalParamQueueInt.queueValue[i2]);
            }
            return;
        }
        sb.append(str);
        sb.append(i);
        aVar.e(sb.toString());
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamQueueString optionalParamQueueString) {
        com.tencent.thumbplayer.f.a aVar;
        StringBuilder sb;
        String str;
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "player optionalIdMapping queue_string is invalid, not found in array, id: ";
        } else if (optionalParamQueueString.queueValue == null || optionalParamQueueString.queueValue.length == 0) {
            aVar = this.h;
            sb = new StringBuilder();
            str = "queue String params is empty in";
        } else if (convertToNativeOptionalId.b() != 6) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
            return;
        } else {
            for (int i2 = 0; i2 < optionalParamQueueString.queueValue.length; i2++) {
                this.c.addQueueString(convertToNativeOptionalId.c(), optionalParamQueueString.queueValue[i2]);
            }
            return;
        }
        sb.append(str);
        sb.append(i);
        aVar.e(sb.toString());
    }

    private void a(int i, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping string is invalid, not found in array, id: " + i);
        } else if (2 != convertToNativeOptionalId.b()) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID:" + convertToNativeOptionalId.c() + " is not string");
        } else {
            this.c.setString(convertToNativeOptionalId.c(), optionalParamString.value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        this.e.a(j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0036b bVar) {
        this.e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, bVar.a), (long) bVar.c, (long) bVar.d, Long.valueOf(bVar.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.e.a();
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping string is invalid, not found in array, id: " + i);
        } else if (convertToNativeOptionalId.b() != 3) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        } else {
            this.b.setOptionLong(convertToNativeOptionalId.c(), optionalParamBoolean.value ? 1 : 0, 0);
        }
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping long is invalid, not found in array, id: " + i);
            return;
        }
        int b = convertToNativeOptionalId.b();
        if (b == 1 || b == 3 || b == 4) {
            this.b.setOptionLong(convertToNativeOptionalId.c(), optionalParamLong.value, optionalParamLong.param1);
            return;
        }
        com.tencent.thumbplayer.f.a aVar2 = this.h;
        aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
    }

    private void b(int i, TPOptionalParam.OptionalParamObject optionalParamObject) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId == null) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionaIdMapping object is invalid, not found in array, id: " + i);
        } else if (convertToNativeOptionalId.c() != 1001) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        } else {
            this.b.setOptionObject(convertToNativeOptionalId.c(), c.a((TPSubtitleRenderModel) optionalParamObject.objectValue));
        }
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.e("player optionalIdMapping string is invalid, not found in array, id: " + i);
        } else if (convertToNativeOptionalId.b() != 2) {
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        } else {
            this.b.setOptionObject(convertToNativeOptionalId.c(), optionalParamString.value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.e.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.e.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i) {
        return a.contains(Integer.valueOf(i));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setAudioGainRatio:" + f);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioVolume(f);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("seekTo:" + i);
        a();
        if (this.b.seekToAsync(i, 1, 0) != 0) {
            throw new IllegalStateException("seek to position:" + i + " failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("seekTo:" + i + " mode:" + i2);
        a();
        if (this.b.seekToAsync(i, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSeekMode.class, i2), 0) != 0) {
            throw new IllegalStateException("seek to position:" + i + " failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, long j) {
        this.h.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.selectTrackAsync(i, j);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor != null) {
            int detachFd = assetFileDescriptor.getParcelFileDescriptor().detachFd();
            long startOffset = assetFileDescriptor.getStartOffset();
            long length = assetFileDescriptor.getLength();
            ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
            int detachFd2 = fromFd.detachFd();
            fromFd.close();
            assetFileDescriptor.close();
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.c("setDataSource: " + assetFileDescriptor + ", playFd: " + detachFd + ", offset: " + startOffset + ", length: " + length + ", captureFd: " + detachFd2);
            a();
            if (this.b.setDataSource(detachFd, startOffset, length) == 0) {
                this.f = new com.tencent.thumbplayer.a.d(detachFd2, startOffset, length);
                return;
            }
            throw new IllegalStateException("setDataSource url afd failed!!");
        }
        throw new IllegalStateException("setDataSource url afd is null!!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            int detachFd = parcelFileDescriptor.detachFd();
            ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
            int detachFd2 = fromFd.detachFd();
            fromFd.close();
            parcelFileDescriptor.close();
            com.tencent.thumbplayer.f.a aVar = this.h;
            aVar.c("setDataSource: " + parcelFileDescriptor + ", playFd:" + detachFd + ", captureFd: " + detachFd2);
            a();
            if (this.b.setDataSource(detachFd, 0, 0) == 0) {
                this.f = new com.tencent.thumbplayer.a.d(detachFd2);
                return;
            }
            throw new IllegalStateException("setDataSource url pfd failed!!");
        }
        throw new IllegalStateException("setDataSource url pfd is null!!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        StringBuilder sb = new StringBuilder();
        sb.append("setSurface, surface is null ? : ");
        sb.append(surface == null);
        aVar.c(sb.toString());
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else if (tPNativePlayer.setVideoSurface(surface) != 0) {
            throw new IllegalStateException("setSurface failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        StringBuilder sb = new StringBuilder();
        sb.append("SurfaceHolder, surfaceHolder is null ? : ");
        sb.append(surfaceHolder == null);
        aVar.c(sb.toString());
        if (this.b == null) {
            this.h.d("player has released, return");
        } else if (surfaceHolder == null || surfaceHolder.getSurface() != null) {
            if (this.b.setVideoSurface(surfaceHolder == null ? null : surfaceHolder.getSurface()) != 0) {
                throw new IllegalStateException("setSurface failed!!");
            }
        } else {
            this.h.e("SurfaceHolder，err.");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        this.e.a(aVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        this.e.a(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.AbstractC0037c cVar) {
        this.e.a(cVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
        this.e.a(dVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
        this.e.a(eVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.e.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
        this.e.a(gVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.e.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.e.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.e.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.e.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.e.a(mVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        this.e.a(nVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        this.e.a(oVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.e.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("captureVideo, params" + tPCaptureParams);
        if (this.f != null) {
            TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
            tPImageGeneratorParams.width = tPCaptureParams.width;
            tPImageGeneratorParams.height = tPCaptureParams.height;
            tPImageGeneratorParams.format = tPCaptureParams.format;
            tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
            tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
            this.f.a(n(), tPImageGeneratorParams, tPCaptureCallBack);
            return;
        }
        tPCaptureCallBack.onCaptureVideoFailed(TPGeneralError.UNMATCHED_STATE);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        com.tencent.thumbplayer.f.a aVar2 = this.h;
        aVar2.c("setPlayerOptionalParam:" + tPOptionalParam);
        if (this.b == null) {
            aVar = this.h;
            str = "player has released, return";
        } else if (tPOptionalParam.getParamType() == 1) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
                return;
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
                return;
            }
        } else if (tPOptionalParam.getParamType() == 2) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
                return;
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
                return;
            }
        } else if (tPOptionalParam.getParamType() == 6) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamFloat());
                return;
            }
            return;
        } else if (tPOptionalParam.getParamType() == 3) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
                return;
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
                return;
            }
        } else if (tPOptionalParam.getParamType() == 4) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueInt());
                return;
            }
            return;
        } else if (tPOptionalParam.getParamType() == 5) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueString());
                return;
            }
            return;
        } else if (tPOptionalParam.getParamType() != 7) {
            aVar = this.h;
            str = "optionalParam param type is unknown, return";
        } else if (tPOptionalParam.getKey() < 500) {
            a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
            return;
        } else {
            b(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
            return;
        }
        aVar.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setDataSource: " + iTPMediaAsset);
        a();
        if (iTPMediaAsset != null) {
            String url = iTPMediaAsset.getUrl();
            if (this.b.setDataSource(url) == 0) {
                this.f = new com.tencent.thumbplayer.a.d(url);
                return;
            }
            throw new IllegalStateException("setDataSource mediaAsset failed!!");
        }
        throw new IllegalStateException("media asset is null!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("switchDefinition mediaAsset:" + iTPMediaAsset + " opaque:" + j);
        a();
        if (iTPMediaAsset != null) {
            if (this.b.switchDefinitionAsync(iTPMediaAsset.getUrl(), TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i), j) == 0) {
                this.f = new com.tencent.thumbplayer.a.d(iTPMediaAsset.getUrl());
                return;
            }
            throw new IllegalStateException("switchDefinition in invalid state");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.f.b bVar) {
        this.h.a(new com.tencent.thumbplayer.f.b(bVar, "TPThumbPlayer"));
        if (bVar != null) {
            this.e.a(this.h.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setAudioNormalizeVolumeParams:" + str);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioNormalizeVolumeParams(str);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("switchDefinition url:" + str + " opaque:" + j);
        a();
        if (this.b.switchDefinitionAsync(str, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i), j) == 0) {
            com.tencent.thumbplayer.adapter.a.a aVar2 = this.f;
            if (aVar2 != null) {
                aVar2.a();
                this.f = null;
            }
            this.f = new com.tencent.thumbplayer.a.d(str);
            return;
        }
        throw new IllegalStateException("switchDefinition in invalid state");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, String str3) {
        this.h.c("addSubtitleSource");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.addSubtitleTrackSource(str, str3);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, List<TPOptionalParam> list) {
        String str3;
        TPNativePlayer tPNativePlayer;
        this.h.c("addAudioTrackSource");
        if (this.b == null) {
            this.h.d("player has released, return");
            return;
        }
        TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
        tPAudioTrackInfo.audioTrackUrl = str;
        tPAudioTrackInfo.paramData = list;
        com.tencent.thumbplayer.adapter.e eVar = this.e;
        if (eVar != null) {
            eVar.a(1012, 0, 0, tPAudioTrackInfo);
        }
        if (TextUtils.isEmpty(tPAudioTrackInfo.proxyUrl)) {
            tPNativePlayer = this.b;
            str3 = tPAudioTrackInfo.audioTrackUrl;
        } else {
            tPNativePlayer = this.b;
            str3 = tPAudioTrackInfo.proxyUrl;
        }
        tPNativePlayer.addAudioTrackSource(str3, str2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setDataSource: " + str);
        a();
        if (this.b.setDataSource(str, map) == 0) {
            this.f = new com.tencent.thumbplayer.a.d(str);
            return;
        }
        throw new IllegalStateException("setDataSource url and header failed!!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("switchDefinition url:" + str + "httpHeader:" + map + " opaque:" + j);
        a();
        if (this.b.switchDefinitionAsync(str, map, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i), j) == 0) {
            com.tencent.thumbplayer.adapter.a.a aVar2 = this.f;
            if (aVar2 != null) {
                aVar2.a();
                this.f = null;
            }
            this.f = new com.tencent.thumbplayer.a.d(str);
            return;
        }
        throw new IllegalStateException("switchDefinition in invalid state");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setOutputMute:" + z);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioMute(z);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z, long j, long j2) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setLoopback:" + z + " loopStartPositionMs:" + j + " loopEndPositionMs:" + j2);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else if (tPNativePlayer.setLoopback(z, j, j2) != 0) {
            throw new IllegalStateException("set loopback failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("getPropertyLong:" + i);
        a();
        int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i);
        if (nativeIntValue >= 0) {
            return this.b.getPropertyLong(nativeIntValue);
        }
        this.h.d("paramId not found, return -1");
        return -1;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setPlaySpeedRatio:" + f);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.setPlaybackRate(f);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i, long j) {
        this.h.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.deselectTrackAsync(i, j);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("setLoopback:" + z);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.setLoopback(z, 0, -1);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("getPropertyString:" + i);
        a();
        try {
            int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i);
            if (nativeIntValue >= 0) {
                return this.b.getPropertyString(nativeIntValue);
            }
            com.tencent.thumbplayer.f.a aVar2 = this.h;
            aVar2.d("getPropertyString, tpToNativeValue(TPNativeKeyMap.MapPropertyId.class," + i + "), return" + nativeIntValue);
            return "";
        } catch (IllegalArgumentException unused) {
            this.h.d("paramId not found, return");
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.h;
        aVar.c("selectProgram, programIndex:" + i);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.h.d("player has released, return");
        } else {
            tPNativePlayer.selectProgramAsync(i, j);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        this.h.c("prepare");
        a();
        this.b.setInitConfig(this.c);
        if (this.b.prepare() != 0) {
            throw new IllegalStateException("prepare failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        this.h.c("prepareAsync");
        a();
        this.b.setInitConfig(this.c);
        if (this.b.prepareAsync() != 0) {
            throw new IllegalStateException("prepareAsync failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        this.h.c(TtmlNode.START);
        a();
        if (this.b.start() != 0) {
            throw new IllegalStateException("start failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        this.h.c("pause");
        a();
        if (this.b.pause() != 0) {
            throw new IllegalStateException("pause failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void j() {
        this.h.c(NotificationAction.ACTION_STOP);
        a();
        this.h.c("stop before");
        int stop = this.b.stop();
        this.h.c("stop after");
        if (stop != 0) {
            throw new IllegalStateException("stop failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        this.h.c("reset");
        if (this.b == null) {
            this.h.d("reset, player has released.");
            return;
        }
        this.h.c("reset before");
        this.b.reset();
        a aVar = this.d;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
        this.h.c("reset after");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        this.h.c("release");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            tPNativePlayer.release();
            this.b = null;
        }
        com.tencent.thumbplayer.adapter.a.a aVar = this.f;
        if (aVar != null) {
            aVar.a();
            this.f = null;
        }
        a aVar2 = this.d;
        if (aVar2 != null) {
            aVar2.removeCallbacksAndMessages(null);
            this.d = null;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getDurationMs();
        }
        this.h.c("player has released, return 0");
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getCurrentPositionMs();
        }
        this.h.c("player has released, return 0");
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getBufferedDurationMs() + this.b.getCurrentPositionMs();
        }
        this.h.c("player has released, return 0");
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        this.h.c("getVideoWidth");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getVideoWidth();
        }
        this.h.c("player has released, return 0");
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        this.h.c("getVideoHeight");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getVideoHeight();
        }
        this.h.c("player has released, return 0");
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        this.h.c("getTrackInfo");
        TPNativePlayer tPNativePlayer = this.b;
        TPTrackInfo[] tPTrackInfoArr = null;
        if (tPNativePlayer == null) {
            this.h.c("player has released, return 0");
            return null;
        }
        TPMediaTrackInfo[] trackInfo = tPNativePlayer.getTrackInfo();
        if (trackInfo != null && trackInfo.length >= 1) {
            tPTrackInfoArr = new TPTrackInfo[trackInfo.length];
            for (int i = 0; i < trackInfo.length; i++) {
                tPTrackInfoArr[i] = a(trackInfo[i]);
            }
        }
        return tPTrackInfoArr;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        this.h.c("getProgramInfo");
        TPNativePlayer tPNativePlayer = this.b;
        TPProgramInfo[] tPProgramInfoArr = null;
        if (tPNativePlayer == null) {
            this.h.c("player has released, return 0");
            return null;
        }
        TPNativePlayerProgramInfo[] programInfo = tPNativePlayer.getProgramInfo();
        if (programInfo != null && programInfo.length >= 1) {
            tPProgramInfoArr = new TPProgramInfo[programInfo.length];
            for (int i = 0; i < programInfo.length; i++) {
                tPProgramInfoArr[i] = a(programInfo[i]);
            }
        }
        return tPProgramInfoArr;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            return tPNativePlayer.getDemuxerOffsetInFile();
        }
        this.h.c("player has released, return -1");
        return -1;
    }
}
