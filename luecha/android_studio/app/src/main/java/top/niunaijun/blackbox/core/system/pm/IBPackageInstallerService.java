package top.niunaijun.blackbox.core.system.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IBPackageInstallerService extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IBPackageInstallerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
        public int installPackageAsUser(BPackageSettings bPackageSettings, int i) throws RemoteException {
            return 0;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
        public int uninstallPackageAsUser(BPackageSettings bPackageSettings, boolean z, int i) throws RemoteException {
            return 0;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
        public int updatePackage(BPackageSettings bPackageSettings) throws RemoteException {
            return 0;
        }
    }

    int installPackageAsUser(BPackageSettings bPackageSettings, int i) throws RemoteException;

    int uninstallPackageAsUser(BPackageSettings bPackageSettings, boolean z, int i) throws RemoteException;

    int updatePackage(BPackageSettings bPackageSettings) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IBPackageInstallerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService";
        static final int TRANSACTION_installPackageAsUser = 1;
        static final int TRANSACTION_uninstallPackageAsUser = 2;
        static final int TRANSACTION_updatePackage = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBPackageInstallerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBPackageInstallerService)) {
                return new Proxy(iBinder);
            }
            return (IBPackageInstallerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            BPackageSettings bPackageSettings = null;
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                if (parcel.readInt() != 0) {
                    bPackageSettings = BPackageSettings.CREATOR.createFromParcel(parcel);
                }
                int installPackageAsUser = installPackageAsUser(bPackageSettings, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(installPackageAsUser);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                if (parcel.readInt() != 0) {
                    bPackageSettings = BPackageSettings.CREATOR.createFromParcel(parcel);
                }
                int uninstallPackageAsUser = uninstallPackageAsUser(bPackageSettings, parcel.readInt() != 0, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(uninstallPackageAsUser);
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                if (parcel.readInt() != 0) {
                    bPackageSettings = BPackageSettings.CREATOR.createFromParcel(parcel);
                }
                int updatePackage = updatePackage(bPackageSettings);
                parcel2.writeNoException();
                parcel2.writeInt(updatePackage);
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
        public static class Proxy implements IBPackageInstallerService {
            public static IBPackageInstallerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
            public int installPackageAsUser(BPackageSettings bPackageSettings, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bPackageSettings != null) {
                        obtain.writeInt(1);
                        bPackageSettings.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().installPackageAsUser(bPackageSettings, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
            public int uninstallPackageAsUser(BPackageSettings bPackageSettings, boolean z, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (bPackageSettings != null) {
                        obtain.writeInt(1);
                        bPackageSettings.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().uninstallPackageAsUser(bPackageSettings, z, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
            public int updatePackage(BPackageSettings bPackageSettings) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bPackageSettings != null) {
                        obtain.writeInt(1);
                        bPackageSettings.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().updatePackage(bPackageSettings);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBPackageInstallerService iBPackageInstallerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBPackageInstallerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBPackageInstallerService;
                return true;
            }
        }

        public static IBPackageInstallerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
