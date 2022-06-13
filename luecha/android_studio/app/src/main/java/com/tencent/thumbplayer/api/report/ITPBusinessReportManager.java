package com.tencent.thumbplayer.api.report;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPBusinessReportManager {
    public static final int EVENT_ID_302_REDIRECT = 1001;
    public static final int EVENT_ID_EARLY_ERROR = 1100;
    public static final int EVENT_ID_GET_CDN_URL = 1000;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface EventId {
    }

    @Deprecated
    void reportEvent(int i, Map<String, Object> map);

    void setReportInfoGetter(TPDefaultReportInfo tPDefaultReportInfo);
}
