package com.tencent.thumbplayer.d;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.c.h;
import com.tencent.thumbplayer.c.j;
import com.tencent.thumbplayer.c.l;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.i;
import com.tencent.thumbplayer.utils.m;
import com.umeng.analytics.pro.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class c implements a, f.a, i.b {
    private static int g = -1;
    private Context a;
    private a b;
    private ITPDownloadProxy c;
    private String j;
    private int k;
    private TPVideoInfo l;
    private String m;
    private LinkedList<C0041c> o;
    private long q;
    private long r;
    private int d = 0;
    private int h = g;
    private ITPPlayerProxyListener n = null;
    private boolean s = false;
    private boolean t = true;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private b e = new b();
    private ITPPlayListener f = new d("TPThumbPlayer[TPPlayManagerImpl.java]");
    private HashMap<String, Integer> p = new HashMap<>();
    private ArrayList<TPDownloadParamData> i = new ArrayList<>();
    private m x = new m();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar;
            Object obj;
            if (c.this.f == null) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "handleMessage failed, mPlayListener is null and return");
                return;
            }
            int i = message.what;
            if (i == 4196) {
                c.this.g(message.arg1);
            } else if (i != 4197) {
                switch (i) {
                    case 4097:
                        c.this.f.onDownloadFinish();
                        return;
                    case 4098:
                        c.this.f.onDownloadError(message.arg1, message.arg2, (String) message.obj);
                        return;
                    case 4099:
                        c.this.f.onDownloadCdnUrlUpdate((String) message.obj);
                        return;
                    case n.a.d /* 4100 */:
                        TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) message.obj;
                        c.this.f.onDownloadCdnUrlInfoUpdate(tPCDNURLInfo.url, tPCDNURLInfo.cdnIp, tPCDNURLInfo.uIp, tPCDNURLInfo.errorStr);
                        return;
                    case n.a.e /* 4101 */:
                        c.this.f.onDownloadStatusUpdate(message.arg1);
                        return;
                    case n.a.f /* 4102 */:
                        TPPlayerMsg.TPProtocolInfo tPProtocolInfo = (TPPlayerMsg.TPProtocolInfo) message.obj;
                        c.this.f.onDownloadProtocolUpdate(tPProtocolInfo.protocolName, tPProtocolInfo.protocolVersion);
                        return;
                    case n.a.g /* 4103 */:
                        c.this.f.onDownloadCdnUrlExpired((Map) message.obj);
                        return;
                    case n.a.h /* 4104 */:
                        eVar = (e) message.obj;
                        f fVar = (f) eVar.a;
                        obj = c.this.f.onPlayCallback(fVar.a, fVar.b, fVar.c, fVar.d, fVar.e);
                        break;
                    case n.a.i /* 4105 */:
                        eVar = (e) message.obj;
                        obj = c.this.f.getPlayInfo(((Long) eVar.a).longValue());
                        break;
                    case n.a.j /* 4106 */:
                        TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) message.obj;
                        c.this.f.onDownloadProgressUpdate((int) tPDownLoadProgressInfo.playableDurationMS, tPDownLoadProgressInfo.downloadSpeedKBps, tPDownLoadProgressInfo.currentDownloadSize, tPDownLoadProgressInfo.totalFileSize, tPDownLoadProgressInfo.extraInfo);
                        return;
                    case 4107:
                        eVar = (e) message.obj;
                        obj = c.this.f.getPlayInfo((String) eVar.a);
                        break;
                    default:
                        return;
                }
                eVar.b.a(obj);
            } else {
                c.this.h(message.arg1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements ITPPlayListener {
        private b() {
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            return c.this.f.getAdvRemainTime();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i, String str) {
            return c.this.f.getContentType(i, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            return c.this.f.getCurrentPlayClipNo();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPlayOffset() {
            return c.this.f.getCurrentPlayOffset();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return c.this.f.getCurrentPosition();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i, String str) {
            return c.this.f.getDataFilePath(i, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i, String str) {
            return c.this.f.getDataTotalSize(i, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j) {
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            e eVar2 = new e();
            eVar2.a = Long.valueOf(j);
            eVar2.b = eVar;
            c.this.a((int) n.a.i, eVar2);
            return c.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            e eVar2 = new e();
            eVar2.a = str;
            eVar2.b = eVar;
            c.this.a(4107, eVar2);
            return c.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            return c.this.f.getPlayerBufferLength();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            c.this.a((int) n.a.g, map);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            tPCDNURLInfo.errorStr = str4;
            c.this.a((int) n.a.d, tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            c.this.a(4099, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i, int i2, String str) {
            c.this.a(4098, i, i2, str, false, false, 0);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            c.this.a(4097, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = (long) i;
            tPDownLoadProgressInfo.downloadSpeedKBps = i2;
            tPDownLoadProgressInfo.currentDownloadSize = j;
            tPDownLoadProgressInfo.totalFileSize = j2;
            tPDownLoadProgressInfo.extraInfo = str;
            c.this.a((int) n.a.j, tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            c.this.a((int) n.a.f, tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i) {
            c.this.a(n.a.e, i, 0, null, false, false, 0);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            f fVar = new f();
            fVar.a = i;
            fVar.b = obj;
            fVar.c = obj2;
            fVar.d = obj3;
            fVar.e = obj4;
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            e eVar2 = new e();
            eVar2.a = fVar;
            eVar2.b = eVar;
            c.this.a((int) n.a.h, eVar2);
            return c.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i, String str, long j, long j2) {
            return c.this.f.onReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i, String str, long j, long j2) {
            return c.this.f.onStartReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i, String str, int i2) {
            return c.this.f.onStopReadData(i, str, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.tencent.thumbplayer.d.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0041c {
        long a;
        int b;

        C0041c(long j, int i) {
            this.a = j;
            this.b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {
        int a;
        int b;

        d(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* loaded from: classes2.dex */
    private static class e {
        Object a;
        com.tencent.thumbplayer.utils.e b;

        private e() {
        }
    }

    /* loaded from: classes2.dex */
    private static class f {
        int a;
        Object b;
        Object c;
        Object d;
        Object e;

        private f() {
        }
    }

    public c(Context context, Looper looper) {
        this.a = context;
        this.b = new a(looper);
        com.tencent.thumbplayer.utils.f.a(this);
        i.a().a(this);
    }

    private int a(List<ITPMediaTrackClip> list, String str, ArrayList<TPDownloadParamData> arrayList) {
        int i;
        Throwable th;
        if (com.tencent.thumbplayer.utils.b.a(list)) {
            TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "clipList is empty, return");
            return -1;
        }
        int size = list.size();
        HashMap hashMap = new HashMap();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            ITPMediaTrackClip iTPMediaTrackClip = list.get(i3);
            if ((iTPMediaTrackClip instanceof h) && com.tencent.thumbplayer.utils.b.b(((h) iTPMediaTrackClip).getFilePath())) {
                hashMap.put(iTPMediaTrackClip, new d(i2, i3));
                i2++;
            }
        }
        if (com.tencent.thumbplayer.utils.b.a(hashMap)) {
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "all urls is local file url, return");
            return -1;
        }
        try {
            i = this.c.startClipPlay(str, hashMap.size(), this.e);
            try {
                if (i > 0) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        ITPMediaTrackClip iTPMediaTrackClip2 = (ITPMediaTrackClip) entry.getKey();
                        d dVar = (d) entry.getValue();
                        if (iTPMediaTrackClip2 instanceof h) {
                            h hVar = (h) iTPMediaTrackClip2;
                            TPDownloadParamData a2 = a(arrayList, dVar.b);
                            if (a2 == null) {
                                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "fatal err, paramData is null.");
                                return -1;
                            }
                            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "multi trackClipIndex:" + dVar.b + ", download seq:" + dVar.a + ", clip.url:" + hVar.getUrl() + ", clip.getFilePath:" + hVar.getFilePath() + ", paramData.savePath:" + a2.getSavePath() + ", paramData.DownloadFileID:" + a2.getDownloadFileID());
                            if (this.c.setClipInfo(i, dVar.a, a2.getDownloadFileID(), a(hVar.getFilePath(), a2, (Map<String, String>) null))) {
                                hVar.a(this.c.getClipPlayUrl(i, dVar.a, 1));
                            }
                        }
                    }
                } else {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start clip play failed, cause : playId < 0");
                }
            } catch (Throwable th2) {
                th = th2;
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
                return i;
            }
        } catch (Throwable th3) {
            th = th3;
            i = -1;
        }
        return i;
    }

    private com.tencent.thumbplayer.adapter.a.e a(long j, String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (!com.tencent.thumbplayer.utils.b.b(str) || o()) {
            return eVar;
        }
        if (this.o == null) {
            this.o = new LinkedList<>();
        }
        String str2 = null;
        TPDownloadParam a2 = tPDownloadParamData != null ? a(str, tPDownloadParamData, map) : null;
        if (tPDownloadParamData != null) {
            try {
                str2 = tPDownloadParamData.getDownloadFileID();
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy switch def failed");
            }
        }
        int startPlay = this.c.startPlay(str2, a2, this.e);
        if (startPlay > 0) {
            String playUrl = this.c.getPlayUrl(startPlay, 1);
            if (TextUtils.isEmpty(playUrl)) {
                playUrl = str;
            }
            eVar.b(playUrl);
            String playUrl2 = this.c.getPlayUrl(startPlay, 0);
            if (!TextUtils.isEmpty(playUrl2)) {
                str = playUrl2;
            }
            eVar.a(str);
            this.o.offer(new C0041c(j, startPlay));
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j + ",playId:" + startPlay);
            return eVar;
        }
        TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def failed, cause : playId <= 0");
        return eVar;
    }

    private TPDownloadParamData a(ArrayList<TPDownloadParamData> arrayList, int i) {
        if (com.tencent.thumbplayer.utils.b.a(arrayList) || i >= arrayList.size()) {
            return null;
        }
        return arrayList.get(i);
    }

    private TPDownloadParam a(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        return i.a(str, tPDownloadParamData, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(com.tencent.thumbplayer.utils.e eVar) {
        try {
            return eVar.a(500);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "onPlayCallback getResult has exception:" + th.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, Object obj, boolean z, boolean z2, long j) {
        StringBuilder sb;
        String str;
        this.x.readLock().lock();
        if (this.b == null) {
            sb = new StringBuilder();
            sb.append(f(i));
            str = " , send failed , handler null";
        } else if (!z || obj != null) {
            if (z2) {
                this.b.removeMessages(i);
            }
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.b.sendMessageDelayed(obtainMessage, j);
            this.x.readLock().unlock();
        } else {
            sb = new StringBuilder();
            sb.append(f(i));
            str = ", send failed , params null";
        }
        sb.append(str);
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", sb.toString());
        this.x.readLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object obj) {
        a(i, 0, 0, obj, false, false, 0);
    }

    private List<ITPMediaTrackClip> b(ITPMediaAsset iTPMediaAsset) {
        ITPMediaTrack iTPMediaTrack;
        if (iTPMediaAsset instanceof com.tencent.thumbplayer.c.e) {
            List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.c.e) iTPMediaAsset).getAllAVTracks();
            if (com.tencent.thumbplayer.utils.b.a(allAVTracks) || (iTPMediaTrack = allAVTracks.get(0)) == null || com.tencent.thumbplayer.utils.b.a(iTPMediaTrack.getAllTrackClips())) {
                return null;
            }
            return iTPMediaTrack.getAllTrackClips();
        } else if (iTPMediaAsset instanceof ITPMediaTrack) {
            ITPMediaTrack iTPMediaTrack2 = (ITPMediaTrack) iTPMediaAsset;
            if (!com.tencent.thumbplayer.utils.b.a(iTPMediaTrack2.getAllTrackClips())) {
                return iTPMediaTrack2.getAllTrackClips();
            }
            return null;
        } else if (!(iTPMediaAsset instanceof ITPMediaTrackClip)) {
            return null;
        } else {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            return arrayList;
        }
    }

    private void b(TPVideoInfo tPVideoInfo) {
        String str;
        if (!o()) {
            this.l = tPVideoInfo;
            if (tPVideoInfo == null || tPVideoInfo.getDownloadPraramList() == null) {
                str = "video or downloadParamList is null, return";
            } else if (this.k <= 0) {
                str = "p2p proxy not start, return";
            } else {
                try {
                    ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
                    for (int i = 0; i < downloadPraramList.size(); i++) {
                        TPDownloadParamData tPDownloadParamData = downloadPraramList.get(i);
                        if (!this.c.setClipInfo(this.k, tPDownloadParamData.getClipNo(), tPDownloadParamData.getDownloadFileID(), a(tPDownloadParamData.getUrl(), tPDownloadParamData, (Map<String, String>) null))) {
                            TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "setClipInfo failed, playID:" + this.k + ", clipNo:" + tPDownloadParamData.getClipNo() + ", downloadFileID:" + tPDownloadParamData.getDownloadFileID());
                        }
                    }
                    return;
                } catch (Throwable th) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
                    return;
                }
            }
            TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", str);
        }
    }

    private boolean b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        hashMap.put(TPDownloadProxyEnum.DLPARAM_DATA_TRANSFER_MODE, 1);
        try {
            return this.c.setClipInfo(this.k, 2, str2, new TPDownloadParam(arrayList, 3, hashMap));
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return false;
        }
    }

    private void c(int i) {
        try {
            this.c.pauseDownload(i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy pause download failed, taskId:" + i);
        }
    }

    private void d(int i) {
        try {
            this.c.resumeDownload(this.k);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy resume download failed, taskId:" + i);
        }
    }

    private void e(int i) {
        if (!o()) {
            try {
                this.c.stopPlay(i);
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy stop play failed, taskID:" + i);
            }
        }
    }

    private String f(int i) {
        switch (i) {
            case 4097:
                return "onDownloadFinish";
            case 4098:
                return "onDownloadError";
            case 4099:
                return "onDownloadCdnUrlUpdate";
            case n.a.d /* 4100 */:
                return "onDownloadCdnUrlInfoUpdate";
            case n.a.e /* 4101 */:
                return "onDownloadStatusUpdate";
            case n.a.f /* 4102 */:
                return "onDownloadProtocolUpdate";
            case n.a.g /* 4103 */:
                return "onDownloadCdnUrlExpired";
            case n.a.h /* 4104 */:
                return "onPlayCallback";
            case n.a.i /* 4105 */:
            case 4107:
                return "getPlayInfo";
            case n.a.j /* 4106 */:
                return "onDownloadProgressUpdate";
            default:
                return "unknown";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i) {
        int i2;
        switch (i) {
            case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                i2 = 13;
                break;
            case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                i2 = 14;
                break;
            default:
                return;
        }
        b(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i == 2) {
                b(2);
                b(9);
                return;
            } else if (i != 3) {
                return;
            }
        }
        b(i2);
        b(10);
    }

    private boolean k() {
        if (this.h == g) {
            this.h = TPPlayerConfig.getProxyServiceType();
        }
        b a2 = g.a().a(this.h);
        if (a2 == null || a2.a() == null) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "initProxy failed, serviceType:" + this.h + ", playProxyManager:" + a2);
            return false;
        }
        try {
            this.c = a2.a();
            this.c.setUserData(TPDownloadProxyEnum.USER_IS_VIP, Boolean.valueOf(TPPlayerConfig.isUserIsVip()));
            if (!TextUtils.isEmpty(TPPlayerConfig.getUserUin())) {
                this.c.setUserData(TPDownloadProxyEnum.USER_UIN, TPPlayerConfig.getUserUin());
            }
            if (!TextUtils.isEmpty(TPPlayerConfig.getAppVersionName(this.a))) {
                this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION, TPPlayerConfig.getAppVersionName(this.a));
            }
            if (TPPlayerConfig.getBuildNumber(this.a) != -1) {
                this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION_CODE, String.valueOf(TPPlayerConfig.getBuildNumber(this.a)));
            }
            this.c.setUserData(TPDownloadProxyEnum.USER_UPC, TPPlayerConfig.getUserUpc());
            this.c.setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(TPPlayerConfig.getUserUpcState()));
            this.c.setUserData(TPDownloadProxyEnum.USER_EXTERNAL_NETWORK_IP, TPPlayerConfig.getOutNetIp());
            return true;
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return false;
        }
    }

    private void l() {
        try {
            this.c.setPlayState(this.k, this.t ? 101 : 100);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    private void m() {
        int i;
        try {
            ITPDownloadProxy iTPDownloadProxy = this.c;
            int i2 = this.k;
            if (!this.v && !this.u) {
                i = 201;
                iTPDownloadProxy.setPlayState(i2, i);
            }
            i = 200;
            iTPDownloadProxy.setPlayState(i2, i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    private void n() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "reset");
        this.j = "";
        this.m = "";
        this.l = null;
        this.q = 0;
        this.r = 0;
        this.s = false;
        this.t = true;
        this.u = false;
        this.v = false;
        if (!com.tencent.thumbplayer.utils.b.a(this.i)) {
            this.i.clear();
        }
        this.d = 0;
        this.h = g;
        this.c = null;
    }

    private boolean o() {
        if (!TPPlayerConfig.isUseP2P()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "config set don't use p2p proxy!");
            return true;
        }
        if (this.d == 0) {
            this.d = k() ? 2 : 1;
        }
        return this.d == 1;
    }

    private String p() {
        return this.j;
    }

    private void q() {
        try {
            this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_START_TIME, Long.valueOf(this.q));
            this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(this.r));
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    private void r() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "inner event : release handler");
        this.x.writeLock().lock();
        a aVar = this.b;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
            this.b = null;
        }
        this.x.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.d.a
    public com.tencent.thumbplayer.adapter.a.e a(long j, String str, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        if (tPVideoInfo == null) {
            return new com.tencent.thumbplayer.adapter.a.e(str);
        }
        TPDownloadParamData tPDownloadParamData = null;
        if (tPVideoInfo.getDownloadPraramList() != null) {
            tPDownloadParamData = tPVideoInfo.getDownloadPraramList().get(0);
        }
        return a(j, str, tPDownloadParamData, map);
    }

    @Override // com.tencent.thumbplayer.d.a
    public com.tencent.thumbplayer.adapter.a.e a(String str, Map<String, String> map) {
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (!com.tencent.thumbplayer.utils.b.b(str) || o()) {
            return eVar;
        }
        q();
        this.m = str;
        TPDownloadParamData a2 = a(this.i, 0);
        if (this.w && a2 != null && a2.getDlType() == 1) {
            a2 = new TPDownloadParamData(11);
        }
        TPDownloadParam a3 = a2 != null ? a(str, a2, map) : null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("single url:");
            sb.append(str);
            sb.append(", paramData.savePath:");
            String str2 = "null";
            sb.append(a2 != null ? a2.getSavePath() : str2);
            sb.append(", paramData.DownloadFileID:");
            if (a2 != null) {
                str2 = a2.getDownloadFileID();
            }
            sb.append(str2);
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", sb.toString());
            int startPlay = this.c.startPlay(p(), a3, this.e);
            l();
            m();
            if (startPlay > 0) {
                String playUrl = this.c.getPlayUrl(startPlay, 0);
                if (TextUtils.isEmpty(playUrl)) {
                    playUrl = str;
                }
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "startDownloadPlay, playId:" + startPlay);
                eVar.b(playUrl);
                String playUrl2 = this.c.getPlayUrl(startPlay, 1);
                if (!TextUtils.isEmpty(playUrl2)) {
                    str = playUrl2;
                }
                eVar.a(str);
                this.k = startPlay;
            } else {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed, cause : playId <= 0");
            }
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy start play failed");
        }
        return eVar;
    }

    @Override // com.tencent.thumbplayer.d.a
    public ITPMediaAsset a(ITPMediaAsset iTPMediaAsset) {
        if (o()) {
            return iTPMediaAsset;
        }
        q();
        if (iTPMediaAsset instanceof j) {
            j jVar = (j) iTPMediaAsset;
            jVar.setDrmPlayUrl(a(jVar.getDrmPlayUrl(), (Map<String, String>) null).b());
            return iTPMediaAsset;
        } else if (iTPMediaAsset instanceof l) {
            l lVar = (l) iTPMediaAsset;
            lVar.setStreamUrl(a(lVar.getStreamUrl(), (Map<String, String>) null).b());
            return iTPMediaAsset;
        } else {
            List<ITPMediaTrackClip> b2 = b(iTPMediaAsset);
            if (!com.tencent.thumbplayer.utils.b.a(b2)) {
                this.k = a(b2, p(), this.i);
                l();
                m();
            }
            return iTPMediaAsset;
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public ITPMediaAsset a(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo) {
        if (!o() && iTPMediaAsset != null) {
            if (this.o == null) {
                this.o = new LinkedList<>();
            }
            if (tPVideoInfo == null) {
                return iTPMediaAsset;
            }
            if (iTPMediaAsset instanceof ITPMediaDRMAsset) {
                TPDownloadParamData tPDownloadParamData = null;
                if (tPVideoInfo.getDownloadPraramList() != null) {
                    tPDownloadParamData = tPVideoInfo.getDownloadPraramList().get(0);
                }
                ((j) iTPMediaAsset).setDrmPlayUrl(a(j, ((ITPMediaDRMAsset) iTPMediaAsset).getDrmPlayUrl(), tPDownloadParamData, (Map<String, String>) null).b());
                return iTPMediaAsset;
            }
            List<ITPMediaTrackClip> b2 = b(iTPMediaAsset);
            if (!com.tencent.thumbplayer.utils.b.a(b2) && tPVideoInfo != null) {
                int a2 = a(b2, tPVideoInfo.getProxyFileID(), tPVideoInfo.getDownloadPraramList());
                if (a2 > 0) {
                    this.o.offer(new C0041c(j, a2));
                    TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j + ",playId:" + a2);
                    return iTPMediaAsset;
                }
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch clip def failed, cause : playId < 0");
            }
        }
        return iTPMediaAsset;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        if (android.text.TextUtils.isEmpty(r8) != false) goto L_0x003a;
     */
    @Override // com.tencent.thumbplayer.d.a
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String a(int r6, java.lang.String r7, com.tencent.thumbplayer.api.proxy.TPDownloadParamData r8) {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            java.lang.String r1 = "TPThumbPlayer[TPPlayManagerImpl.java]"
            if (r0 == 0) goto L_0x000e
            java.lang.String r6 = "return coz url is empty"
        L_0x000a:
            com.tencent.thumbplayer.utils.TPLogUtil.w(r1, r6)
            return r7
        L_0x000e:
            boolean r0 = com.tencent.thumbplayer.utils.b.b(r7)
            if (r0 != 0) goto L_0x0017
            java.lang.String r6 = "return coz url is locol url, not need use proxy"
            goto L_0x000a
        L_0x0017:
            boolean r0 = r5.o()
            if (r0 == 0) goto L_0x0020
            java.lang.String r6 = "return coz download proxy init failed"
            goto L_0x000a
        L_0x0020:
            r0 = 2
            r2 = 0
            r3 = 1
            if (r8 == 0) goto L_0x003f
            com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam r6 = com.tencent.thumbplayer.d.i.a(r7, r8, r2)     // Catch: all -> 0x0085
            int r2 = r8.getTaskType()     // Catch: all -> 0x0085
            if (r2 != r3) goto L_0x0030
            r3 = r0
        L_0x0030:
            java.lang.String r8 = r8.getDownloadFileID()     // Catch: all -> 0x0085
            boolean r0 = android.text.TextUtils.isEmpty(r8)     // Catch: all -> 0x0085
            if (r0 == 0) goto L_0x0051
        L_0x003a:
            java.lang.String r8 = com.tencent.thumbplayer.utils.b.a(r7)     // Catch: all -> 0x0085
            goto L_0x0051
        L_0x003f:
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: all -> 0x0085
            r8.<init>()     // Catch: all -> 0x0085
            r8.add(r7)     // Catch: all -> 0x0085
            r4 = 0
            if (r6 != r0) goto L_0x004b
            r4 = 3
        L_0x004b:
            com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam r6 = new com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam     // Catch: all -> 0x0085
            r6.<init>(r8, r4, r2)     // Catch: all -> 0x0085
            goto L_0x003a
        L_0x0051:
            com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy r0 = r5.c     // Catch: all -> 0x0085
            com.tencent.thumbplayer.d.c$b r2 = r5.e     // Catch: all -> 0x0085
            int r6 = r0.startPlay(r8, r6, r2)     // Catch: all -> 0x0085
            if (r6 <= 0) goto L_0x007f
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: all -> 0x0085
            r8.<init>()     // Catch: all -> 0x0085
            java.lang.String r0 = "p2p proxy start play, url type"
            r8.append(r0)     // Catch: all -> 0x0085
            r8.append(r3)     // Catch: all -> 0x0085
            java.lang.String r8 = r8.toString()     // Catch: all -> 0x0085
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r8)     // Catch: all -> 0x0085
            com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy r8 = r5.c     // Catch: all -> 0x0085
            java.lang.String r7 = r8.getPlayUrl(r6, r3)     // Catch: all -> 0x0085
            java.util.HashMap<java.lang.String, java.lang.Integer> r8 = r5.p     // Catch: all -> 0x0085
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: all -> 0x0085
            r8.put(r7, r6)     // Catch: all -> 0x0085
            goto L_0x009a
        L_0x007f:
            java.lang.String r6 = "p2p proxy start play failed, cause : playId <= 0"
            com.tencent.thumbplayer.utils.TPLogUtil.e(r1, r6)     // Catch: all -> 0x0085
            goto L_0x009a
        L_0x0085:
            r6 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "p2p proxy start play failed:"
            r8.append(r0)
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            com.tencent.thumbplayer.utils.TPLogUtil.e(r1, r6)
        L_0x009a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.d.c.a(int, java.lang.String, com.tencent.thumbplayer.api.proxy.TPDownloadParamData):java.lang.String");
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(int i) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState: " + i);
        if (!o()) {
            try {
                this.c.setPlayState(this.k, i);
                if ((i == 5 || i == 0) && !com.tencent.thumbplayer.utils.b.a(this.o)) {
                    Iterator<C0041c> it = this.o.iterator();
                    while (it.hasNext()) {
                        C0041c next = it.next();
                        if (next != null) {
                            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState definitionID:" + next.a + ", taskID:" + next.b + ", state:" + i);
                            this.c.setPlayState(next.b, i);
                        }
                    }
                }
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            }
        }
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "onNetworkStatusChanged oldNetStatus: " + i + ", netStatus: " + i2);
        a(4197, i2, 0, null, false, false, 0);
    }

    @Override // com.tencent.thumbplayer.utils.f.a
    public void a(int i, int i2, int i3, Object obj) {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "onEvent eventId: " + i + ", arg1: " + i2 + ", arg2: " + i3 + ", object" + obj);
        a(4196, i, 0, null, false, false, 0);
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(long j) {
        C0041c cVar;
        if (!o()) {
            try {
                if (!com.tencent.thumbplayer.utils.b.a(this.o)) {
                    C0041c peek = this.o.peek();
                    while (true) {
                        cVar = peek;
                        if (cVar == null || cVar.a == j) {
                            break;
                        }
                        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy definitionID:" + cVar.a + ", taskID:" + cVar.b);
                        e(cVar.b);
                        this.o.removeFirst();
                        peek = this.o.peek();
                    }
                    if (cVar != null) {
                        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy task id:" + cVar.b);
                        e(this.k);
                        this.k = cVar.b;
                        l();
                        m();
                        this.o.remove(cVar);
                    }
                }
            } catch (Exception e2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e2, "playerSwitchDefComplete exception");
            }
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(TPOptionalParam tPOptionalParam) {
        if (o() || tPOptionalParam == null) {
            return;
        }
        if (tPOptionalParam.getKey() == 100) {
            this.q = tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 500) {
            try {
                this.r = tPOptionalParam.getParamLong().value;
                if (this.k > 0) {
                    this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(this.r));
                }
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            }
        } else {
            if (tPOptionalParam.getKey() == 508) {
                this.u = tPOptionalParam.getParamBoolean().value;
            } else if (tPOptionalParam.getKey() == 504) {
                this.v = tPOptionalParam.getParamLong().value != 0;
            } else {
                return;
            }
            m();
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo == null) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, param is null ");
            return;
        }
        if (this.l != null) {
            b(tPVideoInfo);
        }
        this.l = tPVideoInfo;
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, enter");
        this.j = tPVideoInfo.getProxyFileID();
        if (!com.tencent.thumbplayer.utils.b.a(this.i)) {
            this.i.clear();
        }
        if (tPVideoInfo.getDownloadPraramList() != null && tPVideoInfo.getDownloadPraramList().size() > 0) {
            this.i.addAll(tPVideoInfo.getDownloadPraramList());
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(ITPPlayListener iTPPlayListener) {
        if (iTPPlayListener == null) {
            this.f = new d("TPThumbPlayer[TPPlayManagerImpl.java]");
        } else {
            this.f = iTPPlayListener;
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(String str, Object obj) {
        this.c.updateTaskInfo(this.k, str, obj);
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(String str, String str2) {
        if (!com.tencent.thumbplayer.utils.b.b(str) || TextUtils.isEmpty(str2)) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, audioTrackUrl:" + str + ", keyId:" + str2);
        } else if (o()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, download proxy init failed.");
        } else {
            if (this.s) {
                int i = this.k;
                if (i > 0) {
                    e(i);
                }
                this.k = 0;
                a(this.m, (Map<String, String>) null);
                if (!b(str, str2)) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                    return;
                }
            } else if (!b(str, str2)) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                return;
            }
            this.s = true;
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(boolean z) {
        this.w = z;
    }

    @Override // com.tencent.thumbplayer.d.a
    public boolean a() {
        return this.w;
    }

    @Override // com.tencent.thumbplayer.d.a
    public void b() {
        if (o()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "stopRemuxer, download proxy init failed.");
            return;
        }
        if (this.s) {
            int i = this.k;
            if (i > 0) {
                e(i);
            }
            this.k = 0;
            a(this.m, (Map<String, String>) null);
        }
        this.s = false;
    }

    public void b(int i) {
        if (!o()) {
            try {
                this.c.pushEvent(i);
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy pushEvent failed, event:" + i);
            }
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public boolean c() {
        LinkedList<C0041c> linkedList;
        return !o() && (linkedList = this.o) != null && linkedList.size() > 0;
    }

    @Override // com.tencent.thumbplayer.d.a
    public void d() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stopDownload, playId:" + this.k);
        int i = this.k;
        if (i > 0) {
            e(i);
        }
        this.k = 0;
        if (!com.tencent.thumbplayer.utils.b.a(this.o)) {
            Iterator<C0041c> it = this.o.iterator();
            while (it.hasNext()) {
                C0041c next = it.next();
                if (next != null) {
                    e(next.b);
                }
            }
            this.o.clear();
        }
        if (!com.tencent.thumbplayer.utils.b.a(this.p)) {
            for (Integer num : this.p.values()) {
                e(num.intValue());
            }
            this.p.clear();
        }
        n();
    }

    @Override // com.tencent.thumbplayer.d.a
    public void e() {
        d();
        i.a().b(this);
        com.tencent.thumbplayer.utils.f.b(this);
        r();
        this.n = null;
        this.f = new d("TPThumbPlayer[TPPlayManagerImpl.java]");
        this.e = null;
        this.c = null;
    }

    @Override // com.tencent.thumbplayer.d.a
    public boolean f() {
        return !o();
    }

    @Override // com.tencent.thumbplayer.d.a
    public String g() {
        if (o()) {
            return null;
        }
        try {
            return this.c.getPlayErrorCodeStr(this.k);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void h() {
        if (!o()) {
            c(this.k);
            if (!com.tencent.thumbplayer.utils.b.a(this.o)) {
                Iterator<C0041c> it = this.o.iterator();
                while (it.hasNext()) {
                    C0041c next = it.next();
                    if (next != null) {
                        c(next.b);
                    }
                }
            }
            if (!com.tencent.thumbplayer.utils.b.a(this.p)) {
                for (Integer num : this.p.values()) {
                    c(num.intValue());
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public void i() {
        if (!o()) {
            d(this.k);
            if (!com.tencent.thumbplayer.utils.b.a(this.o)) {
                Iterator<C0041c> it = this.o.iterator();
                while (it.hasNext()) {
                    C0041c next = it.next();
                    if (next != null) {
                        d(next.b);
                    }
                }
            }
            if (!com.tencent.thumbplayer.utils.b.a(this.p)) {
                for (Integer num : this.p.values()) {
                    d(num.intValue());
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.d.a
    public ITPPlayerProxyListener j() {
        return this.n;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void pushEvent(int i) {
        if (!o()) {
            try {
                b(f.b(i));
            } catch (IllegalArgumentException e2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setIsActive(boolean z) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setIsActive: " + z);
        this.t = z;
        if (!o()) {
            l();
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setProxyServiceType(int i) {
        this.h = i;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setTPPlayerProxyListener(ITPPlayerProxyListener iTPPlayerProxyListener) {
        this.n = iTPPlayerProxyListener;
    }
}
