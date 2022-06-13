package com.android.internal.widget;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface ILockSettings extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements ILockSettings {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.internal.widget.ILockSettings
        public int[] getRecoverySecretTypes() throws RemoteException {
            return null;
        }

        @Override // com.android.internal.widget.ILockSettings
        public void setRecoverySecretTypes(int[] iArr) throws RemoteException {
        }
    }

    int[] getRecoverySecretTypes() throws RemoteException;

    void setRecoverySecretTypes(int[] iArr) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements ILockSettings {
        private static final String DESCRIPTOR = "com.android.internal.widget.ILockSettings";
        static final int TRANSACTION_getRecoverySecretTypes = 2;
        static final int TRANSACTION_setRecoverySecretTypes = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILockSettings asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ILockSettings)) {
                return new Proxy(iBinder);
            }
            return (ILockSettings) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                setRecoverySecretTypes(parcel.createIntArray());
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int[] recoverySecretTypes = getRecoverySecretTypes();
                parcel2.writeNoException();
                parcel2.writeIntArray(recoverySecretTypes);
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
        public static class Proxy implements ILockSettings {
            public static ILockSettings sDefaultImpl;
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

            @Override // com.android.internal.widget.ILockSettings
            public void setRecoverySecretTypes(int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRecoverySecretTypes(iArr);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.widget.ILockSettings
            public int[] getRecoverySecretTypes() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRecoverySecretTypes();
                    }
                    obtain2.readException();
                    return obtain2.createIntArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ILockSettings iLockSettings) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iLockSettings == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iLockSettings;
                return true;
            }
        }

        public static ILockSettings getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
