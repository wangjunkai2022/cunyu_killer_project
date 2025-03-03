package android.net.wifi;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IWifiScanner extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements IWifiScanner {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.net.wifi.IWifiScanner
        public Bundle getAvailableChannels(int i) throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWifiScanner
        public Messenger getMessenger() throws RemoteException {
            return null;
        }
    }

    Bundle getAvailableChannels(int i) throws RemoteException;

    Messenger getMessenger() throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IWifiScanner {
        private static final String DESCRIPTOR = "android.net.wifi.IWifiScanner";
        static final int TRANSACTION_getAvailableChannels = 2;
        static final int TRANSACTION_getMessenger = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiScanner asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IWifiScanner)) {
                return new Proxy(iBinder);
            }
            return (IWifiScanner) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                Messenger messenger = getMessenger();
                parcel2.writeNoException();
                if (messenger != null) {
                    parcel2.writeInt(1);
                    messenger.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                Bundle availableChannels = getAvailableChannels(parcel.readInt());
                parcel2.writeNoException();
                if (availableChannels != null) {
                    parcel2.writeInt(1);
                    availableChannels.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
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
        public static class Proxy implements IWifiScanner {
            public static IWifiScanner sDefaultImpl;
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

            @Override // android.net.wifi.IWifiScanner
            public Messenger getMessenger() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMessenger();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Messenger) Messenger.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScanner
            public Bundle getAvailableChannels(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvailableChannels(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWifiScanner iWifiScanner) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iWifiScanner == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iWifiScanner;
                return true;
            }
        }

        public static IWifiScanner getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
