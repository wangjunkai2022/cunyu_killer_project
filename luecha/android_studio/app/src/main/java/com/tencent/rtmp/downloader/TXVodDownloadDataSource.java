package com.tencent.rtmp.downloader;

import android.text.TextUtils;
import com.tencent.rtmp.TXPlayerAuthBuilder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXVodDownloadDataSource {
    public static final int QUALITY_2K = 5;
    public static final int QUALITY_4K = 6;
    public static final int QUALITY_FHD = 4;
    public static final int QUALITY_FLU = 1;
    public static final int QUALITY_HD = 3;
    public static final int QUALITY_OD = 0;
    public static final int QUALITY_SD = 2;
    public static final int QUALITY_UNK = 1000;
    protected int appId;
    protected TXPlayerAuthBuilder authBuilder;
    protected String fileId;
    protected String overlayIv;
    protected String overlayKey;
    protected String pSign;
    protected int quality;
    protected String templateName;
    protected String token;
    protected String userName;

    public TXVodDownloadDataSource(int i, String str, int i2, String str2, String str3) {
        this.appId = -1;
        this.fileId = "";
        this.pSign = "";
        this.quality = 1000;
        this.userName = "default";
        this.overlayKey = "";
        this.overlayIv = "";
        this.appId = i;
        this.fileId = str;
        this.quality = i2;
        this.pSign = str2;
        if (!TextUtils.isEmpty(str3)) {
            this.userName = str3;
        }
    }

    @Deprecated
    public TXVodDownloadDataSource(TXPlayerAuthBuilder tXPlayerAuthBuilder, int i) {
        this.appId = -1;
        this.fileId = "";
        this.pSign = "";
        this.quality = 1000;
        this.userName = "default";
        this.overlayKey = "";
        this.overlayIv = "";
        this.authBuilder = tXPlayerAuthBuilder;
        this.quality = i;
    }

    @Deprecated
    public TXVodDownloadDataSource(TXPlayerAuthBuilder tXPlayerAuthBuilder, String str) {
        this.appId = -1;
        this.fileId = "";
        this.pSign = "";
        this.quality = 1000;
        this.userName = "default";
        this.overlayKey = "";
        this.overlayIv = "";
        this.authBuilder = tXPlayerAuthBuilder;
        this.templateName = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TXVodDownloadDataSource() {
        this.appId = -1;
        this.fileId = "";
        this.pSign = "";
        this.quality = 1000;
        this.userName = "default";
        this.overlayKey = "";
        this.overlayIv = "";
    }

    public String getFileId() {
        return this.fileId;
    }

    public String getPSign() {
        return this.pSign;
    }

    public void setQuality(int i) {
        this.quality = i;
    }

    public void setToken(String str) {
        this.token = str;
    }

    @Deprecated
    public TXPlayerAuthBuilder getAuthBuilder() {
        return this.authBuilder;
    }

    public int getQuality() {
        return this.quality;
    }

    @Deprecated
    public String getTemplateName() {
        return this.templateName;
    }

    public String getToken() {
        return this.token;
    }

    public int getAppId() {
        return this.appId;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getOverlayKey() {
        return this.overlayKey;
    }

    public String getOverlayIv() {
        return this.overlayIv;
    }
}
