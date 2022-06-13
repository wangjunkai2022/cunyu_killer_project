package com.github.nukc.stateview;

import android.view.View;
import com.github.nukc.stateview.StateView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class StateView$setupRetryClickListener$1 implements View.OnClickListener {
    final /* synthetic */ StateView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateView$setupRetryClickListener$1(StateView stateView) {
        this.this$0 = stateView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.this$0.getOnRetryClickListener() != null) {
            this.this$0.showLoading();
            View retryView = this.this$0.getRetryView();
            if (retryView == null) {
                Intrinsics.throwNpe();
            }
            retryView.postDelayed(new Runnable() { // from class: com.github.nukc.stateview.StateView$setupRetryClickListener$1.1
                @Override // java.lang.Runnable
                public final void run() {
                    StateView.OnRetryClickListener onRetryClickListener = StateView$setupRetryClickListener$1.this.this$0.getOnRetryClickListener();
                    if (onRetryClickListener != null) {
                        onRetryClickListener.onRetryClick();
                    }
                }
            }, 400);
        }
    }
}
