package com.pichillilorenzo.flutter_inappwebview.InAppBrowser;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class DragViewUtil {
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static int DRAG_PADDING = 40;

    public static void drag(View view) {
        drag(view, 0);
    }

    public static void drag(View view, long j) {
        view.setOnTouchListener(new TouchListener(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TouchListener implements View.OnTouchListener {
        private long delay;
        private long downTime;
        private float downX;
        private float downY;
        private long flagSeed;
        private int limitBottom;
        private int limitLeft;
        private int limitRight;
        private int limitTop;

        private TouchListener() {
            this.flagSeed = 0;
        }

        private TouchListener(long j) {
            this.flagSeed = 0;
            this.delay = j;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(final View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.downX = motionEvent.getX();
                this.downY = motionEvent.getY();
                this.downTime = System.currentTimeMillis();
            } else if (action == 2 && System.currentTimeMillis() - this.downTime >= this.delay) {
                float x = motionEvent.getX() - this.downX;
                float y = motionEvent.getY() - this.downY;
                if (!(x == 0.0f || y == 0.0f)) {
                    int left = (int) (((float) view.getLeft()) + x);
                    int right = (int) (((float) view.getRight()) + x);
                    int top2 = (int) (((float) view.getTop()) + y);
                    int bottom = (int) (((float) view.getBottom()) + y);
                    this.limitLeft = DragViewUtil.DRAG_PADDING;
                    this.limitTop = DragViewUtil.DRAG_PADDING;
                    this.limitRight = ScreenUtils.getScreenWidth(view.getContext()) - DragViewUtil.DRAG_PADDING;
                    this.limitBottom = ScreenUtils.getScreenHeight(view.getContext()) - DragViewUtil.DRAG_PADDING;
                    int i = this.limitLeft;
                    if (left < i) {
                        right = i + view.getWidth();
                        left = i;
                    }
                    int i2 = this.limitTop;
                    if (top2 < i2) {
                        bottom = i2 + view.getHeight();
                        top2 = i2;
                    }
                    int i3 = this.limitRight;
                    if (right > i3) {
                        left = i3 - view.getWidth();
                        right = i3;
                    }
                    int i4 = this.limitBottom;
                    if (bottom > i4) {
                        top2 = i4 - view.getHeight();
                        bottom = i4;
                    }
                    view.layout(left, top2, right, bottom);
                    if (x > 10.0f || y > 10.0f) {
                        this.flagSeed++;
                        final long j = this.flagSeed;
                        view.setClickable(false);
                        DragViewUtil.MAIN_HANDLER.postDelayed(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.DragViewUtil.TouchListener.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (TouchListener.this.flagSeed == j) {
                                    view.setClickable(true);
                                }
                            }
                        }, 200);
                    }
                }
            }
            return false;
        }
    }
}
