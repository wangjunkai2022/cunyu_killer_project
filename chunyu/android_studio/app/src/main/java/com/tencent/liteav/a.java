package com.tencent.liteav;

import com.tencent.liteav.audio.TXCAudioEngine;
import com.tencent.liteav.basic.module.StatusBucket;
import com.tencent.liteav.basic.module.TXCStatus;
import com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: StatusConverter.java */
/* loaded from: classes2.dex */
public class a {
    public static void a(String str, ArrayList<String> arrayList) {
        StatusBucket status = TXCAudioEngine.getInstance().getStatus(1);
        TXCStatus.a(str, 14003, Integer.valueOf(status.getIntStatus("18446744073709551615", TPScreenRefreshRateDetector.DISPLAY_CHANGE)));
        TXCStatus.a(str, 8005, Integer.valueOf(status.getIntStatus("18446744073709551615", 10002)));
        TXCStatus.a(str, 14017, Integer.valueOf(status.getIntStatus("18446744073709551615", 10000)));
        TXCStatus.a(str, 14002, Integer.valueOf(status.getIntStatus("18446744073709551615", 10003)));
        TXCStatus.a(str, 14006, Integer.valueOf(status.getIntStatus("18446744073709551615", 10004)));
        TXCStatus.a(str, 14018, Integer.valueOf(status.getIntStatus("18446744073709551615", 10005)));
        TXCStatus.a(str, 18029, Integer.valueOf(status.getIntStatus("18446744073709551615", 10006)));
        if (arrayList != null) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                int intStatus = status.getIntStatus(next, 10114);
                int intStatus2 = status.getIntStatus(next, 10115);
                TXCStatus.a(next, 18031, Integer.valueOf(intStatus));
                TXCStatus.a(next, 18032, Integer.valueOf(intStatus2));
                int i = 0;
                TXCStatus.a(next, 2001, Integer.valueOf(intStatus2 > 0 ? intStatus / intStatus2 : 0));
                TXCStatus.a(next, 2002, Integer.valueOf(intStatus2));
                TXCStatus.a(next, 2005, Integer.valueOf(intStatus2));
                TXCStatus.a(next, 2004, Integer.valueOf(status.getIntStatus(next, 10300)));
                TXCStatus.a(next, 2034, Integer.valueOf(status.getIntStatus(next, 10301)));
                TXCStatus.a(next, 2035, Integer.valueOf(status.getIntStatus(next, 10302)));
                TXCStatus.a(next, 2014, Integer.valueOf(status.getIntStatus(next, 10303)));
                TXCStatus.a(next, 2008, Integer.valueOf(status.getIntStatus(next, 10112)));
                TXCStatus.a(next, 2010, Integer.valueOf(status.getIntStatus(next, 10106)));
                TXCStatus.a(next, 2007, Integer.valueOf(status.getIntStatus(next, 10105)));
                TXCStatus.a(next, 2011, Integer.valueOf(status.getIntStatus(next, 10107)));
                TXCStatus.a(next, 18001, Integer.valueOf(status.getIntStatus(next, 10103)));
                TXCStatus.a(next, 18002, Integer.valueOf(status.getIntStatus(next, 10104)));
                TXCStatus.a(next, 18006, Integer.valueOf(status.getIntStatus(next, 10202)));
                TXCStatus.a(next, 18007, Integer.valueOf(status.getIntStatus(next, 10203)));
                TXCStatus.a(next, 18008, Integer.valueOf(status.getIntStatus(next, 10204)));
                TXCStatus.a(next, 18015, Integer.valueOf(status.getIntStatus(next, 10205)));
                TXCStatus.a(next, 18013, Integer.valueOf(status.getIntStatus(next, 10206)));
                int intStatus3 = status.getIntStatus(next, 10203);
                int intStatus4 = status.getIntStatus(next, 10202);
                if (intStatus4 > 0) {
                    i = (intStatus3 * 100) / intStatus4;
                }
                TXCStatus.a(next, 18014, Integer.valueOf(i));
                TXCStatus.a(next, 18023, Integer.valueOf(status.getIntStatus(next, 10200)));
                TXCStatus.a(next, 2036, Integer.valueOf(status.getIntStatus(next, 10110)));
                TXCStatus.a(next, 2037, Integer.valueOf(status.getIntStatus(next, 10111)));
                TXCStatus.a(next, 18028, Integer.valueOf(status.getIntStatus(next, 10201)));
                TXCStatus.a(next, 18030, Integer.valueOf(status.getIntStatus(next, 10113)));
                TXCStatus.a(next, 18003, Integer.valueOf(status.getIntStatus(next, 10100)));
                TXCStatus.a(next, (int) TXLiteAVCode.EVT_VOD_PLAY_SEEK_COMPLETE, Integer.valueOf(status.getIntStatus(next, 10100)));
                TXCStatus.a(next, (int) TXLiteAVCode.EVT_VIDEO_DECODER_CACHE_TOO_MANY_FRAMES, Integer.valueOf(status.getIntStatus(next, 10101)));
                TXCStatus.a(next, 18016, Integer.valueOf(status.getIntStatus(next, 10102)));
                TXCStatus.a(next, 18009, Integer.valueOf(status.getIntStatus(next, 10207)));
                TXCStatus.a(next, 18010, Integer.valueOf(status.getIntStatus(next, 10208)));
                TXCStatus.a(next, 18012, Integer.valueOf(status.getIntStatus(next, 10209)));
                TXCStatus.a(next, (int) TXLiteAVCode.EVT_HW_DECODER_START_SUCC, Integer.valueOf(status.getIntStatus(next, 10109)));
            }
        }
    }
}
