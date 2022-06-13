package com.facebook.cache.common;

import android.net.Uri;

/* loaded from: classes4.dex */
public interface CacheKey {
    boolean containsUri(Uri uri);

    boolean equals(Object obj);

    int hashCode();

    String toString();
}
