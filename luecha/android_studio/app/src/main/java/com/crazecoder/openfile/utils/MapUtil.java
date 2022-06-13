package com.crazecoder.openfile.utils;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MapUtil {
    public static Map<String, Object> createMap(int i, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(i));
        hashMap.put("message", str);
        return hashMap;
    }
}
