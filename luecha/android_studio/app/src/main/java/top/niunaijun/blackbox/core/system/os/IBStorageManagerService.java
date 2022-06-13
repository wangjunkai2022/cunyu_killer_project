package top.niunaijun.blackbox.core.system.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.storage.StorageVolume;

/* loaded from: classes4.dex */
public interface IBStorageManagerService extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IBStorageManagerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.os.IBStorageManagerService
        public StorageVolume[] getVolumeList(int i, String str, int i2, int i3) throws RemoteException {
            return null;
        }
    }

    StorageVolume[] getVolumeList(int i, String str, int i2, int i3) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IBStorageManagerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.os.IBStorageManagerService";
        static final int TRANSACTION_getVolumeList = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBStorageManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBStorageManagerService)) {
                return new Proxy(iBinder);
            }
            return (IBStorageManagerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                StorageVolume[] volumeList = getVolumeList(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeTypedArray(volumeList, 1);
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
        public static class Proxy implements IBStorageManagerService {
            public static IBStorageManagerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.os.IBStorageManagerService
            public StorageVolume[] getVolumeList(int i, String str, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVolumeList(i, str, i2, i3);
                    }
                    obtain2.readException();
                    return (StorageVolume[]) obtain2.createTypedArray(StorageVolume.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBStorageManagerService iBStorageManagerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBStorageManagerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBStorageManagerService;
                return true;
            }
        }

        public static IBStorageManagerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
