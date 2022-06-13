package top.niunaijun.blackbox.core.system.dump;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import top.niunaijun.blackbox.entity.dump.DumpResult;

/* loaded from: classes4.dex */
public interface IBDumpMonitor extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IBDumpMonitor {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.dump.IBDumpMonitor
        public void onDump(DumpResult dumpResult) throws RemoteException {
        }
    }

    void onDump(DumpResult dumpResult) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IBDumpMonitor {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.dump.IBDumpMonitor";
        static final int TRANSACTION_onDump = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBDumpMonitor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBDumpMonitor)) {
                return new Proxy(iBinder);
            }
            return (IBDumpMonitor) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onDump(parcel.readInt() != 0 ? DumpResult.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes4.dex */
        public static class Proxy implements IBDumpMonitor {
            public static IBDumpMonitor sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // top.niunaijun.blackbox.core.system.dump.IBDumpMonitor
            public void onDump(DumpResult dumpResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dumpResult != null) {
                        obtain.writeInt(1);
                        dumpResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDump(dumpResult);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBDumpMonitor iBDumpMonitor) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBDumpMonitor == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBDumpMonitor;
                return true;
            }
        }

        public static IBDumpMonitor getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
