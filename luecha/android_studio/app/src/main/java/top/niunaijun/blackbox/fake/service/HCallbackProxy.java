package top.niunaijun.blackbox.fake.service;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
import reflection.android.app.ActivityThread;
import reflection.android.app.servertransaction.ClientTransaction;
import reflection.android.app.servertransaction.LaunchActivityItem;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.fake.hook.IInjectHook;
import top.niunaijun.blackbox.proxy.record.ProxyActivityRecord;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes4.dex */
public class HCallbackProxy implements IInjectHook, Handler.Callback {
    public static final String TAG = "HCallbackStub";
    private AtomicBoolean mBeing = new AtomicBoolean(false);
    private Handler.Callback mOtherCallback;

    private Handler.Callback getHCallback() {
        return reflection.android.os.Handler.mCallback.get(getH());
    }

    private Handler getH() {
        return ActivityThread.mH.get(BlackBoxCore.mainThread());
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public void injectHook() {
        Handler.Callback hCallback = getHCallback();
        this.mOtherCallback = hCallback;
        if (hCallback != null && (hCallback == this || hCallback.getClass().getName().equals(getClass().getName()))) {
            this.mOtherCallback = null;
        }
        reflection.android.os.Handler.mCallback.set(getH(), this);
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        Handler.Callback hCallback = getHCallback();
        return (hCallback == null || hCallback == this) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x0020, B:10:0x0028, B:13:0x0039, B:15:0x0049, B:17:0x0051, B:18:0x005d, B:20:0x0061), top: B:29:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b A[DONT_GENERATE] */
    @Override // android.os.Handler.Callback
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean handleMessage(android.os.Message r5) {
        /*
            r4 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.mBeing
            r1 = 1
            boolean r0 = r0.getAndSet(r1)
            r2 = 0
            if (r0 != 0) goto L_0x0078
            boolean r0 = top.niunaijun.blackbox.utils.compat.BuildCompat.isPie()     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x0039
            int r0 = r5.what     // Catch: all -> 0x0071
            reflection.MirrorReflection$FieldWrapper<java.lang.Integer> r3 = reflection.android.app.ActivityThread.H.EXECUTE_TRANSACTION     // Catch: all -> 0x0071
            java.lang.Object r3 = r3.get()     // Catch: all -> 0x0071
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: all -> 0x0071
            int r3 = r3.intValue()     // Catch: all -> 0x0071
            if (r0 != r3) goto L_0x005d
            java.lang.Object r0 = r5.obj     // Catch: all -> 0x0071
            boolean r0 = r4.handleLaunchActivity(r0)     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x005d
            android.os.Handler r0 = r4.getH()     // Catch: all -> 0x0071
            android.os.Message r5 = android.os.Message.obtain(r5)     // Catch: all -> 0x0071
            r0.sendMessageAtFrontOfQueue(r5)     // Catch: all -> 0x0071
        L_0x0033:
            java.util.concurrent.atomic.AtomicBoolean r5 = r4.mBeing
            r5.set(r2)
            return r1
        L_0x0039:
            int r0 = r5.what     // Catch: all -> 0x0071
            reflection.MirrorReflection$FieldWrapper<java.lang.Integer> r3 = reflection.android.app.ActivityThread.H.LAUNCH_ACTIVITY     // Catch: all -> 0x0071
            java.lang.Object r3 = r3.get()     // Catch: all -> 0x0071
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: all -> 0x0071
            int r3 = r3.intValue()     // Catch: all -> 0x0071
            if (r0 != r3) goto L_0x005d
            java.lang.Object r0 = r5.obj     // Catch: all -> 0x0071
            boolean r0 = r4.handleLaunchActivity(r0)     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x005d
            android.os.Handler r0 = r4.getH()     // Catch: all -> 0x0071
            android.os.Message r5 = android.os.Message.obtain(r5)     // Catch: all -> 0x0071
            r0.sendMessageAtFrontOfQueue(r5)     // Catch: all -> 0x0071
            goto L_0x0033
        L_0x005d:
            android.os.Handler$Callback r0 = r4.mOtherCallback     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x006b
            boolean r5 = r0.handleMessage(r5)     // Catch: all -> 0x0071
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.mBeing
            r0.set(r2)
            return r5
        L_0x006b:
            java.util.concurrent.atomic.AtomicBoolean r5 = r4.mBeing
            r5.set(r2)
            return r2
        L_0x0071:
            r5 = move-exception
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.mBeing
            r0.set(r2)
            throw r5
        L_0x0078:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: top.niunaijun.blackbox.fake.service.HCallbackProxy.handleMessage(android.os.Message):boolean");
    }

    private Object getLaunchActivityItem(Object obj) {
        for (Object obj2 : ClientTransaction.mActivityCallbacks.get(obj)) {
            if (LaunchActivityItem.REF.getClazz().getName().equals(obj2.getClass().getCanonicalName())) {
                return obj2;
            }
        }
        return null;
    }

    private boolean handleLaunchActivity(Object obj) {
        Intent intent;
        ActivityInfo activityInfo;
        if (BuildCompat.isPie()) {
            obj = getLaunchActivityItem(obj);
        }
        if (obj == null) {
            return false;
        }
        if (BuildCompat.isPie()) {
            intent = LaunchActivityItem.mIntent.get(obj);
        } else {
            intent = ActivityThread.ActivityClientRecord.intent.get(obj);
        }
        if (!(intent == null || (activityInfo = ProxyActivityRecord.create(intent).mActivityInfo) == null || BActivityThread.currentActivityThread().isInit())) {
            BActivityThread.currentActivityThread().bindApplication(activityInfo.packageName, activityInfo.processName);
        }
        return false;
    }
}
