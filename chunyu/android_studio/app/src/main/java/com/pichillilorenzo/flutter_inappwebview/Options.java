package com.pichillilorenzo.flutter_inappwebview;

import java.util.Map;

/* loaded from: classes2.dex */
public interface Options<T> {
    Map<String, Object> getRealOptions(T t);

    Options parse(Map<String, Object> map);

    Map<String, Object> toMap();
}
