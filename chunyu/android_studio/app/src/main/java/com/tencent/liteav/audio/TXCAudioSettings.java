package com.tencent.liteav.audio;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;

/* loaded from: classes2.dex */
public class TXCAudioSettings {
    private static final String AUDIO_SETTINGS = "txc_audio_settings";
    private static final String TAG = "TXCAudioSettings";
    public static final String TIMESTAMP_ROLLBACK_TO_STABLE_SAMPLERATE = "timestamp_rollback_to_stable_samplerate";
    private final SharedPreferences mSharedPreferences;

    /* loaded from: classes2.dex */
    private static class a {
        private static final TXCAudioSettings a = new TXCAudioSettings();
    }

    public static TXCAudioSettings getInstance() {
        return a.a;
    }

    private TXCAudioSettings() {
        Context appContext = TXCCommonUtil.getAppContext();
        if (appContext != null) {
            this.mSharedPreferences = appContext.getSharedPreferences(AUDIO_SETTINGS, 0);
            return;
        }
        this.mSharedPreferences = null;
        TXCLog.e(TAG, "context is null, getSharedPreferences failed.");
    }

    public void setLong(String str, long j) {
        set(str, Long.valueOf(j));
    }

    public long getLong(String str, long j) {
        return ((Long) get(str, Long.valueOf(j))).longValue();
    }

    private void set(String str, Object obj) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            TXCLog.e(TAG, "getSharedPreferences is null");
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof String) {
            edit.putString(str, obj.toString());
        } else if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            edit.putLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
        }
        edit.commit();
    }

    private Object get(String str, Object obj) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            TXCLog.e(TAG, "getSharedPreferences is null");
            return obj;
        }
        try {
            if (obj instanceof String) {
                return sharedPreferences.getString(str, obj.toString());
            }
            if (obj instanceof Integer) {
                return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
            }
            if (obj instanceof Boolean) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
            }
            if (obj instanceof Long) {
                return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
            }
            if (obj instanceof Float) {
                return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
            }
            return obj instanceof Double ? Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToLongBits(((Double) obj).doubleValue())))) : obj;
        } catch (Exception e) {
            TXCLog.e(TAG, "get value from sharedpreference failed for key: %s", str, e);
            return obj;
        }
    }
}
