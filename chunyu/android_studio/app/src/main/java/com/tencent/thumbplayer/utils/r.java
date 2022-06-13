package com.tencent.thumbplayer.utils;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class r {
    private static Map<String, Integer> a = new HashMap();

    static {
        a.put("http://", 0);
        a.put("https://", 1);
        a.put("rtmp://", 2);
        a.put("webrtc://", 3);
        a.put("file:///", 4);
        a.put("/", 4);
    }

    public static int a(String str) {
        if (str == null) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        for (Map.Entry<String, Integer> entry : a.entrySet()) {
            if (lowerCase.startsWith(entry.getKey())) {
                return entry.getValue().intValue();
            }
        }
        return new File(str).exists() ? 4 : -1;
    }
}
