package com.appinstall.api.listener;

import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;

/* loaded from: classes2.dex */
public abstract class AppWakeUpAdapter implements AppWakeUpListener {
    public abstract void onWakeUp(AppData appData);

    @Override // com.appinstall.api.listener.AppWakeUpListener
    public void onWakeUpFinish(AppData appData, Error error) {
        if (error == null && appData != null && !appData.isEmpty()) {
            onWakeUp(appData);
        }
    }
}
