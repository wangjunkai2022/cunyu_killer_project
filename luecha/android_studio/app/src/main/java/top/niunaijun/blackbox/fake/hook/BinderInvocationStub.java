package top.niunaijun.blackbox.fake.hook;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.FileDescriptor;
import reflection.android.os.ServiceManager;

/* loaded from: classes4.dex */
public abstract class BinderInvocationStub extends ClassInvocationStub implements IBinder {
    private IBinder mBaseBinder;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    public void onBindMethod() {
    }

    public BinderInvocationStub(IBinder iBinder) {
        this.mBaseBinder = iBinder;
    }

    @Override // android.os.IBinder
    public String getInterfaceDescriptor() throws RemoteException {
        return this.mBaseBinder.getInterfaceDescriptor();
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return this.mBaseBinder.pingBinder();
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return this.mBaseBinder.isBinderAlive();
    }

    @Override // android.os.IBinder
    public IInterface queryLocalInterface(String str) {
        return (IInterface) getProxyInvocation();
    }

    @Override // android.os.IBinder
    public void dump(FileDescriptor fileDescriptor, String[] strArr) throws RemoteException {
        this.mBaseBinder.dump(fileDescriptor, strArr);
    }

    @Override // android.os.IBinder
    public void dumpAsync(FileDescriptor fileDescriptor, String[] strArr) throws RemoteException {
        this.mBaseBinder.dumpAsync(fileDescriptor, strArr);
    }

    @Override // android.os.IBinder
    public boolean transact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        return this.mBaseBinder.transact(i, parcel, parcel2, i2);
    }

    @Override // android.os.IBinder
    public void linkToDeath(IBinder.DeathRecipient deathRecipient, int i) throws RemoteException {
        this.mBaseBinder.linkToDeath(deathRecipient, i);
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i) {
        return this.mBaseBinder.unlinkToDeath(deathRecipient, i);
    }

    protected void replaceSystemService(String str) {
        ServiceManager.sCache.get().put(str, this);
    }
}
