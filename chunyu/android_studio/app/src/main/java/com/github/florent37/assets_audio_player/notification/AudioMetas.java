package com.github.florent37.assets_audio_player.notification;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioMetas.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006!"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "Ljava/io/Serializable;", "title", "", "artist", "album", "image", "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;", "imageOnLoadError", NotificationService.TRACK_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Ljava/lang/String;)V", "getAlbum", "()Ljava/lang/String;", "getArtist", "getImage", "()Lcom/github/florent37/assets_audio_player/notification/ImageMetas;", "getImageOnLoadError", "getTitle", "getTrackID", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AudioMetas implements Serializable {
    private final String album;
    private final String artist;
    private final ImageMetas image;
    private final ImageMetas imageOnLoadError;
    private final String title;
    private final String trackID;

    public static /* synthetic */ AudioMetas copy$default(AudioMetas audioMetas, String str, String str2, String str3, ImageMetas imageMetas, ImageMetas imageMetas2, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = audioMetas.title;
        }
        if ((i & 2) != 0) {
            str2 = audioMetas.artist;
        }
        if ((i & 4) != 0) {
            str3 = audioMetas.album;
        }
        if ((i & 8) != 0) {
            imageMetas = audioMetas.image;
        }
        if ((i & 16) != 0) {
            imageMetas2 = audioMetas.imageOnLoadError;
        }
        if ((i & 32) != 0) {
            str4 = audioMetas.trackID;
        }
        return audioMetas.copy(str, str2, str3, imageMetas, imageMetas2, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.artist;
    }

    public final String component3() {
        return this.album;
    }

    public final ImageMetas component4() {
        return this.image;
    }

    public final ImageMetas component5() {
        return this.imageOnLoadError;
    }

    public final String component6() {
        return this.trackID;
    }

    public final AudioMetas copy(String str, String str2, String str3, ImageMetas imageMetas, ImageMetas imageMetas2, String str4) {
        return new AudioMetas(str, str2, str3, imageMetas, imageMetas2, str4);
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioMetas)) {
            return false;
        }
        AudioMetas audioMetas = (AudioMetas) obj;
        return Intrinsics.areEqual(this.title, audioMetas.title) && Intrinsics.areEqual(this.artist, audioMetas.artist) && Intrinsics.areEqual(this.album, audioMetas.album) && Intrinsics.areEqual(this.image, audioMetas.image) && Intrinsics.areEqual(this.imageOnLoadError, audioMetas.imageOnLoadError) && Intrinsics.areEqual(this.trackID, audioMetas.trackID);
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.artist;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.album;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ImageMetas imageMetas = this.image;
        int hashCode4 = (hashCode3 + (imageMetas == null ? 0 : imageMetas.hashCode())) * 31;
        ImageMetas imageMetas2 = this.imageOnLoadError;
        int hashCode5 = (hashCode4 + (imageMetas2 == null ? 0 : imageMetas2.hashCode())) * 31;
        String str4 = this.trackID;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return hashCode5 + i;
    }

    @Override // java.lang.Object
    public String toString() {
        return "AudioMetas(title=" + ((Object) this.title) + ", artist=" + ((Object) this.artist) + ", album=" + ((Object) this.album) + ", image=" + this.image + ", imageOnLoadError=" + this.imageOnLoadError + ", trackID=" + ((Object) this.trackID) + ')';
    }

    public AudioMetas(String str, String str2, String str3, ImageMetas imageMetas, ImageMetas imageMetas2, String str4) {
        this.title = str;
        this.artist = str2;
        this.album = str3;
        this.image = imageMetas;
        this.imageOnLoadError = imageMetas2;
        this.trackID = str4;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getArtist() {
        return this.artist;
    }

    public final String getAlbum() {
        return this.album;
    }

    public final ImageMetas getImage() {
        return this.image;
    }

    public final ImageMetas getImageOnLoadError() {
        return this.imageOnLoadError;
    }

    public final String getTrackID() {
        return this.trackID;
    }
}
