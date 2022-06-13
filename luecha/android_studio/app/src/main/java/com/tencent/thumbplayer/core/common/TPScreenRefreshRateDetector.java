package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPScreenRefreshRateDetector {
    public static final int DISPLAY_CHANGE = 10001;
    private static String TAG = "TPScreenRefreshRateDetector";
    private static boolean isInitted;
    private static WeakReference<Context> mContext;
    private static Handler mHandler;
    private static WindowManager mWindowManager;
    private static List<ScreenRefreshRateChangedListener> listeners = new LinkedList();
    private static float mCurScreenRefreshRate = 60.0f;
    private static DisplayManager mDisplayManager = null;
    private static DisplayManager.DisplayListener mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector.2
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                TPScreenRefreshRateDetector.mHandler.sendEmptyMessage(10001);
            }
            String str = TPScreenRefreshRateDetector.TAG;
            TPNativeLog.printLog(2, str, "onDisplayChanged displayId:" + i);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface ScreenRefreshRateChangedListener {
        void onScreenRefreshRateChanged(float f);
    }

    public static void addListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.add(screenRefreshRateChangedListener);
        }
    }

    public static void deinit() {
        synchronized (TPScreenRefreshRateDetector.class) {
            if (isInitted && mContext != null) {
                mContext.clear();
                isInitted = false;
                TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector deinit succeed!");
            }
        }
    }

    private static Looper getLooper() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static float getScreenRefreshRate() {
        String str;
        String str2;
        if (Build.VERSION.SDK_INT < 23) {
            str = TAG;
            str2 = "Current version can not get screen refresh rate, set default.";
        } else {
            WeakReference<Context> weakReference = mContext;
            if (weakReference == null) {
                str = TAG;
                str2 = "Current mContext is null, set default.";
            } else {
                Context context = weakReference.get();
                if (context != null) {
                    if (mWindowManager == null) {
                        mWindowManager = (WindowManager) context.getSystemService("window");
                    }
                    if (mDisplayManager == null) {
                        mDisplayManager = (DisplayManager) context.getSystemService("display");
                        mDisplayManager.registerDisplayListener(mDisplayListener, mHandler);
                    }
                    WindowManager windowManager = mWindowManager;
                    if (windowManager != null) {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        Display.Mode[] supportedModes = defaultDisplay.getSupportedModes();
                        Display.Mode mode = defaultDisplay.getMode();
                        String str3 = TAG;
                        TPNativeLog.printLog(2, str3, "getMode width:" + mode.getPhysicalWidth() + " height:" + mode.getPhysicalHeight() + " refreshRate:" + mode.getRefreshRate() + " ModeId:" + mode.getModeId());
                        String str4 = TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("getSupportedModes length:");
                        sb.append(supportedModes.length);
                        TPNativeLog.printLog(2, str4, sb.toString());
                        for (int i = 0; i < supportedModes.length; i++) {
                            String str5 = TAG;
                            TPNativeLog.printLog(2, str5, "getSupportedModes width:" + supportedModes[i].getPhysicalWidth() + " height:" + supportedModes[i].getPhysicalHeight() + " refreshRate:" + supportedModes[i].getRefreshRate() + " ModeId:" + supportedModes[i].getModeId());
                        }
                        mCurScreenRefreshRate = mode.getRefreshRate();
                    }
                }
                return mCurScreenRefreshRate;
            }
        }
        TPNativeLog.printLog(4, str, str2);
        return mCurScreenRefreshRate;
    }

    public static void init(Context context) {
        synchronized (TPScreenRefreshRateDetector.class) {
            TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init enter!");
            if (!isInitted) {
                mContext = new WeakReference<>(context.getApplicationContext());
                isInitted = true;
                initHandleMsg();
                TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init succeed!");
            }
        }
    }

    public static void initHandleMsg() {
        mHandler = new Handler(getLooper()) { // from class: com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 10001 && TPScreenRefreshRateDetector.mDisplayManager != null) {
                    Display display = TPScreenRefreshRateDetector.mDisplayManager.getDisplay(0);
                    String mode = display.getMode().toString();
                    String str = TPScreenRefreshRateDetector.TAG;
                    TPNativeLog.printLog(2, str, "handleMessage DISPLAY_CHANGE, mode:" + mode.toString());
                    TPScreenRefreshRateDetector.notifyScreenRefreshRateChange(display.getMode().getRefreshRate());
                }
                super.handleMessage(message);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyScreenRefreshRateChange(float f) {
        boolean z;
        if (Math.abs(f - mCurScreenRefreshRate) >= 1.0f) {
            String str = TAG;
            TPNativeLog.printLog(2, str, "notifyScreenRefreshRateChange Change From " + mCurScreenRefreshRate + " to " + f);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            mCurScreenRefreshRate = f;
            synchronized (TPScreenRefreshRateDetector.class) {
                for (ScreenRefreshRateChangedListener screenRefreshRateChangedListener : listeners) {
                    screenRefreshRateChangedListener.onScreenRefreshRateChanged(f);
                }
            }
        }
    }

    public static void removeListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.remove(screenRefreshRateChangedListener);
        }
    }
}
