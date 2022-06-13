package com.appinstall.api.listener;

import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;

/* loaded from: classes2.dex */
public interface AppWakeUpListener {
    void onWakeUpFinish(AppData appData, Error error);
}
