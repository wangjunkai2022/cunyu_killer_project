package com.umeng.analytics;

import java.util.Locale;

/* loaded from: classes3.dex */
public enum Gender {
    Male(1) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Male:%d", Integer.valueOf(this.value));
        }
    },
    Female(2) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Female:%d", Integer.valueOf(this.value));
        }
    },
    Unknown(0) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Unknown:%d", Integer.valueOf(this.value));
        }
    };
    
    public int value;

    Gender(int i) {
        this.value = i;
    }

    public int value() {
        return this.value;
    }

    public static Gender getGender(int i) {
        if (i == 1) {
            return Male;
        }
        if (i != 2) {
            return Unknown;
        }
        return Female;
    }

    /* renamed from: com.umeng.analytics.Gender$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Gender.values().length];
            a = iArr;
            try {
                iArr[Gender.Male.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Gender.Female.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Gender.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static com.umeng.commonsdk.statistics.proto.Gender transGender(Gender gender) {
        int i = AnonymousClass4.a[gender.ordinal()];
        if (i == 1) {
            return com.umeng.commonsdk.statistics.proto.Gender.MALE;
        }
        if (i != 2) {
            return com.umeng.commonsdk.statistics.proto.Gender.UNKNOWN;
        }
        return com.umeng.commonsdk.statistics.proto.Gender.FEMALE;
    }
}
