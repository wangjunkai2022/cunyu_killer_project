package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* compiled from: ViewGroup.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a0\u0010\r\u001a\u00020\u000e*\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0010H\u0086\b\u001aE\u0010\u0013\u001a\u00020\u000e*\u00020\u000326\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0014H\u0086\b\u001a\u0015\u0010\u0016\u001a\u00020\u0002*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u0086\u0002\u001a\r\u0010\u0017\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a*\u00020\u0003H\u0086\u0002\u001a\u0015\u0010\u001b\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u001c\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a\u0017\u0010\u001d\u001a\u00020\u000e*\u00020\u001e2\b\b\u0001\u0010\u0006\u001a\u00020\u0007H\u0086\b\u001a5\u0010\u001f\u001a\u00020\u000e*\u00020\u001e2\b\b\u0003\u0010 \u001a\u00020\u00072\b\b\u0003\u0010!\u001a\u00020\u00072\b\b\u0003\u0010\"\u001a\u00020\u00072\b\b\u0003\u0010#\u001a\u00020\u0007H\u0086\b\u001a5\u0010$\u001a\u00020\u000e*\u00020\u001e2\b\b\u0003\u0010%\u001a\u00020\u00072\b\b\u0003\u0010!\u001a\u00020\u00072\b\b\u0003\u0010&\u001a\u00020\u00072\b\b\u0003\u0010#\u001a\u00020\u0007H\u0087\b\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u0007*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006'"}, d2 = {"children", "Lkotlin/sequences/Sequence;", "Landroid/view/View;", "Landroid/view/ViewGroup;", "getChildren", "(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;", "size", "", "getSize", "(Landroid/view/ViewGroup;)I", "contains", "", "view", "forEach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "isEmpty", "isNotEmpty", "iterator", "", "minusAssign", "plusAssign", "setMargins", "Landroid/view/ViewGroup$MarginLayoutParams;", "updateMargins", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updateMarginsRelative", TtmlNode.START, TtmlNode.END, "core-ktx_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class ViewGroupKt {
    public static final View get(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$get");
        View childAt = viewGroup.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + viewGroup.getChildCount());
    }

    public static final boolean contains(ViewGroup viewGroup, View view) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$contains");
        Intrinsics.checkParameterIsNotNull(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void plusAssign(ViewGroup viewGroup, View view) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$plusAssign");
        Intrinsics.checkParameterIsNotNull(view, "view");
        viewGroup.addView(view);
    }

    public static final void minusAssign(ViewGroup viewGroup, View view) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$minusAssign");
        Intrinsics.checkParameterIsNotNull(view, "view");
        viewGroup.removeView(view);
    }

    public static final int getSize(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$size");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$isEmpty");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$isNotEmpty");
        return viewGroup.getChildCount() != 0;
    }

    public static final void forEach(ViewGroup viewGroup, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$forEach");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            Intrinsics.checkExpressionValueIsNotNull(childAt, "getChildAt(index)");
            function1.invoke(childAt);
        }
    }

    public static final void forEachIndexed(ViewGroup viewGroup, Function2<? super Integer, ? super View, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$forEachIndexed");
        Intrinsics.checkParameterIsNotNull(function2, "action");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Integer valueOf = Integer.valueOf(i);
            View childAt = viewGroup.getChildAt(i);
            Intrinsics.checkExpressionValueIsNotNull(childAt, "getChildAt(index)");
            function2.invoke(valueOf, childAt);
        }
    }

    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$iterator");
        return new Object(viewGroup) { // from class: androidx.core.view.ViewGroupKt$iterator$1
            final /* synthetic */ ViewGroup $this_iterator;
            private int index;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_iterator = r1;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < this.$this_iterator.getChildCount();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public View next() {
                ViewGroup viewGroup2 = this.$this_iterator;
                int i = this.index;
                this.index = i + 1;
                View childAt = viewGroup2.getChildAt(i);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.index--;
                this.$this_iterator.removeViewAt(this.index);
            }
        };
    }

    public static final Sequence<View> getChildren(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$children");
        return new Sequence<View>(viewGroup) { // from class: androidx.core.view.ViewGroupKt$children$1
            final /* synthetic */ ViewGroup $this_children;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_children = r1;
            }

            @Override // kotlin.sequences.Sequence
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(this.$this_children);
            }
        };
    }

    public static final void setMargins(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        Intrinsics.checkParameterIsNotNull(marginLayoutParams, "$this$setMargins");
        marginLayoutParams.setMargins(i, i, i, i);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = marginLayoutParams.leftMargin;
        }
        if ((i5 & 2) != 0) {
            i2 = marginLayoutParams.topMargin;
        }
        if ((i5 & 4) != 0) {
            i3 = marginLayoutParams.rightMargin;
        }
        if ((i5 & 8) != 0) {
            i4 = marginLayoutParams.bottomMargin;
        }
        Intrinsics.checkParameterIsNotNull(marginLayoutParams, "$this$updateMargins");
        marginLayoutParams.setMargins(i, i2, i3, i4);
    }

    public static final void updateMargins(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(marginLayoutParams, "$this$updateMargins");
        marginLayoutParams.setMargins(i, i2, i3, i4);
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = marginLayoutParams.getMarginStart();
        }
        if ((i5 & 2) != 0) {
            i2 = marginLayoutParams.topMargin;
        }
        if ((i5 & 4) != 0) {
            i3 = marginLayoutParams.getMarginEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = marginLayoutParams.bottomMargin;
        }
        Intrinsics.checkParameterIsNotNull(marginLayoutParams, "$this$updateMarginsRelative");
        marginLayoutParams.setMarginStart(i);
        marginLayoutParams.topMargin = i2;
        marginLayoutParams.setMarginEnd(i3);
        marginLayoutParams.bottomMargin = i4;
    }

    public static final void updateMarginsRelative(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(marginLayoutParams, "$this$updateMarginsRelative");
        marginLayoutParams.setMarginStart(i);
        marginLayoutParams.topMargin = i2;
        marginLayoutParams.setMarginEnd(i3);
        marginLayoutParams.bottomMargin = i4;
    }
}
