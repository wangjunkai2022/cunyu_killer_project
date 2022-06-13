package com.opensource.svgaplayer;

import android.media.SoundPool;
import com.opensource.svgaplayer.SVGASoundManager;
import com.opensource.svgaplayer.utils.log.LogUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SVGASoundManager.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/media/SoundPool;", "kotlin.jvm.PlatformType", "soundId", "", "status", "onLoadComplete"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class SVGASoundManager$init$1 implements SoundPool.OnLoadCompleteListener {
    public static final SVGASoundManager$init$1 INSTANCE = new SVGASoundManager$init$1();

    SVGASoundManager$init$1() {
    }

    @Override // android.media.SoundPool.OnLoadCompleteListener
    public final void onLoadComplete(SoundPool soundPool, int i, int i2) {
        LogUtils logUtils = LogUtils.INSTANCE;
        SVGASoundManager sVGASoundManager = SVGASoundManager.INSTANCE;
        String str = SVGASoundManager.TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
        logUtils.debug(str, "SoundPool onLoadComplete soundId=" + i + " status=" + i2);
        if (i2 == 0) {
            SVGASoundManager sVGASoundManager2 = SVGASoundManager.INSTANCE;
            if (SVGASoundManager.soundCallBackMap.containsKey(Integer.valueOf(i))) {
                SVGASoundManager sVGASoundManager3 = SVGASoundManager.INSTANCE;
                SVGASoundManager.SVGASoundCallBack sVGASoundCallBack = (SVGASoundManager.SVGASoundCallBack) SVGASoundManager.soundCallBackMap.get(Integer.valueOf(i));
                if (sVGASoundCallBack != null) {
                    sVGASoundCallBack.onComplete();
                }
            }
        }
    }
}
