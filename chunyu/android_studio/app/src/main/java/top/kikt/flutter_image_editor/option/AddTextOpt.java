package top.kikt.flutter_image_editor.option;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.Option;

/* compiled from: AddTextOpt.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Ltop/kikt/flutter_image_editor/option/AddTextOpt;", "Ltop/kikt/flutter_image_editor/option/Option;", "()V", "texts", "Ljava/util/ArrayList;", "Ltop/kikt/flutter_image_editor/option/Text;", "Lkotlin/collections/ArrayList;", "getTexts", "()Ljava/util/ArrayList;", "addText", "", "text", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AddTextOpt implements Option {
    private final ArrayList<Text> texts = new ArrayList<>();

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return Option.DefaultImpls.canIgnore(this);
    }

    public final ArrayList<Text> getTexts() {
        return this.texts;
    }

    public final void addText(Text text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.texts.add(text);
    }
}
