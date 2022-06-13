package android.os;

/* loaded from: classes4.dex */
public interface ISystemUpdateManager extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements ISystemUpdateManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.os.ISystemUpdateManager
        public Bundle retrieveSystemUpdateInfo() throws RemoteException {
            return null;
        }

        @Override // android.os.ISystemUpdateManager
        public void updateSystemUpdateInfo(PersistableBundle persistableBundle) throws RemoteException {
        }
    }

    Bundle retrieveSystemUpdateInfo() throws RemoteException;

    void updateSystemUpdateInfo(PersistableBundle persistableBundle) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements ISystemUpdateManager {
        private static final String DESCRIPTOR = "android.os.ISystemUpdateManager";
        static final int TRANSACTION_retrieveSystemUpdateInfo = 1;
        static final int TRANSACTION_updateSystemUpdateInfo = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISystemUpdateManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISystemUpdateManager)) {
                return new Proxy(iBinder);
            }
            return (ISystemUpdateManager) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                Bundle retrieveSystemUpdateInfo = retrieveSystemUpdateInfo();
                parcel2.writeNoException();
                if (retrieveSystemUpdateInfo != null) {
                    parcel2.writeInt(1);
                    retrieveSystemUpdateInfo.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                updateSystemUpdateInfo(parcel.readInt() != 0 ? (PersistableBundle) PersistableBundle.CREATOR.createFromParcel(parcel) : null);
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
        public static class Proxy implements ISystemUpdateManager {
            public static ISystemUpdateManager sDefaultImpl;
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

            @Override // android.os.ISystemUpdateManager
            public Bundle retrieveSystemUpdateInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().retrieveSystemUpdateInfo();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.ISystemUpdateManager
            public void updateSystemUpdateInfo(PersistableBundle persistableBundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (persistableBundle != null) {
                        obtain.writeInt(1);
                        persistableBundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateSystemUpdateInfo(persistableBundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ISystemUpdateManager iSystemUpdateManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iSystemUpdateManager == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iSystemUpdateManager;
                return true;
            }
        }

        public static ISystemUpdateManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
