package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public abstract class RemoteCreator<T> {
    private final String zzia;
    private T zzib;

    /* JADX INFO: Access modifiers changed from: protected */
    public RemoteCreator(String str) {
        this.zzia = str;
    }

    protected abstract T getRemoteCreator(IBinder iBinder);

    /* loaded from: classes2.dex */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    protected final T getRemoteCreatorInstance(Context context) throws RemoteCreatorException {
        if (this.zzib == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.zzib = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zzia).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new RemoteCreatorException("Could not load creator class.", e);
                } catch (IllegalAccessException e2) {
                    throw new RemoteCreatorException("Could not access creator.", e2);
                } catch (InstantiationException e3) {
                    throw new RemoteCreatorException("Could not instantiate creator.", e3);
                }
            } else {
                throw new RemoteCreatorException("Could not get remote context.");
            }
        }
        return this.zzib;
    }
}
