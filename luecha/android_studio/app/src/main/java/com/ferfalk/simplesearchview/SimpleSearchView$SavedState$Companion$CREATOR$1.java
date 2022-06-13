package com.ferfalk.simplesearchview;

import android.os.Parcel;
import android.os.Parcelable;
import com.ferfalk.simplesearchview.SimpleSearchView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleSearchView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;", "createFromParcel", "in", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class SimpleSearchView$SavedState$Companion$CREATOR$1 implements Parcelable.Creator<SimpleSearchView.SavedState> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public SimpleSearchView.SavedState createFromParcel(Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "in");
        return new SimpleSearchView.SavedState(parcel, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public SimpleSearchView.SavedState[] newArray(int i) {
        return new SimpleSearchView.SavedState[i];
    }
}
