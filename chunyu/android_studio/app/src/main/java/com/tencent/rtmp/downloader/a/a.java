package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;

/* compiled from: TXVodDownloadDataSourceEx.java */
/* loaded from: classes2.dex */
public class a extends TXVodDownloadDataSource implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.tencent.rtmp.downloader.a.a.1
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        /* renamed from: a */
        public a[] newArray(int i) {
            return new a[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i) {
        return i == 1 ? "FLU" : i == 2 ? "SD" : i == 3 ? "HD" : i == 4 ? "FHD" : i == 5 ? "2K" : i == 6 ? "4K" : "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i, String str, int i2, String str2, String str3) {
        super(i, str, i2, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, int i) {
        super(tXPlayerAuthBuilder, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, String str) {
        super(tXPlayerAuthBuilder, str);
    }

    a(Parcel parcel) {
        this.appId = parcel.readInt();
        this.fileId = parcel.readString();
        this.pSign = parcel.readString();
        this.quality = parcel.readInt();
        this.userName = parcel.readString();
        if (!TextUtils.isEmpty(this.pSign)) {
            this.overlayKey = parcel.readString();
            this.overlayIv = parcel.readString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.overlayKey = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.overlayIv = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.appId);
        parcel.writeString(this.fileId);
        parcel.writeString(this.pSign);
        parcel.writeInt(this.quality);
        parcel.writeString(this.userName);
        if (!TextUtils.isEmpty(this.pSign)) {
            parcel.writeString(this.overlayKey);
            parcel.writeString(this.overlayIv);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i, String str) {
        return i == c(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int c(String str) {
        char c;
        switch (str.hashCode()) {
            case 1625:
                if (str.equals("2K")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1687:
                if (str.equals("4K")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2300:
                if (str.equals("HD")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 2517:
                if (str.equals("OD")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2641:
                if (str.equals("SD")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 69570:
                if (str.equals("FHD")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 69711:
                if (str.equals("FLU")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 84178:
                if (str.equals("UNK")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 693628:
                if (str.equals("原画")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 853726:
                if (str.equals("标清")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 897060:
                if (str.equals("流畅")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1257005:
                if (str.equals("高清")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 21284245:
                if (str.equals("全高清")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
                return 3;
            case 6:
            case 7:
                return 4;
            case '\b':
                return 5;
            case '\t':
                return 6;
            case '\n':
            case 11:
                return 0;
            case '\f':
                return 1000;
            default:
                return -1;
        }
    }
}
