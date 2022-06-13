package com.tencent.liteav.basic.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: TXCTimer.java */
/* loaded from: classes2.dex */
public class j extends Handler {
    private int a;
    private boolean b = false;
    private a c;

    /* compiled from: TXCTimer.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onTimeout();
    }

    public j(Looper looper, a aVar) {
        super(looper);
        this.c = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.onTimeout();
        }
        if (this.b) {
            sendEmptyMessageDelayed(0, (long) this.a);
        }
    }

    public void a(int i, int i2) {
        a();
        this.a = i2;
        this.b = true;
        sendEmptyMessageDelayed(0, (long) i);
    }

    public void a() {
        while (hasMessages(0)) {
            removeMessages(0);
        }
        this.b = false;
    }
}
