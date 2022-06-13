package com.tencent.liteav.audio.impl.Record;

import android.media.AudioRecord;
import android.os.Process;
import com.tencent.liteav.basic.log.TXCLog;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class TXCAudioCapturer {
    private static final String TAG = "TXCAudioCapturer";
    private AudioRecord mAudioRecord;

    public boolean startRecord(int i, int i2, int i3, int i4) {
        int[] iArr = {i, 1, 5, 0};
        int i5 = i3 == 1 ? 16 : 12;
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i5, 2);
        if (minBufferSize <= 0) {
            TXCLog.e(TAG, "AudioRecord.getMinBufferSize returns invalid value: " + minBufferSize);
            return false;
        }
        for (int i6 = 0; i6 < iArr.length && this.mAudioRecord == null; i6++) {
            int i7 = iArr[i6];
            for (int i8 = 1; i8 <= 2 && this.mAudioRecord == null; i8++) {
                int i9 = minBufferSize * i8;
                if (i9 >= i4 * 4 || i8 >= 2) {
                    this.mAudioRecord = createStartedAudioRecord(i7, i2, i5, i9);
                }
            }
        }
        Thread.currentThread().setName("tx_audio_capturer");
        Process.setThreadPriority(-19);
        return this.mAudioRecord != null;
    }

    private static AudioRecord createStartedAudioRecord(int i, int i2, int i3, int i4) {
        AudioRecord audioRecord;
        try {
            audioRecord = new AudioRecord(i, i2, i3, 2, i4);
        } catch (Exception unused) {
            audioRecord = null;
        }
        try {
            if (audioRecord.getState() == 1) {
                audioRecord.startRecording();
                return audioRecord;
            }
            throw new RuntimeException("AudioRecord is not initialized.");
        } catch (Exception unused2) {
            TXCLog.w(TAG, "create AudioRecord failed. source: %s, samplerate: %d, channelConfig: %d, bufferSize: %d", audioSourceToText(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            tearDownAudioRecord(audioRecord);
            return null;
        }
    }

    private static void tearDownAudioRecord(AudioRecord audioRecord) {
        if (audioRecord != null) {
            try {
                if (audioRecord.getRecordingState() == 3) {
                    audioRecord.stop();
                }
                audioRecord.release();
            } catch (Exception e) {
                TXCLog.e(TAG, "stop AudioRecord failed.", e);
            }
        }
    }

    private static String audioSourceToText(int i) {
        if (i == 1) {
            return "MIC";
        }
        if (i == 7) {
            return "VOICE_COMMUNICATION";
        }
        return "UNSUPPORT " + i;
    }

    public int read(ByteBuffer byteBuffer, int i) {
        if (this.mAudioRecord == null) {
            return -1;
        }
        byteBuffer.position(0);
        int read = this.mAudioRecord.read(byteBuffer, i);
        if (read > 0) {
            return read;
        }
        TXCLog.e(TAG, "read failed, %d", Integer.valueOf(read));
        return -1;
    }

    public void stopRecord() {
        tearDownAudioRecord(this.mAudioRecord);
        this.mAudioRecord = null;
    }
}
