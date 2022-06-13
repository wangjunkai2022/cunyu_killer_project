package com.tencent.thumbplayer.api.richmedia;

import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeatureData;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPRichMediaFeatureData {
    private String mEnv;
    private List<TPRichMediaFeatureContent> mFeatureContents = new ArrayList();
    private String mFeatureType;
    private String mVersion;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TPRichMediaFeatureContent {
        private String mContent;
        private long mEndTimeMs;
        private long mStartTimeMs;

        TPRichMediaFeatureContent(TPNativeRichMediaFeatureData.TPNativeRichMediaFeatureContent tPNativeRichMediaFeatureContent) {
            this.mStartTimeMs = -1;
            this.mEndTimeMs = -1;
            this.mContent = "";
            this.mStartTimeMs = tPNativeRichMediaFeatureContent.getStartTimeMs();
            this.mEndTimeMs = tPNativeRichMediaFeatureContent.getEndTimeMs();
            this.mContent = tPNativeRichMediaFeatureContent.getContent();
        }

        public String getContent() {
            return this.mContent;
        }

        public long getEndTimeMs() {
            return this.mEndTimeMs;
        }

        public long getStartTimeMs() {
            return this.mStartTimeMs;
        }
    }

    public TPRichMediaFeatureData(TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
        this.mFeatureType = "";
        this.mEnv = "";
        this.mVersion = "";
        this.mFeatureType = tPNativeRichMediaFeatureData.getFeatureType();
        this.mEnv = tPNativeRichMediaFeatureData.getEnv();
        this.mVersion = tPNativeRichMediaFeatureData.getVersion();
        if (tPNativeRichMediaFeatureData.getFeatureContents() != null) {
            for (TPNativeRichMediaFeatureData.TPNativeRichMediaFeatureContent tPNativeRichMediaFeatureContent : tPNativeRichMediaFeatureData.getFeatureContents()) {
                this.mFeatureContents.add(new TPRichMediaFeatureContent(tPNativeRichMediaFeatureContent));
            }
        }
    }

    public String getEnv() {
        return this.mEnv;
    }

    public List<TPRichMediaFeatureContent> getFeatureContents() {
        return this.mFeatureContents;
    }

    public String getFeatureType() {
        return this.mFeatureType;
    }

    public String getVersion() {
        return this.mVersion;
    }
}
