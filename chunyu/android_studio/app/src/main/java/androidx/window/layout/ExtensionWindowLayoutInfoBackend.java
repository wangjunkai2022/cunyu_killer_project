package androidx.window.layout;

import android.app.Activity;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExtensionWindowLayoutInfoBackend.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\u0016\u0010\u0014\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;", "Landroidx/window/layout/WindowBackend;", "component", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "(Landroidx/window/extensions/layout/WindowLayoutComponent;)V", "activityToListeners", "", "Landroid/app/Activity;", "Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;", "extensionWindowBackendLock", "Ljava/util/concurrent/locks/ReentrantLock;", "listenerToActivity", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "registerLayoutChangeCallback", "", "activity", "executor", "Ljava/util/concurrent/Executor;", "callback", "unregisterLayoutChangeCallback", "MulticastConsumer", "window_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ExtensionWindowLayoutInfoBackend implements WindowBackend {
    private final WindowLayoutComponent component;
    private final ReentrantLock extensionWindowBackendLock = new ReentrantLock();
    private final Map<Activity, MulticastConsumer> activityToListeners = new LinkedHashMap();
    private final Map<Consumer<WindowLayoutInfo>, Activity> listenerToActivity = new LinkedHashMap();

    public ExtensionWindowLayoutInfoBackend(WindowLayoutComponent windowLayoutComponent) {
        Intrinsics.checkNotNullParameter(windowLayoutComponent, "component");
        this.component = windowLayoutComponent;
    }

    @Override // androidx.window.layout.WindowBackend
    public void registerLayoutChangeCallback(Activity activity, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        Unit unit;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(consumer, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = this.activityToListeners.get(activity);
            if (multicastConsumer == null) {
                unit = null;
            } else {
                multicastConsumer.addListener(consumer);
                this.listenerToActivity.put(consumer, activity);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                ExtensionWindowLayoutInfoBackend extensionWindowLayoutInfoBackend = this;
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(activity);
                extensionWindowLayoutInfoBackend.activityToListeners.put(activity, multicastConsumer2);
                extensionWindowLayoutInfoBackend.listenerToActivity.put(consumer, activity);
                multicastConsumer2.addListener(consumer);
                extensionWindowLayoutInfoBackend.component.addWindowLayoutInfoListener(activity, multicastConsumer2);
            }
            Unit unit2 = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            Activity activity = this.listenerToActivity.get(consumer);
            if (activity != null) {
                MulticastConsumer multicastConsumer = this.activityToListeners.get(activity);
                if (multicastConsumer != null) {
                    multicastConsumer.removeListener(consumer);
                    if (multicastConsumer.isEmpty()) {
                        this.component.removeWindowLayoutInfoListener(multicastConsumer);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* compiled from: ExtensionWindowLayoutInfoBackend.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0010\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\fJ\u0006\u0010\u0012\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\f0\u000b8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;", "Ljava/util/function/Consumer;", "Landroidx/window/extensions/layout/WindowLayoutInfo;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "lastKnownValue", "Landroidx/window/layout/WindowLayoutInfo;", "multicastConsumerLock", "Ljava/util/concurrent/locks/ReentrantLock;", "registeredListeners", "", "Landroidx/core/util/Consumer;", "accept", "", "value", "addListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "isEmpty", "", "removeListener", "window_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private static final class MulticastConsumer implements java.util.function.Consumer<WindowLayoutInfo> {
        private final Activity activity;
        private WindowLayoutInfo lastKnownValue;
        private final ReentrantLock multicastConsumerLock = new ReentrantLock();
        private final Set<Consumer<WindowLayoutInfo>> registeredListeners = new LinkedHashSet();

        public MulticastConsumer(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        public void accept(WindowLayoutInfo windowLayoutInfo) {
            Intrinsics.checkNotNullParameter(windowLayoutInfo, "value");
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                this.lastKnownValue = ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(this.activity, windowLayoutInfo);
                Iterator<T> it = this.registeredListeners.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(this.lastKnownValue);
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void addListener(Consumer<WindowLayoutInfo> consumer) {
            Intrinsics.checkNotNullParameter(consumer, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                WindowLayoutInfo windowLayoutInfo = this.lastKnownValue;
                if (windowLayoutInfo != null) {
                    consumer.accept(windowLayoutInfo);
                }
                this.registeredListeners.add(consumer);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void removeListener(Consumer<WindowLayoutInfo> consumer) {
            Intrinsics.checkNotNullParameter(consumer, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                this.registeredListeners.remove(consumer);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final boolean isEmpty() {
            return this.registeredListeners.isEmpty();
        }
    }
}
