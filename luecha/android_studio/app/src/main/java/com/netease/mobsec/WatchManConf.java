package com.netease.mobsec;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class WatchManConf {
    private String a = "";
    private String b = "";
    private String c = "";
    private AbstractNetClient d = null;
    private final Map<String, String> e = new HashMap();
    private boolean f = true;
    private boolean g = true;

    public AbstractNetClient getAbstractNetClient() {
        return this.d;
    }

    public String getChannel() {
        return this.b;
    }

    public boolean getCollectApk() {
        return this.f;
    }

    public boolean getCollectSensor() {
        return this.g;
    }

    public String getCustomTrackId() {
        return this.c;
    }

    public Map<String, String> getExtraData() {
        return this.e;
    }

    public String getUrl() {
        return this.a;
    }

    public void setAbstractNetClient(AbstractNetClient abstractNetClient) {
        this.d = abstractNetClient;
    }

    public void setChannel(String str) {
        this.b = str;
    }

    public void setCollectApk(boolean z) {
        this.f = z;
    }

    public void setCollectSensor(boolean z) {
        this.g = z;
    }

    public void setCustomTrackId(String str) {
        this.c = str;
    }

    public void setExtraData(String str, String str2) {
        this.e.put(str, str2);
    }

    public void setUrl(String str) {
        this.a = str;
    }
}
