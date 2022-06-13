package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.content.ContentValues;
import android.database.Cursor;
import com.umeng.analytics.pro.am;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CredentialDao {
    CredentialDatabaseHelper credentialDatabaseHelper;
    String[] projection = {am.d, "username", "password", "protection_space_id"};

    public CredentialDao(CredentialDatabaseHelper credentialDatabaseHelper) {
        this.credentialDatabaseHelper = credentialDatabaseHelper;
    }

    public List<Credential> getAllByProtectionSpaceId(Long l) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query("credential", this.projection, "protection_space_id = ?", new String[]{l.toString()}, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new Credential(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow("username")), query.getString(query.getColumnIndexOrThrow("password")), l));
        }
        query.close();
        return arrayList;
    }

    public Credential find(String str, String str2, Long l) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query("credential", this.projection, "username = ? AND password = ? AND protection_space_id = ?", new String[]{str, str2, l.toString()}, null, null, null);
        Credential credential = query.moveToNext() ? new Credential(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow("username")), query.getString(query.getColumnIndexOrThrow("password")), l) : null;
        query.close();
        return credential;
    }

    public long insert(Credential credential) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("username", credential.username);
        contentValues.put("password", credential.password);
        contentValues.put("protection_space_id", credential.protectionSpaceId);
        return this.credentialDatabaseHelper.getWritableDatabase().insert("credential", null, contentValues);
    }

    public long update(Credential credential) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("username", credential.username);
        contentValues.put("password", credential.password);
        return (long) this.credentialDatabaseHelper.getWritableDatabase().update("credential", contentValues, "protection_space_id = ?", new String[]{credential.protectionSpaceId.toString()});
    }

    public long delete(Credential credential) {
        return (long) this.credentialDatabaseHelper.getWritableDatabase().delete("credential", "_id = ?", new String[]{credential.id.toString()});
    }
}
