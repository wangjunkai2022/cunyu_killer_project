package com.tencent.thumbplayer.utils;

import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class j {
    private static final HashMap<Integer, Class> a = new HashMap<>();

    static {
        a.put(414, TPAudioAttributes.class);
        a.put(507, TPSubtitleRenderModel.class);
        a.put(140, TPJitterBufferConfig.class);
    }

    public static boolean a(@TPCommonEnum.TPOptionalId int i, Object obj) {
        Class cls;
        return (obj == null || (cls = a.get(Integer.valueOf(i))) == null || obj.getClass() != cls) ? false : true;
    }
}
