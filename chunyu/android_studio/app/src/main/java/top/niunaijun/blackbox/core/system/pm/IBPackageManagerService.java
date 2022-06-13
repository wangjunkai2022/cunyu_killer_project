package top.niunaijun.blackbox.core.system.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.entity.pm.InstallResult;
import top.niunaijun.blackbox.entity.pm.InstalledPackage;

/* loaded from: classes3.dex */
public interface IBPackageManagerService extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements IBPackageManagerService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public void deleteUser(int i) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ApplicationInfo getApplicationInfo(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<ApplicationInfo> getInstalledApplications(int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<PackageInfo> getInstalledPackages(int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<InstalledPackage> getInstalledPackagesAsUser(int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public PackageInfo getPackageInfo(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ProviderInfo getProviderInfo(ComponentName componentName, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ActivityInfo getReceiverInfo(ComponentName componentName, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ServiceInfo getServiceInfo(ComponentName componentName, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public InstallResult installPackageAsUser(String str, InstallOption installOption, int i) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public boolean isInstalled(String str, int i) throws RemoteException {
            return false;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i, String str, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<ProviderInfo> queryContentProviders(String str, int i, int i2, int i3) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public List<ResolveInfo> queryIntentActivities(Intent intent, int i, String str, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ResolveInfo resolveActivity(Intent intent, int i, String str, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ProviderInfo resolveContentProvider(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public ResolveInfo resolveService(Intent intent, int i, String str, int i2) throws RemoteException {
            return null;
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public void uninstallPackage(String str) throws RemoteException {
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
        public void uninstallPackageAsUser(String str, int i) throws RemoteException {
        }
    }

    void deleteUser(int i) throws RemoteException;

    ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) throws RemoteException;

    ApplicationInfo getApplicationInfo(String str, int i, int i2) throws RemoteException;

    List<ApplicationInfo> getInstalledApplications(int i, int i2) throws RemoteException;

    List<PackageInfo> getInstalledPackages(int i, int i2) throws RemoteException;

    List<InstalledPackage> getInstalledPackagesAsUser(int i) throws RemoteException;

    PackageInfo getPackageInfo(String str, int i, int i2) throws RemoteException;

    ProviderInfo getProviderInfo(ComponentName componentName, int i, int i2) throws RemoteException;

    ActivityInfo getReceiverInfo(ComponentName componentName, int i, int i2) throws RemoteException;

    ServiceInfo getServiceInfo(ComponentName componentName, int i, int i2) throws RemoteException;

    InstallResult installPackageAsUser(String str, InstallOption installOption, int i) throws RemoteException;

    boolean isInstalled(String str, int i) throws RemoteException;

    List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i, String str, int i2) throws RemoteException;

    List<ProviderInfo> queryContentProviders(String str, int i, int i2, int i3) throws RemoteException;

    List<ResolveInfo> queryIntentActivities(Intent intent, int i, String str, int i2) throws RemoteException;

    ResolveInfo resolveActivity(Intent intent, int i, String str, int i2) throws RemoteException;

    ProviderInfo resolveContentProvider(String str, int i, int i2) throws RemoteException;

    ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) throws RemoteException;

    ResolveInfo resolveService(Intent intent, int i, String str, int i2) throws RemoteException;

    void uninstallPackage(String str) throws RemoteException;

    void uninstallPackageAsUser(String str, int i) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IBPackageManagerService {
        private static final String DESCRIPTOR = "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService";
        static final int TRANSACTION_deleteUser = 19;
        static final int TRANSACTION_getActivityInfo = 9;
        static final int TRANSACTION_getApplicationInfo = 5;
        static final int TRANSACTION_getInstalledApplications = 11;
        static final int TRANSACTION_getInstalledPackages = 12;
        static final int TRANSACTION_getInstalledPackagesAsUser = 21;
        static final int TRANSACTION_getPackageInfo = 6;
        static final int TRANSACTION_getProviderInfo = 10;
        static final int TRANSACTION_getReceiverInfo = 8;
        static final int TRANSACTION_getServiceInfo = 7;
        static final int TRANSACTION_installPackageAsUser = 16;
        static final int TRANSACTION_isInstalled = 20;
        static final int TRANSACTION_queryBroadcastReceivers = 14;
        static final int TRANSACTION_queryContentProviders = 15;
        static final int TRANSACTION_queryIntentActivities = 13;
        static final int TRANSACTION_resolveActivity = 2;
        static final int TRANSACTION_resolveContentProvider = 3;
        static final int TRANSACTION_resolveIntent = 4;
        static final int TRANSACTION_resolveService = 1;
        static final int TRANSACTION_uninstallPackage = 18;
        static final int TRANSACTION_uninstallPackageAsUser = 17;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBPackageManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBPackageManagerService)) {
                return new Proxy(iBinder);
            }
            return (IBPackageManagerService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Intent intent = null;
                InstallOption installOption = null;
                Intent intent2 = null;
                Intent intent3 = null;
                ComponentName componentName = null;
                ComponentName componentName2 = null;
                ComponentName componentName3 = null;
                ComponentName componentName4 = null;
                Intent intent4 = null;
                Intent intent5 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        ResolveInfo resolveService = resolveService(intent, parcel.readInt(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (resolveService != null) {
                            parcel2.writeInt(1);
                            resolveService.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent5 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        ResolveInfo resolveActivity = resolveActivity(intent5, parcel.readInt(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (resolveActivity != null) {
                            parcel2.writeInt(1);
                            resolveActivity.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        ProviderInfo resolveContentProvider = resolveContentProvider(parcel.readString(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (resolveContentProvider != null) {
                            parcel2.writeInt(1);
                            resolveContentProvider.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent4 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        ResolveInfo resolveIntent = resolveIntent(intent4, parcel.readString(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (resolveIntent != null) {
                            parcel2.writeInt(1);
                            resolveIntent.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        ApplicationInfo applicationInfo = getApplicationInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (applicationInfo != null) {
                            parcel2.writeInt(1);
                            applicationInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        PackageInfo packageInfo = getPackageInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (packageInfo != null) {
                            parcel2.writeInt(1);
                            packageInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            componentName4 = (ComponentName) ComponentName.CREATOR.createFromParcel(parcel);
                        }
                        ServiceInfo serviceInfo = getServiceInfo(componentName4, parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (serviceInfo != null) {
                            parcel2.writeInt(1);
                            serviceInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            componentName3 = (ComponentName) ComponentName.CREATOR.createFromParcel(parcel);
                        }
                        ActivityInfo receiverInfo = getReceiverInfo(componentName3, parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (receiverInfo != null) {
                            parcel2.writeInt(1);
                            receiverInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            componentName2 = (ComponentName) ComponentName.CREATOR.createFromParcel(parcel);
                        }
                        ActivityInfo activityInfo = getActivityInfo(componentName2, parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (activityInfo != null) {
                            parcel2.writeInt(1);
                            activityInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            componentName = (ComponentName) ComponentName.CREATOR.createFromParcel(parcel);
                        }
                        ProviderInfo providerInfo = getProviderInfo(componentName, parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (providerInfo != null) {
                            parcel2.writeInt(1);
                            providerInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<ApplicationInfo> installedApplications = getInstalledApplications(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(installedApplications);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<PackageInfo> installedPackages = getInstalledPackages(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(installedPackages);
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent3 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        List<ResolveInfo> queryIntentActivities = queryIntentActivities(intent3, parcel.readInt(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(queryIntentActivities);
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            intent2 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                        }
                        List<ResolveInfo> queryBroadcastReceivers = queryBroadcastReceivers(intent2, parcel.readInt(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(queryBroadcastReceivers);
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<ProviderInfo> queryContentProviders = queryContentProviders(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(queryContentProviders);
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            installOption = InstallOption.CREATOR.createFromParcel(parcel);
                        }
                        InstallResult installPackageAsUser = installPackageAsUser(readString, installOption, parcel.readInt());
                        parcel2.writeNoException();
                        if (installPackageAsUser != null) {
                            parcel2.writeInt(1);
                            installPackageAsUser.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        uninstallPackageAsUser(parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        uninstallPackage(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        deleteUser(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isInstalled = isInstalled(parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(isInstalled ? 1 : 0);
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<InstalledPackage> installedPackagesAsUser = getInstalledPackagesAsUser(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(installedPackagesAsUser);
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
        public static class Proxy implements IBPackageManagerService {
            public static IBPackageManagerService sDefaultImpl;
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

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ResolveInfo resolveService(Intent intent, int i, String str, int i2) throws RemoteException {
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
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().resolveService(intent, i, str, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ResolveInfo resolveActivity(Intent intent, int i, String str, int i2) throws RemoteException {
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
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().resolveActivity(intent, i, str, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ProviderInfo resolveContentProvider(String str, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().resolveContentProvider(str, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) throws RemoteException {
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
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().resolveIntent(intent, str, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ApplicationInfo getApplicationInfo(String str, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getApplicationInfo(str, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ApplicationInfo) ApplicationInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public PackageInfo getPackageInfo(String str, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPackageInfo(str, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (PackageInfo) PackageInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ServiceInfo getServiceInfo(ComponentName componentName, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getServiceInfo(componentName, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ServiceInfo) ServiceInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ActivityInfo getReceiverInfo(ComponentName componentName, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getReceiverInfo(componentName, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(9, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActivityInfo(componentName, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public ProviderInfo getProviderInfo(ComponentName componentName, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(10, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getProviderInfo(componentName, i, i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<ApplicationInfo> getInstalledApplications(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(11, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledApplications(i, i2);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ApplicationInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<PackageInfo> getInstalledPackages(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(12, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledPackages(i, i2);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(PackageInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<ResolveInfo> queryIntentActivities(Intent intent, int i, String str, int i2) throws RemoteException {
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
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(13, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryIntentActivities(intent, i, str, i2);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i, String str, int i2) throws RemoteException {
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
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(14, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryBroadcastReceivers(intent, i, str, i2);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<ProviderInfo> queryContentProviders(String str, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (!this.mRemote.transact(15, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryContentProviders(str, i, i2, i3);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ProviderInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public InstallResult installPackageAsUser(String str, InstallOption installOption, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (installOption != null) {
                        obtain.writeInt(1);
                        installOption.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(16, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().installPackageAsUser(str, installOption, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstallResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public void uninstallPackageAsUser(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(17, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().uninstallPackageAsUser(str, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public void uninstallPackage(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (this.mRemote.transact(18, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().uninstallPackage(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public void deleteUser(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(19, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().deleteUser(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public boolean isInstalled(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    boolean z = false;
                    if (!this.mRemote.transact(20, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isInstalled(str, i);
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

            @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
            public List<InstalledPackage> getInstalledPackagesAsUser(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(21, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledPackagesAsUser(i);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(InstalledPackage.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBPackageManagerService iBPackageManagerService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            } else if (iBPackageManagerService == null) {
                return false;
            } else {
                Proxy.sDefaultImpl = iBPackageManagerService;
                return true;
            }
        }

        public static IBPackageManagerService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
