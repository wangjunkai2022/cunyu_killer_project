package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zal;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zas implements zabs {
    private final Context mContext;
    private final Looper zabj;
    private final zaaw zaed;
    private final zabe zaee;
    private final zabe zaef;
    private final Map<Api.AnyClientKey<?>, zabe> zaeg;
    private final Api.Client zaei;
    private Bundle zaej;
    private final Lock zaen;
    private final Set<SignInConnectionListener> zaeh = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zaek = null;
    private ConnectionResult zael = null;
    private boolean zaem = false;
    private int zaeo = 0;

    public static zas zaa(Context context, zaaw zaaw, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        Preconditions.checkState(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> clientKey = api.getClientKey();
            if (arrayMap.containsKey(clientKey)) {
                arrayMap3.put(api, map2.get(api));
            } else if (arrayMap2.containsKey(clientKey)) {
                arrayMap4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<zaq> arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            zaq zaq = arrayList4.get(i);
            i++;
            zaq zaq2 = zaq;
            if (arrayMap3.containsKey(zaq2.mApi)) {
                arrayList2.add(zaq2);
            } else if (arrayMap4.containsKey(zaq2.mApi)) {
                arrayList3.add(zaq2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zas(context, zaaw, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private zas(Context context, zaaw zaaw, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zaq> arrayList, ArrayList<zaq> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.mContext = context;
        this.zaed = zaaw;
        this.zaen = lock;
        this.zabj = looper;
        this.zaei = client;
        this.zaee = new zabe(context, this.zaed, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zau(this, null));
        this.zaef = new zabe(context, this.zaed, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zav(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            arrayMap.put(anyClientKey, this.zaee);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            arrayMap.put(anyClientKey2, this.zaef);
        }
        this.zaeg = Collections.unmodifiableMap(arrayMap);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        if (!zaa((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            return (T) this.zaee.enqueue(t);
        }
        if (!zaz()) {
            return (T) this.zaef.enqueue(t);
        }
        t.setFailedResult(new Status(4, null, zaaa()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        if (!zaa((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            return (T) this.zaee.execute(t);
        }
        if (!zaz()) {
            return (T) this.zaef.execute(t);
        }
        t.setFailedResult(new Status(4, null, zaaa()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult getConnectionResult(Api<?> api) {
        if (!this.zaeg.get(api.getClientKey()).equals(this.zaef)) {
            return this.zaee.getConnectionResult(api);
        }
        if (zaz()) {
            return new ConnectionResult(4, zaaa());
        }
        return this.zaef.getConnectionResult(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void connect() {
        this.zaeo = 2;
        this.zaem = false;
        this.zael = null;
        this.zaek = null;
        this.zaee.connect();
        this.zaef.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void disconnect() {
        this.zael = null;
        this.zaek = null;
        this.zaeo = 0;
        this.zaee.disconnect();
        this.zaef.disconnect();
        zay();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r2.zaeo == 1) goto L_0x0022;
     */
    @Override // com.google.android.gms.common.api.internal.zabs
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final boolean isConnected() {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.zaen
            r0.lock()
            com.google.android.gms.common.api.internal.zabe r0 = r2.zaee     // Catch: all -> 0x0028
            boolean r0 = r0.isConnected()     // Catch: all -> 0x0028
            r1 = 1
            if (r0 == 0) goto L_0x0021
            com.google.android.gms.common.api.internal.zabe r0 = r2.zaef     // Catch: all -> 0x0028
            boolean r0 = r0.isConnected()     // Catch: all -> 0x0028
            if (r0 != 0) goto L_0x0022
            boolean r0 = r2.zaz()     // Catch: all -> 0x0028
            if (r0 != 0) goto L_0x0022
            int r0 = r2.zaeo     // Catch: all -> 0x0028
            if (r0 != r1) goto L_0x0021
            goto L_0x0022
        L_0x0021:
            r1 = 0
        L_0x0022:
            java.util.concurrent.locks.Lock r0 = r2.zaen
            r0.unlock()
            return r1
        L_0x0028:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.zaen
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zas.isConnected():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnecting() {
        this.zaen.lock();
        try {
            return this.zaeo == 2;
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.zaen.lock();
        try {
            if ((isConnecting() || isConnected()) && !this.zaef.isConnected()) {
                this.zaeh.add(signInConnectionListener);
                if (this.zaeo == 0) {
                    this.zaeo = 1;
                }
                this.zael = null;
                this.zaef.connect();
                return true;
            }
            this.zaen.unlock();
            return false;
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zaw() {
        this.zaee.zaw();
        this.zaef.zaw();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void maybeSignOut() {
        this.zaen.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zaef.disconnect();
            this.zael = new ConnectionResult(4);
            if (isConnecting) {
                new zal(this.zabj).post(new zat(this));
            } else {
                zay();
            }
        } finally {
            this.zaen.unlock();
        }
    }

    public final void zax() {
        if (zab(this.zaek)) {
            if (zab(this.zael) || zaz()) {
                int i = this.zaeo;
                if (i != 1) {
                    if (i != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        this.zaeo = 0;
                        return;
                    }
                    this.zaed.zab(this.zaej);
                }
                zay();
                this.zaeo = 0;
                return;
            }
            ConnectionResult connectionResult = this.zael;
            if (connectionResult == null) {
                return;
            }
            if (this.zaeo == 1) {
                zay();
                return;
            }
            zaa(connectionResult);
            this.zaee.disconnect();
        } else if (this.zaek == null || !zab(this.zael)) {
            ConnectionResult connectionResult2 = this.zaek;
            if (connectionResult2 != null && this.zael != null) {
                if (this.zaef.zahr < this.zaee.zahr) {
                    connectionResult2 = this.zael;
                }
                zaa(connectionResult2);
            }
        } else {
            this.zaef.disconnect();
            zaa(this.zaek);
        }
    }

    private final void zaa(ConnectionResult connectionResult) {
        int i = this.zaeo;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.zaeo = 0;
            }
            this.zaed.zac(connectionResult);
        }
        zay();
        this.zaeo = 0;
    }

    private final void zay() {
        for (SignInConnectionListener signInConnectionListener : this.zaeh) {
            signInConnectionListener.onComplete();
        }
        this.zaeh.clear();
    }

    public final void zaa(int i, boolean z) {
        this.zaed.zab(i, z);
        this.zael = null;
        this.zaek = null;
    }

    private final boolean zaz() {
        ConnectionResult connectionResult = this.zael;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private final boolean zaa(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        Api.AnyClientKey<? extends Api.AnyClient> clientKey = apiMethodImpl.getClientKey();
        Preconditions.checkArgument(this.zaeg.containsKey(clientKey), "GoogleApiClient is not configured to use the API required for this call.");
        return this.zaeg.get(clientKey).equals(this.zaef);
    }

    private final PendingIntent zaaa() {
        if (this.zaei == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, System.identityHashCode(this.zaed), this.zaei.getSignInIntent(), 134217728);
    }

    public final void zaa(Bundle bundle) {
        Bundle bundle2 = this.zaej;
        if (bundle2 == null) {
            this.zaej = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    private static boolean zab(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zaef.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zaee.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }
}
