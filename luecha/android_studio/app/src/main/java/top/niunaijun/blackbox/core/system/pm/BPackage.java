package top.niunaijun.blackbox.core.system.pm;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageParser;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes4.dex */
public class BPackage implements Parcelable {
    public static final Parcelable.Creator<BPackage> CREATOR = new Parcelable.Creator<BPackage>() { // from class: top.niunaijun.blackbox.core.system.pm.BPackage.1
        @Override // android.os.Parcelable.Creator
        public BPackage createFromParcel(Parcel parcel) {
            return new BPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BPackage[] newArray(int i) {
            return new BPackage[i];
        }
    };
    public ArrayList<Activity> activities;
    public ApplicationInfo applicationInfo;
    public String baseCodePath;
    public ArrayList<ConfigurationInfo> configPreferences;
    public ArrayList<Instrumentation> instrumentation;
    public Bundle mAppMetaData;
    public BPackageSettings mExtras;
    public int mPreferredOrder;
    public String mSharedUserId;
    public int mSharedUserLabel;
    public Signature[] mSignatures;
    public SigningDetails mSigningDetails;
    public int mVersionCode;
    public String mVersionName;
    public String packageName;
    public ArrayList<PermissionGroup> permissionGroups;
    public ArrayList<Permission> permissions;
    public ArrayList<Provider> providers;
    public ArrayList<Activity> receivers;
    public ArrayList<FeatureInfo> reqFeatures;
    public ArrayList<String> requestedPermissions;
    public ArrayList<Service> services;
    public ArrayList<String> usesLibraries;
    public ArrayList<String> usesOptionalLibraries;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BPackage(PackageParser.Package r5) {
        this.activities = new ArrayList<>(0);
        this.receivers = new ArrayList<>(0);
        this.providers = new ArrayList<>(0);
        this.services = new ArrayList<>(0);
        this.instrumentation = new ArrayList<>(0);
        this.permissions = new ArrayList<>(0);
        this.permissionGroups = new ArrayList<>(0);
        this.requestedPermissions = new ArrayList<>();
        this.configPreferences = null;
        this.reqFeatures = null;
        this.activities = new ArrayList<>(r5.activities.size());
        Iterator<PackageParser.Activity> it = r5.activities.iterator();
        while (it.hasNext()) {
            Activity activity = new Activity(it.next());
            Iterator it2 = activity.intents.iterator();
            while (it2.hasNext()) {
                ((ActivityIntentInfo) it2.next()).activity = activity;
            }
            activity.owner = this;
            this.activities.add(activity);
        }
        this.receivers = new ArrayList<>(r5.receivers.size());
        Iterator<PackageParser.Activity> it3 = r5.receivers.iterator();
        while (it3.hasNext()) {
            Activity activity2 = new Activity(it3.next());
            Iterator it4 = activity2.intents.iterator();
            while (it4.hasNext()) {
                ((ActivityIntentInfo) it4.next()).activity = activity2;
            }
            activity2.owner = this;
            this.receivers.add(activity2);
        }
        this.providers = new ArrayList<>(r5.providers.size());
        Iterator<PackageParser.Provider> it5 = r5.providers.iterator();
        while (it5.hasNext()) {
            Provider provider = new Provider(it5.next());
            Iterator it6 = provider.intents.iterator();
            while (it6.hasNext()) {
                ((ProviderIntentInfo) it6.next()).provider = provider;
            }
            provider.owner = this;
            this.providers.add(provider);
        }
        this.services = new ArrayList<>(r5.services.size());
        Iterator<PackageParser.Service> it7 = r5.services.iterator();
        while (it7.hasNext()) {
            Service service = new Service(it7.next());
            Iterator it8 = service.intents.iterator();
            while (it8.hasNext()) {
                ((ServiceIntentInfo) it8.next()).service = service;
            }
            service.owner = this;
            this.services.add(service);
        }
        this.instrumentation = new ArrayList<>(r5.instrumentation.size());
        Iterator<PackageParser.Instrumentation> it9 = r5.instrumentation.iterator();
        while (it9.hasNext()) {
            Instrumentation instrumentation = new Instrumentation(it9.next());
            instrumentation.owner = this;
            this.instrumentation.add(instrumentation);
        }
        this.permissions = new ArrayList<>(r5.permissions.size());
        Iterator<PackageParser.Permission> it10 = r5.permissions.iterator();
        while (it10.hasNext()) {
            Permission permission = new Permission(it10.next());
            permission.owner = this;
            this.permissions.add(permission);
        }
        this.permissionGroups = new ArrayList<>(r5.permissionGroups.size());
        Iterator<PackageParser.PermissionGroup> it11 = r5.permissionGroups.iterator();
        while (it11.hasNext()) {
            PermissionGroup permissionGroup = new PermissionGroup(it11.next());
            permissionGroup.owner = this;
            this.permissionGroups.add(permissionGroup);
        }
        this.requestedPermissions = r5.requestedPermissions;
        if (BuildCompat.isPie()) {
            SigningDetails signingDetails = new SigningDetails(r5.mSigningDetails);
            this.mSigningDetails = signingDetails;
            this.mSignatures = signingDetails.signatures;
        } else {
            this.mSignatures = r5.mSignatures;
        }
        this.mAppMetaData = r5.mAppMetaData;
        this.packageName = r5.packageName;
        this.mPreferredOrder = r5.mPreferredOrder;
        this.mSharedUserId = r5.mSharedUserId;
        this.usesLibraries = r5.usesLibraries;
        this.usesOptionalLibraries = r5.usesOptionalLibraries;
        this.mVersionCode = r5.mVersionCode;
        this.applicationInfo = r5.applicationInfo;
        this.mVersionName = r5.mVersionName;
        this.baseCodePath = r5.baseCodePath;
        this.mSharedUserLabel = r5.mSharedUserLabel;
        this.configPreferences = r5.configPreferences;
        this.reqFeatures = r5.reqFeatures;
    }

    protected BPackage(Parcel parcel) {
        this.activities = new ArrayList<>(0);
        this.receivers = new ArrayList<>(0);
        this.providers = new ArrayList<>(0);
        this.services = new ArrayList<>(0);
        this.instrumentation = new ArrayList<>(0);
        this.permissions = new ArrayList<>(0);
        this.permissionGroups = new ArrayList<>(0);
        this.requestedPermissions = new ArrayList<>();
        this.configPreferences = null;
        this.reqFeatures = null;
        int readInt = parcel.readInt();
        this.activities = new ArrayList<>(readInt);
        while (true) {
            int i = readInt - 1;
            if (readInt <= 0) {
                break;
            }
            Activity activity = new Activity(parcel);
            Iterator it = activity.intents.iterator();
            while (it.hasNext()) {
                ((ActivityIntentInfo) it.next()).activity = activity;
            }
            activity.owner = this;
            this.activities.add(activity);
            readInt = i;
        }
        int readInt2 = parcel.readInt();
        this.receivers = new ArrayList<>(readInt2);
        while (true) {
            int i2 = readInt2 - 1;
            if (readInt2 <= 0) {
                break;
            }
            Activity activity2 = new Activity(parcel);
            Iterator it2 = activity2.intents.iterator();
            while (it2.hasNext()) {
                ((ActivityIntentInfo) it2.next()).activity = activity2;
            }
            activity2.owner = this;
            this.receivers.add(activity2);
            readInt2 = i2;
        }
        int readInt3 = parcel.readInt();
        this.providers = new ArrayList<>(readInt3);
        while (true) {
            int i3 = readInt3 - 1;
            if (readInt3 <= 0) {
                break;
            }
            Provider provider = new Provider(parcel);
            Iterator it3 = provider.intents.iterator();
            while (it3.hasNext()) {
                ((ProviderIntentInfo) it3.next()).provider = provider;
            }
            provider.owner = this;
            this.providers.add(provider);
            readInt3 = i3;
        }
        int readInt4 = parcel.readInt();
        this.services = new ArrayList<>(readInt4);
        while (true) {
            int i4 = readInt4 - 1;
            if (readInt4 <= 0) {
                break;
            }
            Service service = new Service(parcel);
            Iterator it4 = service.intents.iterator();
            while (it4.hasNext()) {
                ((ServiceIntentInfo) it4.next()).service = service;
            }
            service.owner = this;
            this.services.add(service);
            readInt4 = i4;
        }
        int readInt5 = parcel.readInt();
        this.instrumentation = new ArrayList<>(readInt5);
        while (true) {
            int i5 = readInt5 - 1;
            if (readInt5 <= 0) {
                break;
            }
            Instrumentation instrumentation = new Instrumentation(parcel);
            instrumentation.owner = this;
            this.instrumentation.add(instrumentation);
            readInt5 = i5;
        }
        int readInt6 = parcel.readInt();
        this.permissions = new ArrayList<>(readInt6);
        while (true) {
            int i6 = readInt6 - 1;
            if (readInt6 <= 0) {
                break;
            }
            Permission permission = new Permission(parcel);
            permission.owner = this;
            this.permissions.add(permission);
            readInt6 = i6;
        }
        int readInt7 = parcel.readInt();
        this.permissionGroups = new ArrayList<>(readInt7);
        while (true) {
            int i7 = readInt7 - 1;
            if (readInt7 <= 0) {
                break;
            }
            PermissionGroup permissionGroup = new PermissionGroup(parcel);
            permissionGroup.owner = this;
            this.permissionGroups.add(permissionGroup);
            readInt7 = i7;
        }
        parcel.readStringList(this.requestedPermissions);
        if (BuildCompat.isPie()) {
            this.mSigningDetails = (SigningDetails) parcel.readParcelable(SigningDetails.class.getClassLoader());
        }
        this.mSignatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        this.mAppMetaData = parcel.readBundle(Bundle.class.getClassLoader());
        this.packageName = parcel.readString();
        this.mPreferredOrder = parcel.readInt();
        this.mSharedUserId = parcel.readString();
        this.usesLibraries = parcel.createStringArrayList();
        this.usesOptionalLibraries = parcel.createStringArrayList();
        this.mVersionCode = parcel.readInt();
        this.applicationInfo = (ApplicationInfo) parcel.readParcelable(ApplicationInfo.class.getClassLoader());
        this.mVersionName = parcel.readString();
        this.baseCodePath = parcel.readString();
        this.mSharedUserLabel = parcel.readInt();
        this.configPreferences = parcel.createTypedArrayList(ConfigurationInfo.CREATOR);
        this.reqFeatures = parcel.createTypedArrayList(FeatureInfo.CREATOR);
    }

    /* loaded from: classes4.dex */
    public static final class Activity extends Component<ActivityIntentInfo> {
        public ActivityInfo info;

        public Activity(PackageParser.Activity activity) {
            super(activity);
            this.info = activity.info;
            if (activity.intents != null) {
                this.intents = new ArrayList(activity.intents.size());
                Iterator it = activity.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new ActivityIntentInfo((PackageParser.ActivityIntentInfo) it.next()));
                }
            }
        }

