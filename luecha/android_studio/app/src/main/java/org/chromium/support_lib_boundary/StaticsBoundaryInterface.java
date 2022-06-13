package org.chromium.support_lib_boundary;

import android.content.Context;
import android.net.Uri;
import android.webkit.ValueCallback;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface StaticsBoundaryInterface {
    Uri getSafeBrowsingPrivacyPolicyUrl();

    void initSafeBrowsing(Context context, ValueCallback<Boolean> valueCallback);

    boolean isMultiProcessEnabled();

    void setSafeBrowsingWhitelist(List<String> list, ValueCallback<Boolean> valueCallback);
}
