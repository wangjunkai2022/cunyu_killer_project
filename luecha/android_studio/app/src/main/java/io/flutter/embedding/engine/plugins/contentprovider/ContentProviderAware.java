package io.flutter.embedding.engine.plugins.contentprovider;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ContentProviderAware {
    void onAttachedToContentProvider(ContentProviderPluginBinding contentProviderPluginBinding);

    void onDetachedFromContentProvider();
}
