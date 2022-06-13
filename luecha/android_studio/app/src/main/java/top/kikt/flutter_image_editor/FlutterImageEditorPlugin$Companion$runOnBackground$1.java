package top.kikt.flutter_image_editor;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: FlutterImageEditorPlugin.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes5.dex */
public final class FlutterImageEditorPlugin$Companion$runOnBackground$1 implements Runnable {
    final /* synthetic */ Function0<Unit> $block;

    public FlutterImageEditorPlugin$Companion$runOnBackground$1(Function0<Unit> function0) {
        this.$block = function0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$block.invoke();
    }
}
