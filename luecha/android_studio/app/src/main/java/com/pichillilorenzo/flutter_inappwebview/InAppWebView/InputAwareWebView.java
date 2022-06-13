package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.ListPopupWindow;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class InputAwareWebView extends WebView {
    private static final String LOG_TAG = "InputAwareWebView";
    public View containerView;
    private ThreadedInputConnectionProxyAdapterView proxyAdapterView;
    private View threadedInputConnectionProxyView;

    public InputAwareWebView(Context context, View view) {
        super(context);
        this.containerView = view;
    }

    public InputAwareWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.containerView = null;
    }

    public InputAwareWebView(Context context) {
        super(context);
        this.containerView = null;
    }

    public InputAwareWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.containerView = null;
    }

    public void setContainerView(View view) {
        this.containerView = view;
        if (this.proxyAdapterView != null) {
            Log.w("InputAwareWebView", "The containerView has changed while the proxyAdapterView exists.");
            if (view != null) {
                setInputConnectionTarget(this.proxyAdapterView);
            }
        }
    }

    public void lockInputConnection() {
        ThreadedInputConnectionProxyAdapterView threadedInputConnectionProxyAdapterView = this.proxyAdapterView;
        if (threadedInputConnectionProxyAdapterView != null) {
            threadedInputConnectionProxyAdapterView.setLocked(true);
        }
    }

    public void unlockInputConnection() {
        ThreadedInputConnectionProxyAdapterView threadedInputConnectionProxyAdapterView = this.proxyAdapterView;
        if (threadedInputConnectionProxyAdapterView != null) {
            threadedInputConnectionProxyAdapterView.setLocked(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        resetInputConnection();
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        View view2 = this.threadedInputConnectionProxyView;
        this.threadedInputConnectionProxyView = view;
        if (view2 == view) {
            return super.checkInputConnectionProxy(view);
        }
        View view3 = this.containerView;
        if (view3 == null) {
            Log.e("InputAwareWebView", "Can't create a proxy view because there's no container view. Text input may not work.");
            return super.checkInputConnectionProxy(view);
        }
        this.proxyAdapterView = new ThreadedInputConnectionProxyAdapterView(view3, view, view.getHandler());
        setInputConnectionTarget(this.proxyAdapterView);
        return super.checkInputConnectionProxy(view);
    }

    @Override // android.view.View, android.view.ViewGroup
    public void clearFocus() {
        super.clearFocus();
        resetInputConnection();
    }

    private void resetInputConnection() {
        if (this.proxyAdapterView != null) {
            View view = this.containerView;
            if (view == null) {
                Log.e("InputAwareWebView", "Can't reset the input connection to the container view because there is none.");
            } else {
                setInputConnectionTarget(view);
            }
        }
    }

    private void setInputConnectionTarget(final View view) {
        if (this.containerView == null) {
            Log.e("InputAwareWebView", "Can't set the input connection target because there is no containerView to use as a handler.");
            return;
        }
        view.requestFocus();
        this.containerView.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InputAwareWebView.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) InputAwareWebView.this.getContext().getSystemService("input_method");
                view.onWindowFocusChanged(true);
                if (Build.VERSION.SDK_INT < 29) {
                    inputMethodManager.isActive(InputAwareWebView.this.containerView);
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (Build.VERSION.SDK_INT >= 28 || !isCalledFromListPopupWindowShow() || z) {
            super.onFocusChanged(z, i, rect);
        }
    }

    private boolean isCalledFromListPopupWindowShow() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i = 0; i < stackTrace.length; i++) {
            if (stackTrace[i].getClassName().equals(ListPopupWindow.class.getCanonicalName()) && stackTrace[i].getMethodName().equals("show")) {
                return true;
            }
        }
        return false;
    }
}
