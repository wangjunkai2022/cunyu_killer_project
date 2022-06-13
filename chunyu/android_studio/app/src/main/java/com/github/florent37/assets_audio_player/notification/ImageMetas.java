package com.github.florent37.assets_audio_player.notification;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioMetas.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/ImageMetas;", "Ljava/io/Serializable;", "imageType", "", "imagePackage", "imagePath", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getImagePackage", "()Ljava/lang/String;", "getImagePath", "getImageType", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageMetas implements Serializable {
    private final String imagePackage;
    private final String imagePath;
    private final String imageType;

    public static /* synthetic */ ImageMetas copy$default(ImageMetas imageMetas, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imageMetas.imageType;
        }
        if ((i & 2) != 0) {
            str2 = imageMetas.imagePackage;
        }
        if ((i & 4) != 0) {
            str3 = imageMetas.imagePath;
        }
        return imageMetas.copy(str, str2, str3);
    }

    public final String component1() {
        return this.imageType;
    }

    public final String component2() {
        return this.imagePackage;
    }

    public final String component3() {
        return this.imagePath;
    }

    public final ImageMetas copy(String str, String str2, String str3) {
        return new ImageMetas(str, str2, str3);
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageMetas)) {
            return false;
        }
        ImageMetas imageMetas = (ImageMetas) obj;
        return Intrinsics.areEqual(this.imageType, imageMetas.imageType) && Intrinsics.areEqual(this.imagePackage, imageMetas.imagePackage) && Intrinsics.areEqual(this.imagePath, imageMetas.imagePath);
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.imageType;
        int i = 0;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.imagePackage;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.imagePath;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return hashCode2 + i;
    }

    @Override // java.lang.Object
    public String toString() {
        return "ImageMetas(imageType=" + ((Object) this.imageType) + ", imagePackage=" + ((Object) this.imagePackage) + ", imagePath=" + ((Object) this.imagePath) + ')';
    }

    public ImageMetas(String str, String str2, String str3) {
        this.imageType = str;
        this.imagePackage = str2;
        this.imagePath = str3;
    }

    public final String getImageType() {
        return this.imageType;
    }

    public final String getImagePackage() {
        return this.imagePackage;
    }

    public final String getImagePath() {
        return this.imagePath;
    }
}
