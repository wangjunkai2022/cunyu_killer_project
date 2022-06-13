package com.tencent.thumbplayer.api.connection;

import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPPlayerConnectionConstant {
    @TPNativeKeyMap.MapConnectionAction(-1)
    public static final int ACTION_NONE = -1;
    @TPNativeKeyMap.MapConnectionAction(1)
    public static final int ACTION_OBTAIN_SYNC_CLOCK = 1;
    @TPNativeKeyMap.MapConnectionAction(0)
    public static final int ACTION_PROVIDE_SYNC_CLOCK = 0;
    @TPNativeKeyMap.MapConnectionConfig(0)
    public static final int CFG_LONG_SYNC_CLOCK_OFFSET_MS = 0;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface Action {
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Config {
    }
}
