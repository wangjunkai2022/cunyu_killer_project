package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IPackageInstallerCallback extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IPackageInstallerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionActiveChanged(int i, boolean z) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionBadgingChanged(int i) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionCreated(int i) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionFinished(int i, boolean z) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionProgressChanged(int i, float f) throws RemoteException {
        }
    }

    void onSessionActiveChanged(int i, boolean z) throws RemoteException;

    void onSessionBadgingChanged(int i) throws RemoteException;

    void onSessionCreated(int i) throws RemoteException;

    void onSessionFinished(int i, boolean z) throws RemoteException;

    void onSessionProgressChanged(int i, float f) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IPackageInstallerCallback {
        private static final String DESCRIPTOR = "android.content.pm.IPackageInstallerCallback";
        static final int TRANSACTION_onSessionActiveChanged = 3;
        static final int TRANSACTION_onSessionBadgingChanged = 2;
        static final int TRANSACTION_onSessionCreated = 1;
        static final int TRANSACTION_onSessionFinished = 5;
        static final int TRANSACTION_onSessionProgressChanged = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPackageInstallerCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IPackageInstallerCallback)) {
                return new Proxy(iBinder);
            }
            return (IPackageInstallerCallback) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onSessionCreated(parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i != 2) {
                boolean z = false;
                if (i == 3) {
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    onSessionActiveChanged(readInt, z);
                    parcel2.writeNoException();
                    return true;
                } else if (i == 4) {
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionProgressChanged(parcel.readInt(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                } else if (i == 5) {
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    onSessionFinished(readInt2, z);
                    parcel2.writeNoException();
                    return true;
                } else if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                onSessionBadgingChanged(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes4.dex */
        public static class Proxy implements IPackageInstallerCallback {
            public static IPackageInstallerCallback sDefaultImpl;
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

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionCreated(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSessionCreated(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionBadgingChanged(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSessionBadgingChanged(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionActiveChanged(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSessionActiveChanged(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionProgressChanged(int i, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(4, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSessionProgressChanged(i, f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionFinished(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(5, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSessionFinished(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPackageInstallerCallback iPackageInstallerCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iPackageInstallerCallback == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iPackageInstallerCallback;
                return true;
            }
        }

        public static IPackageInstallerCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
