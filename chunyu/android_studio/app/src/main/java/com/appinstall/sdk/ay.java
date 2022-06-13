package com.appinstall.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;

/* loaded from: classes4.dex */
public class ay extends ax {
    private final cg b = cg.a("AMS");

    public ay(Context context) {
        super(context);
    }

    private String c(String str) {
        return str + ".mp3";
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        if (r11.isClosed() == false) goto L_0x0073;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        if (r11.isClosed() == false) goto L_0x0073;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
        r11.close();
     */
    @Override // com.appinstall.sdk.ax
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String b(java.lang.String r11) {
        /*
            r10 = this;
            java.lang.String r0 = "title"
            java.lang.String r1 = "_id"
            android.content.Context r2 = r10.a
            android.content.ContentResolver r3 = r2.getContentResolver()
            android.net.Uri r4 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
            r2 = 0
            java.lang.String r5 = "_display_name"
            java.lang.String[] r5 = new java.lang.String[]{r1, r5, r0}     // Catch: Exception -> 0x005d, all -> 0x005a
            java.lang.String r6 = "_display_name=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: Exception -> 0x005d, all -> 0x005a
            java.lang.String r11 = r10.c(r11)     // Catch: Exception -> 0x005d, all -> 0x005a
            r9 = 0
            r7[r9] = r11     // Catch: Exception -> 0x005d, all -> 0x005a
            r8 = 0
            android.database.Cursor r11 = r3.query(r4, r5, r6, r7, r8)     // Catch: Exception -> 0x005d, all -> 0x005a
            if (r11 == 0) goto L_0x0051
            int r3 = r11.getCount()     // Catch: Exception -> 0x006b, all -> 0x004f
            if (r3 <= 0) goto L_0x0051
            r11.moveToFirst()     // Catch: Exception -> 0x006b, all -> 0x004f
            int r1 = r11.getColumnIndex(r1)     // Catch: Exception -> 0x006b, all -> 0x004f
            r11.getInt(r1)     // Catch: Exception -> 0x006b, all -> 0x004f
            int r0 = r11.getColumnIndex(r0)     // Catch: Exception -> 0x006b, all -> 0x004f
            java.lang.String r0 = r11.getString(r0)     // Catch: Exception -> 0x006b, all -> 0x004f
            java.lang.String r0 = com.appinstall.sdk.cd.a(r0, r9)     // Catch: Exception -> 0x006b, all -> 0x004f
            if (r11 == 0) goto L_0x004e
            boolean r1 = r11.isClosed()
            if (r1 != 0) goto L_0x004e
            r11.close()
        L_0x004e:
            return r0
        L_0x004f:
            r0 = move-exception
            goto L_0x005f
        L_0x0051:
            if (r11 == 0) goto L_0x0076
            boolean r0 = r11.isClosed()
            if (r0 != 0) goto L_0x0076
            goto L_0x0073
        L_0x005a:
            r0 = move-exception
            r11 = r2
            goto L_0x005f
        L_0x005d:
            r11 = r2
            goto L_0x006b
        L_0x005f:
            if (r11 == 0) goto L_0x006a
            boolean r1 = r11.isClosed()
            if (r1 != 0) goto L_0x006a
            r11.close()
        L_0x006a:
            throw r0
        L_0x006b:
            if (r11 == 0) goto L_0x0076
            boolean r0 = r11.isClosed()
            if (r0 != 0) goto L_0x0076
        L_0x0073:
            r11.close()
        L_0x0076:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.ay.b(java.lang.String):java.lang.String");
    }

    @Override // com.appinstall.sdk.ax
    public boolean b(String str, String str2) {
        if (a(str) != null) {
            return true;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        Uri uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        ContentValues contentValues = new ContentValues();
        contentValues.put("relative_path", "Notifications/Installation");
        contentValues.put("_display_name", c(str));
        contentValues.put("title", cd.b(str2, 0));
        try {
            contentResolver.insert(uri, contentValues);
        } catch (Exception unused) {
        }
        return false;
    }
}
