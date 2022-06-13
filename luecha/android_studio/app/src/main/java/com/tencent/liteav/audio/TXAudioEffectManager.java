package com.tencent.liteav.audio;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TXAudioEffectManager {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface TXMusicPlayObserver {
        void onComplete(int i, int i2);

        void onPlayProgress(int i, long j, long j2);

        void onStart(int i, int i2);
    }

    void enableVoiceEarMonitor(boolean z);

    long getMusicCurrentPosInMS(int i);

    long getMusicDurationInMS(String str);

    void pausePlayMusic(int i);

    void resumePlayMusic(int i);

    void seekMusicToPosInMS(int i, int i2);

    void setAllMusicVolume(int i);

    void setMusicObserver(int i, TXMusicPlayObserver tXMusicPlayObserver);

    void setMusicPitch(int i, float f);

    void setMusicPlayoutVolume(int i, int i2);

    void setMusicPublishVolume(int i, int i2);

    void setMusicSpeedRate(int i, float f);

    void setVoiceCaptureVolume(int i);

    void setVoiceChangerType(TXVoiceChangerType tXVoiceChangerType);

    void setVoiceEarMonitorVolume(int i);

    void setVoicePitch(double d);

    void setVoiceReverbType(TXVoiceReverbType tXVoiceReverbType);

    boolean startPlayMusic(AudioMusicParam audioMusicParam);

    void stopPlayMusic(int i);

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum TXVoiceReverbType {
        TXLiveVoiceReverbType_0(0),
        TXLiveVoiceReverbType_1(1),
        TXLiveVoiceReverbType_2(2),
        TXLiveVoiceReverbType_3(3),
        TXLiveVoiceReverbType_4(4),
        TXLiveVoiceReverbType_5(5),
        TXLiveVoiceReverbType_6(6),
        TXLiveVoiceReverbType_7(7),
        TXLiveVoiceReverbType_8(8),
        TXLiveVoiceReverbType_9(9),
        TXLiveVoiceReverbType_10(10),
        TXLiveVoiceReverbType_11(11),
        TXLiveVoiceReverbType_12(12);
        
        private int nativeValue;

        TXVoiceReverbType(int i) {
            this.nativeValue = i;
        }

        public int getNativeValue() {
            return this.nativeValue;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum TXVoiceChangerType {
        TXLiveVoiceChangerType_0(0),
        TXLiveVoiceChangerType_1(1),
        TXLiveVoiceChangerType_2(2),
        TXLiveVoiceChangerType_3(3),
        TXLiveVoiceChangerType_4(4),
        TXLiveVoiceChangerType_5(5),
        TXLiveVoiceChangerType_6(6),
        TXLiveVoiceChangerType_7(7),
        TXLiveVoiceChangerType_8(8),
        TXLiveVoiceChangerType_9(9),
        TXLiveVoiceChangerType_10(10),
        TXLiveVoiceChangerType_11(11);
        
        private int nativeValue;

        TXVoiceChangerType(int i) {
            this.nativeValue = i;
        }

        public int getNativeValue() {
            return this.nativeValue;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class AudioMusicParam {
        public int id;
        public String path;
        public int loopCount = 0;
        public boolean publish = false;
        public boolean isShortFile = false;
        public long startTimeMS = 0;
        public long endTimeMS = -1;

        public AudioMusicParam(int i, String str) {
            this.path = str;
            this.id = i;
        }

        public String toString() {
            return "path=" + this.path + ", id=" + this.id + ", loopCount=" + this.loopCount + ", publish=" + this.publish + ", isShortFile=" + this.isShortFile + ", startTimeMS=" + this.startTimeMS + ", endTimeMS=" + this.endTimeMS;
        }
    }
}
