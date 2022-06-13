package android.content.pm;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IPackageInstallObserver2 extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IPackageInstallObserver2 {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.pm.IPackageInstallObserver2
        public void onPackageInstalled(String str, int i, String str2, Bundle bundle) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallObserver2
        public void onUserActionRequired(Intent intent) throws RemoteException {
        }
    }

    void onPackageInstalled(String str, int i, String str2, Bundle bundle) throws RemoteException;

    void onUserActionRequired(Intent intent) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IPackageInstallObserver2 {
        private static final String DESCRIPTOR = "android.content.pm.IPackageInstallObserver2";
        static final int TRANSACTION_onPackageInstalled = 2;
        static final int TRANSACTION_onUserActionRequired = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPackageInstallObserver2 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IPackageInstallObserver2)) {
                return new Proxy(iBinder);
            }
            return (IPackageInstallObserver2) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Intent intent = null;
            Bundle bundle = null;
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                if (parcel.readInt() != 0) {
                    intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                }
                onUserActionRequired(intent);
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String readString = parcel.readString();
                int readInt = parcel.readInt();
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onPackageInstalled(readString, readInt, readString2, bundle);
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
        public static class Proxy implements IPackageInstallObserver2 {
            public static IPackageInstallObserver2 sDefaultImpl;
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

            @Override // android.content.pm.IPackageInstallObserver2
            public void onUserActionRequired(Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onUserActionRequired(intent);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallObserver2
            public void onPackageInstalled(String str, int i, String str2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPackageInstalled(str, i, str2, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPackageInstallObserver2 iPackageInstallObserver2) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iPackageInstallObserver2 == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iPackageInstallObserver2;
                return true;
            }
        }

        public static IPackageInstallObserver2 getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
