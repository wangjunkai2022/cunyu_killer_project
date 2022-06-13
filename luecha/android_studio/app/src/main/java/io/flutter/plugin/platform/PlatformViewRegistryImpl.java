package io.flutter.plugin.platform;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class PlatformViewRegistryImpl implements PlatformViewRegistry {
    private final Map<String, PlatformViewFactory> viewFactories = new HashMap();

    @Override // io.flutter.plugin.platform.PlatformViewRegistry
    public boolean registerViewFactory(String str, PlatformViewFactory platformViewFactory) {
        if (this.viewFactories.containsKey(str)) {
            return false;
        }
        this.viewFactories.put(str, platformViewFactory);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlatformViewFactory getFactory(String str) {
        return this.viewFactories.get(str);
    }
}
