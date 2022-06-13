package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public interface BandwidthMeter {

    /* renamed from: com.google.android.exoplayer2.upstream.BandwidthMeter$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static long $default$getTimeToFirstByteEstimateUs(BandwidthMeter bandwidthMeter) {
            return C.TIME_UNSET;
        }
    }

    void addEventListener(Handler handler, EventListener eventListener);

    long getBitrateEstimate();

    long getTimeToFirstByteEstimateUs();

    TransferListener getTransferListener();

    void removeEventListener(EventListener eventListener);

    /* loaded from: classes2.dex */
    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);

        /* loaded from: classes2.dex */
        public static final class EventDispatcher {
            private final CopyOnWriteArrayList<HandlerAndListener> listeners = new CopyOnWriteArrayList<>();

            public void addListener(Handler handler, EventListener eventListener) {
                Assertions.checkNotNull(handler);
                Assertions.checkNotNull(eventListener);
                removeListener(eventListener);
                this.listeners.add(new HandlerAndListener(handler, eventListener));
            }

            public void removeListener(EventListener eventListener) {
                Iterator<HandlerAndListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    HandlerAndListener next = it.next();
                    if (next.listener == eventListener) {
                        next.release();
                        this.listeners.remove(next);
                    }
                }
            }

            public void bandwidthSample(int i, long j, long j2) {
                Iterator<HandlerAndListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    HandlerAndListener next = it.next();
                    if (!next.released) {
                        next.handler.post(new Runnable(i, j, j2) { // from class: com.google.android.exoplayer2.upstream.-$$Lambda$BandwidthMeter$EventListener$EventDispatcher$ZC--h263yldu3dFfxd--BCsztCw
                            private final /* synthetic */ int f$1;
                            private final /* synthetic */ long f$2;
                            private final /* synthetic */ long f$3;

                            {
                                this.f$1 = r2;
                                this.f$2 = r3;
                                this.f$3 = r5;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener.this.listener.onBandwidthSample(this.f$1, this.f$2, this.f$3);
                            }
                        });
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static final class HandlerAndListener {
                private final Handler handler;
                private final EventListener listener;
                private boolean released;

                public HandlerAndListener(Handler handler, EventListener eventListener) {
                    this.handler = handler;
                    this.listener = eventListener;
                }

                public void release() {
                    this.released = true;
                }
            }
        }
    }
}
