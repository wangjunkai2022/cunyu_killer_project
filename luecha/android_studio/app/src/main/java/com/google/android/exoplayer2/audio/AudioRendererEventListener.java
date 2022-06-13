package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public interface AudioRendererEventListener {

    /* renamed from: com.google.android.exoplayer2.audio.AudioRendererEventListener$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$onAudioCodecError(AudioRendererEventListener audioRendererEventListener, Exception exc) {
        }

        public static void $default$onAudioDecoderInitialized(AudioRendererEventListener audioRendererEventListener, String str, long j, long j2) {
        }

        public static void $default$onAudioDecoderReleased(AudioRendererEventListener audioRendererEventListener, String str) {
        }

        public static void $default$onAudioDisabled(AudioRendererEventListener audioRendererEventListener, DecoderCounters decoderCounters) {
        }

        public static void $default$onAudioEnabled(AudioRendererEventListener audioRendererEventListener, DecoderCounters decoderCounters) {
        }

        @Deprecated
        public static void $default$onAudioInputFormatChanged(AudioRendererEventListener audioRendererEventListener, Format format) {
        }

        public static void $default$onAudioInputFormatChanged(AudioRendererEventListener audioRendererEventListener, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        }

        public static void $default$onAudioPositionAdvancing(AudioRendererEventListener audioRendererEventListener, long j) {
        }

        public static void $default$onAudioSinkError(AudioRendererEventListener audioRendererEventListener, Exception exc) {
        }

        public static void $default$onAudioUnderrun(AudioRendererEventListener audioRendererEventListener, int i, long j, long j2) {
        }

        public static void $default$onSkipSilenceEnabledChanged(AudioRendererEventListener audioRendererEventListener, boolean z) {
        }
    }

    void onAudioCodecError(Exception exc);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDecoderReleased(String str);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    @Deprecated
    void onAudioInputFormatChanged(Format format);

    void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(Exception exc);

    void onAudioUnderrun(int i, long j, long j2);

    void onSkipSilenceEnabledChanged(boolean z);

    /* loaded from: classes2.dex */
    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public void enabled(DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(decoderCounters) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$MUMUaHcEfIpwDLi9gxmScOQxifc
                    private final /* synthetic */ DecoderCounters f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$enabled$0$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$enabled$0$AudioRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        public void decoderInitialized(String str, long j, long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(str, j, j2) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$F29t8_xYSK7h_6CpLRlp2y2yb1E
                    private final /* synthetic */ String f$1;
                    private final /* synthetic */ long f$2;
                    private final /* synthetic */ long f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r5;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$decoderInitialized$1$AudioRendererEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$decoderInitialized$1$AudioRendererEventListener$EventDispatcher(String str, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderInitialized(str, j, j2);
        }

        public void inputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(format, decoderReuseEvaluation) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$tfemTA5woODYgb9lmyLcd8cjsGw
                    private final /* synthetic */ Format f$1;
                    private final /* synthetic */ DecoderReuseEvaluation f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher(this.f$1, this.f$2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format);
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void positionAdvancing(long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(j) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y
                    private final /* synthetic */ long f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$positionAdvancing$3$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$positionAdvancing$3$AudioRendererEventListener$EventDispatcher(long j) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioPositionAdvancing(j);
        }

        public void underrun(int i, long j, long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(i, j, j2) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$XT_vVa1b37PFfO23qsN4p3rUGLg
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
                        AudioRendererEventListener.EventDispatcher.this.lambda$underrun$4$AudioRendererEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$underrun$4$AudioRendererEventListener$EventDispatcher(int i, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioUnderrun(i, j, j2);
        }

        public void decoderReleased(String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(str) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$zId8D7FqMw5gYFl5lKRcYRKGO4c
                    private final /* synthetic */ String f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$decoderReleased$5$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$decoderReleased$5$AudioRendererEventListener$EventDispatcher(String str) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderReleased(str);
        }

        public void disabled(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(decoderCounters) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$SvamOQUn_aR8xjz9XinrNVBGeuc
                    private final /* synthetic */ DecoderCounters f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$disabled$6$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$disabled$6$AudioRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDisabled(decoderCounters);
        }

        public void skipSilenceEnabledChanged(boolean z) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(z) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$d2jhbsdpyEn15J_YF4dpuj0qsS8
                    private final /* synthetic */ boolean f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$skipSilenceEnabledChanged$7$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$skipSilenceEnabledChanged$7$AudioRendererEventListener$EventDispatcher(boolean z) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(z);
        }

        public void audioSinkError(Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(exc) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$q_aT6uvERWxvrkmx1UpgJxaSZoE
                    private final /* synthetic */ Exception f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$audioSinkError$8$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$audioSinkError$8$AudioRendererEventListener$EventDispatcher(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSinkError(exc);
        }

        public void audioCodecError(Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable(exc) { // from class: com.google.android.exoplayer2.audio.-$$Lambda$AudioRendererEventListener$EventDispatcher$mn6sl0PZ7kSky92N6K60JyPj9yw
                    private final /* synthetic */ Exception f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$audioCodecError$9$AudioRendererEventListener$EventDispatcher(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$audioCodecError$9$AudioRendererEventListener$EventDispatcher(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecError(exc);
        }
    }
}