        public Activity(Parcel parcel) {
            super(parcel);
            this.info = (ActivityInfo) parcel.readParcelable(ActivityInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add(new ActivityIntentInfo((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader())));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Service extends Component<ServiceIntentInfo> {
        public ServiceInfo info;

        public Service(PackageParser.Service service) {
            super(service);
            this.info = service.info;
            if (service.intents != null) {
                this.intents = new ArrayList(service.intents.size());
                Iterator it = service.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new ServiceIntentInfo((PackageParser.ServiceIntentInfo) it.next()));
                }
            }
        }

        public Service(Parcel parcel) {
            super(parcel);
            this.info = (ServiceInfo) parcel.readParcelable(ServiceInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add(new ServiceIntentInfo((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader())));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Provider extends Component<ProviderIntentInfo> {
        public ProviderInfo info;

        public Provider(PackageParser.Provider provider) {
            super(provider);
            this.info = provider.info;
            if (provider.intents != null) {
                this.intents = new ArrayList(provider.intents.size());
                Iterator it = provider.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new ProviderIntentInfo((PackageParser.ProviderIntentInfo) it.next()));
                }
            }
        }

        public Provider(Parcel parcel) {
            super(parcel);
            this.info = (ProviderInfo) parcel.readParcelable(ProviderInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add(new ProviderIntentInfo((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader())));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Instrumentation extends Component<IntentInfo> {
        public InstrumentationInfo info;

        public Instrumentation(PackageParser.Instrumentation instrumentation) {
            super(instrumentation);
            this.info = instrumentation.info;
            if (instrumentation.intents != null) {
                this.intents = new ArrayList(instrumentation.intents.size());
                Iterator it = instrumentation.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new IntentInfo((PackageParser.IntentInfo) it.next()));
                }
            }
        }

        public Instrumentation(Parcel parcel) {
            super(parcel);
            this.info = (InstrumentationInfo) parcel.readParcelable(InstrumentationInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader()));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Permission extends Component<IntentInfo> {
        public PermissionInfo info;

        public Permission(PackageParser.Permission permission) {
            super(permission);
            this.info = permission.info;
            if (permission.intents != null) {
                this.intents = new ArrayList(permission.intents.size());
                Iterator it = permission.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new IntentInfo((PackageParser.IntentInfo) it.next()));
                }
            }
        }

        public Permission(Parcel parcel) {
            super(parcel);
            this.info = (PermissionInfo) parcel.readParcelable(Permission.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader()));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class PermissionGroup extends Component<IntentInfo> {
        public PermissionGroupInfo info;

        public PermissionGroup(PackageParser.PermissionGroup permissionGroup) {
            super(permissionGroup);
            this.info = permissionGroup.info;
            if (permissionGroup.intents != null) {
                this.intents = new ArrayList(permissionGroup.intents.size());
                Iterator it = permissionGroup.intents.iterator();
                while (it.hasNext()) {
                    this.intents.add(new IntentInfo((PackageParser.IntentInfo) it.next()));
                }
            }
        }

        public PermissionGroup(Parcel parcel) {
            super(parcel);
            this.info = (PermissionGroupInfo) parcel.readParcelable(PermissionGroup.class.getClassLoader());
            int readInt = parcel.readInt();
            this.intents = new ArrayList(readInt);
            while (true) {
                int i = readInt - 1;
                if (readInt > 0) {
                    this.intents.add((IntentInfo) parcel.readParcelable(BPackage.class.getClassLoader()));
                    readInt = i;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class ActivityIntentInfo extends IntentInfo {
        public Activity activity;

        public ActivityIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ActivityIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes4.dex */
    public static class ServiceIntentInfo extends IntentInfo {
        public Service service;

        public ServiceIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ServiceIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes4.dex */
    public static class ProviderIntentInfo extends IntentInfo {
        public Provider provider;

        public ProviderIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ProviderIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes4.dex */
    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new Parcelable.Creator<SigningDetails>() { // from class: top.niunaijun.blackbox.core.system.pm.BPackage.SigningDetails.1
            @Override // android.os.Parcelable.Creator
            public SigningDetails createFromParcel(Parcel parcel) {
                return new SigningDetails(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SigningDetails[] newArray(int i) {
                return new SigningDetails[i];
            }
        };
        public static final PackageParser.SigningDetails UNKNOWN = null;
        public Signature[] signatures;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeTypedArray(this.signatures, i);
        }

        public SigningDetails(PackageParser.SigningDetails signingDetails) {
            this.signatures = signingDetails.signatures;
        }

        protected SigningDetails(Parcel parcel) {
            this.signatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        }
    }

    /* loaded from: classes4.dex */
    public static class IntentInfo implements Parcelable {
        public static final Parcelable.Creator<IntentInfo> CREATOR = new Parcelable.Creator<IntentInfo>() { // from class: top.niunaijun.blackbox.core.system.pm.BPackage.IntentInfo.1
            @Override // android.os.Parcelable.Creator
            public IntentInfo createFromParcel(Parcel parcel) {
                return new IntentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public IntentInfo[] newArray(int i) {
                return new IntentInfo[i];
            }
        };
        public int banner;
        public boolean hasDefault;
        public int icon;
        public IntentFilter intentFilter;
        public int labelRes;
        public int logo;
        public String nonLocalizedLabel;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public IntentInfo(PackageParser.IntentInfo intentInfo) {
            this.intentFilter = intentInfo;
            this.hasDefault = intentInfo.hasDefault;
            this.labelRes = intentInfo.labelRes;
            this.nonLocalizedLabel = intentInfo.nonLocalizedLabel == null ? null : intentInfo.nonLocalizedLabel.toString();
            this.icon = intentInfo.icon;
            this.logo = intentInfo.logo;
            this.banner = intentInfo.banner;
        }

        public IntentInfo(IntentInfo intentInfo) {
            this.intentFilter = intentInfo.intentFilter;
            this.hasDefault = intentInfo.hasDefault;
            this.labelRes = intentInfo.labelRes;
            String str = intentInfo.nonLocalizedLabel;
            this.nonLocalizedLabel = str == null ? null : str.toString();
            this.icon = intentInfo.icon;
            this.logo = intentInfo.logo;
            this.banner = intentInfo.banner;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.intentFilter, i);
            parcel.writeByte(this.hasDefault ? (byte) 1 : 0);
            parcel.writeInt(this.labelRes);
            parcel.writeString(this.nonLocalizedLabel);
            parcel.writeInt(this.icon);
            parcel.writeInt(this.logo);
            parcel.writeInt(this.banner);
        }

        protected IntentInfo(Parcel parcel) {
            this.intentFilter = (IntentFilter) parcel.readParcelable(BPackage.class.getClassLoader());
            this.hasDefault = parcel.readByte() != 0;
            this.labelRes = parcel.readInt();
            this.nonLocalizedLabel = parcel.readString();
            this.icon = parcel.readInt();
            this.logo = parcel.readInt();
            this.banner = parcel.readInt();
        }
    }

    /* loaded from: classes4.dex */
    public static class Component<II extends IntentInfo> {
        public String className;
        public ComponentName componentName;
        public ArrayList<II> intents;
        public Bundle metaData;
        public BPackage owner;

        public Component(Parcel parcel) {
            this.className = parcel.readString();
            this.metaData = parcel.readBundle(Bundle.class.getClassLoader());
        }

        public Component(PackageParser.Component<?> component) {
            this.className = component.className;
            this.metaData = component.metaData;
        }

        public ComponentName getComponentName() {
            ComponentName componentName = this.componentName;
            if (componentName != null) {
                return componentName;
            }
            if (this.className != null) {
                this.componentName = new ComponentName(this.owner.packageName, this.className);
            }
            return this.componentName;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.activities.size());
        Iterator<Activity> it = this.activities.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            parcel.writeString(next.className);
            parcel.writeBundle(next.metaData);
            parcel.writeParcelable(next.info, i);
            if (next.intents != null) {
                int size = next.intents.size();
                parcel.writeInt(size);
                while (true) {
                    int i2 = size - 1;
                    if (size > 0) {
                        parcel.writeParcelable((Parcelable) next.intents.get(i2), i);
                        size = i2;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.receivers.size());
        Iterator<Activity> it2 = this.receivers.iterator();
        while (it2.hasNext()) {
            Activity next2 = it2.next();
            parcel.writeString(next2.className);
            parcel.writeBundle(next2.metaData);
            parcel.writeParcelable(next2.info, i);
            if (next2.intents != null) {
                int size2 = next2.intents.size();
                parcel.writeInt(size2);
                while (true) {
                    int i3 = size2 - 1;
                    if (size2 > 0) {
                        parcel.writeParcelable((Parcelable) next2.intents.get(i3), i);
                        size2 = i3;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.providers.size());
        Iterator<Provider> it3 = this.providers.iterator();
        while (it3.hasNext()) {
            Provider next3 = it3.next();
            parcel.writeString(next3.className);
            parcel.writeBundle(next3.metaData);
            parcel.writeParcelable(next3.info, i);
            if (next3.intents != null) {
                int size3 = next3.intents.size();
                parcel.writeInt(size3);
                while (true) {
                    int i4 = size3 - 1;
                    if (size3 > 0) {
                        parcel.writeParcelable((Parcelable) next3.intents.get(i4), i);
                        size3 = i4;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.services.size());
        Iterator<Service> it4 = this.services.iterator();
        while (it4.hasNext()) {
            Service next4 = it4.next();
            parcel.writeString(next4.className);
            parcel.writeBundle(next4.metaData);
            parcel.writeParcelable(next4.info, i);
            if (next4.intents != null) {
                int size4 = next4.intents.size();
                parcel.writeInt(size4);
                while (true) {
                    int i5 = size4 - 1;
                    if (size4 > 0) {
                        parcel.writeParcelable((Parcelable) next4.intents.get(i5), i);
                        size4 = i5;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.instrumentation.size());
        Iterator<Instrumentation> it5 = this.instrumentation.iterator();
        while (it5.hasNext()) {
            Instrumentation next5 = it5.next();
            parcel.writeString(next5.className);
            parcel.writeBundle(next5.metaData);
            parcel.writeParcelable(next5.info, i);
            if (next5.intents != null) {
                int size5 = next5.intents.size();
                parcel.writeInt(size5);
                while (true) {
                    int i6 = size5 - 1;
                    if (size5 > 0) {
                        parcel.writeParcelable((Parcelable) next5.intents.get(i6), i);
                        size5 = i6;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.permissions.size());
        Iterator<Permission> it6 = this.permissions.iterator();
        while (it6.hasNext()) {
            Permission next6 = it6.next();
            parcel.writeString(next6.className);
            parcel.writeBundle(next6.metaData);
            parcel.writeParcelable(next6.info, i);
            if (next6.intents != null) {
                int size6 = next6.intents.size();
                parcel.writeInt(size6);
                while (true) {
                    int i7 = size6 - 1;
                    if (size6 > 0) {
                        parcel.writeParcelable((Parcelable) next6.intents.get(i7), i);
                        size6 = i7;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.permissionGroups.size());
        Iterator<PermissionGroup> it7 = this.permissionGroups.iterator();
        while (it7.hasNext()) {
            PermissionGroup next7 = it7.next();
            parcel.writeString(next7.className);
            parcel.writeBundle(next7.metaData);
            parcel.writeParcelable(next7.info, i);
            if (next7.intents != null) {
                int size7 = next7.intents.size();
                parcel.writeInt(size7);
                while (true) {
                    int i8 = size7 - 1;
                    if (size7 > 0) {
                        parcel.writeParcelable((Parcelable) next7.intents.get(i8), i);
                        size7 = i8;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeStringList(this.requestedPermissions);
        if (BuildCompat.isPie()) {
            parcel.writeParcelable(this.mSigningDetails, i);
        }
        parcel.writeTypedArray(this.mSignatures, i);
        parcel.writeBundle(this.mAppMetaData);
        parcel.writeString(this.packageName);
        parcel.writeInt(this.mPreferredOrder);
        parcel.writeString(this.mSharedUserId);
        parcel.writeStringList(this.usesLibraries);
        parcel.writeStringList(this.usesOptionalLibraries);
        parcel.writeInt(this.mVersionCode);
        parcel.writeParcelable(this.applicationInfo, i);
        parcel.writeString(this.mVersionName);
        parcel.writeString(this.baseCodePath);
        parcel.writeInt(this.mSharedUserLabel);
        parcel.writeTypedList(this.configPreferences);
        parcel.writeTypedList(this.reqFeatures);
    }
}
