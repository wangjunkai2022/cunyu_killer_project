package kotlin.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.apache.commons.io.FilenameUtils;

/* compiled from: PlatformImplementations.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\b\u001a\u0002H\t\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\b¢\u0006\u0002\u0010\f\u001a\b\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "castToBaseType", ExifInterface.GPS_DIRECTION_TRUE, "", "instance", "(Ljava/lang/Object;)Ljava/lang/Object;", "getJavaVersion", "kotlin-stdlib"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PlatformImplementationsKt {
    public static final PlatformImplementations IMPLEMENTATIONS;

    static {
        PlatformImplementations platformImplementations;
        int javaVersion = getJavaVersion();
        if (javaVersion >= 65544) {
            try {
                Object newInstance = Class.forName("kotlin.internal.jdk8.JDK8PlatformImplementations").newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        platformImplementations = (PlatformImplementations) newInstance;
                    } catch (ClassCastException e) {
                        ClassLoader classLoader = newInstance.getClass().getClassLoader();
                        ClassLoader classLoader2 = PlatformImplementations.class.getClassLoader();
                        Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e);
                        Intrinsics.checkNotNullExpressionValue(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause;
                    }
                } catch (ClassNotFoundException unused) {
                }
            } catch (ClassNotFoundException unused2) {
                Object newInstance2 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    platformImplementations = (PlatformImplementations) newInstance2;
                } catch (ClassCastException e2) {
                    ClassLoader classLoader3 = newInstance2.getClass().getClassLoader();
                    ClassLoader classLoader4 = PlatformImplementations.class.getClassLoader();
                    Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e2);
                    Intrinsics.checkNotNullExpressionValue(initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause2;
                }
            }
            IMPLEMENTATIONS = platformImplementations;
        }
        if (javaVersion >= 65543) {
            try {
                try {
                    Object newInstance3 = Class.forName("kotlin.internal.jdk7.JDK7PlatformImplementations").newInstance();
                    Intrinsics.checkNotNullExpressionValue(newInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        platformImplementations = (PlatformImplementations) newInstance3;
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader5 = newInstance3.getClass().getClassLoader();
                        ClassLoader classLoader6 = PlatformImplementations.class.getClassLoader();
                        Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e3);
                        Intrinsics.checkNotNullExpressionValue(initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause3;
                    }
                } catch (ClassNotFoundException unused3) {
                }
            } catch (ClassNotFoundException unused4) {
                Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    platformImplementations = (PlatformImplementations) newInstance4;
                } catch (ClassCastException e4) {
                    ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                    ClassLoader classLoader8 = PlatformImplementations.class.getClassLoader();
                    Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e4);
                    Intrinsics.checkNotNullExpressionValue(initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause4;
                }
            }
            IMPLEMENTATIONS = platformImplementations;
        }
        platformImplementations = new PlatformImplementations();
        IMPLEMENTATIONS = platformImplementations;
    }

    private static final /* synthetic */ <T> T castToBaseType(Object obj) {
        try {
            Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) obj;
        } catch (ClassCastException e) {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            ClassLoader classLoader2 = Object.class.getClassLoader();
            Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e);
            Intrinsics.checkNotNullExpressionValue(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
            throw initCause;
        }
    }

    private static final int getJavaVersion() {
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return 65542;
        }
        String str = property;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, (char) FilenameUtils.EXTENSION_SEPARATOR, 0, false, 6, (Object) null);
        if (indexOf$default < 0) {
            try {
                return Integer.parseInt(property) * 65536;
            } catch (NumberFormatException unused) {
                return 65542;
            }
        } else {
            int i = indexOf$default + 1;
            int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str, (char) FilenameUtils.EXTENSION_SEPARATOR, i, false, 4, (Object) null);
            if (indexOf$default2 < 0) {
                indexOf$default2 = property.length();
            }
            String substring = property.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String substring2 = property.substring(i, indexOf$default2);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            try {
                return (Integer.parseInt(substring) * 65536) + Integer.parseInt(substring2);
            } catch (NumberFormatException unused2) {
                return 65542;
            }
        }
    }

    public static final boolean apiVersionIsAtLeast(int i, int i2, int i3) {
        return KotlinVersion.CURRENT.isAtLeast(i, i2, i3);
    }
}
