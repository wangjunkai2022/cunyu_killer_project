package android.location;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface ILocationListener extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements ILocationListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.location.ILocationListener
        public void onLocationChanged(Location location) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onProviderDisabled(String str) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onProviderEnabled(String str) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) throws RemoteException {
        }
    }

    void onLocationChanged(Location location) throws RemoteException;

    void onProviderDisabled(String str) throws RemoteException;

    void onProviderEnabled(String str) throws RemoteException;

    void onStatusChanged(String str, int i, Bundle bundle) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements ILocationListener {
        private static final String DESCRIPTOR = "android.location.ILocationListener";
        static final int TRANSACTION_onLocationChanged = 1;
        static final int TRANSACTION_onProviderDisabled = 4;
        static final int TRANSACTION_onProviderEnabled = 3;
        static final int TRANSACTION_onStatusChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILocationListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ILocationListener)) {
                return new Proxy(iBinder);
            }
            return (ILocationListener) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Location location = null;
            Bundle bundle = null;
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                if (parcel.readInt() != 0) {
                    location = (Location) Location.CREATOR.createFromParcel(parcel);
                }
                onLocationChanged(location);
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String readString = parcel.readString();
                int readInt = parcel.readInt();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onStatusChanged(readString, readInt, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onProviderEnabled(parcel.readString());
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onProviderDisabled(parcel.readString());
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
        public static class Proxy implements ILocationListener {
            public static ILocationListener sDefaultImpl;
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

            @Override // android.location.ILocationListener
            public void onLocationChanged(Location location) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (location != null) {
                        obtain.writeInt(1);
                        location.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLocationChanged(location);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStatusChanged(str, i, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onProviderEnabled(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (this.mRemote.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onProviderEnabled(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onProviderDisabled(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (this.mRemote.transact(4, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onProviderDisabled(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ILocationListener iLocationListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iLocationListener == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iLocationListener;
                return true;
            }
        }

        public static ILocationListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
