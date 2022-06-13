package top.niunaijun.blackbox.core.system.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.ArrayMap;
import java.util.ArrayList;
import java.util.List;
import top.niunaijun.blackbox.core.system.pm.BPackage;
import top.niunaijun.blackbox.utils.Slog;

/* loaded from: classes3.dex */
public class ComponentResolver {
    public static final String TAG = "ComponentResolver";
    private final Object mLock = new Object();
    private final ActivityIntentResolver mActivities = new ActivityIntentResolver();
    private final ProviderIntentResolver mProviders = new ProviderIntentResolver();
    private final ActivityIntentResolver mReceivers = new ActivityIntentResolver();
    private final ServiceIntentResolver mServices = new ServiceIntentResolver();
    private final ArrayMap<String, BPackage.Provider> mProvidersByAuthority = new ArrayMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAllComponents(BPackage bPackage) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            addActivitiesLocked(bPackage, arrayList);
            addServicesLocked(bPackage);
            addProvidersLocked(bPackage);
            addReceiversLocked(bPackage);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAllComponents(BPackage bPackage) {
        synchronized (this.mLock) {
            removeAllComponentsLocked(bPackage);
        }
    }

    private void removeAllComponentsLocked(BPackage bPackage) {
        int size = bPackage.activities.size();
        for (int i = 0; i < size; i++) {
            this.mActivities.removeActivity(bPackage.activities.get(i), "activity");
        }
        int size2 = bPackage.providers.size();
        for (int i2 = 0; i2 < size2; i2++) {
            BPackage.Provider provider = bPackage.providers.get(i2);
            this.mProviders.removeProvider(provider);
            if (provider.info.authority != null) {
                String[] split = provider.info.authority.split(";");
                for (int i3 = 0; i3 < split.length; i3++) {
                    if (this.mProvidersByAuthority.get(split[i3]) == provider) {
                        this.mProvidersByAuthority.remove(split[i3]);
                    }
                }
            }
        }
        int size3 = bPackage.receivers.size();
        for (int i4 = 0; i4 < size3; i4++) {
            this.mReceivers.removeActivity(bPackage.receivers.get(i4), "receiver");
        }
        int size4 = bPackage.services.size();
        for (int i5 = 0; i5 < size4; i5++) {
            this.mServices.removeService(bPackage.services.get(i5));
        }
    }

    private void addActivitiesLocked(BPackage bPackage, List<BPackage.ActivityIntentInfo> list) {
        int size = bPackage.activities.size();
        for (int i = 0; i < size; i++) {
            BPackage.Activity activity = bPackage.activities.get(i);
            activity.info.processName = BPackageManagerService.fixProcessName(bPackage.applicationInfo.processName, activity.info.processName);
            this.mActivities.addActivity(activity, "activity", list);
        }
    }

    private void addProvidersLocked(BPackage bPackage) {
        int size = bPackage.providers.size();
        for (int i = 0; i < size; i++) {
            BPackage.Provider provider = bPackage.providers.get(i);
            provider.info.processName = BPackageManagerService.fixProcessName(bPackage.applicationInfo.processName, provider.info.processName);
            this.mProviders.addProvider(provider);
            if (provider.info.authority != null) {
                String[] split = provider.info.authority.split(";");
                provider.info.authority = null;
                for (String str : split) {
                    if (!this.mProvidersByAuthority.containsKey(str)) {
                        this.mProvidersByAuthority.put(str, provider);
                        if (provider.info.authority == null) {
                            provider.info.authority = str;
                        } else {
                            provider.info.authority = provider.info.authority + ";" + str;
                        }
                    } else {
                        BPackage.Provider provider2 = this.mProvidersByAuthority.get(str);
                        ComponentName componentName = (provider2 == null || provider2.getComponentName() == null) ? null : provider2.getComponentName();
                        Slog.w(TAG, "Skipping provider name " + str + " (in package " + bPackage.applicationInfo.packageName + "): name already used by " + (componentName != null ? componentName.getPackageName() : "?"));
                    }
                }
            }
        }
    }

