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
public class ProtectionSpaceDao {
    CredentialDatabaseHelper credentialDatabaseHelper;
    String[] projection = {am.d, "host", "protocol", "realm", "port"};

    public ProtectionSpaceDao(CredentialDatabaseHelper credentialDatabaseHelper) {
        this.credentialDatabaseHelper = credentialDatabaseHelper;
    }

    public List<ProtectionSpace> getAll() {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query("protection_space", this.projection, null, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new ProtectionSpace(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow("host")), query.getString(query.getColumnIndexOrThrow("protocol")), query.getString(query.getColumnIndexOrThrow("realm")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("port")))));
        }
        query.close();
        return arrayList;
    }

    public ProtectionSpace find(String str, String str2, String str3, Integer num) {
        Cursor query = this.credentialDatabaseHelper.getReadableDatabase().query("protection_space", this.projection, "host = ? AND protocol = ? AND realm = ? AND port = ?", new String[]{str, str2, str3, num.toString()}, null, null, null);
        ProtectionSpace protectionSpace = query.moveToNext() ? new ProtectionSpace(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(am.d))), query.getString(query.getColumnIndexOrThrow("host")), query.getString(query.getColumnIndexOrThrow("protocol")), query.getString(query.getColumnIndexOrThrow("realm")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("port")))) : null;
        query.close();
        return protectionSpace;
    }

    public long insert(ProtectionSpace protectionSpace) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("host", protectionSpace.host);
        contentValues.put("protocol", protectionSpace.procotol);
        contentValues.put("realm", protectionSpace.realm);
        contentValues.put("port", protectionSpace.port);
        return this.credentialDatabaseHelper.getWritableDatabase().insert("protection_space", null, contentValues);
    }

    public long delete(ProtectionSpace protectionSpace) {
        return (long) this.credentialDatabaseHelper.getWritableDatabase().delete("protection_space", "_id = ?", new String[]{protectionSpace.id.toString()});
    }
}
