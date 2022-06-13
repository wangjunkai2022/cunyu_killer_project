package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CredentialDatabase {
    public static final String DATABASE_NAME = "CredentialDatabase.db";
    public static final int DATABASE_VERSION = 2;
    static final String LOG_TAG = "CredentialDatabase";
    private static CredentialDatabase instance;
    public CredentialDao credentialDao;
    public CredentialDatabaseHelper db;
    public ProtectionSpaceDao protectionSpaceDao;

    private CredentialDatabase() {
    }

    private CredentialDatabase(CredentialDatabaseHelper credentialDatabaseHelper, ProtectionSpaceDao protectionSpaceDao, CredentialDao credentialDao) {
        this.db = credentialDatabaseHelper;
        this.protectionSpaceDao = protectionSpaceDao;
        this.credentialDao = credentialDao;
    }

    public static CredentialDatabase getInstance(Context context) {
        CredentialDatabase credentialDatabase = instance;
        if (credentialDatabase != null) {
            return credentialDatabase;
        }
        CredentialDatabaseHelper credentialDatabaseHelper = new CredentialDatabaseHelper(context);
        instance = new CredentialDatabase(credentialDatabaseHelper, new ProtectionSpaceDao(credentialDatabaseHelper), new CredentialDao(credentialDatabaseHelper));
        return instance;
    }

    public List<Credential> getHttpAuthCredentials(String str, String str2, String str3, Integer num) {
        ArrayList arrayList = new ArrayList();
        ProtectionSpace find = this.protectionSpaceDao.find(str, str2, str3, num);
        return find != null ? this.credentialDao.getAllByProtectionSpaceId(find.id) : arrayList;
    }

    public void clearAllAuthCredentials() {
        CredentialDatabaseHelper credentialDatabaseHelper = this.db;
        credentialDatabaseHelper.clearAllTables(credentialDatabaseHelper.getWritableDatabase());
    }

    public void removeHttpAuthCredentials(String str, String str2, String str3, Integer num) {
        ProtectionSpace find = this.protectionSpaceDao.find(str, str2, str3, num);
        if (find != null) {
            this.protectionSpaceDao.delete(find);
        }
    }

    public void removeHttpAuthCredential(String str, String str2, String str3, Integer num, String str4, String str5) {
        ProtectionSpace find = this.protectionSpaceDao.find(str, str2, str3, num);
        if (find != null) {
            this.credentialDao.delete(this.credentialDao.find(str4, str5, find.id));
        }
    }

    public void setHttpAuthCredential(String str, String str2, String str3, Integer num, String str4, String str5) {
        Long l;
        ProtectionSpace find = this.protectionSpaceDao.find(str, str2, str3, num);
        if (find == null) {
            l = Long.valueOf(this.protectionSpaceDao.insert(new ProtectionSpace(null, str, str2, str3, num)));
        } else {
            l = find.id;
        }
        Credential find2 = this.credentialDao.find(str4, str5, l);
        if (find2 != null) {
            boolean z = false;
            if (!find2.username.equals(str4)) {
                find2.username = str4;
                z = true;
            }
            if (!find2.password.equals(str5)) {
                find2.password = str5;
                z = true;
            }
            if (z) {
                this.credentialDao.update(find2);
                return;
            }
            return;
        }
        Credential credential = new Credential(null, str4, str5, l);
        credential.id = Long.valueOf(this.credentialDao.insert(credential));
    }
}
