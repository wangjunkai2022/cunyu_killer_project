package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpaceContract;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
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
        hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, this.host);
        hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, this.procotol);
        hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, this.realm);
        hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, this.port);
        return hashMap;
    }
}
