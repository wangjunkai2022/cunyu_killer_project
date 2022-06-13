package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ProtectionSpace {
    public String host;
    public Long id;
    public Integer port;
    public String procotol;
    public String realm;

    public ProtectionSpace(Long l, String str, String str2, String str3, Integer num) {
        this.id = l;
        this.host = str;
        this.procotol = str2;
        this.realm = str3;
        this.port = num;
    }

    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("host", this.host);
        hashMap.put("protocol", this.procotol);
        hashMap.put("realm", this.realm);
        hashMap.put("port", this.port);
        return hashMap;
    }
}
