package com.example.flutterimagecompress.format;

import android.util.SparseArray;
import com.example.flutterimagecompress.handle.FormatHandler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FormatRegister.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/example/flutterimagecompress/format/FormatRegister;", "", "()V", "formatMap", "Landroid/util/SparseArray;", "Lcom/example/flutterimagecompress/handle/FormatHandler;", "findFormat", "formatIndex", "", "registerFormat", "", "handler", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FormatRegister {
    public static final FormatRegister INSTANCE = new FormatRegister();
    private static final SparseArray<FormatHandler> formatMap = new SparseArray<>();

    private FormatRegister() {
    }

    public final void registerFormat(FormatHandler formatHandler) {
        Intrinsics.checkNotNullParameter(formatHandler, "handler");
        formatMap.append(formatHandler.getType(), formatHandler);
    }

    public final FormatHandler findFormat(int i) {
        return formatMap.get(i);
    }
}
