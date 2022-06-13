package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class StreamVolumeManager {
    private static final String TAG = "StreamVolumeManager";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private static final int VOLUME_FLAGS = 1;
    private final Context applicationContext;
    private final AudioManager audioManager;
    private final Handler eventHandler;
    private final Listener listener;
    private boolean muted;
    private VolumeChangeReceiver receiver;
    private int streamType = 3;
    private int volume;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    public StreamVolumeManager(Context context, Handler handler, Listener listener) {
        this.applicationContext = context.getApplicationContext();
        this.eventHandler = handler;
        this.listener = listener;
        this.audioManager = (AudioManager) Assertions.checkStateNotNull((AudioManager) this.applicationContext.getSystemService("audio"));
        this.volume = getVolumeFromManager(this.audioManager, this.streamType);
        this.muted = getMutedFromManager(this.audioManager, this.streamType);
        VolumeChangeReceiver volumeChangeReceiver = new VolumeChangeReceiver();
        try {
            this.applicationContext.registerReceiver(volumeChangeReceiver, new IntentFilter(VOLUME_CHANGED_ACTION));
            this.receiver = volumeChangeReceiver;
        } catch (RuntimeException e) {
            Log.w(TAG, "Error registering stream volume receiver", e);
        }
    }

    public void setStreamType(int i) {
        if (this.streamType != i) {
            this.streamType = i;
            updateVolumeAndNotifyIfChanged();
            this.listener.onStreamTypeChanged(i);
        }
    }

    public int getMinVolume() {
        if (Util.SDK_INT >= 28) {
            return this.audioManager.getStreamMinVolume(this.streamType);
        }
        return 0;
    }

    public int getMaxVolume() {
        return this.audioManager.getStreamMaxVolume(this.streamType);
    }

    public int getVolume() {
        return this.volume;
    }

    public boolean isMuted() {
        return this.muted;
    }

    public void setVolume(int i) {
        if (i >= getMinVolume() && i <= getMaxVolume()) {
            this.audioManager.setStreamVolume(this.streamType, i, 1);
            updateVolumeAndNotifyIfChanged();
        }
    }

    public void increaseVolume() {
        if (this.volume < getMaxVolume()) {
            this.audioManager.adjustStreamVolume(this.streamType, 1, 1);
            updateVolumeAndNotifyIfChanged();
        }
    }

    public void decreaseVolume() {
        if (this.volume > getMinVolume()) {
            this.audioManager.adjustStreamVolume(this.streamType, -1, 1);
            updateVolumeAndNotifyIfChanged();
        }
    }

    public void setMuted(boolean z) {
        if (Util.SDK_INT >= 23) {
            this.audioManager.adjustStreamVolume(this.streamType, z ? -100 : 100, 1);
        } else {
            this.audioManager.setStreamMute(this.streamType, z);
        }
        updateVolumeAndNotifyIfChanged();
    }

    public void release() {
        VolumeChangeReceiver volumeChangeReceiver = this.receiver;
        if (volumeChangeReceiver != null) {
            try {
                this.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (RuntimeException e) {
                Log.w(TAG, "Error unregistering stream volume receiver", e);
            }
            this.receiver = null;
        }
    }

    public void updateVolumeAndNotifyIfChanged() {
        int volumeFromManager = getVolumeFromManager(this.audioManager, this.streamType);
        boolean mutedFromManager = getMutedFromManager(this.audioManager, this.streamType);
        if (this.volume != volumeFromManager || this.muted != mutedFromManager) {
            this.volume = volumeFromManager;
            this.muted = mutedFromManager;
            this.listener.onStreamVolumeChanged(volumeFromManager, mutedFromManager);
        }
    }

    private static int getVolumeFromManager(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            Log.w(TAG, sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    private static boolean getMutedFromManager(AudioManager audioManager, int i) {
        if (Util.SDK_INT >= 23) {
            return audioManager.isStreamMute(i);
        }
        return getVolumeFromManager(audioManager, i) == 0;
    }

    /* loaded from: classes2.dex */
    public final class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
            StreamVolumeManager.this = r1;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ
                @Override // java.lang.Runnable
                public final void run() {
                    StreamVolumeManager.this.updateVolumeAndNotifyIfChanged();
                }
            });
        }
    }
}
