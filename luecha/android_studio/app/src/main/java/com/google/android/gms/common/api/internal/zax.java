package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* loaded from: classes2.dex */
public final class zax implements zabs {
    private final Looper zabj;
    private final GoogleApiManager zabm;
    private final Lock zaen;
    private final ClientSettings zaes;
    private final Map<Api<?>, Boolean> zaev;
    private final zaaw zaew;
    private final GoogleApiAvailabilityLight zaex;
    private final Condition zaey;
    private final boolean zaez;
    private final boolean zafa;
    private boolean zafc;
    private Map<zai<?>, ConnectionResult> zafd;
    private Map<zai<?>, ConnectionResult> zafe;
    private zaaa zaff;
    private ConnectionResult zafg;
    private final Map<Api.AnyClientKey<?>, zaw<?>> zaet = new HashMap();
    private final Map<Api.AnyClientKey<?>, zaw<?>> zaeu = new HashMap();
    private final Queue<BaseImplementation.ApiMethodImpl<?, ?>> zafb = new LinkedList();

    public zax(Context context, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList, zaaw zaaw, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.zaen = lock;
        this.zabj = looper;
        this.zaey = lock.newCondition();
        this.zaex = googleApiAvailabilityLight;
        this.zaew = zaaw;
        this.zaev = map2;
        this.zaes = clientSettings;
        this.zaez = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.getClientKey(), api);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList<zaq> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            zaq zaq = arrayList2.get(i);
            i++;
            zaq zaq2 = zaq;
            hashMap2.put(zaq2.mApi, zaq2);
        }
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = false;
        boolean z8 = false;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.Client value = entry.getValue();
            if (value.requiresGooglePlayServices()) {
                z3 = z6;
                if (!this.zaev.get(api2).booleanValue()) {
                    z4 = true;
                    z2 = true;
                } else {
                    z4 = z8;
                    z2 = true;
                }
            } else {
                z2 = z7;
                z4 = z8;
                z3 = false;
            }
            zaw<?> zaw = new zaw<>(context, api2, looper, value, (zaq) hashMap2.get(api2), clientSettings, abstractClientBuilder);
            this.zaet.put(entry.getKey(), zaw);
            if (value.requiresSignIn()) {
                this.zaeu.put(entry.getKey(), zaw);
            }
            z8 = z4;
            z6 = z3;
            z7 = z2;
        }
        this.zafa = (!z7 || z6 || z8) ? false : z5;
        this.zabm = GoogleApiManager.zabc();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zaw() {
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        if (this.zaez && zab((zax) t)) {
            return t;
        }
        if (!isConnected()) {
            this.zafb.add(t);
            return t;
        }
        this.zaew.zahe.zab(t);
        return (T) this.zaet.get(t.getClientKey()).doRead((zaw<?>) t);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Api.AnyClientKey<A> clientKey = t.getClientKey();
        if (this.zaez && zab((zax) t)) {
            return t;
        }
        this.zaew.zahe.zab(t);
        return (T) this.zaet.get(clientKey).doWrite((zaw<?>) t);
    }

    private final <T extends BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>> boolean zab(T t) {
        Api.AnyClientKey<?> clientKey = t.getClientKey();
        ConnectionResult zaa = zaa(clientKey);
        if (zaa == null || zaa.getErrorCode() != 4) {
            return false;
        }
        t.setFailedResult(new Status(4, null, this.zabm.zaa(this.zaet.get(clientKey).zak(), System.identityHashCode(this.zaew))));
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void connect() {
        this.zaen.lock();
        try {
            if (!this.zafc) {
                this.zafc = true;
                this.zafd = null;
                this.zafe = null;
                this.zaff = null;
                this.zafg = null;
                this.zabm.zao();
                this.zabm.zaa(this.zaet.values()).addOnCompleteListener(new HandlerExecutor(this.zabj), new zaz(this));
            }
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zaey.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zafg;
        if (connectionResult != null) {
            return connectionResult;
        }
        return new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.zaey.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zafg;
        if (connectionResult != null) {
            return connectionResult;
        }
        return new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void disconnect() {
        this.zaen.lock();
        try {
            this.zafc = false;
            this.zafd = null;
            this.zafe = null;
            if (this.zaff != null) {
                this.zaff.cancel();
                this.zaff = null;
            }
            this.zafg = null;
            while (!this.zafb.isEmpty()) {
                BaseImplementation.ApiMethodImpl<?, ?> remove = this.zafb.remove();
                remove.zaa((zacs) null);
                remove.cancel();
            }
            this.zaey.signalAll();
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult getConnectionResult(Api<?> api) {
        return zaa(api.getClientKey());
    }

    private final ConnectionResult zaa(Api.AnyClientKey<?> anyClientKey) {
        this.zaen.lock();
        try {
            zaw<?> zaw = this.zaet.get(anyClientKey);
            if (this.zafd != null && zaw != null) {
                return this.zafd.get(zaw.zak());
            }
            this.zaen.unlock();
            return null;
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnected() {
        boolean z;
        this.zaen.lock();
        try {
            if (this.zafd != null) {
                if (this.zafg == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnecting() {
        boolean z;
        this.zaen.lock();
        try {
            if (this.zafd == null) {
                if (this.zafc) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zaen.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:3:0x0005, B:5:0x000a, B:8:0x000f, B:9:0x0019, B:11:0x001f, B:13:0x002b), top: B:24:0x0005 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final boolean zaac() {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.zaen
            r0.lock()
            boolean r0 = r3.zafc     // Catch: all -> 0x0044
            r1 = 0
            if (r0 == 0) goto L_0x003e
            boolean r0 = r3.zaez     // Catch: all -> 0x0044
            if (r0 != 0) goto L_0x000f
            goto L_0x003e
        L_0x000f:
            java.util.Map<com.google.android.gms.common.api.Api$AnyClientKey<?>, com.google.android.gms.common.api.internal.zaw<?>> r0 = r3.zaeu     // Catch: all -> 0x0044
            java.util.Set r0 = r0.keySet()     // Catch: all -> 0x0044
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x0044
        L_0x0019:
            boolean r2 = r0.hasNext()     // Catch: all -> 0x0044
            if (r2 == 0) goto L_0x0037
            java.lang.Object r2 = r0.next()     // Catch: all -> 0x0044
            com.google.android.gms.common.api.Api$AnyClientKey r2 = (com.google.android.gms.common.api.Api.AnyClientKey) r2     // Catch: all -> 0x0044
            com.google.android.gms.common.ConnectionResult r2 = r3.zaa(r2)     // Catch: all -> 0x0044
            if (r2 == 0) goto L_0x0031
            boolean r2 = r2.isSuccess()     // Catch: all -> 0x0044
            if (r2 != 0) goto L_0x0019
        L_0x0031:
            java.util.concurrent.locks.Lock r0 = r3.zaen
            r0.unlock()
            return r1
        L_0x0037:
            java.util.concurrent.locks.Lock r0 = r3.zaen
            r0.unlock()
            r0 = 1
            return r0
        L_0x003e:
            java.util.concurrent.locks.Lock r0 = r3.zaen
            r0.unlock()
            return r1
        L_0x0044:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r3.zaen
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zax.zaac():boolean");
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.zaen.lock();
        try {
            if (!this.zafc || zaac()) {
                this.zaen.unlock();
                return false;
            }
            this.zabm.zao();
            this.zaff = new zaaa(this, signInConnectionListener);
            this.zabm.zaa(this.zaeu.values()).addOnCompleteListener(new HandlerExecutor(this.zabj), this.zaff);
            this.zaen.unlock();
            return true;
        } catch (Throwable th) {
            this.zaen.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void maybeSignOut() {
        this.zaen.lock();
        try {
            this.zabm.maybeSignOut();
            if (this.zaff != null) {
                this.zaff.cancel();
                this.zaff = null;
            }
            if (this.zafe == null) {
                this.zafe = new ArrayMap(this.zaeu.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zaw<?> zaw : this.zaeu.values()) {
                this.zafe.put(zaw.zak(), connectionResult);
            }
            if (this.zafd != null) {
                this.zafd.putAll(this.zafe);
            }
        } finally {
            this.zaen.unlock();
        }
    }

    public final void zaad() {
        ClientSettings clientSettings = this.zaes;
        if (clientSettings == null) {
            this.zaew.zagz = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = this.zaes.getOptionalApiSettings();
        for (Api<?> api : optionalApiSettings.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(optionalApiSettings.get(api).mScopes);
            }
        }
        this.zaew.zagz = hashSet;
    }

    public final void zaae() {
        while (!this.zafb.isEmpty()) {
            execute(this.zafb.remove());
        }
        this.zaew.zab((Bundle) null);
    }

    public final boolean zaa(zaw<?> zaw, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && this.zaev.get(zaw.getApi()).booleanValue() && zaw.zaab().requiresGooglePlayServices() && this.zaex.isUserResolvableError(connectionResult.getErrorCode());
    }

    public final ConnectionResult zaaf() {
        int i = 0;
        ConnectionResult connectionResult = null;
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        for (zaw<?> zaw : this.zaet.values()) {
            Api<?> api = zaw.getApi();
            ConnectionResult connectionResult3 = this.zafd.get(zaw.zak());
            if (!connectionResult3.isSuccess() && (!this.zaev.get(api).booleanValue() || connectionResult3.hasResolution() || this.zaex.isUserResolvableError(connectionResult3.getErrorCode()))) {
                if (connectionResult3.getErrorCode() != 4 || !this.zaez) {
                    int priority = api.zah().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                } else {
                    int priority2 = api.zah().getPriority();
                    if (connectionResult2 == null || i2 > priority2) {
                        connectionResult2 = connectionResult3;
                        i2 = priority2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }
}
