package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sequences.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B'\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0096\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lkotlin/sequences/DropWhileSequence;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "sequence", "predicate", "Lkotlin/Function1;", "", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public final class DropWhileSequence<T> implements Sequence<T> {
    private final Function1<T, Boolean> predicate;
    private final Sequence<T> sequence;

    /* JADX WARN: Multi-variable type inference failed */
    public DropWhileSequence(Sequence<? extends T> sequence, Function1<? super T, Boolean> function1) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        this.sequence = sequence;
        this.predicate = function1;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<T> iterator() {
        return new Object() { // from class: kotlin.sequences.DropWhileSequence$iterator$1
            private int dropState = -1;
            private final Iterator<T> iterator;
            private T nextItem;

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Incorrect args count in method signature: ()V */
            {
                this.iterator = DropWhileSequence.this.sequence.iterator();
            }

            public final Iterator<T> getIterator() {
                return this.iterator;
            }

            public final int getDropState() {
                return this.dropState;
            }

            public final void setDropState(int i) {
                this.dropState = i;
            }

            public final T getNextItem() {
                return this.nextItem;
            }

            public final void setNextItem(T t) {
                this.nextItem = t;
            }

            /* Code decompiled incorrectly, please refer to instructions dump */
            private final void drop() {
                /*
                    r2 = this;
                L_0x0000:
                    java.util.Iterator<T> r0 = r2.iterator
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L_0x0026
                    java.util.Iterator<T> r0 = r2.iterator
                    java.lang.Object r0 = r0.next()
                    kotlin.sequences.DropWhileSequence r1 = kotlin.sequences.DropWhileSequence.this
                    kotlin.jvm.functions.Function1 r1 = kotlin.sequences.DropWhileSequence.access$getPredicate$p(r1)
                    java.lang.Object r1 = r1.invoke(r0)
                    java.lang.Boolean r1 = (java.lang.Boolean) r1
                    boolean r1 = r1.booleanValue()
                    if (r1 != 0) goto L_0x0000
                    r2.nextItem = r0
                    r0 = 1
                    r2.dropState = r0
                    return
                L_0x0026:
                    r0 = 0
                    r2.dropState = r0
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.DropWhileSequence$iterator$1.drop():void");
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public T next() {
                if (this.dropState == -1) {
                    drop();
                }
                if (this.dropState != 1) {
                    return this.iterator.next();
                }
                T t = this.nextItem;
                this.nextItem = null;
                this.dropState = 0;
                return t;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.dropState == -1) {
                    drop();
                }
                return this.dropState == 1 || this.iterator.hasNext();
            }
        };
    }
}
