package com.github.florent37.assets_audio_player.stopwhencall;

import android.content.Context;
import android.media.AudioManager;
import androidx.media.AudioAttributesCompat;
import androidx.media.AudioFocusRequestCompat;
import androidx.media.AudioManagerCompat;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.stopwhencall.AudioFocusStrategy;
import com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StopWhenCallAudioFocus.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;", c.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "audioManager", "Landroid/media/AudioManager;", "focusLock", "", "request", "Landroidx/media/AudioFocusRequestCompat;", "generateListener", "Lkotlin/Function1;", "", "", "requestAudioFocus", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "audioFocusStrategy", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", NotificationAction.ACTION_STOP, "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class StopWhenCallAudioFocus extends StopWhenCall {
    private final AudioManager audioManager;
    private final Context context;
    private final Object focusLock;
    private AudioFocusRequestCompat request;

    public StopWhenCallAudioFocus(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        this.context = context;
        Object systemService = this.context.getSystemService("audio");
        if (systemService != null) {
            this.audioManager = (AudioManager) systemService;
            this.focusLock = new Object();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.media.AudioManager");
    }

    private final Function1<Integer, Unit> generateListener() {
        return new Function1<Integer, Unit>() { // from class: com.github.florent37.assets_audio_player.stopwhencall.StopWhenCallAudioFocus$generateListener$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                if (i == -3) {
                    Object obj = StopWhenCallAudioFocus.this.focusLock;
                    StopWhenCallAudioFocus stopWhenCallAudioFocus = StopWhenCallAudioFocus.this;
                    synchronized (obj) {
                        stopWhenCallAudioFocus.pingListeners(StopWhenCall.AudioState.REDUCE_VOLUME);
                        Unit unit = Unit.INSTANCE;
                    }
                } else if (i != 1) {
                    Object obj2 = StopWhenCallAudioFocus.this.focusLock;
                    StopWhenCallAudioFocus stopWhenCallAudioFocus2 = StopWhenCallAudioFocus.this;
                    synchronized (obj2) {
                        stopWhenCallAudioFocus2.pingListeners(StopWhenCall.AudioState.FORBIDDEN);
                        Unit unit2 = Unit.INSTANCE;
                    }
                } else {
                    Object obj3 = StopWhenCallAudioFocus.this.focusLock;
                    StopWhenCallAudioFocus stopWhenCallAudioFocus3 = StopWhenCallAudioFocus.this;
                    synchronized (obj3) {
                        stopWhenCallAudioFocus3.pingListeners(StopWhenCall.AudioState.AUTHORIZED_TO_PLAY);
                        Unit unit3 = Unit.INSTANCE;
                    }
                }
            }
        };
    }

    @Override // com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall
    public StopWhenCall.AudioState requestAudioFocus(AudioFocusStrategy audioFocusStrategy) {
        Intrinsics.checkNotNullParameter(audioFocusStrategy, "audioFocusStrategy");
        if (audioFocusStrategy instanceof AudioFocusStrategy.None) {
            return StopWhenCall.AudioState.FORBIDDEN;
        }
        AudioFocusStrategy.Request request = (AudioFocusStrategy.Request) audioFocusStrategy;
        AudioFocusRequestCompat audioFocusRequestCompat = this.request;
        if (audioFocusRequestCompat != null) {
            AudioManagerCompat.abandonAudioFocusRequest(this.audioManager, audioFocusRequestCompat);
        }
        int i = request.getResumeOthersPlayersAfterDone() ? 2 : 1;
        Function1<Integer, Unit> generateListener = generateListener();
        AudioFocusRequestCompat.Builder builder = new AudioFocusRequestCompat.Builder(i);
        AudioAttributesCompat.Builder builder2 = new AudioAttributesCompat.Builder();
        builder2.setUsage(1);
        builder2.setContentType(2);
        builder.setAudioAttributes(builder2.build());
        builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: com.github.florent37.assets_audio_player.stopwhencall.-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i2) {
                StopWhenCallAudioFocus.m20requestAudioFocus$lambda3$lambda2(Function1.this, i2);
            }
        });
        this.request = builder.build();
        AudioManager audioManager = this.audioManager;
        AudioFocusRequestCompat audioFocusRequestCompat2 = this.request;
        Intrinsics.checkNotNull(audioFocusRequestCompat2);
        int requestAudioFocus = AudioManagerCompat.requestAudioFocus(audioManager, audioFocusRequestCompat2);
        synchronized (this.focusLock) {
            generateListener.invoke(Integer.valueOf(requestAudioFocus));
            Unit unit = Unit.INSTANCE;
        }
        if (requestAudioFocus == -3) {
            return StopWhenCall.AudioState.REDUCE_VOLUME;
        }
        if (requestAudioFocus == 1 || requestAudioFocus == 2) {
            return StopWhenCall.AudioState.AUTHORIZED_TO_PLAY;
        }
        return StopWhenCall.AudioState.FORBIDDEN;
    }

    /* renamed from: requestAudioFocus$lambda-3$lambda-2 */
    public static final void m20requestAudioFocus$lambda3$lambda2(Function1 function1, int i) {
        Intrinsics.checkNotNullParameter(function1, "$tmp0");
        function1.invoke(Integer.valueOf(i));
    }

    @Override // com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall
    public void stop() {
        AudioFocusRequestCompat audioFocusRequestCompat = this.request;
        if (audioFocusRequestCompat != null) {
            AudioManagerCompat.abandonAudioFocusRequest(this.audioManager, audioFocusRequestCompat);
        }
    }
}
