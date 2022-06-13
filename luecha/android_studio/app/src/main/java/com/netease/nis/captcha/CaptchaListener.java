package com.netease.nis.captcha;

import com.netease.nis.captcha.Captcha;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface CaptchaListener {
    void onClose(Captcha.CloseType closeType);

    void onError(int i, String str);

    void onReady();

    void onValidate(String str, String str2, String str3);
}
