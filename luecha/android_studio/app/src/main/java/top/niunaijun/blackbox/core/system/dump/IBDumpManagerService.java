package top.niunaijun.blackbox.core.system.dump;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import top.niunaijun.blackbox.entity.dump.DumpResult;

/* loaded from: classes4.dex */
public interface IBDumpManagerService extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IBDumpManagerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
        public void noticeMonitor(DumpResult dumpResult) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
        public void registerMonitor(IBinder iBinder) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
        public void unregisterMonitor(IBinder iBinder) throws RemoteException {
        }
    }

    void noticeMonitor(DumpResult dumpResult) throws RemoteException;

    void registerMonitor(IBinder iBinder) throws RemoteException;

    void unregisterMonitor(IBinder iBinder) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IBDumpManagerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService";
        static final int TRANSACTION_noticeMonitor = 3;
        static final int TRANSACTION_registerMonitor = 1;
        static final int TRANSACTION_unregisterMonitor = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBDumpManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBDumpManagerService)) {
                return new Proxy(iBinder);
            }
            return (IBDumpManagerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                registerMonitor(parcel.readStrongBinder());
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterMonitor(parcel.readStrongBinder());
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                noticeMonitor(parcel.readInt() != 0 ? DumpResult.CREATOR.createFromParcel(parcel) : null);
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
        public static class Proxy implements IBDumpManagerService {
            public static IBDumpManagerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
            public void registerMonitor(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMonitor(iBinder);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
            public void unregisterMonitor(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterMonitor(iBinder);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
            public void noticeMonitor(DumpResult dumpResult) throws RemoteException {
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
                    if (this.mRemote.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().noticeMonitor(dumpResult);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBDumpManagerService iBDumpManagerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBDumpManagerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBDumpManagerService;
                return true;
            }
        }

        public static IBDumpManagerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
