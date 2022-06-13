package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.DebugStringsKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: LockFreeLinkedList.kt */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
/* synthetic */ class LockFreeLinkedListNode$toString$1 extends PropertyReference0Impl {
    LockFreeLinkedListNode$toString$1(Object obj) {
        super(obj, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1);
    }

    @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
    public Object get() {
        return DebugStringsKt.getClassSimpleName(this.receiver);
    }
}
