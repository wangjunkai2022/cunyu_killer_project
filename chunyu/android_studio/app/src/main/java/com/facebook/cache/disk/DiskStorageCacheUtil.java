package com.facebook.cache.disk;

import android.content.SharedPreferences;
import com.facebook.common.logging.FLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public final class DiskStorageCacheUtil {
    private static final String TAG = DiskStorageCacheUtil.class.getSimpleName();

    private DiskStorageCacheUtil() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void addDiskCacheEntry(Integer num, String str, SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(String.valueOf(num), str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void deleteDiskCacheEntry(Integer num, SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(String.valueOf(num));
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static synchronized Map<Integer, String> readStoredIndex(@Nullable SharedPreferences sharedPreferences, Set<String> set) {
        synchronized (DiskStorageCacheUtil.class) {
            HashMap hashMap = new HashMap();
            if (sharedPreferences == null) {
                return hashMap;
            }
            Map<String, ?> all = sharedPreferences.getAll();
            SharedPreferences.Editor edit = sharedPreferences.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (entry.getValue() instanceof String) {
                    Integer valueOf = Integer.valueOf(Integer.parseInt(entry.getKey()));
                    if (set.contains(entry.getValue())) {
                        hashMap.put(valueOf, (String) entry.getValue());
                    } else {
                        edit.remove(String.valueOf(entry.getKey()));
                    }
                } else {
                    FLog.e(TAG, "SharedPreference doesn't store right data type");
                }
            }
            edit.apply();
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void clearDiskEntries(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.clear();
        edit.apply();
    }
}
