package com.bumptech.glide.request;

/* loaded from: classes2.dex */
public interface RequestCoordinator {
    boolean canNotifyCleared(Request request);

    boolean canNotifyStatusChanged(Request request);

    boolean canSetImage(Request request);

    RequestCoordinator getRoot();

    @Override // com.bumptech.glide.request.Request
    boolean isAnyResourceSet();

    void onRequestFailed(Request request);

    void onRequestSuccess(Request request);

    /* loaded from: classes2.dex */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        RequestState(boolean z) {
            this.isComplete = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isComplete() {
            return this.isComplete;
        }
    }
}
