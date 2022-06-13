package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IWallpaperManagerCallback extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IWallpaperManagerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperChanged() throws RemoteException {
        }
    }

    void onWallpaperChanged() throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IWallpaperManagerCallback {
        private static final String DESCRIPTOR = "android.app.IWallpaperManagerCallback";
        static final int TRANSACTION_onWallpaperChanged = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWallpaperManagerCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IWallpaperManagerCallback)) {
                return new Proxy(iBinder);
            }
            return (IWallpaperManagerCallback) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onWallpaperChanged();
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
        public static class Proxy implements IWallpaperManagerCallback {
            public static IWallpaperManagerCallback sDefaultImpl;
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

            @Override // android.app.IWallpaperManagerCallback
            public void onWallpaperChanged() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onWallpaperChanged();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWallpaperManagerCallback iWallpaperManagerCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iWallpaperManagerCallback == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iWallpaperManagerCallback;
                return true;
            }
        }

        public static IWallpaperManagerCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
