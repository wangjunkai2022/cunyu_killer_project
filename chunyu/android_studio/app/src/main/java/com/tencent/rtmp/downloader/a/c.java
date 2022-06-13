package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.liteav.network.i;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;

/* compiled from: TXVodDownloadMediaInfoEx.java */
/* loaded from: classes2.dex */
public class c extends TXVodDownloadMediaInfo implements Parcelable {
    private static final String a = c.class.getName();
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.tencent.rtmp.downloader.a.c.1
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        /* renamed from: a */
        public c[] newArray(int i) {
            return new c[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public c() {
    }

    protected c(Parcel parcel) {
        this.dataSource = (a) parcel.readParcelable(a.class.getClassLoader());
        this.duration = parcel.readInt();
        this.size = parcel.readInt();
        this.downloadSize = parcel.readInt();
        this.segments = parcel.readInt();
        this.downloadSegments = parcel.readInt();
        this.playPath = parcel.readString();
        this.url = parcel.readString();
        if (this.dataSource == null) {
            this.userName = parcel.readString();
        }
        this.downloadState = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.dataSource, 0);
        parcel.writeInt(this.duration);
        parcel.writeInt(this.size);
        parcel.writeInt(this.downloadSize);
        parcel.writeInt(this.segments);
        parcel.writeInt(this.downloadSegments);
        parcel.writeString(this.playPath);
        parcel.writeString(this.url);
        if (this.dataSource == null) {
            parcel.writeString(this.userName);
        }
        parcel.writeInt(this.downloadState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.dataSource = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.duration = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.playableDuration = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        this.size = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        this.downloadSize = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        this.segments = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i) {
        this.downloadSegments = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.playPath = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i) {
        this.tid = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.url = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.userName = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(int i) {
        this.downloadState = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar) {
        this.netApi = iVar;
    }
}
