package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.location.zzbh;

/* loaded from: classes4.dex */
public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    /* loaded from: classes4.dex */
    public static final class Builder {
        private double zzah;
        private double zzai;
        private float zzaj;
        private String zzad = null;
        private int zzae = 0;
        private long zzaf = Long.MIN_VALUE;
        private short zzag = -1;
        private int zzak = 0;
        private int zzal = -1;

        public final Geofence build() {
            if (this.zzad != null) {
                int i = this.zzae;
                if (i == 0) {
                    throw new IllegalArgumentException("Transitions types not set.");
                } else if ((i & 4) == 0 || this.zzal >= 0) {
                    long j = this.zzaf;
                    if (j == Long.MIN_VALUE) {
                        throw new IllegalArgumentException("Expiration not set.");
                    } else if (this.zzag != -1) {
                        int i2 = this.zzak;
                        if (i2 >= 0) {
                            return new zzbh(this.zzad, this.zzae, 1, this.zzah, this.zzai, this.zzaj, j, i2, this.zzal);
                        }
                        throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
                    } else {
                        throw new IllegalArgumentException("Geofence region not set.");
                    }
                } else {
                    throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
                }
            } else {
                throw new IllegalArgumentException("Request ID not set.");
            }
        }

        public final Builder setCircularRegion(double d, double d2, float f) {
            this.zzag = 1;
            this.zzah = d;
            this.zzai = d2;
            this.zzaj = f;
            return this;
        }

        public final Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.zzaf = -1;
            } else {
                this.zzaf = SystemClock.elapsedRealtime() + j;
            }
            return this;
        }

        public final Builder setLoiteringDelay(int i) {
            this.zzal = i;
            return this;
        }

        public final Builder setNotificationResponsiveness(int i) {
            this.zzak = i;
            return this;
        }

        public final Builder setRequestId(String str) {
            this.zzad = str;
            return this;
        }

        public final Builder setTransitionTypes(int i) {
            this.zzae = i;
            return this;
        }
    }

    String getRequestId();
}
