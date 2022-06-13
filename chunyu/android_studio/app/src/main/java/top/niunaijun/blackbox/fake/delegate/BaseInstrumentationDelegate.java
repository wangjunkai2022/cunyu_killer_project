package top.niunaijun.blackbox.fake.delegate;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.app.UiAutomation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import top.niunaijun.blackbox.utils.Reflector;

/* loaded from: classes3.dex */
public class BaseInstrumentationDelegate extends Instrumentation {
    protected Instrumentation mBaseInstrumentation;

    @Override // android.app.Instrumentation
    public void onCreate(Bundle bundle) {
        this.mBaseInstrumentation.onCreate(bundle);
    }

    @Override // android.app.Instrumentation
    public void start() {
        this.mBaseInstrumentation.start();
    }

    @Override // android.app.Instrumentation
    public void onStart() {
        this.mBaseInstrumentation.onStart();
    }

    @Override // android.app.Instrumentation
    public boolean onException(Object obj, Throwable th) {
        return this.mBaseInstrumentation.onException(obj, th);
    }

    @Override // android.app.Instrumentation
    public void sendStatus(int i, Bundle bundle) {
        this.mBaseInstrumentation.sendStatus(i, bundle);
    }

    @Override // android.app.Instrumentation
    public void addResults(Bundle bundle) {
        this.mBaseInstrumentation.addResults(bundle);
    }

    @Override // android.app.Instrumentation
    public void finish(int i, Bundle bundle) {
        this.mBaseInstrumentation.finish(i, bundle);
    }

    @Override // android.app.Instrumentation
    public void setAutomaticPerformanceSnapshots() {
        this.mBaseInstrumentation.setAutomaticPerformanceSnapshots();
    }

    @Override // android.app.Instrumentation
    public void startPerformanceSnapshot() {
        this.mBaseInstrumentation.startPerformanceSnapshot();
    }

    @Override // android.app.Instrumentation
    public void endPerformanceSnapshot() {
        this.mBaseInstrumentation.endPerformanceSnapshot();
    }

    @Override // android.app.Instrumentation
    public void onDestroy() {
        this.mBaseInstrumentation.onDestroy();
    }

    @Override // android.app.Instrumentation
    public Context getContext() {
        return this.mBaseInstrumentation.getContext();
    }

    @Override // android.app.Instrumentation
    public ComponentName getComponentName() {
        return this.mBaseInstrumentation.getComponentName();
    }

    @Override // android.app.Instrumentation
    public Context getTargetContext() {
        return this.mBaseInstrumentation.getTargetContext();
    }

    @Override // android.app.Instrumentation
    public boolean isProfiling() {
        return this.mBaseInstrumentation.isProfiling();
    }

    @Override // android.app.Instrumentation
    public void startProfiling() {
        this.mBaseInstrumentation.startProfiling();
    }

    @Override // android.app.Instrumentation
    public void stopProfiling() {
        this.mBaseInstrumentation.stopProfiling();
    }

    @Override // android.app.Instrumentation
    public void setInTouchMode(boolean z) {
        this.mBaseInstrumentation.setInTouchMode(z);
    }

    @Override // android.app.Instrumentation
    public void waitForIdle(Runnable runnable) {
        this.mBaseInstrumentation.waitForIdle(runnable);
    }

    @Override // android.app.Instrumentation
    public void waitForIdleSync() {
        this.mBaseInstrumentation.waitForIdleSync();
    }

    @Override // android.app.Instrumentation
    public void runOnMainSync(Runnable runnable) {
        this.mBaseInstrumentation.runOnMainSync(runnable);
    }

    @Override // android.app.Instrumentation
    public Activity startActivitySync(Intent intent) {
        return this.mBaseInstrumentation.startActivitySync(intent);
    }

