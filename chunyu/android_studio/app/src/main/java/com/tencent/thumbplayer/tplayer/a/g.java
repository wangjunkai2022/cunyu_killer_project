package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.tencent.thumbplayer.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.e.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class g implements ITPExtendReportController, com.tencent.thumbplayer.e.a {
    private static final Map<Integer, Integer> k = new HashMap();
    private ITPReportInfoGetter a;
    private HandlerThread b;
    private a c;
    private a d;
    private l e;
    private CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> f;
    private Context g;
    private com.tencent.thumbplayer.tplayer.a.a.a h;
    private h i;
    private Object j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends Handler {
        final /* synthetic */ g a;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.a.a(message.what, message.obj);
            if (this.a.d != null) {
                this.a.d.a(message.what, message.obj);
            }
            this.a.b(message.what, message.obj);
        }
    }

    static {
        k.put(119, 0);
        k.put(203, 16);
        k.put(100, 1);
        k.put(101, 2);
        k.put(102, 3);
        k.put(103, 4);
        k.put(104, 5);
        k.put(110, 5);
        k.put(109, 5);
        k.put(108, 5);
        k.put(105, 6);
        k.put(106, 7);
        k.put(107, 8);
        k.put(111, 9);
        k.put(112, 10);
        k.put(114, 11);
        k.put(115, 12);
        k.put(200, 100);
        k.put(201, 101);
        k.put(202, 102);
        k.put(116, 14);
        k.put(113, 13);
        k.put(118, 15);
    }

    private void a(int i) {
        String str;
        if (this.d != null) {
            str = "mITPReporter has been create, do not create again.";
        } else {
            this.d = k.a(i);
            a aVar = this.d;
            if (aVar == null) {
                str = "initReporter(" + i + ") fail, mITPReporter is null.";
            } else {
                aVar.a(this.g, this.e);
                this.d.a(this.a);
                this.d.a(this.h);
                Iterator<WeakReference<ITPReportChannelListener>> it = this.f.iterator();
                while (it.hasNext()) {
                    ITPReportChannelListener iTPReportChannelListener = it.next().get();
                    if (iTPReportChannelListener != null) {
                        this.d.a(iTPReportChannelListener);
                    }
                }
                return;
            }
        }
        TPLogUtil.w("TPReportController", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object obj) {
        if (i == 0) {
            b(obj);
        } else if (i == 1) {
            c(obj);
        } else if (i == 2) {
            d(obj);
        } else if (i == 6) {
            e(obj);
        } else if (i == 16) {
            a(obj);
        }
    }

    private void a(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPReportController", "onSetDataSource params class is not match:");
            return;
        }
        this.e.b = ((b) obj).c();
        TPLogUtil.i("TPReportController", "TPPlayerAdapter setDataSource time:" + this.e.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, Object obj) {
        if (i == 5) {
            f(obj);
        } else if (i == 1000) {
            g(obj);
        }
    }

    private void b(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPReportController", "onSetPlayerConfigParams fail:params is not instanceof TPPlayerEvent");
            return;
        }
        b bVar = (b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 3 || !(b[0] instanceof String) || !(b[1] instanceof Integer) || !(b[2] instanceof Boolean)) {
            TPLogUtil.e("TPReportController", "onSetPlayerConfigParams fail:eventParams is not match");
            return;
        }
        this.e.a = bVar.c();
        l lVar = this.e;
        lVar.e = (String) b[0];
        lVar.h = ((Boolean) b[2]).booleanValue();
        this.e.f = ((Integer) b[1]).intValue();
        TPLogUtil.i("TPReportController", "onSetPlayerConfigParams original url:" + this.e.e + " isUseProxy:" + this.e.h + " urlProtocol:" + this.e.f);
    }

    private void c(Object obj) {
        if (!this.i.b(1)) {
            TPLogUtil.e("TPReportController", "onPrepareStart Current state is not match:" + this.i.toString());
            return;
        }
        this.i.a(2);
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPReportController", "onPrepareStart params class is not match:");
            return;
        }
        b bVar = (b) obj;
        this.e.c = bVar.c();
        this.e.d = bVar.d();
        l lVar = this.e;
        lVar.i = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
    }

    private void d(Object obj) {
        String str;
        if (!this.i.b(2)) {
            str = "onPrepareEnd Current state is not match:" + this.i.toString();
        } else {
            this.i.a(3);
            if (obj == null) {
                str = "onPrepareEnd params is null";
            } else if (!(obj instanceof b)) {
                str = "onPrepareEnd params class:" + obj.getClass().getName() + " is not match:";
            } else {
                Object[] b = ((b) obj).b();
                if (b == null) {
                    str = "onPrepareEnd objectParams is null";
                } else if (b.length != 2) {
                    str = "onPrepareEnd objectParams length is not match";
                } else if (!(b[0] instanceof Long)) {
                    str = "onPrepareEnd objectParams[0] is not Long";
                } else {
                    long longValue = ((Long) b[0]).longValue();
                    if (!(b[1] instanceof Integer)) {
                        str = "onPrepareEnd objectParams[1] is not Integer";
                    } else {
                        this.e.g = ((Integer) b[1]).intValue();
                        TPLogUtil.i("TPReportController", "onPrepareEnd durationMs:" + longValue + " playType:" + this.e.g);
                        if (longValue <= 0) {
                            a(1);
                            return;
                        } else {
                            a(0);
                            return;
                        }
                    }
                }
            }
        }
        TPLogUtil.e("TPReportController", str);
    }

    private void e(Object obj) {
        if (this.i.b(2)) {
            a(2);
        }
    }

    private void f(Object obj) {
        this.i.a(1);
        a aVar = this.d;
        if (aVar != null) {
            aVar.a();
            this.d = null;
        }
        this.e = new l();
    }

    private void g(Object obj) {
        TPLogUtil.i("TPReportController", "onControllerRelease");
        synchronized (this.j) {
            if (this.b != null) {
                o.a().a(this.b, this.c);
                this.b = null;
                this.c = null;
            }
            this.f.clear();
            this.j.notifyAll();
            this.j = null;
        }
    }

    @Override // com.tencent.thumbplayer.e.a
    public void a(b bVar) {
        if (!k.containsKey(Integer.valueOf(bVar.a()))) {
            TPLogUtil.w("TPReportController", "EventId:" + bVar.a() + " is not need process");
            return;
        }
        this.c.obtainMessage(k.get(Integer.valueOf(bVar.a())).intValue(), bVar).sendToTarget();
    }

    @Override // com.tencent.thumbplayer.api.reportv2.ITPExtendReportController
    public void addReportChannelListener(ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.f;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPReportController", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPReportController", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.f.add(new WeakReference<>(iTPReportChannelListener));
    }

    @Override // com.tencent.thumbplayer.api.reportv2.ITPExtendReportController
    public void setReportInfoGetter(ITPReportInfoGetter iTPReportInfoGetter) {
        this.a = iTPReportInfoGetter;
    }
}
