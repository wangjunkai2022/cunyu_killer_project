package com.netease.mobsec.poly;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface b extends IInterface {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class a extends Binder implements b {
        private static final String a = "com.android.internal.telephony.IPhoneSubInfo";
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
        public static final int f = 7;
        public static final int g = 9;
        public static final int h = 11;
        public static final int i = 13;

        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* renamed from: com.netease.mobsec.poly.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static class C0006a implements b {
            private final IBinder a;

            C0006a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.netease.mobsec.poly.b
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    this.a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    obtain.writeInt(i);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.netease.mobsec.poly.b
            public String b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    obtain.writeInt(i);
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    this.a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    obtain.writeInt(i);
                    this.a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    this.a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mobsec.poly.b
            public String e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IPhoneSubInfo");
                    this.a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String f() {
                return "com.android.internal.telephony.IPhoneSubInfo";
            }
        }

        public a() {
            attachInterface(this, "com.android.internal.telephony.IPhoneSubInfo");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.internal.telephony.IPhoneSubInfo");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0006a(iBinder) : (b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            String c2;
            if (i2 == 7) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = c();
            } else if (i2 == 9) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = d();
            } else if (i2 == 11) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = a();
            } else if (i2 == 13) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = e();
            } else if (i2 == 1598968902) {
                parcel2.writeString("com.android.internal.telephony.IPhoneSubInfo");
                return true;
            } else if (i2 == 1) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = b();
            } else if (i2 == 2) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = a(parcel.readInt());
            } else if (i2 == 3) {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = b(parcel.readInt());
            } else if (i2 != 4) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel.enforceInterface("com.android.internal.telephony.IPhoneSubInfo");
                c2 = c(parcel.readInt());
            }
            parcel2.writeNoException();
            parcel2.writeString(c2);
            return true;
        }
    }

    String a() throws RemoteException;

    String a(int i) throws RemoteException;

    String b() throws RemoteException;

    String b(int i) throws RemoteException;

    String c() throws RemoteException;

    String c(int i) throws RemoteException;

    String d() throws RemoteException;

    String e() throws RemoteException;
}
