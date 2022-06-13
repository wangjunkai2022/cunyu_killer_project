package com.tencent.thumbplayer.core.downloadproxy.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TPDownloadProxyFactoryAidl extends IInterface {
    String getNativeVersion() throws RemoteException;

    ITPDownloadProxyAidl getTPDownloadProxy(int i) throws RemoteException;

    boolean isReadyForDownload() throws RemoteException;

    boolean isReadyForPlay() throws RemoteException;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class Stub extends Binder implements TPDownloadProxyFactoryAidl {
        private static final String DESCRIPTOR = "com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl";
        static final int TRANSACTION_getNativeVersion = 4;
        static final int TRANSACTION_getTPDownloadProxy = 1;
        static final int TRANSACTION_isReadyForDownload = 3;
        static final int TRANSACTION_isReadyForPlay = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
        }

        public static TPDownloadProxyFactoryAidl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof TPDownloadProxyFactoryAidl)) {
                return new Proxy(iBinder);
            }
            return (TPDownloadProxyFactoryAidl) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                ITPDownloadProxyAidl tPDownloadProxy = getTPDownloadProxy(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(tPDownloadProxy != null ? tPDownloadProxy.asBinder() : null);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                boolean isReadyForPlay = isReadyForPlay();
                parcel2.writeNoException();
                parcel2.writeInt(isReadyForPlay ? 1 : 0);
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                boolean isReadyForDownload = isReadyForDownload();
                parcel2.writeNoException();
                parcel2.writeInt(isReadyForDownload ? 1 : 0);
                return true;
            } else if (i == 4) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                String nativeVersion = getNativeVersion();
                parcel2.writeNoException();
                parcel2.writeString(nativeVersion);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                return true;
            }
        }

        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        private static class Proxy implements TPDownloadProxyFactoryAidl {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return "com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl";
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public ITPDownloadProxyAidl getTPDownloadProxy(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return ITPDownloadProxyAidl.Stub.asInterface(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public boolean isReadyForPlay() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                    boolean z = false;
                    this.mRemote.transact(2, obtain, obtain2, 0);
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

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public boolean isReadyForDownload() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                    boolean z = false;
                    this.mRemote.transact(3, obtain, obtain2, 0);
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

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public String getNativeVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl");
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
