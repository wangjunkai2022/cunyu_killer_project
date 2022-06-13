package com.example.imagegallerysaver;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ImageGallerySaverPlugin.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J&\u0010\u0011\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/example/imagegallerysaver/SaveResultModel;", "", "isSuccess", "", "filePath", "", "errorMessage", "(ZLjava/lang/String;Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "setErrorMessage", "(Ljava/lang/String;)V", "getFilePath", "setFilePath", "()Z", "setSuccess", "(Z)V", "toHashMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "image_gallery_saver_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SaveResultModel {
    private String errorMessage;
    private String filePath;
    private boolean isSuccess;

    public SaveResultModel(boolean z, String str, String str2) {
        this.isSuccess = z;
        this.filePath = str;
        this.errorMessage = str2;
    }

    public /* synthetic */ SaveResultModel(boolean z, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final void setFilePath(String str) {
        this.filePath = str;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public final HashMap<String, Object> toHashMap() {
        HashMap<String, Object> hashMap = new HashMap<>();
        HashMap<String, Object> hashMap2 = hashMap;
        hashMap2.put("isSuccess", Boolean.valueOf(this.isSuccess));
        hashMap2.put("filePath", this.filePath);
        hashMap2.put("errorMessage", this.errorMessage);
        return hashMap;
    }
}
