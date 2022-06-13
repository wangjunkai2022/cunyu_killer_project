package com.crazecoder.openfile.utils;

import com.tekartik.sqflite.Constant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class MapUtil {
    public static Map<String, Object> createMap(int i, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(i));
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str);
        return hashMap;
    }
}
