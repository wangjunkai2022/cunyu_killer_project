package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.provider.BaseColumns;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ProtectionSpaceContract {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FeedEntry implements BaseColumns {
        public static final String COLUMN_NAME_HOST = "host";
        public static final String COLUMN_NAME_PORT = "port";
        public static final String COLUMN_NAME_PROTOCOL = "protocol";
        public static final String COLUMN_NAME_REALM = "realm";
        public static final String TABLE_NAME = "protection_space";
    }

    private ProtectionSpaceContract() {
    }
}
