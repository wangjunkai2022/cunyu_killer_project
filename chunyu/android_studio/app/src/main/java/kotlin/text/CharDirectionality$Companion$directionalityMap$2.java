package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: CharDirectionality.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "", "Lkotlin/text/CharDirectionality;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
final class CharDirectionality$Companion$directionalityMap$2 extends Lambda implements Function0<Map<Integer, ? extends CharDirectionality>> {
    public static final CharDirectionality$Companion$directionalityMap$2 INSTANCE = new CharDirectionality$Companion$directionalityMap$2();

    CharDirectionality$Companion$directionalityMap$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Map<Integer, ? extends CharDirectionality> invoke() {
        CharDirectionality[] values = CharDirectionality.values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(values.length), 16));
        int length = values.length;
        int i = 0;
        while (i < length) {
            CharDirectionality charDirectionality = values[i];
            i++;
            linkedHashMap.put(Integer.valueOf(charDirectionality.getValue()), charDirectionality);
        }
        return linkedHashMap;
    }
}
