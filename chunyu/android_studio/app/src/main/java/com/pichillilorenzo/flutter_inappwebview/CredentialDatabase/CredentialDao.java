package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.content.ContentValues;
import android.database.Cursor;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialContract;
import com.umeng.analytics.pro.am;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class CredentialDao {
    CredentialDatabaseHelper credentialDatabaseHelper;
    String[] projection = {am.d, CredentialContract.FeedEntry.COLUMN_NAME_USERNAME, CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD, CredentialContract.FeedEntry.COLUMN_NAME_PROTECTION_SPACE_ID};

    public CredentialDao(CredentialDatabaseHelper credentialDatabaseHelper) {
        this.credentialDatabaseHelper = credentialDatabaseHelper;
    }

    public List<Credential> getAllByProtectionSpaceId(Long l) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query(CredentialContract.FeedEntry.TABLE_NAME, this.projection, "protection_space_id = ?", new String[]{l.toString()}, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new Credential(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME)), query.getString(query.getColumnIndexOrThrow(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD)), l));
        }
        query.close();
        return arrayList;
    }

    public Credential find(String str, String str2, Long l) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query(CredentialContract.FeedEntry.TABLE_NAME, this.projection, "username = ? AND password = ? AND protection_space_id = ?", new String[]{str, str2, l.toString()}, null, null, null);
        Credential credential = query.moveToNext() ? new Credential(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME)), query.getString(query.getColumnIndexOrThrow(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD)), l) : null;
        query.close();
        return credential;
    }

    public long insert(Credential credential) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME, credential.username);
        contentValues.put(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD, credential.password);
        contentValues.put(CredentialContract.FeedEntry.COLUMN_NAME_PROTECTION_SPACE_ID, credential.protectionSpaceId);
        return this.credentialDatabaseHelper.getWritableDatabase().insert(CredentialContract.FeedEntry.TABLE_NAME, null, contentValues);
    }

    public long update(Credential credential) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME, credential.username);
        contentValues.put(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD, credential.password);
        return (long) this.credentialDatabaseHelper.getWritableDatabase().update(CredentialContract.FeedEntry.TABLE_NAME, contentValues, "protection_space_id = ?", new String[]{credential.protectionSpaceId.toString()});
    }

    public long delete(Credential credential) {
        return (long) this.credentialDatabaseHelper.getWritableDatabase().delete(CredentialContract.FeedEntry.TABLE_NAME, "_id = ?", new String[]{credential.id.toString()});
    }
}
