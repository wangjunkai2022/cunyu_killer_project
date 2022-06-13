package top.niunaijun.blackbox.core.system.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes3.dex */
public interface IBUserManagerService extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements IBUserManagerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
        public BUserInfo createUser(int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
        public void deleteUser(int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
        public boolean exists(int i) throws RemoteException {
            return false;
        }

        @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
        public BUserInfo getUserInfo(int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
        public List<BUserInfo> getUsers() throws RemoteException {
            return null;
        }
    }

    BUserInfo createUser(int i) throws RemoteException;

    void deleteUser(int i) throws RemoteException;

    boolean exists(int i) throws RemoteException;

    BUserInfo getUserInfo(int i) throws RemoteException;

    List<BUserInfo> getUsers() throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IBUserManagerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.user.IBUserManagerService";
        static final int TRANSACTION_createUser = 3;
        static final int TRANSACTION_deleteUser = 5;
        static final int TRANSACTION_exists = 2;
        static final int TRANSACTION_getUserInfo = 1;
        static final int TRANSACTION_getUsers = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBUserManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBUserManagerService)) {
                return new Proxy(iBinder);
            }
            return (IBUserManagerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                BUserInfo userInfo = getUserInfo(parcel.readInt());
                parcel2.writeNoException();
                if (userInfo != null) {
                    parcel2.writeInt(1);
                    userInfo.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean exists = exists(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(exists ? 1 : 0);
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                BUserInfo createUser = createUser(parcel.readInt());
                parcel2.writeNoException();
                if (createUser != null) {
                    parcel2.writeInt(1);
                    createUser.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                List<BUserInfo> users = getUsers();
                parcel2.writeNoException();
                parcel2.writeTypedList(users);
                return true;
            } else if (i == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                deleteUser(parcel.readInt());
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
        public static class Proxy implements IBUserManagerService {
            public static IBUserManagerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
            public BUserInfo getUserInfo(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserInfo(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? BUserInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
            public boolean exists(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    boolean z = false;
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().exists(i);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
            public BUserInfo createUser(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createUser(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? BUserInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
            public List<BUserInfo> getUsers() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUsers();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(BUserInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.user.IBUserManagerService
            public void deleteUser(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(5, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().deleteUser(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBUserManagerService iBUserManagerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBUserManagerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBUserManagerService;
                return true;
            }
        }

        public static IBUserManagerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
