package top.niunaijun.blackbox.entity;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class ServiceRecord {
    private Map<Intent.FilterComparison, BoundInfo> mBounds = new HashMap();
    private Service mService;
    private int mStartId;
    private boolean rebind;

    /* loaded from: classes4.dex */
    public class BoundInfo {
        private AtomicInteger mBindCount = new AtomicInteger(0);
        private IBinder mIBinder;

        public BoundInfo() {
        }

        public int incrementAndGetBindCount() {
            return this.mBindCount.incrementAndGet();
        }

        public int decrementAndGetBindCount() {
            return this.mBindCount.decrementAndGet();
        }

        public IBinder getIBinder() {
            return this.mIBinder;
        }

        public void setIBinder(IBinder iBinder) {
            this.mIBinder = iBinder;
        }
    }

    public int getStartId() {
        return this.mStartId;
    }

    public void setStartId(int i) {
        this.mStartId = i;
    }

    public Service getService() {
        return this.mService;
    }

    public void setService(Service service) {
        this.mService = service;
    }

    public IBinder getBinder(Intent intent) {
        return getOrCreateBoundInfo(intent).getIBinder();
    }

    public boolean hasBinder(Intent intent) {
        return getOrCreateBoundInfo(intent).getIBinder() != null;
    }

    public void addBinder(Intent intent, final IBinder iBinder) {
        final Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        BoundInfo orCreateBoundInfo = getOrCreateBoundInfo(intent);
        if (orCreateBoundInfo == null) {
            orCreateBoundInfo = new BoundInfo();
            this.mBounds.put(filterComparison, orCreateBoundInfo);
        }
        orCreateBoundInfo.setIBinder(iBinder);
        try {
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: top.niunaijun.blackbox.entity.ServiceRecord.1
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    iBinder.unlinkToDeath(this, 0);
                    ServiceRecord.this.mBounds.remove(filterComparison);
                }
            }, 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public int incrementAndGetBindCount(Intent intent) {
        return getOrCreateBoundInfo(intent).incrementAndGetBindCount();
    }

    public boolean decreaseConnectionCount(Intent intent) {
        BoundInfo boundInfo = this.mBounds.get(new Intent.FilterComparison(intent));
        if (boundInfo != null && boundInfo.decrementAndGetBindCount() > 0) {
            return false;
        }
        return true;
    }

    public BoundInfo getOrCreateBoundInfo(Intent intent) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        BoundInfo boundInfo = this.mBounds.get(filterComparison);
        if (boundInfo != null) {
            return boundInfo;
        }
        BoundInfo boundInfo2 = new BoundInfo();
        this.mBounds.put(filterComparison, boundInfo2);
        return boundInfo2;
    }

    public boolean isRebind() {
        return this.rebind;
    }

    public void setRebind(boolean z) {
        this.rebind = z;
    }
}
