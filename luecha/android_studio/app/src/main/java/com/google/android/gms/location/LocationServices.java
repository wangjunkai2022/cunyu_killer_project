package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzaf;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzbk;
import com.google.android.gms.internal.location.zzq;

/* loaded from: classes2.dex */
public class LocationServices {
    private static final Api.ClientKey<zzaz> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> CLIENT_BUILDER = new zzad();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("LocationServices.API", CLIENT_BUILDER, CLIENT_KEY);
    @Deprecated
    public static final FusedLocationProviderApi FusedLocationApi = new zzq();
    @Deprecated
    public static final GeofencingApi GeofencingApi = new zzaf();
    @Deprecated
    public static final SettingsApi SettingsApi = new zzbk();

    /* loaded from: classes2.dex */
    public static abstract class zza<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzaz> {
        public zza(GoogleApiClient googleApiClient) {
            super(LocationServices.API, googleApiClient);
        }
    }

    private LocationServices() {
    }

    public static FusedLocationProviderClient getFusedLocationProviderClient(Activity activity) {
        return new FusedLocationProviderClient(activity);
    }

    public static FusedLocationProviderClient getFusedLocationProviderClient(Context context) {
        return new FusedLocationProviderClient(context);
    }

    public static GeofencingClient getGeofencingClient(Activity activity) {
        return new GeofencingClient(activity);
    }

    public static GeofencingClient getGeofencingClient(Context context) {
        return new GeofencingClient(context);
    }

    public static SettingsClient getSettingsClient(Activity activity) {
        return new SettingsClient(activity);
    }

    public static SettingsClient getSettingsClient(Context context) {
        return new SettingsClient(context);
    }

    public static zzaz zza(GoogleApiClient googleApiClient) {
        boolean z = true;
        Preconditions.checkArgument(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzaz zzaz = (zzaz) googleApiClient.getClient(CLIENT_KEY);
        if (zzaz == null) {
            z = false;
        }
        Preconditions.checkState(z, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return zzaz;
    }
}
