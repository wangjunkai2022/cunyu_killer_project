package io.flutter.view;

import io.flutter.util.Predicate;
import io.flutter.view.AccessibilityBridge;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: lambda */
/* renamed from: io.flutter.view.-$$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY  reason: invalid class name */
/* loaded from: classes5.dex */
public final /* synthetic */ class $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY implements Predicate {
    public static final /* synthetic */ $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY INSTANCE = new $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY();

    private /* synthetic */ $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY() {
    }

    @Override // io.flutter.util.Predicate
    public final boolean test(Object obj) {
        return ((AccessibilityBridge.SemanticsNode) obj).hasFlag(AccessibilityBridge.Flag.HAS_IMPLICIT_SCROLLING);
    }
}
