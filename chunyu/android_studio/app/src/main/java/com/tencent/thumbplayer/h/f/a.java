package com.tencent.thumbplayer.h.f;

import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.h.b.e;
import com.tencent.thumbplayer.h.b.f;
import com.tencent.thumbplayer.h.b.g;
import com.tencent.thumbplayer.h.h.c;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: com.tencent.thumbplayer.h.f.a$a */
    /* loaded from: classes2.dex */
    public enum EnumC0046a {
        ADAPTATION_WORKAROUND_MODE_NEVER,
        ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION,
        ADAPTATION_WORKAROUND_MODE_ALWAYS
    }

    /* loaded from: classes2.dex */
    public enum b {
        KEEP_CODEC_RESULT_NO,
        KEEP_CODEC_RESULT_YES_WITH_FLUSH,
        KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION,
        KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION
    }

    public static EnumC0046a a(String str) {
        return (Build.VERSION.SDK_INT > 25 || !"OMX.Exynos.avc.dec.secure".equals(str) || (!TPSystemInfo.getDeviceName().startsWith("SM-T585") && !TPSystemInfo.getDeviceName().startsWith("SM-A510") && !TPSystemInfo.getDeviceName().startsWith("SM-A520") && !TPSystemInfo.getDeviceName().startsWith("SM-J700"))) ? (Build.VERSION.SDK_INT >= 24 || (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) || (!"flounder".equals(Build.DEVICE) && !"flounder_lte".equals(Build.DEVICE) && !"grouper".equals(Build.DEVICE) && !"tilapia".equals(Build.DEVICE))) ? EnumC0046a.ADAPTATION_WORKAROUND_MODE_NEVER : EnumC0046a.ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION : EnumC0046a.ADAPTATION_WORKAROUND_MODE_ALWAYS;
    }

    public static void a(e eVar, MediaFormat mediaFormat) {
        b c = com.tencent.thumbplayer.h.a.a().c();
        int max = Math.max(c.b, eVar.b);
        int max2 = Math.max(c.c, eVar.c);
        if (c.a) {
            c.b = max;
            c.c = max2;
        }
        int max3 = Math.max(0, c.a(eVar.j, max, max2, false));
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("ReuseHelper", "initFormatWrapper initWidth:" + max + " initHeight:" + max2 + " initMaxInputSize:" + max3 + " reusePolicy:" + c);
        }
        eVar.g = max;
        eVar.h = max2;
        eVar.i = max3;
        mediaFormat.setInteger("max-input-size", Math.max(max3, 0));
        if (eVar.a() && Build.VERSION.SDK_INT >= 19) {
            mediaFormat.setInteger("max-width", max);
            mediaFormat.setInteger("max-height", max2);
        }
    }

    public static boolean a(f fVar, e eVar) {
        return a(fVar, eVar, false);
    }

    public static boolean a(f fVar, e eVar, boolean z) {
        e eVar2 = fVar.e;
        if (fVar instanceof g) {
            if (TextUtils.equals(eVar2.j, eVar.j) && eVar2.d == eVar.d) {
                if (fVar.c) {
                    return true;
                }
                if (eVar2.b == eVar.b && eVar2.c == eVar.c) {
                    return true;
                }
            }
            return false;
        } else if (!(fVar instanceof com.tencent.thumbplayer.h.b.a)) {
            return true;
        } else {
            if (!TextUtils.equals(MimeTypes.AUDIO_AAC, eVar2.j) || !TextUtils.equals(eVar2.j, eVar.j) || eVar2.e != eVar.e || eVar2.f != eVar.f) {
            }
            return false;
        }
    }
}
