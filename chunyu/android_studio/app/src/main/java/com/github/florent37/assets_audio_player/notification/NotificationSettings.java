package com.github.florent37.assets_audio_player.notification;

import java.io.Serializable;
import kotlin.Metadata;

/* compiled from: NotificationSettings.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u001b\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", "Ljava/io/Serializable;", "nextEnabled", "", "playPauseEnabled", "prevEnabled", "seekBarEnabled", "stopEnabled", "previousIcon", "", "stopIcon", "playIcon", "nextIcon", "pauseIcon", "(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNextEnabled", "()Z", "getNextIcon", "()Ljava/lang/String;", "getPauseIcon", "getPlayIcon", "getPlayPauseEnabled", "getPrevEnabled", "getPreviousIcon", "getSeekBarEnabled", "getStopEnabled", "getStopIcon", "numberEnabled", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NotificationSettings implements Serializable {
    private final boolean nextEnabled;
    private final String nextIcon;
    private final String pauseIcon;
    private final String playIcon;
    private final boolean playPauseEnabled;
    private final boolean prevEnabled;
    private final String previousIcon;
    private final boolean seekBarEnabled;
    private final boolean stopEnabled;
    private final String stopIcon;

    public NotificationSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str, String str2, String str3, String str4, String str5) {
        this.nextEnabled = z;
        this.playPauseEnabled = z2;
        this.prevEnabled = z3;
        this.seekBarEnabled = z4;
        this.stopEnabled = z5;
        this.previousIcon = str;
        this.stopIcon = str2;
        this.playIcon = str3;
        this.nextIcon = str4;
        this.pauseIcon = str5;
    }

    public final boolean getNextEnabled() {
        return this.nextEnabled;
    }

    public final boolean getPlayPauseEnabled() {
        return this.playPauseEnabled;
    }

    public final boolean getPrevEnabled() {
        return this.prevEnabled;
    }

    public final boolean getSeekBarEnabled() {
        return this.seekBarEnabled;
    }

    public final boolean getStopEnabled() {
        return this.stopEnabled;
    }

    public final String getPreviousIcon() {
        return this.previousIcon;
    }

    public final String getStopIcon() {
        return this.stopIcon;
    }

    public final String getPlayIcon() {
        return this.playIcon;
    }

    public final String getNextIcon() {
        return this.nextIcon;
    }

    public final String getPauseIcon() {
        return this.pauseIcon;
    }

    public final int numberEnabled() {
        int i = this.playPauseEnabled ? 1 : 0;
        if (this.prevEnabled) {
            i++;
        }
        if (this.nextEnabled) {
            i++;
        }
        return this.stopEnabled ? i + 1 : i;
    }
}
