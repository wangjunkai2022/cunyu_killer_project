package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IInterface;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

@Deprecated
/* loaded from: classes4.dex */
public abstract class LegacyInternalGmsClient<T extends IInterface> extends GmsClient<T> {
    private final GmsClientEventManager zagr;

    public LegacyInternalGmsClient(Context context, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, context.getMainLooper(), i, clientSettings);
        this.zagr = new GmsClientEventManager(context.getMainLooper(), this);
        this.zagr.registerConnectionCallbacks(connectionCallbacks);
        this.zagr.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void checkAvailabilityAndConnect() {
        this.zagr.enableCallbacks();
        super.checkAvailabilityAndConnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public void disconnect() {
        this.zagr.disableCallbacks();
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectedLocked(T t) {
        super.onConnectedLocked(t);
        this.zagr.onConnectionSuccess(getConnectionHint());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectionSuspended(int i) {
        super.onConnectionSuspended(i);
        this.zagr.onUnintentionalDisconnection(i);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.zagr.onConnectionFailure(connectionResult);
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zagr.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zagr.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zagr.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zagr.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zagr.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zagr.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.GmsClient, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return super.getMinApkVersion();
    }
}
