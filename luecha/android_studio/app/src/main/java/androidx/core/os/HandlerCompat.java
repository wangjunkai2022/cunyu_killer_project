package androidx.core.os;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public final class HandlerCompat {
    private static final String TAG = "HandlerCompat";

    public static Handler createAsync(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, true);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
                Log.v("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor");
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                } else if (cause instanceof Error) {
                    throw ((Error) cause);
                } else {
                    throw new RuntimeException(cause);
                }
            }
        }
        return new Handler(looper);
    }

    public static Handler createAsync(Looper looper, Handler.Callback callback) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper, callback);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, callback, true);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
                Log.v("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor");
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                } else if (cause instanceof Error) {
                    throw ((Error) cause);
                } else {
                    throw new RuntimeException(cause);
                }
            }
        }
        return new Handler(looper, callback);
    }

    public static boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            return handler.postDelayed(runnable, obj, j);
        }
        Message obtain = Message.obtain(handler, runnable);
        obtain.obj = obj;
        return handler.sendMessageDelayed(obtain, j);
    }

    private HandlerCompat() {
    }

    /* loaded from: classes2.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        public static boolean hasCallbacks(Handler handler, Runnable runnable) {
            return handler.hasCallbacks(runnable);
        }
    }

    /* loaded from: classes2.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            return Handler.createAsync(looper);
        }

        public static Handler createAsync(Looper looper, Handler.Callback callback) {
            return Handler.createAsync(looper, callback);
        }

        public static boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j) {
            return handler.postDelayed(runnable, obj, j);
        }
    }
}