    @Override // android.app.Instrumentation
    public void addMonitor(Instrumentation.ActivityMonitor activityMonitor) {
        this.mBaseInstrumentation.addMonitor(activityMonitor);
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(IntentFilter intentFilter, Instrumentation.ActivityResult activityResult, boolean z) {
        return this.mBaseInstrumentation.addMonitor(intentFilter, activityResult, z);
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(String str, Instrumentation.ActivityResult activityResult, boolean z) {
        return this.mBaseInstrumentation.addMonitor(str, activityResult, z);
    }

    @Override // android.app.Instrumentation
    public boolean checkMonitorHit(Instrumentation.ActivityMonitor activityMonitor, int i) {
        return this.mBaseInstrumentation.checkMonitorHit(activityMonitor, i);
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitor(Instrumentation.ActivityMonitor activityMonitor) {
        return this.mBaseInstrumentation.waitForMonitor(activityMonitor);
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitorWithTimeout(Instrumentation.ActivityMonitor activityMonitor, long j) {
        return this.mBaseInstrumentation.waitForMonitorWithTimeout(activityMonitor, j);
    }

    @Override // android.app.Instrumentation
    public void removeMonitor(Instrumentation.ActivityMonitor activityMonitor) {
        this.mBaseInstrumentation.removeMonitor(activityMonitor);
    }

    @Override // android.app.Instrumentation
    public boolean invokeMenuActionSync(Activity activity, int i, int i2) {
        return this.mBaseInstrumentation.invokeMenuActionSync(activity, i, i2);
    }

    @Override // android.app.Instrumentation
    public boolean invokeContextMenuAction(Activity activity, int i, int i2) {
        return this.mBaseInstrumentation.invokeContextMenuAction(activity, i, i2);
    }

    @Override // android.app.Instrumentation
    public void sendStringSync(String str) {
        this.mBaseInstrumentation.sendStringSync(str);
    }

    @Override // android.app.Instrumentation
    public void sendKeySync(KeyEvent keyEvent) {
        this.mBaseInstrumentation.sendKeySync(keyEvent);
    }

    @Override // android.app.Instrumentation
    public void sendKeyDownUpSync(int i) {
        this.mBaseInstrumentation.sendKeyDownUpSync(i);
    }

    @Override // android.app.Instrumentation
    public void sendCharacterSync(int i) {
        this.mBaseInstrumentation.sendCharacterSync(i);
    }

    @Override // android.app.Instrumentation
    public void sendPointerSync(MotionEvent motionEvent) {
        this.mBaseInstrumentation.sendPointerSync(motionEvent);
    }

    @Override // android.app.Instrumentation
    public void sendTrackballEventSync(MotionEvent motionEvent) {
        this.mBaseInstrumentation.sendTrackballEventSync(motionEvent);
    }

    @Override // android.app.Instrumentation
    public Application newApplication(ClassLoader classLoader, String str, Context context) throws ClassNotFoundException, IllegalAccessException, InstantiationException {
        return this.mBaseInstrumentation.newApplication(classLoader, str, context);
    }

    @Override // android.app.Instrumentation
    public void callApplicationOnCreate(Application application) {
        this.mBaseInstrumentation.callApplicationOnCreate(application);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(Class<?> cls, Context context, IBinder iBinder, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, Object obj) throws IllegalAccessException, InstantiationException {
        return this.mBaseInstrumentation.newActivity(cls, context, iBinder, application, intent, activityInfo, charSequence, activity, str, obj);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws ClassNotFoundException, IllegalAccessException, InstantiationException {
        return this.mBaseInstrumentation.newActivity(classLoader, str, intent);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        this.mBaseInstrumentation.callActivityOnCreate(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        this.mBaseInstrumentation.callActivityOnCreate(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnDestroy(Activity activity) {
        this.mBaseInstrumentation.callActivityOnDestroy(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle bundle) {
        this.mBaseInstrumentation.callActivityOnRestoreInstanceState(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        this.mBaseInstrumentation.callActivityOnRestoreInstanceState(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle bundle) {
        this.mBaseInstrumentation.callActivityOnPostCreate(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        this.mBaseInstrumentation.callActivityOnPostCreate(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        this.mBaseInstrumentation.callActivityOnNewIntent(activity, intent);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStart(Activity activity) {
        this.mBaseInstrumentation.callActivityOnStart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestart(Activity activity) {
        this.mBaseInstrumentation.callActivityOnRestart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnResume(Activity activity) {
        this.mBaseInstrumentation.callActivityOnResume(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStop(Activity activity) {
        this.mBaseInstrumentation.callActivityOnStop(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle bundle) {
        this.mBaseInstrumentation.callActivityOnSaveInstanceState(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        this.mBaseInstrumentation.callActivityOnSaveInstanceState(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPause(Activity activity) {
        this.mBaseInstrumentation.callActivityOnPause(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnUserLeaving(Activity activity) {
        this.mBaseInstrumentation.callActivityOnUserLeaving(activity);
    }

    @Override // android.app.Instrumentation
    public void startAllocCounting() {
        this.mBaseInstrumentation.startAllocCounting();
    }

    @Override // android.app.Instrumentation
    public void stopAllocCounting() {
        this.mBaseInstrumentation.stopAllocCounting();
    }

    @Override // android.app.Instrumentation
    public Bundle getAllocCounts() {
        return this.mBaseInstrumentation.getAllocCounts();
    }

    @Override // android.app.Instrumentation
    public Bundle getBinderCounts() {
        return this.mBaseInstrumentation.getBinderCounts();
    }

    @Override // android.app.Instrumentation
    public UiAutomation getUiAutomation() {
        return this.mBaseInstrumentation.getUiAutomation();
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i, Bundle bundle) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE, Bundle.class).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i), bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i, Bundle bundle) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, String.class, Intent.class, Integer.TYPE, Bundle.class).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, str, intent, Integer.valueOf(i), bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, Fragment.class, Intent.class, Integer.TYPE).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, fragment, intent, Integer.valueOf(i));
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i));
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i, Bundle bundle) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, Fragment.class, Intent.class, Integer.TYPE, Bundle.class).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, fragment, intent, Integer.valueOf(i), bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i, Bundle bundle, UserHandle userHandle) throws Throwable {
        return (Instrumentation.ActivityResult) invokeExecStartActivity(this.mBaseInstrumentation, Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE, Bundle.class, UserHandle.class).callByCaller(this.mBaseInstrumentation, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i), bundle, userHandle);
    }

    private static Reflector invokeExecStartActivity(Object obj, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                return Reflector.on(obj.getClass()).method("execStartActivity", clsArr);
            } catch (Exception unused) {
            }
        }
        throw new NoSuchMethodException();
    }
}
