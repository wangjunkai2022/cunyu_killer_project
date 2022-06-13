package top.kikt.flutter_image_editor.option;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Option.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"Ltop/kikt/flutter_image_editor/option/Option;", "", "canIgnore", "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface Option {

    /* compiled from: Option.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static boolean canIgnore(Option option) {
            Intrinsics.checkNotNullParameter(option, "this");
            return false;
        }
    }

    boolean canIgnore();
}
