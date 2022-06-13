package com.facebook.common.util;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public class UriUtil {
    public static final String DATA_SCHEME = "data";
    public static final String HTTPS_SCHEME = "https";
    public static final String HTTP_SCHEME = "http";
    public static final String LOCAL_ASSET_SCHEME = "asset";
    private static final String LOCAL_CONTACT_IMAGE_PREFIX = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "display_photo").getPath();
    public static final String LOCAL_CONTENT_SCHEME = "content";
    public static final String LOCAL_FILE_SCHEME = "file";
    public static final String LOCAL_RESOURCE_SCHEME = "res";

    public static boolean isNetworkUri(@Nullable Uri uri) {
        String schemeOrNull = getSchemeOrNull(uri);
        return "https".equals(schemeOrNull) || "http".equals(schemeOrNull);
    }

    public static boolean isLocalFileUri(@Nullable Uri uri) {
        return "file".equals(getSchemeOrNull(uri));
    }

    public static boolean isLocalContentUri(@Nullable Uri uri) {
        return "content".equals(getSchemeOrNull(uri));
    }

    public static boolean isLocalContactUri(Uri uri) {
        return isLocalContentUri(uri) && "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith(LOCAL_CONTACT_IMAGE_PREFIX);
    }

    public static boolean isLocalCameraUri(Uri uri) {
        String uri2 = uri.toString();
        return uri2.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || uri2.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    public static boolean isLocalAssetUri(@Nullable Uri uri) {
        return "asset".equals(getSchemeOrNull(uri));
    }

    public static boolean isLocalResourceUri(@Nullable Uri uri) {
        return LOCAL_RESOURCE_SCHEME.equals(getSchemeOrNull(uri));
    }

    public static boolean isDataUri(@Nullable Uri uri) {
        return "data".equals(getSchemeOrNull(uri));
    }

    @Nullable
    public static String getSchemeOrNull(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    public static Uri parseUriOrNull(@Nullable String str) {
        if (str != null) {
            return Uri.parse(str);
        }
        return null;
    }

    @Nullable
    public static String getRealPathFromUri(ContentResolver contentResolver, Uri uri) {
        Throwable th;
        Cursor cursor;
        int columnIndex;
        String str = null;
        if (isLocalContentUri(uri)) {
            try {
                cursor = contentResolver.query(uri, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst() && (columnIndex = cursor.getColumnIndex("_data")) != -1) {
                            str = cursor.getString(columnIndex);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor == null) {
                    return str;
                }
                cursor.close();
                return str;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } else if (isLocalFileUri(uri)) {
            return uri.getPath();
        } else {
            return null;
        }
    }
}
