package android.app.job;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IJobCallback extends IInterface {

    /* loaded from: classes4.dex */
    public static class Default implements IJobCallback {
        @Override // android.app.job.IJobCallback
        public void acknowledgeStartMessage(int i, boolean z) throws RemoteException {
        }

        @Override // android.app.job.IJobCallback
        public void acknowledgeStopMessage(int i, boolean z) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.job.IJobCallback
        public boolean completeWork(int i, int i2) throws RemoteException {
            return false;
        }

        @Override // android.app.job.IJobCallback
        public JobWorkItem dequeueWork(int i) throws RemoteException {
            return null;
        }

        @Override // android.app.job.IJobCallback
        public void jobFinished(int i, boolean z) throws RemoteException {
        }
    }

    void acknowledgeStartMessage(int i, boolean z) throws RemoteException;

    void acknowledgeStopMessage(int i, boolean z) throws RemoteException;

    boolean completeWork(int i, int i2) throws RemoteException;

    JobWorkItem dequeueWork(int i) throws RemoteException;

    void jobFinished(int i, boolean z) throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IJobCallback {
        private static final String DESCRIPTOR = "android.app.job.IJobCallback";
        static final int TRANSACTION_acknowledgeStartMessage = 1;
        static final int TRANSACTION_acknowledgeStopMessage = 2;
        static final int TRANSACTION_completeWork = 4;
        static final int TRANSACTION_dequeueWork = 3;
        static final int TRANSACTION_jobFinished = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IJobCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IJobCallback)) {
                return new Proxy(iBinder);
            }
            return (IJobCallback) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int readInt = parcel.readInt();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                acknowledgeStartMessage(readInt, z);
                parcel2.writeNoException();
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int readInt2 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                acknowledgeStopMessage(readInt2, z);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                JobWorkItem dequeueWork = dequeueWork(parcel.readInt());
                parcel2.writeNoException();
                if (dequeueWork != null) {
                    parcel2.writeInt(1);
                    dequeueWork.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean completeWork = completeWork(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(completeWork ? 1 : 0);
                return true;
            } else if (i == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                int readInt3 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                jobFinished(readInt3, z);
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
        public static class Proxy implements IJobCallback {
            public static IJobCallback sDefaultImpl;
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

            @Override // android.app.job.IJobCallback
            public void acknowledgeStartMessage(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().acknowledgeStartMessage(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobCallback
            public void acknowledgeStopMessage(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().acknowledgeStopMessage(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobCallback
            public JobWorkItem dequeueWork(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().dequeueWork(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (JobWorkItem) JobWorkItem.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobCallback
            public boolean completeWork(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    boolean z = false;
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().completeWork(i, i2);
                    }
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

            @Override // android.app.job.IJobCallback
            public void jobFinished(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(5, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().jobFinished(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IJobCallback iJobCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iJobCallback == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iJobCallback;
                return true;
            }
        }

        public static IJobCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
