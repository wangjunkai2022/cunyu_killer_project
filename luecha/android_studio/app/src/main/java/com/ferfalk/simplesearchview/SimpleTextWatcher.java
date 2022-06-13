package com.ferfalk.simplesearchview;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleTextWatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleTextWatcher;", "Landroid/text/TextWatcher;", "()V", "afterTextChanged", "", ai.az, "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class SimpleTextWatcher implements TextWatcher {
    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Intrinsics.checkNotNullParameter(editable, ai.az);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(charSequence, ai.az);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(charSequence, ai.az);
    }
}
