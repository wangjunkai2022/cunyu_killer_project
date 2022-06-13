package kotlin.collections;

import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* loaded from: classes4.dex */
class ArraysUtilJVM {
    ArraysUtilJVM() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<T> asList(T[] tArr) {
        return Arrays.asList(tArr);
    }
}
