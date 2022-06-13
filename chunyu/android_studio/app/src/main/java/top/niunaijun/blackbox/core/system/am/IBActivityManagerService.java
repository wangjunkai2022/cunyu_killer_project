package top.niunaijun.blackbox.core.system.am;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import top.niunaijun.blackbox.entity.AppConfig;

/* loaded from: classes3.dex */
public interface IBActivityManagerService extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements IBActivityManagerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public Intent bindService(Intent intent, IBinder iBinder, String str, int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public AppConfig initProcess(String str, String str2, int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onActivityCreated(int i, IBinder iBinder, IBinder iBinder2) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onActivityResumed(IBinder iBinder) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onFinishActivity(IBinder iBinder) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onServiceDestroy(Intent intent, int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void onStartCommand(Intent intent, int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void restartProcess(String str, String str2, int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public Intent sendBroadcast(Intent intent, String str, int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public int startActivities(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void startActivity(Intent intent, int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public int startActivityAms(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public ComponentName startService(Intent intent, String str, int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public int stopService(Intent intent, String str, int i) throws RemoteException {
            return 0;
        }

        @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
        public void unbindService(IBinder iBinder, int i) throws RemoteException {
        }
    }

    Intent bindService(Intent intent, IBinder iBinder, String str, int i) throws RemoteException;

    AppConfig initProcess(String str, String str2, int i) throws RemoteException;

    void onActivityCreated(int i, IBinder iBinder, IBinder iBinder2) throws RemoteException;

    void onActivityDestroyed(IBinder iBinder) throws RemoteException;

    void onActivityResumed(IBinder iBinder) throws RemoteException;

    void onFinishActivity(IBinder iBinder) throws RemoteException;

    void onServiceDestroy(Intent intent, int i) throws RemoteException;

    void onStartCommand(Intent intent, int i) throws RemoteException;

    void restartProcess(String str, String str2, int i) throws RemoteException;

    Intent sendBroadcast(Intent intent, String str, int i) throws RemoteException;

    int startActivities(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException;

    void startActivity(Intent intent, int i) throws RemoteException;

    int startActivityAms(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) throws RemoteException;

    ComponentName startService(Intent intent, String str, int i) throws RemoteException;

    int stopService(Intent intent, String str, int i) throws RemoteException;

    void unbindService(IBinder iBinder, int i) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IBActivityManagerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.am.IBActivityManagerService";
        static final int TRANSACTION_bindService = 8;
        static final int TRANSACTION_initProcess = 1;
        static final int TRANSACTION_onActivityCreated = 13;
        static final int TRANSACTION_onActivityDestroyed = 15;
        static final int TRANSACTION_onActivityResumed = 14;
        static final int TRANSACTION_onFinishActivity = 16;
        static final int TRANSACTION_onServiceDestroy = 11;
        static final int TRANSACTION_onStartCommand = 10;
        static final int TRANSACTION_restartProcess = 2;
        static final int TRANSACTION_sendBroadcast = 12;
        static final int TRANSACTION_startActivities = 5;
        static final int TRANSACTION_startActivity = 3;
        static final int TRANSACTION_startActivityAms = 4;
        static final int TRANSACTION_startService = 6;
        static final int TRANSACTION_stopService = 7;
        static final int TRANSACTION_unbindService = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBActivityManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBActivityManagerService)) {
                return new Proxy(iBinder);
            }
            return (IBActivityManagerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Intent intent = null;
                Intent intent2 = null;
                Intent intent3 = null;
                Intent intent4 = null;
                Intent intent5 = null;
                Intent intent6 = null;
                Intent intent7 = null;
                Bundle bundle = null;
                Bundle bundle2 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        AppConfig initProcess = initProcess(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (initProcess != null) {
                            parcel2.writeInt(1);
                            initProcess.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        restartProcess(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        startActivity(intent, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt = parcel.readInt();
                        Intent intent8 = parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null;
                        String readString = parcel.readString();
                        IBinder readStrongBinder = parcel.readStrongBinder();
                        String readString2 = parcel.readString();
                        int readInt2 = parcel.readInt();
                        int readInt3 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int startActivityAms = startActivityAms(readInt, intent8, readString, readStrongBinder, readString2, readInt2, readInt3, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(startActivityAms);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt4 = parcel.readInt();
                        Intent[] intentArr = (Intent[]) parcel.createTypedArray(Intent.CREATOR);
                        String[] createStringArray = parcel.createStringArray();
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int startActivities = startActivities(readInt4, intentArr, createStringArray, readStrongBinder2, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(startActivities);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent7 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        ComponentName startService = startService(intent7, parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (startService != null) {
                            parcel2.writeInt(1);
                            startService.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent6 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        int stopService = stopService(intent6, parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(stopService);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent5 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        Intent bindService = bindService(intent5, parcel.readStrongBinder(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (bindService != null) {
                            parcel2.writeInt(1);
                            bindService.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        unbindService(parcel.readStrongBinder(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent4 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        onStartCommand(intent4, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent3 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        onServiceDestroy(intent3, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent2 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        Intent sendBroadcast = sendBroadcast(intent2, parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (sendBroadcast != null) {
                            parcel2.writeInt(1);
                            sendBroadcast.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        onActivityCreated(parcel.readInt(), parcel.readStrongBinder(), parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        onActivityResumed(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        onActivityDestroyed(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        onFinishActivity(parcel.readStrongBinder());
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
        /* loaded from: classes3.dex */
        public static class Proxy implements IBActivityManagerService {
            public static IBActivityManagerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public AppConfig initProcess(String str, String str2, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().initProcess(str, str2, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AppConfig.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void restartProcess(String str, String str2, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().restartProcess(str, str2, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void startActivity(Intent intent, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startActivity(intent, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public int startActivityAms(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) throws RemoteException {
                Throwable th;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str2);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    try {
                        if (this.mRemote.transact(4, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                            obtain2.readException();
                            int readInt = obtain2.readInt();
                            obtain2.recycle();
                            obtain.recycle();
                            return readInt;
                        }
                        int startActivityAms = Stub.getDefaultImpl().startActivityAms(i, intent, str, iBinder, str2, i2, i3, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return startActivityAms;
                    } catch (Throwable th2) {
                        th = th2;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public int startActivities(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(intentArr, 0);
                    obtain.writeStringArray(strArr);
                    obtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startActivities(i, intentArr, strArr, iBinder, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public ComponentName startService(Intent intent, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startService(intent, str, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public int stopService(Intent intent, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().stopService(intent, str, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public Intent bindService(Intent intent, IBinder iBinder, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().bindService(intent, iBinder, str, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void unbindService(IBinder iBinder, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(9, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unbindService(iBinder, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onStartCommand(Intent intent, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(10, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStartCommand(intent, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onServiceDestroy(Intent intent, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(11, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onServiceDestroy(intent, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public Intent sendBroadcast(Intent intent, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(12, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().sendBroadcast(intent, str, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onActivityCreated(int i, IBinder iBinder, IBinder iBinder2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeStrongBinder(iBinder2);
                    if (this.mRemote.transact(13, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onActivityCreated(i, iBinder, iBinder2);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onActivityResumed(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(14, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onActivityResumed(iBinder);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(15, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onActivityDestroyed(iBinder);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
            public void onFinishActivity(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(16, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFinishActivity(iBinder);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBActivityManagerService iBActivityManagerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBActivityManagerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBActivityManagerService;
                return true;
            }
        }

        public static IBActivityManagerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
