package com.tencent.thumbplayer.core.decoder;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import com.tencent.thumbplayer.core.common.TPCodecUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPPixelFormat;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.h.b;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class TPMediaCodecVideoDecoder extends TPBaseMediaCodecDecoder {
    private static final String DEVICE_NAME_VIVO_X5L = "vivo X5L";
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int PIXEL_STRIDE_CONTINUOUS = 1;
    private static final String TAG = "TPMediaCodecVideoDecode";
    private static final int YUV420P_PLANAR_COUNT = 3;
    private boolean mEnableMediaCodecOutputData = false;
    private String mMimeType = null;
    private int mVideoWidth = 0;
    private int mVideoHeight = 0;
    private int mCropLeft = 0;
    private int mCropRight = 0;
    private int mCropTop = 0;
    private int mCropBottom = 0;
    private int mRotation = 0;
    private byte[] mCsd0Data = null;
    private byte[] mCsd1Data = null;
    private byte[] mCsd2Data = null;

    public TPMediaCodecVideoDecoder(int i) {
        super(i);
    }

    private void copyVideoDataFromImage(Image image, TPFrameInfo tPFrameInfo) {
        if (image.getFormat() != 35) {
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 3;
            TPNativeLog.printLog(4, TAG, "copyVideoDataFromImage: image format not support!");
            return;
        }
        tPFrameInfo.format = 0;
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        if (tPFrameInfo.lineSize == null || tPFrameInfo.lineSize.length < 3) {
            tPFrameInfo.lineSize = new int[3];
        }
        if (tPFrameInfo.videoData == null || tPFrameInfo.videoData.length < 3) {
            tPFrameInfo.videoData = new byte[3];
        }
        int i = 0;
        while (i < 3) {
            int i2 = i == 0 ? 0 : 1;
            copyVideoDataFromPlane(planes[i], width >> i2, height >> i2, i, tPFrameInfo);
            i++;
        }
    }

    private void copyVideoDataFromPlane(Image.Plane plane, int i, int i2, int i3, TPFrameInfo tPFrameInfo) {
        ByteBuffer buffer = plane.getBuffer();
        tPFrameInfo.lineSize[i3] = i;
        int i4 = i * i2;
        if (tPFrameInfo.videoData[i3] == null || tPFrameInfo.videoData[i3].length < i4) {
            tPFrameInfo.videoData[i3] = new byte[i4];
        }
        if (plane.getPixelStride() == 1) {
            buffer.get(tPFrameInfo.videoData[i3], 0, i4);
            return;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            tPFrameInfo.videoData[i3][i5] = buffer.get(plane.getPixelStride() * i5);
        }
    }

    private void processOutputData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        if (bufferInfo.flags != 4 || bufferInfo.size > 0) {
            Image b = bVar.b(i);
            if (b == null) {
                tPFrameInfo.format = -1;
                tPFrameInfo.errCode = 3;
                bVar.a(i, false);
                TPNativeLog.printLog(4, TAG, "processOutputBuffer: getOutputImage return null");
                return;
            }
            copyVideoDataFromImage(b, tPFrameInfo);
            bVar.a(i, false);
            return;
        }
        TPNativeLog.printLog(2, TAG, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!");
        tPFrameInfo.format = -1;
        tPFrameInfo.errCode = 2;
        bVar.a(i, false);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void configCodec(b bVar) {
        Surface surface;
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(this.mMimeType, this.mVideoWidth, this.mVideoHeight);
        if (Build.VERSION.SDK_INT > 22) {
            createVideoFormat.setInteger("rotation-degrees", this.mRotation);
        }
        if (TPSystemInfo.getDeviceName().equalsIgnoreCase(DEVICE_NAME_VIVO_X5L)) {
            createVideoFormat.setInteger("max-input-size", this.mVideoWidth * this.mVideoHeight);
        }
        byte[] bArr = this.mCsd0Data;
        if (bArr != null) {
            createVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
        }
        byte[] bArr2 = this.mCsd1Data;
        if (bArr2 != null) {
            createVideoFormat.setByteBuffer("csd-1", ByteBuffer.wrap(bArr2));
        }
        byte[] bArr3 = this.mCsd2Data;
        if (bArr3 != null) {
            createVideoFormat.setByteBuffer("csd-2", ByteBuffer.wrap(bArr3));
        }
        if (this.mMimeType.equals("video/dolby-vision")) {
            createVideoFormat.setInteger(Scopes.PROFILE, TPCodecUtils.convertDolbyVisionToOmxProfile(this.mDolbyVisionProfile));
            createVideoFormat.setInteger("level", TPCodecUtils.convertDolbyVisionToOmxLevel(this.mDolbyVisionLevel));
        }
        if (!this.mEnableMediaCodecOutputData || Build.VERSION.SDK_INT < 21) {
            surface = this.mSurface;
        } else {
            createVideoFormat.setInteger("color-format", 2135033992);
            surface = null;
        }
        bVar.a(createVideoFormat, surface, this.mMediaCrypto, 0);
        bVar.d(1);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    String getLogTag() {
        return TAG;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    String getMimeType() {
        return this.mMimeType;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i, int i2, int i3, int i4) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i, int i2, int i3, Surface surface, int i4, int i5, int i6) {
        this.mMimeType = str;
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.mRotation = i3;
        this.mSurface = surface;
        this.mDrmType = i4;
        this.mDolbyVisionProfile = i5;
        this.mDolbyVisionLevel = i6;
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processMediaCodecException(Exception exc) {
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputBuffer(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        tPFrameInfo.width = this.mVideoWidth;
        tPFrameInfo.height = this.mVideoHeight;
        tPFrameInfo.cropLeft = this.mCropLeft;
        tPFrameInfo.cropRight = this.mCropRight;
        tPFrameInfo.cropTop = this.mCropTop;
        tPFrameInfo.cropBottom = this.mCropBottom;
        tPFrameInfo.format = TPPixelFormat.TP_PIX_FMT_MEDIACODEC;
        if (this.mEnableMediaCodecOutputData) {
            processOutputData(bVar, i, bufferInfo, tPFrameInfo);
        }
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputConfigData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        tPFrameInfo.errCode = 0;
        processOutputBuffer(bVar, i, bufferInfo, tPFrameInfo);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputFormatChanged(MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
        this.mVideoWidth = mediaFormat.getInteger("width");
        this.mVideoHeight = mediaFormat.getInteger("height");
        if (z) {
            this.mCropLeft = mediaFormat.getInteger(KEY_CROP_LEFT);
            this.mCropRight = mediaFormat.getInteger(KEY_CROP_RIGHT);
            this.mCropTop = mediaFormat.getInteger(KEY_CROP_TOP);
            this.mCropBottom = mediaFormat.getInteger(KEY_CROP_BOTTOM);
        }
        TPNativeLog.printLog(2, TAG, "processOutputFormatChanged: mVideoWidth: " + this.mVideoWidth + ", mVideoHeight: " + this.mVideoHeight + ", mCropLeft: " + this.mCropLeft + ", mCropRight: " + this.mCropRight + ", mCropTop: " + this.mCropTop + ", mCropBottom: " + this.mCropBottom);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f) {
        return super.setOperateRate(f);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        if (this.mEnableMediaCodecOutputData) {
            return 3;
        }
        return super.setOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i, boolean z) {
        if (i == 5) {
            if (this.mStarted || Build.VERSION.SDK_INT < 21) {
                String logTag = getLogTag();
                TPNativeLog.printLog(3, logTag, "BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA failed. need set before start, mStart=" + this.mStarted + ", api level is " + Build.VERSION.SDK_INT + ", support api level = 21");
            } else {
                this.mEnableMediaCodecOutputData = z;
            }
        }
        return super.setParamBool(i, z);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i, byte[] bArr) {
        if (i == 200) {
            this.mCsd0Data = bArr;
        } else if (i == 201) {
            this.mCsd1Data = bArr;
        } else if (i == 202) {
            this.mCsd2Data = bArr;
        }
        return super.setParamBytes(i, bArr);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i, Object obj) {
        return super.setParamObject(i, obj);
    }
}
