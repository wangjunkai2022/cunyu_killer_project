package com.tencent.liteav.audio.impl.Play;

import android.media.AudioTrack;
import android.os.Process;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class TXCAudioPlayout {
    private static final String TAG = "TXCAudioPlayout";
    private AudioTrack mAudioTrack;
    private byte[] mPlayBuffer;

    public boolean startPlayout(int i, int i2, int i3, int i4) {
        int[] iArr = {i4, 0, 3, 1};
        int i5 = i2 == 1 ? 4 : 12;
        int minBufferSize = AudioTrack.getMinBufferSize(i, i5, 2);
        if (minBufferSize <= 0) {
            TXCLog.e(TAG, "AudioTrack.getMinBufferSize returns invalid value: " + minBufferSize);
            return false;
        }
        for (int i6 = 0; i6 < iArr.length && this.mAudioTrack == null; i6++) {
            int i7 = iArr[i6];
            for (int i8 = 1; i8 <= 2 && this.mAudioTrack == null; i8++) {
                int i9 = minBufferSize * i8;
                if (i9 >= i3 * 4 || i8 >= 2) {
                    this.mAudioTrack = createStartedAudioTrack(i, i5, i9, i7);
                }
            }
        }
        Thread.currentThread().setName("tx_audio_playout");
        Process.setThreadPriority(-19);
        return this.mAudioTrack != null;
    }

    private static AudioTrack createStartedAudioTrack(int i, int i2, int i3, int i4) {
        AudioTrack audioTrack;
        try {
            audioTrack = new AudioTrack(i4, i, i2, 2, i3, 1);
            try {
                if (audioTrack.getState() == 1) {
                    audioTrack.play();
                    TXCLog.i(TAG, "create AudioTrack success. samplerate: %d, channelConfig: %d, bufferSize: %d, streamType: %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), streamTypeToText(i4));
                    return audioTrack;
                }
                throw new RuntimeException("AudioTrack is not initialized.");
            } catch (Exception unused) {
                TXCLog.w(TAG, "create AudioTrack failed. samplerate: %d, channelConfig: %d, bufferSize: %d, streamType: %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), streamTypeToText(i4));
                tearDownAudioTrack(audioTrack);
                return null;
            }
        } catch (Exception unused2) {
            audioTrack = null;
        }
    }

    private static void tearDownAudioTrack(AudioTrack audioTrack) {
        if (audioTrack != null) {
            try {
                if (audioTrack.getPlayState() == 3) {
                    audioTrack.stop();
                    audioTrack.flush();
                }
                audioTrack.release();
            } catch (Exception e) {
                TXCLog.e(TAG, "stop AudioTrack failed.", e);
            }
        }
    }

    private static String streamTypeToText(int i) {
        if (i == 0) {
            return "STREAM_VOICE_CALL";
        }
        if (i == 3) {
            return "STREAM_MUSIC";
        }
        return "UNSUPPORT " + i;
    }

    public int write(ByteBuffer byteBuffer, int i, int i2) {
        int i3;
        if (this.mAudioTrack == null) {
            return -1;
        }
        byteBuffer.position(i);
        if (TXCBuild.VersionInt() >= 21) {
            i3 = this.mAudioTrack.write(byteBuffer, i2, 0);
        } else {
            byte[] bArr = this.mPlayBuffer;
            if (bArr == null || bArr.length < i2) {
                this.mPlayBuffer = new byte[i2];
            }
            byteBuffer.get(this.mPlayBuffer, 0, i2);
            i3 = this.mAudioTrack.write(this.mPlayBuffer, 0, i2);
        }
        if (i3 > 0) {
            return i3;
        }
        TXCLog.e(TAG, "write audio data to AudioTrack failed. " + i3);
        return -1;
    }

    public void stopPlayout() {
        tearDownAudioTrack(this.mAudioTrack);
        this.mAudioTrack = null;
    }
}
