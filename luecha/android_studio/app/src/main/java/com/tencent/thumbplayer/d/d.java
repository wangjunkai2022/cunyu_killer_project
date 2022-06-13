package com.tencent.thumbplayer.d;

import com.tencent.thumbplayer.api.proxy.ITPPreloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d implements ITPPreloadProxy.IPreloadListener, ITPPlayListener {
    private String a;

    public d(String str) {
        this.a = str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getAdvRemainTime() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , getAdvRemainTime");
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public String getContentType(int i, String str) {
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int getCurrentPlayClipNo() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , getCurrentPlayClipNo");
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getCurrentPlayOffset() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , getCurrentPlayOffset");
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getCurrentPosition() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , getCurrentPosition");
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public String getDataFilePath(int i, String str) {
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getDataTotalSize(int i, String str) {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object getPlayInfo(long j) {
        String str = this.a;
        TPLogUtil.i(str, " empty proxy player listener , notify , getPlayInfo with type : " + j);
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object getPlayInfo(String str) {
        String str2 = this.a;
        TPLogUtil.i(str2, " empty proxy player listener , notify , getPlayInfo with key : " + str);
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getPlayerBufferLength() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , getPlayerBufferLength");
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlExpired(Map<String, String> map) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlUpdate(String str) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadError(int i, int i2, String str) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadFinish() {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
        String str2 = this.a;
        TPLogUtil.i(str2, " empty proxy player listener , notify , onPlayProgress, current : " + j + ", total : " + j2);
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadProtocolUpdate(String str, String str2) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadStatusUpdate(int i) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
        String str = this.a;
        TPLogUtil.i(str, " empty proxy player listener , notify , onPlayCallback, messageType : " + i + ",ext1:" + obj + ",ext2:" + obj2 + ",ext3" + obj3 + ",ext4" + obj4);
        return null;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2) {
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareError() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , onPrepareError : ");
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareSuccess() {
        TPLogUtil.i(this.a, " empty proxy player listener , notify , onPrepareSuccess : ");
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onReadData(int i, String str, long j, long j2) {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onStartReadData(int i, String str, long j, long j2) {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onStopReadData(int i, String str, int i2) {
        return 0;
    }
}
