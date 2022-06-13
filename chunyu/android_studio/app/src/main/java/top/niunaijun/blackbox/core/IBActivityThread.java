package top.niunaijun.blackbox.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IBActivityThread extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements IBActivityThread {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.IBActivityThread
        public void bindApplication() throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.IBActivityThread
        public IBinder getActivityThread() throws RemoteException {
            return null;
        }
    }

    void bindApplication() throws RemoteException;

    IBinder getActivityThread() throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IBActivityThread {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.IBActivityThread";
        static final int TRANSACTION_bindApplication = 2;
        static final int TRANSACTION_getActivityThread = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBActivityThread asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBActivityThread)) {
                return new Proxy(iBinder);
            }
            return (IBActivityThread) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                IBinder activityThread = getActivityThread();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(activityThread);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                bindApplication();
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
        /* loaded from: classes3.dex */
        public static class Proxy implements IBActivityThread {
            public static IBActivityThread sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.IBActivityThread
            public IBinder getActivityThread() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActivityThread();
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.IBActivityThread
            public void bindApplication() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().bindApplication();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBActivityThread iBActivityThread) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBActivityThread == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBActivityThread;
                return true;
            }
        }

        public static IBActivityThread getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
