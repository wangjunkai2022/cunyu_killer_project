package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Credential {
    public Long id;
    public String password;
    public Long protectionSpaceId;
    public String username;

    public Credential(Long l, String str, String str2, Long l2) {
        this.id = l;
        this.username = str;
        this.password = str2;
        this.protectionSpaceId = l2;
    }

    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("username", this.username);
        hashMap.put("password", this.password);
        return hashMap;
    }
}
