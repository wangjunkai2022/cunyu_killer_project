package com.tencent.thumbplayer.utils;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPProcessLifeCycleEventPublisher implements LifecycleObserver {
    private static TPProcessLifeCycleEventPublisher a = new TPProcessLifeCycleEventPublisher();
    private static boolean b = false;
    private static ArrayList<a> c = new ArrayList<>();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i);
    }

    private TPProcessLifeCycleEventPublisher() {
    }

    private static synchronized void a(int i) {
        synchronized (TPProcessLifeCycleEventPublisher.class) {
            Iterator<a> it = c.iterator();
            while (it.hasNext()) {
                it.next().a(i);
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    private void onCreate() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onCreate");
        a(0);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    private void onDestroy() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onDestroy");
        a(5);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private void onPause() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onPause");
        a(2);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    private void onResume() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onResume");
        a(3);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    private void onStart() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onStart");
        a(1);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private void onStop() {
        TPLogUtil.i("TPProcessLifeCycleEventPublisher", "onStop");
        a(4);
    }
}
