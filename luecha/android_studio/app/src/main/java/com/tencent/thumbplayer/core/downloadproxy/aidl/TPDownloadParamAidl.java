package com.tencent.thumbplayer.core.downloadproxy.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPDownloadParamAidl implements Parcelable {
    public static final Parcelable.Creator<TPDownloadParamAidl> CREATOR = new Parcelable.Creator<TPDownloadParamAidl>() { // from class: com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadParamAidl.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TPDownloadParamAidl createFromParcel(Parcel parcel) {
            return new TPDownloadParamAidl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TPDownloadParamAidl[] newArray(int i) {
            return new TPDownloadParamAidl[i];
        }
    };
    private int dlType;
    private Map<String, Object> extInfoMap;
    private ArrayList<String> urlList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TPDownloadParamAidl(ArrayList<String> arrayList, int i, Map<String, Object> map) {
        this.urlList = arrayList;
        this.dlType = i;
        this.extInfoMap = map;
    }

    protected TPDownloadParamAidl(Parcel parcel) {
        try {
            this.urlList = parcel.createStringArrayList();
            this.dlType = parcel.readInt();
            this.extInfoMap = parcel.readHashMap(TPDownloadParamAidl.class.getClassLoader());
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadParamAidl", 0, "tpdlnative", th.toString());
            this.urlList = new ArrayList<>();
            this.dlType = 0;
            this.extInfoMap = new HashMap();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.urlList);
        parcel.writeInt(this.dlType);
        parcel.writeMap(this.extInfoMap);
    }

    public ArrayList<String> getUrlList() {
        return this.urlList;
    }

    public void setUrlList(ArrayList<String> arrayList) {
        this.urlList = arrayList;
    }

    public int getDlType() {
        return this.dlType;
    }

    public void setDlType(int i) {
        this.dlType = i;
    }

    public Map<String, Object> getExtInfoMap() {
        return this.extInfoMap;
    }

    public void setExtInfoMap(Map<String, Object> map) {
        this.extInfoMap = map;
    }
}
