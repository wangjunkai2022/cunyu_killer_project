package com.tencent.thumbplayer.tplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.webkit.ProxyConfig;
import com.facebook.imageutils.TiffUtil;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.tekartik.sqflite.Constant;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.a.e;
import com.tencent.thumbplayer.adapter.d;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.ITPSurface;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxy;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.e.b;
import com.tencent.thumbplayer.e.c;
import com.tencent.thumbplayer.tplayer.a.g;
import com.tencent.thumbplayer.tplayer.f;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.utils.j;
import com.tencent.thumbplayer.utils.n;
import com.tencent.thumbplayer.utils.o;
import com.tencent.thumbplayer.utils.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class b implements ITPPlayer {
    private static String a = "api call:";
    private long A;
    private int B;
    private int C;
    private final com.tencent.thumbplayer.adapter.a b;
    private c c;
    private com.tencent.thumbplayer.d.a d;
    private com.tencent.thumbplayer.tplayer.plugins.report.b e;
    private com.tencent.thumbplayer.d.a.a f;
    private com.tencent.thumbplayer.tplayer.plugins.b g;
    private HandlerThread h;
    private Looper i;
    private a j;
    private Context k;
    private String l;
    private boolean m;
    private boolean n;
    private int o;
    private ArrayList<String> p;
    private long q;
    private long r;
    private long s;
    private com.tencent.thumbplayer.f.a t;
    private AtomicInteger v;
    private boolean w;
    private c x;
    private g y;
    private Map<Long, Long> z;
    private static AtomicInteger u = new AtomicInteger(1000);
    private static final SparseIntArray D = new SparseIntArray();

    /* loaded from: classes2.dex */
    public class a extends Handler {
        private b b;

        a(b bVar) {
            b.this = r1;
            this.b = bVar;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(b bVar, Looper looper) {
            super(looper);
            b.this = r1;
            this.b = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b bVar;
            int i;
            long j;
            long j2;
            Object obj;
            b bVar2;
            int i2;
            int i3;
            long j3;
            long j4;
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.b("mTransformHandler msg : " + message.what);
            c cVar = b.this.c;
            if (cVar != null) {
                int i4 = message.what;
                if (i4 == 257) {
                    b.this.t.c("onPrepared");
                    b.this.c(1004);
                    cVar.onPrepared(this.b);
                } else if (i4 != 1256) {
                    switch (i4) {
                        case 260:
                            cVar.onCompletion(this.b);
                            return;
                        case 261:
                            b.this.b(message.arg1);
                            f.a aVar2 = (f.a) message.obj;
                            if (aVar2 != null && !b.this.d.c()) {
                                cVar.onInfo(this.b, message.arg1, aVar2.a, aVar2.b, aVar2.c);
                                return;
                            } else if (aVar2 != null) {
                                bVar = this.b;
                                i = message.arg1;
                                j = aVar2.a;
                                j2 = aVar2.b;
                                obj = aVar2.c;
                                cVar.onInfo(bVar, i, j, j2, obj);
                                return;
                            } else {
                                return;
                            }
                        case 262:
                            f.a aVar3 = (f.a) message.obj;
                            if (aVar3 != null) {
                                bVar2 = this.b;
                                i2 = message.arg1;
                                i3 = message.arg2;
                                j3 = aVar3.a;
                                j4 = aVar3.b;
                                cVar.onError(bVar2, i2, i3, j3, j4);
                                return;
                            }
                            return;
                        case TPReportParams.LIVE_STEP_PLAY /* 263 */:
                            cVar.onSeekComplete(this.b);
                            return;
                        case 264:
                            f.a aVar4 = (f.a) message.obj;
                            if (aVar4 != null) {
                                cVar.onVideoSizeChanged(this.b, aVar4.a, aVar4.b);
                                return;
                            }
                            return;
                        case 265:
                            cVar.onSubtitleData(this.b, (TPSubtitleData) message.obj);
                            return;
                        case 266:
                            cVar.onVideoFrameOut(this.b, (TPVideoFrameBuffer) message.obj);
                            return;
                        case 267:
                            cVar.onAudioFrameOut(this.b, (TPAudioFrameBuffer) message.obj);
                            return;
                        case 268:
                            bVar2 = this.b;
                            i2 = message.arg1;
                            i3 = message.arg2;
                            j3 = 0;
                            j4 = 0;
                            cVar.onError(bVar2, i2, i3, j3, j4);
                            return;
                        case 269:
                            bVar = this.b;
                            i = 1002;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 270:
                            bVar = this.b;
                            i = 1003;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 271:
                            bVar = this.b;
                            i = 1001;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 272:
                            bVar = this.b;
                            i = 1004;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case com.umeng.commonsdk.stateless.b.a /* 273 */:
                            bVar = this.b;
                            i = 1005;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case TiffUtil.TIFF_TAG_ORIENTATION /* 274 */:
                            bVar = this.b;
                            i = 1006;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 275:
                            bVar = this.b;
                            i = 1007;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 276:
                            bVar = this.b;
                            i = 1008;
                            j = (long) message.arg1;
                            j2 = (long) message.arg2;
                            obj = message.obj;
                            cVar.onInfo(bVar, i, j, j2, obj);
                            return;
                        case 277:
                            cVar.onStateChange(message.arg1, message.arg2);
                            return;
                        case 278:
                            if (b.this.b != null) {
                                b.this.b.a(new TPOptionalParam().buildLong(8000, (long) message.arg1));
                            }
                            if (b.this.n) {
                                bVar = this.b;
                                i = 1010;
                                j = (long) message.arg1;
                                j2 = (long) message.arg2;
                                obj = message.obj;
                                cVar.onInfo(bVar, i, j, j2, obj);
                                return;
                            }
                            return;
                        case 279:
                            cVar.onSubtitleFrameOut(this.b, (TPSubtitleFrameBuffer) message.obj);
                            return;
                        case 280:
                            cVar.onStopAsyncComplete(this.b);
                            return;
                        default:
                            return;
                    }
                } else {
                    b.this.a(message);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.tencent.thumbplayer.tplayer.b$b */
    /* loaded from: classes2.dex */
    public class C0048b implements c.a, c.b, c.AbstractC0037c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p, ITPPlayListener {
        C0048b() {
            b.this = r1;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onVideoProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onSdpExchange(b.this, str, i);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            int i;
            boolean z = true;
            b.this.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 1);
            b.this.d.a(0);
            com.tencent.thumbplayer.adapter.b e = b.this.b.e();
            String str = e.a() + ProxyConfig.MATCH_ALL_SCHEMES + e.b();
            TPTrackInfo[] r = b.this.b.r();
            if (r != null) {
                i = 0;
                for (TPTrackInfo tPTrackInfo : r) {
                    if (tPTrackInfo.trackType == 2) {
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            b bVar = b.this;
            com.tencent.thumbplayer.utils.g a = new com.tencent.thumbplayer.utils.g().a("playertype", Integer.valueOf(b.this.b.d())).a("definition", str).a("rate", Long.valueOf(e.f() / 8000)).a("duration", Long.valueOf(e.j())).a("fmt", e.c()).a("etime", Long.valueOf(System.currentTimeMillis()));
            if (i <= 1) {
                z = false;
            }
            bVar.a(103, 0, 0, (String) null, a.a("multitrack", Boolean.valueOf(z)).a());
            b.this.a(257, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i, int i2, long j, long j2) {
            String g = b.this.d.g();
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.c("onError playerErrorCodeStr=" + g);
            if (!TextUtils.isEmpty(g)) {
                try {
                    i2 = Integer.parseInt(g);
                    i = 4000;
                } catch (Exception e) {
                    b.this.t.a(e);
                }
            }
            b.this.a(i, i2);
            com.tencent.thumbplayer.f.a aVar2 = b.this.t;
            aVar2.c("onError errorTypeReal=" + i + ", errorCodeReal=" + i2);
            f.a aVar3 = new f.a();
            aVar3.a = j;
            aVar3.b = j2;
            b.this.a(262, i, i2, (Object) aVar3);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            b.this.a(i, j, j2, obj);
            if (i == 1011) {
                b.this.a(obj);
            } else if (i == 1012) {
                b.this.b(obj);
            } else {
                if (i == 4) {
                    obj = Long.valueOf(b.this.b(((Long) obj).longValue(), "async call select track"));
                }
                f.a aVar = new f.a();
                aVar.a = j;
                aVar.b = j2;
                aVar.c = obj;
                b.this.a(261, i, 0, (Object) aVar);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j, long j2) {
            f.a aVar = new f.a();
            aVar.a = j;
            aVar.b = j2;
            b.this.a(264, 0, 0, (Object) aVar);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onAudioFrameOut(b.this, tPAudioFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onDrmInfo(b.this, tPDrmInfo);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onDetailInfo(b.this, tPPlayerDetailInfo);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            b.this.a(265, 0, 0, (Object) tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            b.this.a(279, 0, 0, (Object) tPSubtitleFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onVideoFrameOut(b.this, tPVideoFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onAudioProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.AbstractC0037c
        public void b() {
            b.this.a(111, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 0).a());
            b.this.a(260, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.k
        public void b(int i, int i2) {
            b.this.a(277, i, i2, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            b.this.e();
            b.this.a(110, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(b.this.getCurrentPositionMs())).a());
            b.this.a((int) TPReportParams.LIVE_STEP_PLAY, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            ITPPlayerProxyListener j = b.this.d.j();
            if (j != null) {
                return j.getAdvRemainTimeMs();
            }
            return -1;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i, String str) {
            if (b.this.f != null) {
                return b.this.f.c(i, str);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return "";
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            com.tencent.thumbplayer.adapter.a aVar = b.this.b;
            if (aVar != null) {
                return aVar.a();
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPlayOffset() {
            return b.this.b.t();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return b.this.getCurrentPositionMs();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i, String str) {
            if (b.this.f != null) {
                return b.this.f.b(i, str);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return "";
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i, String str) {
            if (b.this.f != null) {
                return b.this.f.a(i, str);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return -1;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j) {
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            com.tencent.thumbplayer.adapter.a aVar = b.this.b;
            if (aVar != null) {
                return aVar.o() - b.this.b.n();
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            b.this.t.c("onDownloadCdnUrlExpired");
            b.this.a(275, 0, 0, (Object) map);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.c("onDownloadCdnUrlInfoUpdate, url:" + str + ", cdnIp:" + str2 + ", uip:" + str3 + ", errorCodeStr:" + str4);
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            b.this.a(201, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a(ImagesContract.URL, str).a("cdnip", str2).a("cdnuip", str3).a());
            b.this.a(270, 0, 0, (Object) tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.c("onDownloadCdnUrlUpdate, url:" + str);
            b.this.a(269, 0, 0, (Object) str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i, int i2, String str) {
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.c("onDownloadError, moduleID:" + i + ", errorCode:" + i2 + ", extInfo:" + str);
            b.this.a(i, i2);
            b.this.a(268, i, i2, (Object) str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            b.this.t.c("onDownloadFinish");
            b.this.a(271, 0, 0, (Object) 0);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            b.this.t.c("onDownloadProgressUpdate");
            long j3 = (long) i;
            b.this.q = j3;
            b.this.r = j;
            b.this.s = j2;
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = j3;
            tPDownLoadProgressInfo.downloadSpeedKBps = i2;
            tPDownLoadProgressInfo.currentDownloadSize = j;
            tPDownLoadProgressInfo.totalFileSize = j2;
            tPDownLoadProgressInfo.extraInfo = str;
            b.this.a(200, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("speed", Integer.valueOf(i2)).a("spanId", str).a());
            b.this.a((int) TiffUtil.TIFF_TAG_ORIENTATION, 0, 0, (Object) tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            com.tencent.thumbplayer.f.a aVar = b.this.t;
            aVar.c("onDownloadProtocolUpdate, protocol:" + str + ", protocolVer:" + str2);
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            b.this.a(202, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("proto", str).a("protover", str2).a());
            b.this.a((int) com.umeng.commonsdk.stateless.b.a, 0, 0, (Object) tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i) {
            if (i != b.this.o) {
                com.tencent.thumbplayer.f.a aVar = b.this.t;
                aVar.c("onDownloadStatusUpdate, status:" + i);
                b.this.o = i;
            }
            b.this.a(272, i, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            if (i == 1) {
                b.this.t.c("onDownloadNoMoreData");
                b.this.a(276, 0, 0, obj);
            } else if (i == 2) {
                if (!(obj3 instanceof Integer)) {
                    b.this.t.c("MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION, err ext3.");
                } else {
                    b.this.a(278, ((Integer) obj3).intValue(), 0, (Object) null);
                }
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i, String str, long j, long j2) {
            if (b.this.f != null) {
                return b.this.f.b(i, str, j, j2);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return -1;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i, String str, long j, long j2) {
            if (b.this.f != null) {
                return b.this.f.a(i, str, j, j2);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return -1;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i, String str, int i2) {
            if (b.this.f != null) {
                return b.this.f.a(i, str, i2);
            }
            b.this.t.e("mAssetResourceLoader not set");
            return -1;
        }
    }

    static {
        D.put(106, 1005);
        D.put(105, 1006);
    }

    public b(Context context) {
        this(context, null);
    }

    public b(Context context, Looper looper) {
        this(context, looper, null);
    }

    public b(Context context, Looper looper, Looper looper2) {
        this(context, looper, looper2, null);
    }

    public b(Context context, Looper looper, Looper looper2, com.tencent.thumbplayer.f.b bVar) {
        com.tencent.thumbplayer.f.b bVar2;
        this.l = null;
        this.m = true;
        this.n = false;
        this.o = -1;
        this.v = new AtomicInteger(1000);
        this.w = false;
        this.x = new com.tencent.thumbplayer.e.c();
        this.y = null;
        this.z = new HashMap();
        this.A = 0;
        if (bVar != null) {
            bVar2 = new com.tencent.thumbplayer.f.b(bVar, "TPPlayer");
        } else {
            bVar2 = new com.tencent.thumbplayer.f.b("ThumbPlayer", String.valueOf(u.incrementAndGet()), String.valueOf(this.v.incrementAndGet()), "TPPlayer");
            this.w = true;
        }
        this.t = new com.tencent.thumbplayer.f.a(bVar2);
        this.t.c("create TPPlayer");
        this.k = context.getApplicationContext();
        this.g = new com.tencent.thumbplayer.tplayer.plugins.c();
        this.e = new com.tencent.thumbplayer.tplayer.plugins.report.b(this.k);
        this.g.a(this.e);
        a(100, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        C0048b bVar3 = new C0048b();
        this.c = new c(this.t.b());
        this.b = new d(this.k, bVar2);
        this.b.a((c.i) bVar3);
        this.b.a((c.AbstractC0037c) bVar3);
        this.b.a((c.h) bVar3);
        this.b.a((c.p) bVar3);
        this.b.a((c.f) bVar3);
        this.b.a((c.j) bVar3);
        this.b.a((c.p) bVar3);
        this.b.a((c.l) bVar3);
        this.b.a((c.m) bVar3);
        this.b.a((c.a) bVar3);
        this.b.a((c.n) bVar3);
        this.b.a((c.o) bVar3);
        this.b.a((c.b) bVar3);
        this.b.a((c.k) bVar3);
        this.b.a((c.e) bVar3);
        this.b.a((c.d) bVar3);
        this.b.a((c.g) bVar3);
        if (looper == null || looper == Looper.getMainLooper()) {
            this.h = o.a().a("TP-workthread");
            looper = this.h.getLooper();
        }
        this.i = looper;
        this.j = looper2 == null ? Looper.myLooper() == null ? new a(this, this.i) : new a(this) : new a(this, looper2);
        a(101, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        this.d = new com.tencent.thumbplayer.d.c(context, this.i);
        this.d.a(bVar3);
        this.g.a(new com.tencent.thumbplayer.tplayer.plugins.report.c());
        this.g.a(new com.tencent.thumbplayer.tplayer.plugins.report.a());
        this.p = new ArrayList<>();
    }

    private int a(String str) {
        if (this.d.a()) {
            return 5;
        }
        return r.a(str);
    }

    private long a(long j, String str) {
        this.z.put(Long.valueOf(this.A), Long.valueOf(j));
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(str + ", convert opaque(" + j + ") => uniqueId(" + this.A + ")");
        long j2 = this.A;
        this.A = 1 + j2;
        return j2;
    }

    private TPVideoInfo a(TPVideoInfo tPVideoInfo, int i, int i2) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c("updateStartAndSkipEndTimeMsForDownloadParam, startTimeMs:" + i + ", skipEndTimeMs:" + i2);
        if (tPVideoInfo == null) {
            return new TPVideoInfo.Builder().downloadParam(b(i, i2)).build();
        }
        ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
        if (downloadPraramList == null || downloadPraramList.isEmpty()) {
            tPVideoInfo.getBuilder().downloadParam(b(i, i2)).build();
            return tPVideoInfo;
        }
        Iterator<TPDownloadParamData> it = downloadPraramList.iterator();
        while (it.hasNext()) {
            TPDownloadParamData next = it.next();
            next.setStarTimeMS(i);
            next.setEndTimeMS(i2);
        }
        return tPVideoInfo;
    }

    private void a(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i) {
        a aVar = this.j;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = 1256;
            obtainMessage.obj = new TPPlayerDetailInfo(i);
            this.j.sendMessage(obtainMessage);
        }
    }

    public void a(int i, int i2) {
        com.tencent.thumbplayer.utils.g a2 = new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 3);
        a(108, i, i2, "", a2.a(Constant.PARAM_ERROR_CODE, i + "." + i2).a());
        this.d.a(3);
        this.d.h();
    }

    public void a(int i, int i2, int i3, Object obj) {
        a aVar = this.j;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.j.sendMessage(obtainMessage);
        }
    }

    public void a(int i, int i2, int i3, String str, Object obj) {
        try {
            if (this.g != null) {
                this.g.a(i, i2, i3, str, obj);
            }
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    public void a(int i, long j, long j2, Object obj) {
        int i2;
        int i3;
        int i4;
        String str;
        com.tencent.thumbplayer.utils.g gVar;
        com.tencent.thumbplayer.utils.g a2;
        com.tencent.thumbplayer.utils.g a3;
        com.tencent.thumbplayer.utils.g gVar2;
        b bVar;
        Map a4;
        if (i == 200) {
            this.d.a(4);
            i2 = 114;
            i3 = 0;
            i4 = 0;
            str = null;
            a3 = new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("ptime", Long.valueOf(getCurrentPositionMs())).a(ImagesContract.URL, this.l);
        } else {
            if (i == 201) {
                e();
                i2 = 115;
                i3 = 0;
                i4 = 0;
                str = null;
                gVar2 = new com.tencent.thumbplayer.utils.g();
            } else if (i == 3) {
                long j3 = -1;
                if (obj instanceof Long) {
                    j3 = ((Long) obj).longValue();
                }
                com.tencent.thumbplayer.f.a aVar = this.t;
                aVar.c("switch definition finish defId:" + j3);
                if (j3 > 0) {
                    this.d.a(j3);
                }
                i2 = 121;
                i3 = 0;
                i4 = 0;
                str = null;
                com.tencent.thumbplayer.utils.g gVar3 = new com.tencent.thumbplayer.utils.g();
                a4 = gVar3.a("switch", j3 + "").a();
                bVar = this;
                bVar.a(i2, i3, i4, str, a4);
            } else if (i == 106) {
                i2 = 105;
                i3 = 0;
                i4 = 0;
                str = null;
                gVar2 = new com.tencent.thumbplayer.utils.g();
            } else if (i == 501) {
                a(117, 0, 0, (String) null, obj);
                return;
            } else {
                if (i == 107) {
                    i2 = 119;
                    i3 = 0;
                    i4 = 0;
                    str = null;
                    gVar = new com.tencent.thumbplayer.utils.g();
                } else if (i == 4) {
                    i2 = 123;
                    i3 = 0;
                    i4 = 0;
                    str = null;
                    com.tencent.thumbplayer.utils.g a5 = new com.tencent.thumbplayer.utils.g().a("opaque", obj).a("etime", Long.valueOf(System.currentTimeMillis()));
                    a2 = a5.a(Constant.PARAM_ERROR_CODE, j + "." + j2);
                    a4 = a2.a();
                    bVar = this;
                    bVar.a(i2, i3, i4, str, a4);
                } else if (i == 101) {
                    i2 = 124;
                    i3 = 0;
                    i4 = 0;
                    str = null;
                    gVar = new com.tencent.thumbplayer.utils.g();
                } else if (i == 505 && (obj instanceof TPPlayerMsg.TPMediaDrmInfo)) {
                    TPPlayerMsg.TPMediaDrmInfo tPMediaDrmInfo = (TPPlayerMsg.TPMediaDrmInfo) obj;
                    com.tencent.thumbplayer.f.a aVar2 = this.t;
                    aVar2.c("TPMediaDrmInfo secureDecoder:" + tPMediaDrmInfo.supportSecureDecoder + " secureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName:" + tPMediaDrmInfo.componentName + " drmType:" + tPMediaDrmInfo.drmType);
                    return;
                } else {
                    return;
                }
                a3 = gVar.a("stime", Long.valueOf(System.currentTimeMillis()));
            }
            a2 = gVar2.a("etime", Long.valueOf(System.currentTimeMillis()));
            a4 = a2.a();
            bVar = this;
            bVar.a(i2, i3, i4, str, a4);
        }
        a4 = a3.a();
        bVar = this;
        bVar.a(i2, i3, i4, str, a4);
    }

    public void a(Message message) {
        if (message.obj instanceof TPPlayerDetailInfo) {
            a((TPPlayerDetailInfo) message.obj);
        }
    }

    private void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam != null) {
            if (tPOptionalParam.getKey() == 205) {
                this.m = tPOptionalParam.getParamBoolean().value;
                com.tencent.thumbplayer.f.a aVar = this.t;
                aVar.c("setPlayerOptionalParam, use p2p proxy, OPTION_ID_BEFORE_BOOLEAN_USE_PROXY=" + this.m);
            } else if (tPOptionalParam.getKey() == 508) {
                this.n = tPOptionalParam.getParamBoolean().value;
            } else if (tPOptionalParam.getKey() == 100) {
                this.B = (int) tPOptionalParam.getParamLong().value;
            } else if (tPOptionalParam.getKey() == 500) {
                this.C = (int) tPOptionalParam.getParamLong().value;
            }
        }
    }

    private void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onDetailInfo(this, tPPlayerDetailInfo);
        }
    }

    public void a(Object obj) {
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!d()) {
                this.t.e("handleSelectAudioTrack, proxy is not enable");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c("handleSelectAudioTrack, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
            if (!TextUtils.isEmpty(tPAudioTrackInfo.audioTrackUrl)) {
                TPDownloadParamData tPDownloadParamData = null;
                Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TPOptionalParam next = it.next();
                    if (next.getKey() == 0) {
                        tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                        break;
                    }
                }
                this.d.a(tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData != null ? tPDownloadParamData.getAudioTrackKeyId() : "");
                return;
            }
            try {
                this.d.b();
            } catch (Exception e) {
                this.t.a(e);
            }
        }
    }

    public long b(long j, String str) {
        if (!this.z.containsKey(Long.valueOf(j))) {
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.e(str + ", invalid uniqueId");
            return -1;
        }
        long longValue = this.z.get(Long.valueOf(j)).longValue();
        com.tencent.thumbplayer.f.a aVar2 = this.t;
        aVar2.c(str + ", convert uniqueId(" + j + ") => opaque(" + longValue + ")");
        return longValue;
    }

    private TPDownloadParamData b(int i, int i2) {
        TPDownloadParamData tPDownloadParamData = new TPDownloadParamData(0);
        tPDownloadParamData.setStarTimeMS(i);
        tPDownloadParamData.setEndTimeMS(i2);
        return tPDownloadParamData;
    }

    public void b(int i) {
        int i2 = D.get(i, -1);
        if (i2 != -1) {
            c(i2);
        }
    }

    public void b(Object obj) {
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!d()) {
                this.t.c("handleAudioTrackProxy, proxy not enable and use orinal url");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            TPDownloadParamData tPDownloadParamData = null;
            Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TPOptionalParam next = it.next();
                if (next.getKey() == 0) {
                    tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                    break;
                }
            }
            String a2 = this.d.a(2, tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData);
            this.p.add(a2);
            tPAudioTrackInfo.proxyUrl = a2;
        }
    }

    private void c() {
        this.b.j();
        a(107, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.d.a(5);
        this.d.h();
        this.q = -1;
        this.r = -1;
        this.s = -1;
    }

    public void c(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i) {
        a(new TPPlayerDetailInfo(i));
    }

    private boolean d() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c("isUseProxyEnable, mPlayProxyManager.isEnable()=" + this.d.f() + " TPPlayerConfig.isUseP2P()=" + TPPlayerConfig.isUseP2P() + " mUseProxy=" + this.m);
        return this.d.f() && TPPlayerConfig.isUseP2P() && this.m;
    }

    public void e() {
        this.d.a(this.b.c() ? 0 : 5);
    }

    private void f() {
        f.a aVar = new f.a();
        aVar.a = d() ? 1 : 0;
        a(261, 1009, 0, (Object) aVar);
    }

    private boolean g() {
        int b = this.b.b();
        return b == 4 || b == 5 || b == 6 || b == 7;
    }

    public Looper a() {
        return this.i;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "addAudioTrackSource, url:" + str + ", name:" + str2);
        addAudioTrackSource(str, str2, null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2, TPDownloadParamData tPDownloadParamData) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "addAudioTrackSource, url:" + str + ", name:" + str2 + ", downloadParamData:" + tPDownloadParamData);
        if (TextUtils.isEmpty(str2) || !com.tencent.thumbplayer.utils.b.b(str)) {
            this.t.e("handleAddAudioSource, illegal argument.");
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            TPOptionalParam tPOptionalParam = new TPOptionalParam();
            if (tPDownloadParamData != null) {
                tPOptionalParam.buildObject(0, tPDownloadParamData);
            }
            arrayList.add(tPOptionalParam);
            this.b.a(str, str2, arrayList);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void addSubtitleSource(String str, String str2, String str3) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "addSubtitleSource, url:" + str + ", mimeType:" + str2 + ", name:" + str3);
        addSubtitleSource(str, str2, str3, null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void addSubtitleSource(String str, String str2, String str3, TPDownloadParamData tPDownloadParamData) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "addSubtitleSource, url:" + str + ", name:" + str3 + ", downloadParamData:" + tPDownloadParamData);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (!d() || !com.tencent.thumbplayer.utils.b.b(str)) {
                this.b.a(str, str2, str3);
            } else {
                String a2 = this.d.a(3, str, tPDownloadParamData);
                this.p.add(a2);
                this.b.a(a2, str2, str3);
            }
            a(118, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(currentTimeMillis)).a("etime", Long.valueOf(System.currentTimeMillis())).a(ImagesContract.URL, str).a("name", str3).a());
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    public String b() {
        return this.t.b();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void captureVideo(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "captureVideo, params:" + tPCaptureParams + ", captureCallBack:" + tPCaptureCallBack);
        try {
            this.b.a(tPCaptureParams, tPCaptureCallBack);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void deselectTrack(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "deselectTrack, trackIndex:" + i + ", opaque:" + j);
        try {
            this.b.b(i, j);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void enableTPAssetResourceLoader(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener, Looper looper) {
        if (iTPAssetResourceLoaderListener != null) {
            this.d.a(true);
            com.tencent.thumbplayer.d.a.a aVar = this.f;
            if (aVar != null) {
                aVar.c();
                this.f = null;
            }
            this.f = new com.tencent.thumbplayer.d.a.b(this.k, looper);
            this.f.a(iTPAssetResourceLoaderListener);
            this.f.a();
            return;
        }
        this.d.a(false);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getBufferPercent() {
        if (this.b.m() == 0) {
            return 0;
        }
        return (int) ((((float) (this.b.o() - this.b.n())) * 100.0f) / ((float) this.b.m()));
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getCurrentPositionMs() {
        return this.b.n();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getCurrentState() {
        return this.b.b();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getDurationMs() {
        return this.b.m();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPExtendReportController getExtendReportController() {
        return this.y;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getPlayableDurationMs() {
        if (!d()) {
            return this.b.o();
        }
        long j = this.r;
        if (j > 0) {
            long j2 = this.s;
            if (j2 > 0) {
                return (long) (((((double) j) * 1.0d) / ((double) j2)) * ((double) this.b.m()));
            }
        }
        return this.q;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPPlayerProxy getPlayerProxy() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getPlayerType() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getPlayerType");
        return this.b.d();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public TPProgramInfo[] getProgramInfo() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getProgramInfo");
        return this.b.s();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getPropertyLong(int i) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getPropertyLong, paramId:" + i);
        return this.b.b(i);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public String getPropertyString(int i) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getPropertyString, paramId:" + i);
        return this.b.c(i);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPBusinessReportManager getReportManager() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public TPTrackInfo[] getTrackInfo() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getTrackInfo");
        return this.b.r();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getVideoHeight() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getVideoHeight");
        return this.b.q();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getVideoWidth() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "getVideoWidth");
        return this.b.p();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void pause() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "pause");
        this.b.i();
        try {
            a(106, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            this.d.a(5);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void pauseDownload() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "pauseDownload");
        try {
            this.b.a(new TPOptionalParam().buildLong(502, 0));
        } catch (Exception e) {
            this.t.a(e);
        }
        this.d.h();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void prepareAsync() {
        a(1003);
        this.t.c(a + "prepareAsync");
        String str = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        try {
            this.d.i();
            this.b.g();
        } catch (RuntimeException e) {
            this.t.a(e);
        }
        try {
            a(102, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a(ImagesContract.URL, this.l).a("p2p", Boolean.valueOf(d())).a("flowid", str).a());
            f();
        } catch (Exception e2) {
            this.t.a(e2);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void release() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "release");
        this.b.l();
        a(112, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.c.a();
        this.d.e();
        this.p.clear();
        com.tencent.thumbplayer.d.a.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.c();
            this.f = null;
        }
        this.q = -1;
        this.r = -1;
        this.s = -1;
        o.a().a(this.h, this.j);
        this.h = null;
        this.j = null;
        this.g.c();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void reset() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "reset");
        if (this.w) {
            this.t.a(String.valueOf(this.v.incrementAndGet()));
            this.b.a(this.t.a());
            this.c.a(this.t.a().a());
        }
        this.b.k();
        a(113, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.d.d();
        this.o = -1;
        this.p.clear();
        com.tencent.thumbplayer.d.a.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.b();
        }
        a aVar3 = this.j;
        if (aVar3 != null) {
            aVar3.removeCallbacksAndMessages(null);
        }
        this.q = -1;
        this.r = -1;
        this.s = -1;
        this.m = true;
        this.n = false;
        this.B = 0;
        this.C = 0;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void resumeDownload() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "resumeDownload");
        this.d.i();
        try {
            this.b.a(new TPOptionalParam().buildLong(502, 1));
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void seekTo(int i) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "seekTo, positionMs:" + i);
        this.b.a(i);
        this.d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void seekTo(int i, int i2) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "seekTo, positionMs:" + i + ", mode:" + i2);
        if (i2 > 0) {
            this.b.a(i, i2);
        } else {
            this.b.a(i);
        }
        this.d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void selectProgram(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "selectProgram, programIndex:" + i + ", opaque:" + j);
        try {
            this.b.c(i, j);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void selectTrack(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "selectTrack, trackIndex:" + i + ", opaque:" + j);
        try {
            long a2 = a(j, "selectTrack");
            TPTrackInfo[] r = this.b.r();
            if (r != null && r.length > i) {
                a(122, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("opaque", Long.valueOf(a2)).a("tracktype", Integer.valueOf(r[i].getTrackType())).a("name", r[i].getName()).a("stime", Long.valueOf(System.currentTimeMillis())).a());
            }
            this.b.a(i, a2);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setAudioGainRatio(float f) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setAudioGainRatio, gainRatio:" + f);
        try {
            this.b.a(f);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setAudioNormalizeVolumeParams(String str) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setAudioNormalizeVolumeParams, audioNormalizeVolumeParams:" + str);
        try {
            this.b.a(str);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        } else if (this.b.b() == 1) {
            this.x.a(new b.a().a(119).a("", 4, false).a());
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "setDataSource, AssetFileDescriptor");
            try {
                this.b.a(assetFileDescriptor);
            } catch (IOException | SecurityException e) {
                this.t.a(e);
            }
        } else {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        } else if (this.b.b() == 1) {
            this.x.a(new b.a().a(119).a("", 4, false).a());
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "setDataSource, ParcelFileDescriptor");
            try {
                this.b.a(parcelFileDescriptor);
            } catch (IOException | SecurityException e) {
                this.t.a(e);
            }
        } else {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r0.getDrmAllProperties().isEmpty() == false) goto L_0x002c;
     */
    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @com.tencent.thumbplayer.utils.n.b
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void setDataSource(com.tencent.thumbplayer.api.composition.ITPMediaAsset r7) {
        /*
            r6 = this;
            if (r7 == 0) goto L_0x00ea
            boolean r0 = r7 instanceof com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
            if (r0 == 0) goto L_0x002c
            java.lang.String r0 = r7.getUrl()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0024
            r0 = r7
            com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset r0 = (com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset) r0
            java.util.Map r1 = r0.getDrmAllProperties()
            if (r1 == 0) goto L_0x0024
            java.util.Map r0 = r0.getDrmAllProperties()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0024
            goto L_0x002c
        L_0x0024:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "error : setDataSource , drm asset url is null or drm property is null"
            r7.<init>(r0)
            throw r7
        L_0x002c:
            com.tencent.thumbplayer.adapter.a r0 = r6.b
            int r0 = r0.b()
            r1 = 1
            if (r0 != r1) goto L_0x00cd
            com.tencent.thumbplayer.e.c r0 = r6.x
            com.tencent.thumbplayer.e.b$a r2 = new com.tencent.thumbplayer.e.b$a
            r2.<init>()
            r3 = 119(0x77, float:1.67E-43)
            com.tencent.thumbplayer.e.b$a r2 = r2.a(r3)
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            java.lang.String r5 = r7.getUrl()
            r3[r4] = r5
            java.lang.String r4 = r7.getUrl()
            int r4 = r6.a(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            r1 = 2
            boolean r4 = r6.d()
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            r3[r1] = r4
            com.tencent.thumbplayer.e.b$a r1 = r2.a(r3)
            com.tencent.thumbplayer.e.b r1 = r1.a()
            r0.a(r1)
            r0 = 1000(0x3e8, float:1.401E-42)
            r6.a(r0)
            com.tencent.thumbplayer.f.a r0 = r6.t
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = com.tencent.thumbplayer.tplayer.b.a
            r1.append(r2)
            java.lang.String r2 = "setDataSource, ITPMediaAsset"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.c(r1)
            java.lang.String r0 = r7.getUrl()
            r6.l = r0
            boolean r0 = r6.d()
            if (r0 == 0) goto L_0x009f
            com.tencent.thumbplayer.d.a r0 = r6.d
            com.tencent.thumbplayer.api.composition.ITPMediaAsset r7 = r0.a(r7)
        L_0x009f:
            com.tencent.thumbplayer.f.a r0 = r6.t
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handleSetDataSource mediaAsset="
            r1.append(r2)
            java.lang.String r2 = r7.getUrl()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.c(r1)
            com.tencent.thumbplayer.adapter.a r0 = r6.b     // Catch: IOException -> 0x00c1, SecurityException -> 0x00bf
            r0.a(r7)     // Catch: IOException -> 0x00c1, SecurityException -> 0x00bf
            goto L_0x00c7
        L_0x00bf:
            r7 = move-exception
            goto L_0x00c2
        L_0x00c1:
            r7 = move-exception
        L_0x00c2:
            com.tencent.thumbplayer.f.a r0 = r6.t
            r0.a(r7)
        L_0x00c7:
            r7 = 1001(0x3e9, float:1.403E-42)
            r6.a(r7)
            return
        L_0x00cd:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "error : setDataSource , state invalid. current state:"
            r0.append(r1)
            com.tencent.thumbplayer.adapter.a r1 = r6.b
            int r1 = r1.b()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        L_0x00ea:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "error : setDataSource , param is null"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tplayer.b.setDataSource(com.tencent.thumbplayer.api.composition.ITPMediaAsset):void");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        } else if (this.b.b() == 1) {
            this.x.a(new b.a().a(119).a(str, Integer.valueOf(a(str)), Boolean.valueOf(d())).a());
            a(1000);
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "setDataSource, url:" + str);
            this.l = str;
            e eVar = new e(str);
            com.tencent.thumbplayer.f.a aVar2 = this.t;
            aVar2.c("handleSetDataSource originalUrl=" + str);
            if (d()) {
                eVar = this.d.a(str, (Map<String, String>) null);
                updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
                com.tencent.thumbplayer.f.a aVar3 = this.t;
                aVar3.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
                com.tencent.thumbplayer.f.a aVar4 = this.t;
                aVar4.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
            }
            this.b.a(eVar);
            a(1001);
        } else {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        } else if (this.b.b() == 1) {
            this.x.a(new b.a().a(119).a(str, Integer.valueOf(a(str)), Boolean.valueOf(d())).a());
            a(1000);
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "setDataSource, url:" + str + ", httpHeader:" + map);
            this.l = str;
            e eVar = new e(str);
            com.tencent.thumbplayer.f.a aVar2 = this.t;
            aVar2.c("handleSetDataSource originalUrl=" + str);
            if (d()) {
                eVar = this.d.a(str, map);
                updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
                com.tencent.thumbplayer.f.a aVar3 = this.t;
                aVar3.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
                com.tencent.thumbplayer.f.a aVar4 = this.t;
                aVar4.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
            }
            this.b.a(eVar, map);
            a(1001);
        } else {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setLoopback, isLoopback:" + z);
        try {
            this.b.b(z);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z, long j, long j2) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setLoopback, isLoopback:" + z + ", loopStartPositionMs:" + j + ", loopEndPositionMs:" + j2);
        try {
            this.b.a(z, j, j2);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnAudioFrameOutputListener(ITPPlayerListener.IOnAudioFrameOutputListener iOnAudioFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnAudioFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnAudioProcessFrameOutputListener(ITPPlayerListener.IOnAudioProcessFrameOutputListener iOnAudioProcessFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnAudioProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnCompletionListener(ITPPlayerListener.IOnCompletionListener iOnCompletionListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnCompletionListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnDemuxerListener(ITPPlayerListener.IOnDemuxerListener iOnDemuxerListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnDemuxerListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnDetailInfoListener(ITPPlayerListener.IOnDetailInfoListener iOnDetailInfoListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnDetailInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnErrorListener(ITPPlayerListener.IOnErrorListener iOnErrorListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnErrorListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnEventRecordListener(ITPPlayerListener.IOnEventRecordListener iOnEventRecordListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnEventRecordListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnInfoListener(ITPPlayerListener.IOnInfoListener iOnInfoListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnPlayerStateChangeListener(ITPPlayerListener.IOnStateChangeListener iOnStateChangeListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnStateChangeListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnPreparedListener(ITPPlayerListener.IOnPreparedListener iOnPreparedListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnPreparedListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSeekCompleteListener(ITPPlayerListener.IOnSeekCompleteListener iOnSeekCompleteListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSeekCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnStopAsyncCompleteListener(ITPPlayerListener.IOnStopAsyncCompleteListener iOnStopAsyncCompleteListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnStopAsyncCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSubtitleDataListener(ITPPlayerListener.IOnSubtitleDataListener iOnSubtitleDataListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSubtitleDataListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSubtitleFrameOutListener(ITPPlayerListener.IOnSubtitleFrameOutListener iOnSubtitleFrameOutListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSubtitleFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoFrameOutListener(ITPPlayerListener.IOnVideoFrameOutListener iOnVideoFrameOutListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoProcessFrameOutputListener(ITPPlayerListener.IOnVideoProcessFrameOutputListener iOnVideoProcessFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoSizeChangedListener(ITPPlayerListener.IOnVideoSizeChangedListener iOnVideoSizeChangedListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoSizeChangedListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setOutputMute(boolean z) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setOutputMute, isOutputMute:" + z);
        try {
            this.b.a(z);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setPlaySpeedRatio(float f) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setPlaySpeedRatio, speedRatio:" + f);
        try {
            this.b.b(f);
        } catch (Exception e) {
            this.t.a(e);
        }
        a(116, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("scene", Float.valueOf(f)).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void setPlayerOptionalParam(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam.getParamType() != 7 || j.a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject().objectValue)) {
            a(tPOptionalParam);
            this.d.a(tPOptionalParam);
            try {
                this.b.a(tPOptionalParam);
            } catch (Exception e) {
                this.t.a(e);
            }
        } else {
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.d("set object param failed, optional id:" + tPOptionalParam.getKey());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setRichMediaSynchronizer(ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        this.b.a(iTPRichMediaSynchronizer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setSurface(Surface surface) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setSurface, surface:" + surface);
        try {
            this.b.a(surface);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setSurfaceHolder, SurfaceHolder:" + surfaceHolder);
        try {
            this.b.a(surfaceHolder);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setTPSurface(ITPSurface iTPSurface) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "setTPSurface, tpSurface:" + iTPSurface);
        try {
            if (iTPSurface instanceof e) {
                this.b.a(((e) iTPSurface).a());
            }
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void setVideoInfo(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo != null) {
            try {
                a(tPVideoInfo, this.B, this.C);
                this.d.a(tPVideoInfo);
                this.b.a(tPVideoInfo);
            } catch (Exception e) {
                this.t.a(e);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void start() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + TtmlNode.START);
        this.b.h();
        try {
            a(104, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            this.d.a(0);
        } catch (Exception e) {
            this.t.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void stop() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + NotificationAction.ACTION_STOP);
        c();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void stopAsync() {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "stopAsync");
        c();
        a(280, 0, 0, (Object) null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j + ", videoInfo:" + tPVideoInfo);
        switchDefinition(iTPMediaAsset, j, tPVideoInfo, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo, int i) {
        if (g()) {
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j + ", videoInfo:" + tPVideoInfo + ", mode:" + i);
            TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
            if (d()) {
                iTPMediaAsset = this.d.a(iTPMediaAsset, j, a2);
            }
            if (iTPMediaAsset != null) {
                com.tencent.thumbplayer.f.a aVar2 = this.t;
                aVar2.c("handleSwitchDef, proxyMediaAsset:" + iTPMediaAsset + ", defID:" + j);
                this.b.b(a2);
                this.b.a(iTPMediaAsset, 0, j);
                com.tencent.thumbplayer.utils.g gVar = new com.tencent.thumbplayer.utils.g();
                a(120, 0, 0, (String) null, gVar.a("switch", j + "").a());
                return;
            }
            return;
        }
        throw new IllegalStateException("error : switchDefinition , state invalid");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "switchDefinition, defUrl:" + str + ", defID:" + j);
        switchDefinition(str, j, tPVideoInfo, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, int i) {
        if (g()) {
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", mode:" + i);
            TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
            e eVar = new e(str);
            if (d()) {
                eVar = this.d.a(j, str, a2, null);
                com.tencent.thumbplayer.f.a aVar2 = this.t;
                aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
                com.tencent.thumbplayer.f.a aVar3 = this.t;
                aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
            }
            com.tencent.thumbplayer.f.a aVar4 = this.t;
            aVar4.c("switchDefinition, proxyUrl:" + str + ", defID:" + j);
            this.b.b(a2);
            this.b.a(eVar, i, j);
            com.tencent.thumbplayer.utils.g gVar = new com.tencent.thumbplayer.utils.g();
            a(120, 0, 0, (String) null, gVar.a("switch", j + "").a());
            return;
        }
        throw new IllegalStateException("error : switchDefinition , state invalid");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        com.tencent.thumbplayer.f.a aVar = this.t;
        aVar.c(a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", videoInfo:" + tPVideoInfo + ", httpHeader:" + map);
        switchDefinition(str, j, tPVideoInfo, map, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, Map<String, String> map, int i) {
        if (g()) {
            com.tencent.thumbplayer.f.a aVar = this.t;
            aVar.c(a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", httpHeader:" + map + ", mode:" + i);
            TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
            e eVar = new e(str);
            if (d()) {
                eVar = this.d.a(j, str, a2, map);
                com.tencent.thumbplayer.f.a aVar2 = this.t;
                aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
                com.tencent.thumbplayer.f.a aVar3 = this.t;
                aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
            }
            com.tencent.thumbplayer.f.a aVar4 = this.t;
            aVar4.c("switchDefinition, proxyUrl:" + str + ", defID:" + j + ", httpHeader:" + map);
            this.b.b(a2);
            this.b.a(eVar, map, i, j);
            com.tencent.thumbplayer.utils.g gVar = new com.tencent.thumbplayer.utils.g();
            StringBuilder sb = new StringBuilder();
            sb.append(j);
            sb.append("");
            a(120, 0, 0, (String) null, gVar.a("switch", sb.toString()).a());
            return;
        }
        throw new IllegalStateException("error : switchDefinition , state invalid");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void updateLoggerContext(com.tencent.thumbplayer.f.b bVar) {
        if (bVar != null) {
            this.w = false;
            this.t.a(new com.tencent.thumbplayer.f.b(bVar, "TPPlayer"));
            this.b.a(this.t.a());
            this.c.a(this.t.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void updateTaskInfo(String str, Object obj) {
        com.tencent.thumbplayer.d.a aVar = this.d;
        if (aVar != null) {
            aVar.a(str, obj);
        }
    }
}
