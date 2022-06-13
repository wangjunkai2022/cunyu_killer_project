package com.bumptech.glide.manager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ApplicationLifecycle implements Lifecycle {
    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(LifecycleListener lifecycleListener) {
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }
}
