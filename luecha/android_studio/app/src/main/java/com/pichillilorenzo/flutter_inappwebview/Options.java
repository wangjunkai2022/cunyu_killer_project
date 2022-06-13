package com.pichillilorenzo.flutter_inappwebview;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface Options<T> {
    Map<String, Object> getRealOptions(T t);

    Options parse(Map<String, Object> map);

    Map<String, Object> toMap();
}
