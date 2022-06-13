package com.netease.nis.captcha;

import com.netease.nis.captcha.Captcha;

/* loaded from: classes2.dex */
public interface CaptchaListener {
    void onClose(Captcha.CloseType closeType);

    void onError(int i, String str);

    void onReady();

    void onValidate(String str, String str2, String str3);
}
