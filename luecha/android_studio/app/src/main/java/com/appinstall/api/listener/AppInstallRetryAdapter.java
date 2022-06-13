package com.appinstall.api.listener;

import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;

/* loaded from: classes2.dex */
public abstract class AppInstallRetryAdapter implements AppInstallListener {
    public abstract void onInstall(AppData appData, boolean z);

    @Override // com.appinstall.api.listener.AppInstallListener
    public void onInstallFinish(AppData appData, Error error) {
        if (appData == null) {
            appData = new AppData();
        }
        onInstall(appData, error != null && error.getErrorCode() == -4);
    }
}
