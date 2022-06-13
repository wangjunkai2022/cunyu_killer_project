package com.tencent.rtmp.downloader;

import com.tencent.liteav.network.i;
import com.tencent.rtmp.downloader.a.a;

/* loaded from: classes2.dex */
public class TXVodDownloadMediaInfo {
    public static final int STATE_ERROR = 3;
    public static final int STATE_FINISH = 4;
    public static final int STATE_INIT = 0;
    public static final int STATE_START = 1;
    public static final int STATE_STOP = 2;
    protected a dataSource;
    protected int downloadSegments;
    protected int downloadSize;
    protected int duration;
    @Deprecated
    protected i netApi;
    protected String playPath;
    protected int playableDuration;
    protected float progress;
    protected int segments;
    protected int size;
    protected String url;
    protected String userName = "default";
    protected int tid = -1;
    protected int downloadState = 0;

    public TXVodDownloadDataSource getDataSource() {
        return this.dataSource;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getPlayableDuration() {
        return this.playableDuration;
    }

    public int getSize() {
        return this.size;
    }

    public int getDownloadSize() {
        if (this.downloadSize != 0 || this.size <= 0 || getProgress() <= 0.0f) {
            return Math.min(this.downloadSize, this.size);
        }
        return Math.min((int) (((float) this.size) * getProgress()), this.size);
    }

    public float getProgress() {
        int i;
        int i2 = this.playableDuration;
        if ((i2 <= 0 || (i = this.duration) <= 0) && (((i2 = this.downloadSize) <= 0 || (i = this.size) <= 0) && ((i2 = this.downloadSegments) <= 0 || (i = this.segments) <= 0))) {
            return 0.0f;
        }
        return ((float) i2) / ((float) i);
    }

    public String getPlayPath() {
        return this.playPath;
    }

    public int getTaskId() {
        return this.tid;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserName() {
        return this.userName;
    }

    public int getDownloadState() {
        return this.downloadState;
    }

    public boolean isDownloadFinished() {
        return this.downloadState == 4;
    }
}
