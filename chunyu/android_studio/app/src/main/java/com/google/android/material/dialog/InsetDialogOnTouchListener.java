package com.google.android.material.dialog;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes4.dex */
public class InsetDialogOnTouchListener implements View.OnTouchListener {
    private final Dialog dialog;
    private final int leftInset;
    private final int prePieSlop;
    private final int topInset;

    public InsetDialogOnTouchListener(Dialog dialog, Rect rect) {
        this.dialog = dialog;
        this.leftInset = rect.left;
        this.topInset = rect.top;
        this.prePieSlop = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.leftInset + findViewById.getLeft();
        int width = findViewById.getWidth() + left;
        int top2 = this.topInset + findViewById.getTop();
        if (new RectF((float) left, (float) top2, (float) width, (float) (findViewById.getHeight() + top2)).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(4);
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.prePieSlop;
            obtain.setLocation((float) ((-i) - 1), (float) ((-i) - 1));
        }
        view.performClick();
        return this.dialog.onTouchEvent(obtain);
    }
}
