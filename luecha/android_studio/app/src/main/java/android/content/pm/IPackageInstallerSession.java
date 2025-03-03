package android.content.pm;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IPackageInstallerSession extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IPackageInstallerSession {
        @Override // android.content.pm.IPackageInstallerSession
        public void abandon() throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerSession
        public void addClientProgress(float f) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerSession
        public void close() throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerSession
        public void commit(IntentSender intentSender) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerSession
        public String[] getNames() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerSession
        public ParcelFileDescriptor openRead(String str) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerSession
        public ParcelFileDescriptor openWrite(String str, long j, long j2) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerSession
        public void removeSplit(String str) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerSession
        public void setClientProgress(float f) throws RemoteException {
        }
    }

    void abandon() throws RemoteException;

    void addClientProgress(float f) throws RemoteException;

    void close() throws RemoteException;

    void commit(IntentSender intentSender) throws RemoteException;

    String[] getNames() throws RemoteException;

    ParcelFileDescriptor openRead(String str) throws RemoteException;

    ParcelFileDescriptor openWrite(String str, long j, long j2) throws RemoteException;

    void removeSplit(String str) throws RemoteException;

    void setClientProgress(float f) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IPackageInstallerSession {
        private static final String DESCRIPTOR = "android.content.pm.IPackageInstallerSession";
        static final int TRANSACTION_abandon = 9;
        static final int TRANSACTION_addClientProgress = 2;
        static final int TRANSACTION_close = 7;
        static final int TRANSACTION_commit = 8;
        static final int TRANSACTION_getNames = 3;
        static final int TRANSACTION_openRead = 5;
        static final int TRANSACTION_openWrite = 4;
        static final int TRANSACTION_removeSplit = 6;
        static final int TRANSACTION_setClientProgress = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPackageInstallerSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IPackageInstallerSession)) {
                return new Proxy(iBinder);
            }
            return (IPackageInstallerSession) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        setClientProgress(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        addClientProgress(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        String[] names = getNames();
                        parcel2.writeNoException();
                        parcel2.writeStringArray(names);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        ParcelFileDescriptor openWrite = openWrite(parcel.readString(), parcel.readLong(), parcel.readLong());
                        parcel2.writeNoException();
                        if (openWrite != null) {
                            parcel2.writeInt(1);
                            openWrite.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        ParcelFileDescriptor openRead = openRead(parcel.readString());
                        parcel2.writeNoException();
                        if (openRead != null) {
                            parcel2.writeInt(1);
                            openRead.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        removeSplit(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        close();
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        commit(parcel.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        abandon();
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes4.dex */
        public static class Proxy implements IPackageInstallerSession {
            public static IPackageInstallerSession sDefaultImpl;
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

            @Override // android.content.pm.IPackageInstallerSession
            public void setClientProgress(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setClientProgress(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public void addClientProgress(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addClientProgress(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public String[] getNames() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getNames();
                    }
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public ParcelFileDescriptor openWrite(String str, long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openWrite(str, j, j2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public ParcelFileDescriptor openRead(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openRead(str);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public void removeSplit(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (this.mRemote.transact(6, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().removeSplit(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public void close() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(7, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().close();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public void commit(IntentSender intentSender) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentSender != null) {
                        obtain.writeInt(1);
                        intentSender.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(8, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().commit(intentSender);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerSession
            public void abandon() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(9, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().abandon();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPackageInstallerSession iPackageInstallerSession) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iPackageInstallerSession == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iPackageInstallerSession;
                return true;
            }
        }

        public static IPackageInstallerSession getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
