package com.tencent.thumbplayer.core.downloadproxy.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPPreLoadListenerAidl extends IInterface {
    void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str) throws RemoteException;

    void onPrepareError(int i, int i2, String str) throws RemoteException;

    void onPrepareOK() throws RemoteException;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class Stub extends Binder implements ITPPreLoadListenerAidl {
        private static final String DESCRIPTOR = "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl";
        static final int TRANSACTION_onPrepareDownloadProgressUpdate = 3;
        static final int TRANSACTION_onPrepareError = 2;
        static final int TRANSACTION_onPrepareOK = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
        }

        public static ITPPreLoadListenerAidl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ITPPreLoadListenerAidl)) {
                return new Proxy(iBinder);
            }
            return (ITPPreLoadListenerAidl) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                onPrepareOK();
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                onPrepareError(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                onPrepareDownloadProgressUpdate(parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readString());
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                return true;
            }
        }

        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        private static class Proxy implements ITPPreLoadListenerAidl {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl";
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
            public void onPrepareOK() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
            public void onPrepareError(int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
            public void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
