package com.tencent.thumbplayer.tplayer;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.n;
import com.tencent.thumbplayer.utils.q;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d implements InvocationHandler {
    private b a;
    private q b;

    public d(b bVar) {
        this.a = bVar;
        this.b = new q(this.a.b(), this.a.a(), this.a);
    }

    private int a(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    private boolean a(Method method, Object[] objArr) {
        return n.a(this.a.getClass(), method.getName(), objArr) != null;
    }

    private Object b(Method method, Object[] objArr) {
        String name = method.getName();
        if (name.equals("setDataSource")) {
            objArr = b(objArr);
        }
        if (method.getReturnType().getName().equals("void")) {
            this.b.b(name, objArr);
            return null;
        }
        Object a = this.b.a(name, objArr);
        String b = this.a.b();
        TPLogUtil.i(b, "dealThreadSwitch: " + name + ", var count:" + a(objArr) + ", result:" + a);
        return a;
    }

    private Object[] b(Object[] objArr) {
        String b;
        StringBuilder sb;
        if (objArr[0] != null && (objArr[0] instanceof ParcelFileDescriptor)) {
            try {
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) objArr[0];
                objArr[0] = ParcelFileDescriptor.fromFd(parcelFileDescriptor.detachFd());
                parcelFileDescriptor.close();
            } catch (Exception e) {
                e = e;
                b = this.a.b();
                sb = new StringBuilder();
                sb.append("setDataSource, fromFd has exception:");
                sb.append(e.toString());
                TPLogUtil.e(b, sb.toString());
                return objArr;
            }
        } else if (objArr[0] != null && (objArr[0] instanceof AssetFileDescriptor)) {
            try {
                AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) objArr[0];
                objArr[0] = new AssetFileDescriptor(ParcelFileDescriptor.fromFd(assetFileDescriptor.getParcelFileDescriptor().detachFd()), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                assetFileDescriptor.close();
            } catch (Exception e2) {
                e = e2;
                b = this.a.b();
                sb = new StringBuilder();
                sb.append("setDataSource, fromFd has exception:");
                sb.append(e.toString());
                TPLogUtil.e(b, sb.toString());
                return objArr;
            }
        }
        return objArr;
    }

    public Object a() {
        return Proxy.newProxyInstance(this.a.getClass().getClassLoader(), this.a.getClass().getInterfaces(), this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        return !a(method, objArr) ? method.invoke(this.a, objArr) : b(method, objArr);
    }
}
