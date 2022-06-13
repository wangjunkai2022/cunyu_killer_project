package com.tencent.thumbplayer.utils;

import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class j {
    private static final HashMap<Integer, Class> a = new HashMap<>();

    static {
        a.put(414, TPAudioAttributes.class);
        a.put(Integer.valueOf((int) TPOptionalID.OPTION_ID_GLOBAL_OBJECT_SUBTITLE_RENDER_PARAMS), TPSubtitleRenderModel.class);
        a.put(Integer.valueOf((int) TPOptionalID.OPTION_ID_BEFORE_OBJECT_JITTER_BUFFER_CONFIG), TPJitterBufferConfig.class);
    }

    public static boolean a(@TPCommonEnum.TPOptionalId int i, Object obj) {
        Class cls;
        return (obj == null || (cls = a.get(Integer.valueOf(i))) == null || obj.getClass() != cls) ? false : true;
    }
}
