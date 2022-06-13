package org.chromium.support_lib_boundary;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebSettingsBoundaryInterface {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ForceDarkBehavior {
        public static final int FORCE_DARK_ONLY = 0;
        public static final int MEDIA_QUERY_ONLY = 1;
        public static final int PREFER_MEDIA_QUERY_OVER_FORCE_DARK = 2;
    }

    int getDisabledActionModeMenuItems();

    int getForceDark();

    int getForceDarkBehavior();

    boolean getOffscreenPreRaster();

    boolean getSafeBrowsingEnabled();

    boolean getWillSuppressErrorPage();

    void setDisabledActionModeMenuItems(int i);

    void setForceDark(int i);

    void setForceDarkBehavior(int i);

    void setOffscreenPreRaster(boolean z);

    void setSafeBrowsingEnabled(boolean z);

    void setWillSuppressErrorPage(boolean z);
}
