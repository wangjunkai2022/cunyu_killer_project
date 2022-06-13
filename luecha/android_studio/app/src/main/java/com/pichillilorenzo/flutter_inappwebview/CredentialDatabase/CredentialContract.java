package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.provider.BaseColumns;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CredentialContract {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FeedEntry implements BaseColumns {
        public static final String COLUMN_NAME_PASSWORD = "password";
        public static final String COLUMN_NAME_PROTECTION_SPACE_ID = "protection_space_id";
        public static final String COLUMN_NAME_USERNAME = "username";
        public static final String TABLE_NAME = "credential";
    }

    private CredentialContract() {
    }
}
