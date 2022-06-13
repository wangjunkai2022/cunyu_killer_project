package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialContract;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
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
        hashMap.put(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME, this.username);
        hashMap.put(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD, this.password);
        return hashMap;
    }
}
