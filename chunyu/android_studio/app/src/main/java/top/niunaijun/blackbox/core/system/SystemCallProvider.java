package top.niunaijun.blackbox.core.system;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import top.niunaijun.blackbox.utils.compat.BundleCompat;

/* loaded from: classes3.dex */
public class SystemCallProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return initSystem();
    }

    private boolean initSystem() {
        BlackBoxSystem.getSystem().startup();
        return true;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (!str.equals("VM")) {
            return super.call(str, str2, bundle);
        }
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            BundleCompat.putBinder(bundle2, "_VM_|_server_", ServiceManager.getService(bundle.getString("_VM_|_server_name_")));
        }
        return bundle2;
    }
}
