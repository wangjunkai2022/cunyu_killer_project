package com.tencent.thumbplayer.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class q {
    private String a;
    private a b;
    private Looper c;
    private m d = new m();
    private Object e;
    private Class<?> f;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        private a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            q.this.a(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class b {
        Object a;
        e b;

        private b() {
        }
    }

    public q(String str, Looper looper, Object obj) {
        this.a = str;
        this.c = looper;
        this.b = new a(this.c);
        this.e = obj;
        this.f = this.e.getClass();
        if (!n.a(this.f, 0)) {
            String str2 = this.a;
            TPLogUtil.e(str2, "Register " + this.f.getName() + " @ThreadSwitch method failed, version: 2.27.0.1123");
            throw new RuntimeException("register @ThreadSwitch method failed, player can not work");
        }
    }

    private Object a(int i, int i2, int i3, Object obj, boolean z, boolean z2, long j) {
        e eVar = new e();
        b bVar = new b();
        bVar.a = obj;
        bVar.b = eVar;
        b(i, i2, i3, bVar, z, z2, j);
        return eVar.a(500);
    }

    private Object a(String str, Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        String name = n.a(this.f, str, a(obj2)).getReturnType().getName();
        if (name.equals("boolean")) {
            return false;
        }
        if (name.equals("int")) {
            return 0;
        }
        if (name.equals("long")) {
            return 0L;
        }
        if (name.equals("float")) {
            return Float.valueOf(0.0f);
        }
        return null;
    }

    private String a(int i) {
        String b2 = n.b(this.f, i);
        if (!TextUtils.isEmpty(b2) && !b2.equals("unknown")) {
            return b2;
        }
        return i + " not find";
    }

    private void a(int i, Object obj) {
        Throwable illegalStateException;
        Exception exc;
        e eVar = obj instanceof b ? ((b) obj).b : null;
        Method f = n.f(this.f, i);
        if (f == null) {
            String str = this.a;
            TPLogUtil.e(str, "invokeMethod, handle method name is empty, msg:" + i);
            if (eVar != null) {
                eVar.a((Throwable) new RuntimeException("invokeMethod, handle method name is empty"));
                return;
            }
            return;
        }
        try {
            Object invoke = f.getParameterTypes().length == 0 ? f.invoke(this.e, new Object[0]) : f.invoke(this.e, a(obj));
            if (eVar != null) {
                eVar.a(invoke);
            }
        } catch (InvocationTargetException e) {
            String str2 = this.a;
            TPLogUtil.e(str2, "invokeMethod " + f.getName() + " has excecption: " + e.getTargetException().toString());
            if (eVar != null) {
                if (e.getTargetException() instanceof IllegalArgumentException) {
                    illegalStateException = new IllegalArgumentException("invokeMethod " + f.getName() + " failed, params invalid", e.getCause());
                } else if (e.getTargetException() instanceof IllegalStateException) {
                    illegalStateException = new IllegalStateException("invokeMethod " + f.getName() + " failed, state invalid", e.getCause());
                } else {
                    exc = e.getTargetException();
                    eVar.a(exc);
                }
                eVar.a(illegalStateException);
            }
        } catch (Exception e2) {
            String str3 = this.a;
            TPLogUtil.e(str3, "invokeMethod " + f.getName() + " has excecption: " + e2.toString());
            exc = e2;
            if (eVar == null) {
                return;
            }
            eVar.a(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        if (this.e == null) {
            TPLogUtil.e(this.a, "handle listener is null, return");
        } else {
            a(message.what, message.obj);
        }
    }

    private boolean a() {
        return Looper.myLooper() == this.c;
    }

    private Object[] a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof b)) {
            return (Object[]) obj;
        }
        Object obj2 = ((b) obj).a;
        if (obj2 == null) {
            return null;
        }
        return (Object[]) obj2;
    }

    private boolean b(int i, int i2, int i3, Object obj, boolean z, boolean z2, long j) {
        String str;
        StringBuilder sb;
        String str2;
        if (this.b == null) {
            str = this.a;
            sb = new StringBuilder();
            sb.append(a(i));
            str2 = " , send failed , handler null";
        } else if (z && obj == null) {
            str = this.a;
            sb = new StringBuilder();
            sb.append(a(i));
            str2 = ", send failed , params null";
        } else if (!this.c.getThread().isAlive()) {
            str = this.a;
            sb = new StringBuilder();
            sb.append(a(i));
            str2 = ", send failed , thread had dead";
        } else {
            if (!a()) {
                this.d.readLock().lock();
            }
            if (z2) {
                this.b.removeMessages(i);
            }
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            if (a()) {
                a(obtainMessage);
                return true;
            }
            this.b.sendMessageDelayed(obtainMessage, j);
            this.d.readLock().unlock();
            return true;
        }
        sb.append(str2);
        TPLogUtil.e(str, sb.toString());
        return false;
    }

    public Object a(String str, Object obj) {
        return a(str, b(str, obj), obj);
    }

    public Object b(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            int b2 = n.b(this.f, str, a(obj));
            if (b2 >= 0) {
                boolean d = n.d(this.f, b2);
                boolean e = n.e(this.f, b2);
                if (n.c(this.f, b2)) {
                    return a(b2, 0, 0, obj, e, d, 0);
                }
                b(b2, 0, 0, obj, e, d, 0);
                return null;
            }
            String str2 = this.a;
            TPLogUtil.e(str2, "dealThreadSwitch failed , not match method:" + str);
            throw new RuntimeException("dealThreadSwitch failed , not match method:" + str);
        }
        TPLogUtil.e(this.a, "dealThreadSwitch failed , methodName is null");
        throw new RuntimeException("dealThreadSwitch failed , methodName is null");
    }
}
