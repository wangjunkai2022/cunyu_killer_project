package io.flutter.embedding.engine.plugins;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface PluginRegistry {
    void add(FlutterPlugin flutterPlugin);

    void add(Set<FlutterPlugin> set);

    FlutterPlugin get(Class<? extends FlutterPlugin> cls);

    boolean has(Class<? extends FlutterPlugin> cls);

    void remove(Class<? extends FlutterPlugin> cls);

    void remove(Set<Class<? extends FlutterPlugin>> set);

    void removeAll();
}
