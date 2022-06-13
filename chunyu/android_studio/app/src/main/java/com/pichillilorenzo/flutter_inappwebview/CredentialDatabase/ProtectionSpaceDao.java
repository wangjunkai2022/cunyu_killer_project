package com.pichillilorenzo.flutter_inappwebview.CredentialDatabase;

import android.content.ContentValues;
import android.database.Cursor;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpaceContract;
import com.umeng.analytics.pro.am;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ProtectionSpaceDao {
    CredentialDatabaseHelper credentialDatabaseHelper;
    String[] projection = {am.d, ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT};

    public ProtectionSpaceDao(CredentialDatabaseHelper credentialDatabaseHelper) {
        this.credentialDatabaseHelper = credentialDatabaseHelper;
    }

    public List<ProtectionSpace> getAll() {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query(ProtectionSpaceContract.FeedEntry.TABLE_NAME, this.projection, null, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new ProtectionSpace(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST)), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL)), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM)), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT)))));
        }
        query.close();
        return arrayList;
    }

    public ProtectionSpace find(String str, String str2, String str3, Integer num) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query(ProtectionSpaceContract.FeedEntry.TABLE_NAME, this.projection, "host = ? AND protocol = ? AND realm = ? AND port = ?", new String[]{str, str2, str3, num.toString()}, null, null, null);
        ProtectionSpace protectionSpace = query.moveToNext() ? new ProtectionSpace(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST)), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL)), query.getString(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM)), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT)))) : null;
        query.close();
        return protectionSpace;
    }

    public long insert(ProtectionSpace protectionSpace) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, protectionSpace.host);
        contentValues.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, protectionSpace.procotol);
        contentValues.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, protectionSpace.realm);
        contentValues.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, protectionSpace.port);
        return this.credentialDatabaseHelper.getWritableDatabase().insert(ProtectionSpaceContract.FeedEntry.TABLE_NAME, null, contentValues);
    }

    public long delete(ProtectionSpace protectionSpace) {
        return (long) this.credentialDatabaseHelper.getWritableDatabase().delete(ProtectionSpaceContract.FeedEntry.TABLE_NAME, "_id = ?", new String[]{protectionSpace.id.toString()});
    }
}