    private void addReceiversLocked(BPackage bPackage) {
        int size = bPackage.receivers.size();
        for (int i = 0; i < size; i++) {
            BPackage.Activity activity = bPackage.receivers.get(i);
            activity.info.processName = BPackageManagerService.fixProcessName(bPackage.applicationInfo.processName, activity.info.processName);
            this.mReceivers.addActivity(activity, "receiver", null);
        }
    }

    private void addServicesLocked(BPackage bPackage) {
        int size = bPackage.services.size();
        for (int i = 0; i < size; i++) {
            BPackage.Service service = bPackage.services.get(i);
            service.info.processName = BPackageManagerService.fixProcessName(bPackage.applicationInfo.processName, service.info.processName);
            this.mServices.addService(service);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPackage.Activity getActivity(ComponentName componentName) {
        BPackage.Activity activity;
        synchronized (this.mLock) {
            activity = (BPackage.Activity) this.mActivities.mActivities.get(componentName);
        }
        return activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPackage.Provider getProvider(ComponentName componentName) {
        BPackage.Provider provider;
        synchronized (this.mLock) {
            provider = (BPackage.Provider) this.mProviders.mProviders.get(componentName);
        }
        return provider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPackage.Activity getReceiver(ComponentName componentName) {
        BPackage.Activity activity;
        synchronized (this.mLock) {
            activity = (BPackage.Activity) this.mReceivers.mActivities.get(componentName);
        }
        return activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPackage.Service getService(ComponentName componentName) {
        BPackage.Service service;
        synchronized (this.mLock) {
            service = (BPackage.Service) this.mServices.mServices.get(componentName);
        }
        return service;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> queryActivities(Intent intent, String str, int i, int i2) {
        List<ResolveInfo> queryIntent;
        synchronized (this.mLock) {
            queryIntent = this.mActivities.queryIntent(intent, str, i, i2);
        }
        return queryIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> queryActivities(Intent intent, String str, int i, List<BPackage.Activity> list, int i2) {
        List<ResolveInfo> queryIntentForPackage;
        synchronized (this.mLock) {
            queryIntentForPackage = this.mActivities.queryIntentForPackage(intent, str, i, list, i2);
        }
        return queryIntentForPackage;
    }

    List<ResolveInfo> queryProviders(Intent intent, String str, int i, int i2) {
        List<ResolveInfo> queryIntent;
        synchronized (this.mLock) {
            queryIntent = this.mProviders.queryIntent(intent, str, i, i2);
        }
        return queryIntent;
    }

    List<ResolveInfo> queryProviders(Intent intent, String str, int i, List<BPackage.Provider> list, int i2) {
        List<ResolveInfo> queryIntentForPackage;
        synchronized (this.mLock) {
            queryIntentForPackage = this.mProviders.queryIntentForPackage(intent, str, i, list, i2);
        }
        return queryIntentForPackage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ProviderInfo> queryProviders(String str, String str2, int i, int i2) {
        ProviderInfo generateProviderInfo;
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            for (int size = this.mProviders.mProviders.size() - 1; size >= 0; size--) {
                BPackage.Provider provider = (BPackage.Provider) this.mProviders.mProviders.valueAt(size);
                BPackageSettings bPackageSettings = provider.owner.mExtras;
                if (!(bPackageSettings == null || provider.info.authority == null || (!(str == null || provider.info.processName.equals(str)) || ((str2 != null && (provider.metaData == null || !provider.metaData.containsKey(str2))) || (generateProviderInfo = PackageManagerCompat.generateProviderInfo(provider, i, bPackageSettings.readUserState(i2), i2)) == null)))) {
                    arrayList.add(generateProviderInfo);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProviderInfo queryProvider(String str, int i, int i2) {
        synchronized (this.mLock) {
            BPackage.Provider provider = this.mProvidersByAuthority.get(str);
            if (provider == null) {
                return null;
            }
            return PackageManagerCompat.generateProviderInfo(provider, i, provider.owner.mExtras.readUserState(i2), i2);
        }
    }

    List<ResolveInfo> queryReceivers(Intent intent, String str, int i, int i2) {
        List<ResolveInfo> queryIntent;
        synchronized (this.mLock) {
            queryIntent = this.mReceivers.queryIntent(intent, str, i, i2);
        }
        return queryIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> queryReceivers(Intent intent, String str, int i, List<BPackage.Activity> list, int i2) {
        List<ResolveInfo> queryIntentForPackage;
        synchronized (this.mLock) {
            queryIntentForPackage = this.mReceivers.queryIntentForPackage(intent, str, i, list, i2);
        }
        return queryIntentForPackage;
    }

    List<ResolveInfo> queryServices(Intent intent, String str, int i, int i2) {
        List<ResolveInfo> queryIntent;
        synchronized (this.mLock) {
            queryIntent = this.mServices.queryIntent(intent, str, i, i2);
        }
        return queryIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> queryServices(Intent intent, String str, int i, List<BPackage.Service> list, int i2) {
        List<ResolveInfo> queryIntentForPackage;
        synchronized (this.mLock) {
            queryIntentForPackage = this.mServices.queryIntentForPackage(intent, str, i, list, i2);
        }
        return queryIntentForPackage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ServiceIntentResolver extends IntentResolver<BPackage.ServiceIntentInfo, ResolveInfo> {
        private int mFlags;
        private final ArrayMap<ComponentName, BPackage.Service> mServices;

        private ServiceIntentResolver() {
            this.mServices = new ArrayMap<>();
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String str, boolean z, int i) {
            this.mFlags = z ? 65536 : 0;
            return super.queryIntent(intent, str, z, i);
        }

        List<ResolveInfo> queryIntent(Intent intent, String str, int i, int i2) {
            this.mFlags = i;
            return super.queryIntent(intent, str, (i & 65536) != 0, i2);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String str, int i, List<BPackage.Service> list, int i2) {
            if (list == null) {
                return null;
            }
            this.mFlags = i;
            boolean z = (i & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                ArrayList arrayList2 = list.get(i3).intents;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    BPackage.ServiceIntentInfo[] serviceIntentInfoArr = new BPackage.ServiceIntentInfo[arrayList2.size()];
                    arrayList2.toArray(serviceIntentInfoArr);
                    arrayList.add(serviceIntentInfoArr);
                }
            }
            return super.queryIntentFromList(intent, str, z, arrayList, i2);
        }

        void addService(BPackage.Service service) {
            this.mServices.put(service.getComponentName(), service);
            int size = service.intents.size();
            for (int i = 0; i < size; i++) {
                addFilter((BPackage.ServiceIntentInfo) service.intents.get(i));
            }
        }

        void removeService(BPackage.Service service) {
            this.mServices.remove(service.getComponentName());
            int size = service.intents.size();
            for (int i = 0; i < size; i++) {
                removeFilter((BPackage.ServiceIntentInfo) service.intents.get(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean isPackageForFilter(String str, BPackage.ServiceIntentInfo serviceIntentInfo) {
            return str.equals(serviceIntentInfo.service.owner.packageName);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public BPackage.ServiceIntentInfo[] newArray(int i) {
            return new BPackage.ServiceIntentInfo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ResolveInfo newResult(BPackage.ServiceIntentInfo serviceIntentInfo, int i, int i2) {
            BPackage.Service service = serviceIntentInfo.service;
            BPackageSettings bPackageSettings = service.owner.mExtras;
            if (bPackageSettings == null) {
                return null;
            }
            ServiceInfo generateServiceInfo = PackageManagerCompat.generateServiceInfo(service, this.mFlags, bPackageSettings.readUserState(i2), i2);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.serviceInfo = generateServiceInfo;
            if ((this.mFlags & 64) != 0) {
                resolveInfo.filter = serviceIntentInfo.intentFilter;
            }
            resolveInfo.priority = serviceIntentInfo.intentFilter.getPriority();
            resolveInfo.preferredOrder = service.owner.mPreferredOrder;
            resolveInfo.match = i;
            resolveInfo.isDefault = serviceIntentInfo.hasDefault;
            resolveInfo.labelRes = serviceIntentInfo.labelRes;
            resolveInfo.nonLocalizedLabel = serviceIntentInfo.nonLocalizedLabel;
            resolveInfo.icon = serviceIntentInfo.icon;
            return resolveInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ActivityIntentResolver extends IntentResolver<BPackage.ActivityIntentInfo, ResolveInfo> {
        private final ArrayMap<ComponentName, BPackage.Activity> mActivities;
        private int mFlags;

        private ActivityIntentResolver() {
            this.mActivities = new ArrayMap<>();
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String str, boolean z, int i) {
            this.mFlags = z ? 65536 : 0;
            return super.queryIntent(intent, str, z, i);
        }

        List<ResolveInfo> queryIntent(Intent intent, String str, int i, int i2) {
            this.mFlags = i;
            return super.queryIntent(intent, str, (i & 65536) != 0, i2);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String str, int i, List<BPackage.Activity> list, int i2) {
            if (list == null) {
                return null;
            }
            this.mFlags = i;
            boolean z = (i & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                ArrayList arrayList2 = list.get(i3).intents;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    BPackage.ActivityIntentInfo[] activityIntentInfoArr = new BPackage.ActivityIntentInfo[arrayList2.size()];
                    arrayList2.toArray(activityIntentInfoArr);
                    arrayList.add(activityIntentInfoArr);
                }
            }
            return super.queryIntentFromList(intent, str, z, arrayList, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addActivity(BPackage.Activity activity, String str, List<BPackage.ActivityIntentInfo> list) {
            this.mActivities.put(activity.getComponentName(), activity);
            int size = activity.intents.size();
            for (int i = 0; i < size; i++) {
                BPackage.ActivityIntentInfo activityIntentInfo = (BPackage.ActivityIntentInfo) activity.intents.get(i);
                if (list != null && "activity".equals(str)) {
                    list.add(activityIntentInfo);
                    addFilter(activityIntentInfo);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeActivity(BPackage.Activity activity, String str) {
            this.mActivities.remove(activity.getComponentName());
            int size = activity.intents.size();
            for (int i = 0; i < size; i++) {
                removeFilter((BPackage.ActivityIntentInfo) activity.intents.get(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean isPackageForFilter(String str, BPackage.ActivityIntentInfo activityIntentInfo) {
            return str.equals(activityIntentInfo.activity.owner.packageName);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public BPackage.ActivityIntentInfo[] newArray(int i) {
            return new BPackage.ActivityIntentInfo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ResolveInfo newResult(BPackage.ActivityIntentInfo activityIntentInfo, int i, int i2) {
            BPackage.Activity activity = activityIntentInfo.activity;
            BPackageSettings bPackageSettings = activity.owner.mExtras;
            if (bPackageSettings == null) {
                return null;
            }
            ActivityInfo generateActivityInfo = PackageManagerCompat.generateActivityInfo(activity, this.mFlags, bPackageSettings.readUserState(i2), i2);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.activityInfo = generateActivityInfo;
            if ((this.mFlags & 64) != 0) {
                resolveInfo.filter = activityIntentInfo.intentFilter;
            }
            resolveInfo.priority = activityIntentInfo.intentFilter.getPriority();
            resolveInfo.preferredOrder = activity.owner.mPreferredOrder;
            resolveInfo.match = i;
            resolveInfo.isDefault = activityIntentInfo.hasDefault;
            resolveInfo.labelRes = activityIntentInfo.labelRes;
            resolveInfo.nonLocalizedLabel = activityIntentInfo.nonLocalizedLabel;
            resolveInfo.icon = activityIntentInfo.icon;
            return resolveInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ProviderIntentResolver extends IntentResolver<BPackage.ProviderIntentInfo, ResolveInfo> {
        private int mFlags;
        private final ArrayMap<ComponentName, BPackage.Provider> mProviders;

        private ProviderIntentResolver() {
            this.mProviders = new ArrayMap<>();
        }

        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String str, boolean z, int i) {
            this.mFlags = z ? 65536 : 0;
            return super.queryIntent(intent, str, z, i);
        }

        List<ResolveInfo> queryIntent(Intent intent, String str, int i, int i2) {
            this.mFlags = i;
            return super.queryIntent(intent, str, (i & 65536) != 0, i2);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String str, int i, List<BPackage.Provider> list, int i2) {
            if (list == null) {
                return null;
            }
            this.mFlags = i;
            boolean z = (i & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                ArrayList arrayList2 = list.get(i3).intents;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    BPackage.ProviderIntentInfo[] providerIntentInfoArr = new BPackage.ProviderIntentInfo[arrayList2.size()];
                    arrayList2.toArray(providerIntentInfoArr);
                    arrayList.add(providerIntentInfoArr);
                }
            }
            return super.queryIntentFromList(intent, str, z, arrayList, i2);
        }

        void addProvider(BPackage.Provider provider) {
            this.mProviders.put(provider.getComponentName(), provider);
            int size = provider.intents.size();
            for (int i = 0; i < size; i++) {
                addFilter((BPackage.ProviderIntentInfo) provider.intents.get(i));
            }
        }

        void removeProvider(BPackage.Provider provider) {
            this.mProviders.remove(provider.getComponentName());
            int size = provider.intents.size();
            for (int i = 0; i < size; i++) {
                removeFilter((BPackage.ProviderIntentInfo) provider.intents.get(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean allowFilterResult(BPackage.ProviderIntentInfo providerIntentInfo, List<ResolveInfo> list) {
            ProviderInfo providerInfo = providerIntentInfo.provider.info;
            for (int size = list.size() - 1; size >= 0; size--) {
                ProviderInfo providerInfo2 = list.get(size).providerInfo;
                if (providerInfo2.name.equals(providerInfo.name) && providerInfo2.packageName.equals(providerInfo.packageName)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.core.system.pm.IntentResolver
        public BPackage.ProviderIntentInfo[] newArray(int i) {
            return new BPackage.ProviderIntentInfo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean isPackageForFilter(String str, BPackage.ProviderIntentInfo providerIntentInfo) {
            return str.equals(providerIntentInfo.provider.owner.packageName);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ResolveInfo newResult(BPackage.ProviderIntentInfo providerIntentInfo, int i, int i2) {
            BPackage.Provider provider = providerIntentInfo.provider;
            BPackageSettings bPackageSettings = provider.owner.mExtras;
            if (bPackageSettings == null) {
                return null;
            }
            ProviderInfo generateProviderInfo = PackageManagerCompat.generateProviderInfo(provider, this.mFlags, bPackageSettings.readUserState(i2), i2);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.providerInfo = generateProviderInfo;
            if ((this.mFlags & 64) != 0) {
                resolveInfo.filter = providerIntentInfo.intentFilter;
            }
            resolveInfo.priority = providerIntentInfo.intentFilter.getPriority();
            resolveInfo.preferredOrder = provider.owner.mPreferredOrder;
            resolveInfo.match = i;
            resolveInfo.isDefault = providerIntentInfo.hasDefault;
            resolveInfo.labelRes = providerIntentInfo.labelRes;
            resolveInfo.nonLocalizedLabel = providerIntentInfo.nonLocalizedLabel;
            resolveInfo.icon = providerIntentInfo.icon;
            return resolveInfo;
        }
    }
}
