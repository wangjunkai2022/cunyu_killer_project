package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IStopUserCallback extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IStopUserCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.IStopUserCallback
        public void userStopAborted(int i) throws RemoteException {
        }

        @Override // android.app.IStopUserCallback
        public void userStopped(int i) throws RemoteException {
        }
    }

    void userStopAborted(int i) throws RemoteException;

    void userStopped(int i) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IStopUserCallback {
        private static final String DESCRIPTOR = "android.app.IStopUserCallback";
        static final int TRANSACTION_userStopAborted = 2;
        static final int TRANSACTION_userStopped = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IStopUserCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IStopUserCallback)) {
                return new Proxy(iBinder);
            }
            return (IStopUserCallback) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                userStopped(parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                userStopAborted(parcel.readInt());
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
        public static class Proxy implements IStopUserCallback {
            public static IStopUserCallback sDefaultImpl;
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

            @Override // android.app.IStopUserCallback
            public void userStopped(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().userStopped(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.IStopUserCallback
            public void userStopAborted(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().userStopAborted(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IStopUserCallback iStopUserCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iStopUserCallback == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iStopUserCallback;
                return true;
            }
        }

        public static IStopUserCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
