package ren.yale.android.cachewebviewlib.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class TimeUtils {
    private static final String STARD_FROMAT = "yyyy-MM-dd HH:mm:ss";

    public static Date formatGMT(String str) {
        if (str.indexOf("GMT") < 0) {
            try {
                return new Date(Long.valueOf(str).longValue() * 1000);
            } catch (Exception unused) {
                return null;
            }
        } else {
            try {
                return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US).parse(str.trim());
            } catch (ParseException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static boolean compare(Date date, Date date2) {
        return (date == null || date2 == null || date.getTime() - date2.getTime() <= 0) ? false : true;
    }

    public static Date getStardTime(String str) {
        try {
            return new SimpleDateFormat(STARD_FROMAT).parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getStardTime(Long l) {
        try {
            return new Date(l.longValue() * 1000);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getCurrentTime() {
        return new SimpleDateFormat(STARD_FROMAT).format(new Date());
    }
}
