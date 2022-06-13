package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.rtmp.TXLiveConstants;
import com.tencent.thumbplayer.core.common.TPCodecCapability;
import com.tencent.thumbplayer.core.common.TPMediaDecoderInfo;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class TPCodecUtils {
    public static final int CAP_AUDIO_AAC = 8;
    public static final int CAP_AUDIO_DD = 16;
    public static final int CAP_AUDIO_DDP = 32;
    public static final int CAP_AUDIO_DTS = 128;
    public static final int CAP_AUDIO_FLAC = 64;
    public static final int CAP_VIDEO_AVC = 1;
    public static final int CAP_VIDEO_HEVC = 2;
    public static final int CAP_VIDEO_VP9 = 4;
    public static final int PLAYER_LEVEL_1 = 1;
    public static final int PLAYER_LEVEL_11 = 11;
    public static final int PLAYER_LEVEL_16 = 16;
    public static final int PLAYER_LEVEL_21 = 21;
    public static final int PLAYER_LEVEL_26 = 26;
    public static final int PLAYER_LEVEL_28 = 28;
    public static final int PLAYER_LEVEL_33 = 33;
    public static final int PLAYER_LEVEL_6 = 6;
    private static final String TAG = "TPCodecUtils";
    private static int mAACMaxSupportedBitrate = 510000;
    private static int mAACMaxSupportedChannels = 8;
    private static int mAACMaxSupportedSamplerate = 96000;
    private static int mAvs3DeviceLevel = -1;
    private static HashMap<String, Integer> mCodecCapBlackList = null;
    private static Context mContext = null;
    private static int mDDPMaxSupportedBitrate = 6144000;
    private static int mDDPMaxSupportedChannels = 8;
    private static int mDDPMaxSupportedSamplerate = 48000;
    private static int mFLACMaxSupportedBitrate = 21000000;
    private static int mFLACMaxSupportedChannels = 8;
    private static int mFLACMaxSupportedSamplerate = 192000;
    private static int mHevcDeviceLevel = -1;
    private static LocalCache mLocalCache;
    protected static ArrayList<String> mVMediaCodecCapList = new ArrayList<>();
    protected static ArrayList<String> mAMediaCodecCapList = new ArrayList<>();
    private static ArrayList<String> mVMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListInstance = new ArrayList<>();
    private static ArrayList<String> mSupportedMediaCodec = new ArrayList<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrWhiteMap = new HashMap<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrBlackMap = new HashMap<>();
    private static HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> mHDRVividSupportVersionMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRSoftwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRHardwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<String, String> mAudioMaxCapCodecInstance = new HashMap<>();
    private static ArrayList<String> mWideVineBlackListModel = new ArrayList<>();
    private static HashMap<Integer, ArrayList<String>> mDrmL1BlackList = new HashMap<>();
    private static boolean mIsInitDone = false;
    private static int mShdHevcQualcommIndex = 32;
    private static int mHdHevcQualcommIndex = 20;
    private static int mShdHevcMtkIndex = 12;
    private static int mHdHevcMtkIndex = 8;
    private static int mShdHevcHisiIndex = 8;
    private static int mHdHevcHisiIndex = 3;
    private static int mShdHevcSumsingIndex = 8;
    private static int mHdHevcSumsingIndex = 5;
    private static int mFhdAvs3QualcommIndex = 58;
    private static int mShdAvs3QualcommIndex = 55;
    private static int mFhdAvs3HisiIndex = 14;
    private static HashMap<String, Integer> mCodecCapWhiteList = new HashMap<>();
    private static boolean mIsFFmpegCapGot = false;
    private static TPCodecCapability.TPCodecMaxCapability mAVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
    private static TPCodecCapability.TPCodecMaxCapability mHEVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
    private static TPCodecCapability.TPCodecMaxCapability mVP9SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
    private static TPCodecCapability.TPCodecMaxCapability mAVS3WMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
    private static TPCodecCapability.TPCodecMaxCapability mAV1SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecHwCapabilityMap = new HashMap<>();
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecSwCapabilityMap = new HashMap<>();
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecHwCapabilityMap = new HashMap<>();
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecSwCapabilityMap = new HashMap<>();

    static {
        mCodecCapWhiteList.put("NX511J", 11);
        mCodecCapWhiteList.put("Hi3798MV100", 11);
        mCodecCapWhiteList.put("长虹智能电视", 11);
        mCodecCapWhiteList.put("Android TV on Tcl 901", 11);
        mCodecCapWhiteList.put("xt880b", 11);
        TPNativeLog.printLog(2, TAG, "white list init");
        mSupportedMediaCodec.add("video/avc");
        mSupportedMediaCodec.add("video/hevc");
        mSupportedMediaCodec.add("video/x-vnd.on2.vp9");
        mSupportedMediaCodec.add("video/av01");
        mSupportedMediaCodec.add(MimeTypes.AUDIO_AAC);
        mSupportedMediaCodec.add(MimeTypes.AUDIO_AC3);
        mSupportedMediaCodec.add(MimeTypes.AUDIO_E_AC3);
        mSupportedMediaCodec.add(MimeTypes.AUDIO_E_AC3_JOC);
        mSupportedMediaCodec.add(MimeTypes.AUDIO_FLAC);
        mSupportedMediaCodec.add(MimeTypes.AUDIO_DTS);
        mAMediaCodecBlackListInstance.add("OMX.qti.audio.decoder.flac");
        mVMediaCodecBlackListModel.add("SM-J7008");
        mVMediaCodecBlackListModel.add("SM-J5008");
        mVMediaCodecBlackListModel.add("TCL i806");
        mVMediaCodecBlackListModel.add("NX511J");
        mVMediaCodecBlackListModel.add("vivo Y11i T");
        mVMediaCodecBlackListModel.add("长虹智能电视");
        mVMediaCodecBlackListModel.add("MI 1S");
        mVMediaCodecBlackListModel.add("SP9832A");
        mVMediaCodecBlackListModel.add("SP9830A");
        mVMediaCodecBlackListModel.add("VOTO GT17");
        mVMediaCodecBlackListModel.add("EVA-AL10");
        mHDRVividSupportVersionMap.put("TAS-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00P", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00m", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100166, 99, 3));
        mHDRVividSupportVersionMap.put("MRX-AL09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AL19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AN19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W39", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("OCE-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-NX9", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN01", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOP-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL60", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550X", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550AX", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("PLAT-760", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200172, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-359", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-369", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-580", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("FREG-770", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-220", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-270", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200547, 99, 0));
        mHDRVividSupportVersionMap.put("SOKR-790A", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("VOLT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mWideVineBlackListModel.add("RVL-AL09");
        mWideVineBlackListModel.add("CLT-L29");
        mWideVineBlackListModel.add("ASUS_Z00AD");
        mWideVineBlackListModel.add(TPSystemInfo.getDeviceName());
        mDrmL1BlackList.put(0, mWideVineBlackListModel);
    }

    public static boolean addDRMLevel1Blacklist(int i) {
        if (!mDrmL1BlackList.containsKey(Integer.valueOf(i))) {
            return true;
        }
        ArrayList<String> arrayList = mDrmL1BlackList.get(Integer.valueOf(i));
        if (!arrayList.contains(TPSystemInfo.getDeviceName())) {
            arrayList.add(TPSystemInfo.getDeviceName());
        }
        mDrmL1BlackList.remove(Integer.valueOf(i));
        mDrmL1BlackList.put(Integer.valueOf(i), arrayList);
        return true;
    }

    public static boolean addHDRBlackList(int i, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrBlackMap.containsKey(Integer.valueOf(i))) {
            hashMap = mHdrBlackMap.get(Integer.valueOf(i));
            mHdrBlackMap.remove(Integer.valueOf(i));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrBlackMap.put(Integer.valueOf(i), hashMap);
        return true;
    }

    private static void addHDRVersionRangeToWhiteList(int i, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap) {
        ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList = hashMap.containsKey(Integer.valueOf(i)) ? hashMap.get(Integer.valueOf(i)) : new ArrayList<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (isTheSameVersionRange(tPHdrSupportVersionRange, arrayList.get(i2))) {
                return;
            }
        }
        arrayList.add(tPHdrSupportVersionRange);
        hashMap.put(Integer.valueOf(i), arrayList);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i, int i2, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap;
        if (i2 == 101) {
            hashMap = mHDRTypeToHDRSoftwareCodecWhiteListMap;
        } else if (i2 != 102) {
            TPNativeLog.printLog(3, TAG, "addHDRVideoDecoderTypeWhiteList, decoder not support.");
            return false;
        } else {
            hashMap = mHDRTypeToHDRHardwareCodecWhiteListMap;
        }
        addHDRVersionRangeToWhiteList(i, tPHdrSupportVersionRange, hashMap);
        return true;
    }

    public static boolean addHDRWhiteList(int i, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrWhiteMap.containsKey(Integer.valueOf(i))) {
            hashMap = mHdrWhiteMap.get(Integer.valueOf(i));
            mHdrWhiteMap.remove(Integer.valueOf(i));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrWhiteMap.put(Integer.valueOf(i), hashMap);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0138  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static boolean checkHDRVividSupportByVersion(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
        // Method dump skipped, instructions count: 402
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.checkHDRVividSupportByVersion(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static int convertDolbyVisionToOmxLevel(int i) {
        int i2 = 1 << i;
        if (i2 < 1 || i2 > 256) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel Unsupported level" + i);
            return i;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel dolbyVisionLevel:" + i + " omxLevel:" + i2);
        return i2;
    }

    public static int convertDolbyVisionToOmxProfile(int i) {
        int i2 = 1 << i;
        if (i < 1 || i > 512) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile Unsupported profile" + i);
            return i;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile dolbyVisionProfile:" + i + " omxProfile:" + i2);
        return i2;
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getACodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getACodecSWMaxCapabilityMap func in");
            if (!mMaxACodecSwCapabilityMap.isEmpty()) {
                return mMaxACodecSwCapabilityMap;
            }
            try {
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, mAACMaxSupportedSamplerate, mAACMaxSupportedBitrate, mAACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mFLACMaxSupportedSamplerate, mFLACMaxSupportedBitrate, mFLACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability4 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                mMaxACodecSwCapabilityMap.put(5002, tPCodecMaxCapability);
                mMaxACodecSwCapabilityMap.put(5012, tPCodecMaxCapability2);
                mMaxACodecSwCapabilityMap.put(5003, tPCodecMaxCapability3);
                mMaxACodecSwCapabilityMap.put(5040, tPCodecMaxCapability4);
                TPNativeLog.printLog(2, "getACodecSWMaxCapabilityMap success.");
                return mMaxACodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getACodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getAMediaCodecMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getAMediaCodecMaxCapabilityMap func in");
            if (!mMaxACodecHwCapabilityMap.isEmpty()) {
                TPNativeLog.printLog(2, TAG, "return memory stored audio max cap map");
                return mMaxACodecHwCapabilityMap;
            }
            try {
                TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
                for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isAudio() && isSupportedMediaCodec(decoderMimeType) && !isInMediaCodecBlackList(decoderMimeType) && !isAMediaCodecBlackListInstance(tPMediaDecoderInfo.getDecoderName())) {
                        TPNativeLog.printLog(2, TAG, "Audio MimeType: " + decoderMimeType + " codecName: " + tPMediaDecoderInfo.getDecoderName());
                        TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getMaxAudioSampleRate(), tPMediaDecoderInfo.getMaxAudioBitRate(), tPMediaDecoderInfo.getMaxAudioChannels());
                        if (!mMaxACodecHwCapabilityMap.containsKey(Integer.valueOf(getSupportedCodecId(decoderMimeType)))) {
                            TPNativeLog.printLog(2, TAG, "audio codecName: " + tPMediaDecoderInfo.getDecoderName() + " maxSamplerate: " + tPMediaDecoderInfo.getMaxAudioSampleRate() + " maxChannels: " + tPMediaDecoderInfo.getMaxAudioChannels());
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                            mAMediaCodecCapList.add(decoderMimeType);
                        } else if (tPMediaDecoderInfo.getMaxAudioSampleRate() > mMaxACodecHwCapabilityMap.get(Integer.valueOf(getSupportedCodecId(decoderMimeType))).maxSampleRate || TextUtils.equals(decoderMimeType, MimeTypes.AUDIO_E_AC3_JOC)) {
                            TPNativeLog.printLog(2, TAG, "audio codecName: " + tPMediaDecoderInfo.getDecoderName() + " maxSamplerate: " + tPMediaDecoderInfo.getMaxAudioSampleRate() + " maxChannels: " + tPMediaDecoderInfo.getMaxAudioChannels());
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                        }
                    }
                }
            } catch (Exception e) {
                TPNativeLog.printLog(4, TAG, "getAMediaCodecMaxCapabilityMap failed:" + e.getMessage());
            }
            return mMaxACodecHwCapabilityMap;
        }
    }

    public static int getAV1SWDecodeLevel() {
        return getDecodeLevelByCoresAndFreq();
    }

    public static boolean getAudioMediaCodecPassThroughCap(int i, int i2, int i3) {
        if (i != 5004) {
            return false;
        }
        int i4 = 1;
        if (i2 == 20) {
            i4 = 7;
        } else if (i2 == 50 || i2 == 60) {
            i4 = 8;
        }
        return TPAudioPassThroughPluginDetector.isAudioPassThroughSupport(i4, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
        if (r1 != 3) goto L_0x007b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3HisiIndex) goto L_0x005a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static int getAvs3SWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "[getAvs3SWDecodeLevel], mCpuHWProducter = "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel
            r4 = -1
            if (r4 == r0) goto L_0x0051
            return r0
        L_0x0051:
            r0 = 0
            com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
            if (r4 != r1) goto L_0x005d
        L_0x0056:
            int r0 = getDecodeLevelByCoresAndFreq()
        L_0x005a:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
            goto L_0x007b
        L_0x005d:
            r0 = 26
            if (r1 == 0) goto L_0x006f
            r4 = 1
            if (r1 == r4) goto L_0x0056
            if (r1 == r3) goto L_0x006a
            r0 = 3
            if (r1 == r0) goto L_0x0056
            goto L_0x007b
        L_0x006a:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3HisiIndex
            if (r2 < r1) goto L_0x0056
            goto L_0x0073
        L_0x006f:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3QualcommIndex
            if (r2 < r1) goto L_0x0074
        L_0x0073:
            goto L_0x005a
        L_0x0074:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdAvs3QualcommIndex
            if (r2 < r0) goto L_0x0056
            r0 = 21
            goto L_0x005a
        L_0x007b:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getAvs3SWDecodeLevel():int");
    }

    private static int getDecodeLevelByCoresAndFreq() {
        if (TPSystemInfo.getNumCores() >= 8) {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 >= 1200) {
                return 21;
            }
        } else if (TPSystemInfo.getNumCores() >= 6) {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 >= 1400) {
                return 21;
            }
        } else if (TPSystemInfo.getNumCores() < 4) {
            return 6;
        } else {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 >= 1600) {
                return 21;
            }
        }
        return 16;
    }

    public static synchronized void getDecoderMaxCapabilityMapAsync() {
        synchronized (TPCodecUtils.class) {
            if (mIsInitDone) {
                TPNativeLog.printLog(2, TAG, "decoder capability already init,return directly!");
                return;
            }
            TPNativeLog.printLog(2, TAG, "decoder capability not init,acquire async with create thread!");
            Thread thread = new Thread(new Runnable() { // from class: com.tencent.thumbplayer.core.common.TPCodecUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    TPCodecUtils.getVMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getAMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getVCodecSWMaxCapabilityMap();
                    TPCodecUtils.getACodecSWMaxCapabilityMap();
                    boolean unused = TPCodecUtils.mIsInitDone = true;
                    TPNativeLog.printLog(2, TPCodecUtils.TAG, "new thread getDecoderMaxCapabilityMap done");
                }
            });
            thread.setName("TP_codec_init_thread");
            thread.start();
        }
    }

    public static String getDecoderName(String str, boolean z) {
        if (!str.contains("audio")) {
            TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
            for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                if (TextUtils.equals(str, tPMediaDecoderInfo.getDecoderMimeType()) && tPMediaDecoderInfo.isSecureDecoder() == z) {
                    TPNativeLog.printLog(2, TAG, "getDecoderName:" + tPMediaDecoderInfo.getDecoderName());
                    return tPMediaDecoderInfo.getDecoderName();
                }
            }
            return null;
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_E_AC3) && mAudioMaxCapCodecInstance.containsKey(MimeTypes.AUDIO_E_AC3_JOC)) {
            return mAudioMaxCapCodecInstance.get(MimeTypes.AUDIO_E_AC3_JOC);
        } else {
            if (mAudioMaxCapCodecInstance.containsKey(str)) {
                return mAudioMaxCapCodecInstance.get(str);
            }
            return null;
        }
    }

    public static String getDisplayVersion() {
        if (!TextUtils.equals(Build.BRAND, "HUAWEI")) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.display.id");
        } catch (Exception e) {
            TPNativeLog.printLog(4, TAG, "get huawei display version failed:" + e.getMessage());
            return null;
        }
    }

    public static String getDolbyVisionDecoderName(String str, int i, int i2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21 && TextUtils.equals("video/dolby-vision", str)) {
            int convertDolbyVisionToOmxProfile = convertDolbyVisionToOmxProfile(i);
            TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
            for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels = tPMediaDecoderInfo.getProfileLevels();
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), str)) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : profileLevels) {
                        if (decoderProfileLevel.profile == convertDolbyVisionToOmxProfile) {
                            TPNativeLog.printLog(2, TAG, "getDolbyVisionDecoderName  profile:" + decoderProfileLevel.profile + " dvProfile:" + i + " bSecure:" + z + " name:" + tPMediaDecoderInfo.getDecoderName());
                            if (tPMediaDecoderInfo.isSecureDecoder() == z) {
                                return tPMediaDecoderInfo.getDecoderName();
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcSumsingIndex) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007d, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcHisiIndex) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcMtkIndex) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0093, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcQualcommIndex) goto L_0x005a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static int getHevcSWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "[getHevcSWDecodeLevel], mCpuHWProducter = "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel
            r4 = -1
            if (r4 == r0) goto L_0x0051
            return r0
        L_0x0051:
            r0 = 0
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r0
            if (r4 != r1) goto L_0x005d
        L_0x0056:
            int r0 = getDecodeLevelByCoresAndFreq()
        L_0x005a:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r0
            goto L_0x0096
        L_0x005d:
            r0 = 16
            r4 = 21
            if (r1 == 0) goto L_0x008a
            r5 = 1
            if (r1 == r5) goto L_0x0080
            if (r1 == r3) goto L_0x0076
            r3 = 3
            if (r1 == r3) goto L_0x006c
            goto L_0x0096
        L_0x006c:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcSumsingIndex
            if (r2 < r1) goto L_0x0071
            goto L_0x008e
        L_0x0071:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcSumsingIndex
            if (r2 < r1) goto L_0x0056
            goto L_0x0095
        L_0x0076:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcHisiIndex
            if (r2 < r1) goto L_0x007b
            goto L_0x008e
        L_0x007b:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcHisiIndex
            if (r2 < r1) goto L_0x0056
            goto L_0x0095
        L_0x0080:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcMtkIndex
            if (r2 < r1) goto L_0x0085
            goto L_0x008e
        L_0x0085:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcMtkIndex
            if (r2 < r1) goto L_0x0056
            goto L_0x0095
        L_0x008a:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcQualcommIndex
            if (r2 < r1) goto L_0x0091
        L_0x008e:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r4
            goto L_0x0096
        L_0x0091:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcQualcommIndex
            if (r2 < r1) goto L_0x0056
        L_0x0095:
            goto L_0x005a
        L_0x0096:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getHevcSWDecodeLevel():int");
    }

    public static int getMaxLumaSample(String str, int i) {
        if (TextUtils.equals(str, "video/avc")) {
            return TPMediaCodecProfileLevel.getAVCMaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return TPMediaCodecProfileLevel.getHEVCMaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            return TPMediaCodecProfileLevel.getVP9MaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/av01")) {
            return TPMediaCodecProfileLevel.getAV1MaxLumaSample(i);
        }
        return 0;
    }

    public static synchronized int getMaxSupportedFrameRatesFor(int i, int i2, int i3, int i4) {
        synchronized (TPCodecUtils.class) {
            if (!(Build.VERSION.SDK_INT < 21 || i == 101 || i == -1)) {
                String supportedHWMimeType = getSupportedHWMimeType(i2);
                if (supportedHWMimeType.isEmpty()) {
                    return 30;
                }
                Integer num = 30;
                try {
                    TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
                    int length = tPMediaDecoderInfos.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        TPMediaDecoderInfo tPMediaDecoderInfo = tPMediaDecoderInfos[i5];
                        if (supportedHWMimeType.equals(tPMediaDecoderInfo.getDecoderMimeType())) {
                            int decoderMaxWidth = tPMediaDecoderInfo.getDecoderMaxWidth();
                            int decoderMaxHeight = tPMediaDecoderInfo.getDecoderMaxHeight();
                            int decoderLumaWidth = tPMediaDecoderInfo.getDecoderLumaWidth();
                            int decoderLumaHeight = tPMediaDecoderInfo.getDecoderLumaHeight();
                            int decoderMaxFrameRateForMaxLuma = tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma();
                            int decoderMaxFrameRate = tPMediaDecoderInfo.getDecoderMaxFrameRate();
                            if ((i3 <= i4 || (i3 <= decoderMaxWidth && i4 <= decoderLumaHeight)) && (i3 >= i4 || (i3 <= decoderLumaWidth && i4 <= decoderMaxHeight))) {
                                num = Integer.valueOf(Math.min(decoderMaxFrameRate, Math.max(1, ((int) ((((long) (decoderMaxWidth * decoderLumaHeight)) * 1) / Math.max(((long) (i3 * i4)) * 1, 1L))) * decoderMaxFrameRateForMaxLuma)));
                                TPNativeLog.printLog(2, TAG, "getSupportedFrameRatesFor max width:" + decoderMaxWidth + " max height:" + decoderLumaHeight + " max framerate for max resolution:" + decoderMaxFrameRateForMaxLuma + " current width:" + i3 + " height:" + i4 + " max support framerate:" + num);
                            } else {
                                TPNativeLog.printLog(4, TAG, "width:" + i3 + " height:" + i4 + " do not support! maxWidth:" + decoderMaxWidth + " maxHeight:" + decoderMaxHeight);
                                return 0;
                            }
                        } else {
                            i5++;
                        }
                    }
                } catch (Exception e) {
                    TPNativeLog.printLog(4, TAG, "getMaxSupportedFrameRatesFor failed:" + e.getMessage());
                }
                return num.intValue();
            }
            return 30;
        }
    }

    private static int getSoftMaxSamples(int i) {
        if (i == 1) {
            return 129600;
        }
        if (i == 6) {
            return 307200;
        }
        if (i == 11) {
            return 407040;
        }
        if (i != 16) {
            return i != 21 ? i != 26 ? i != 28 ? i != 33 ? 407040 : 8847360 : TXLiveConstants.VIDEO_RESOLUTION_2160X3840 : TXLiveConstants.VIDEO_RESOLUTION_1080X1920 : TXLiveConstants.VIDEO_RESOLUTION_720X1280;
        }
        return 480000;
    }

    private static int getSupportedCodecId(String str) {
        if (TextUtils.equals(str, "video/avc")) {
            return 26;
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return 172;
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            return 166;
        }
        if (TextUtils.equals(str, "video/av01")) {
            return 1029;
        }
        if (TextUtils.equals(str, MimeTypes.AUDIO_AAC)) {
            return 5002;
        }
        if (TextUtils.equals(str, MimeTypes.AUDIO_AC3)) {
            return 5003;
        }
        if (TextUtils.equals(str, MimeTypes.AUDIO_E_AC3) || TextUtils.equals(str, MimeTypes.AUDIO_E_AC3_JOC)) {
            return 5040;
        }
        if (TextUtils.equals(str, MimeTypes.AUDIO_FLAC)) {
            return 5012;
        }
        return TextUtils.equals(str, MimeTypes.AUDIO_DTS) ? 5004 : -1;
    }

    private static String getSupportedHWMimeType(int i) {
        return i != 26 ? i != 166 ? i != 172 ? i != 1029 ? "" : "video/av01" : "video/hevc" : "video/x-vnd.on2.vp9" : "video/avc";
    }

    public static String getSystemPatchVersion() {
        if (!TextUtils.equals(Build.BRAND, "HUAWEI")) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "hwouc.hwpatch.version");
        } catch (Exception e) {
            TPNativeLog.printLog(4, TAG, "get huawei system patch version failed:" + e.getMessage());
            return null;
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getVCodecSWMaxCapabilityMap func in");
            if (mIsFFmpegCapGot) {
                return mMaxVCodecSwCapabilityMap;
            }
            try {
                int hevcSWDecodeLevel = getHevcSWDecodeLevel();
                int softMaxSamples = getSoftMaxSamples(hevcSWDecodeLevel);
                int avs3SWDecodeLevel = getAvs3SWDecodeLevel();
                int aV1SWDecodeLevel = getAV1SWDecodeLevel();
                int softMaxSamples2 = getSoftMaxSamples(avs3SWDecodeLevel);
                int softMaxSamples3 = getSoftMaxSamples(aV1SWDecodeLevel);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap, hevcDecodeLevel:" + hevcSWDecodeLevel + ", avs3DecodeLevel:" + avs3SWDecodeLevel + ", AV1DecodeLevel:" + aV1SWDecodeLevel);
                mAVCSWMaxCapability.maxLumaSamples = softMaxSamples;
                mAVCSWMaxCapability.maxProfile = 64;
                mAVCSWMaxCapability.maxLevel = 65536;
                mMaxVCodecSwCapabilityMap.put(26, mAVCSWMaxCapability);
                mHEVCSWMaxCapability.maxLumaSamples = softMaxSamples;
                mHEVCSWMaxCapability.maxProfile = 2;
                mHEVCSWMaxCapability.maxLevel = TPMediaCodecProfileLevel.HEVCHighTierLevel62;
                mMaxVCodecSwCapabilityMap.put(172, mHEVCSWMaxCapability);
                mVP9SWMaxCapability.maxLumaSamples = softMaxSamples;
                mVP9SWMaxCapability.maxProfile = 8;
                mVP9SWMaxCapability.maxLevel = 8192;
                mMaxVCodecSwCapabilityMap.put(166, mVP9SWMaxCapability);
                mAVS3WMaxCapability.maxLumaSamples = softMaxSamples2;
                mAVS3WMaxCapability.maxProfile = 0;
                mAVS3WMaxCapability.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(192, mAVS3WMaxCapability);
                mAV1SWMaxCapability.maxLumaSamples = softMaxSamples3;
                mAV1SWMaxCapability.maxProfile = 0;
                mAV1SWMaxCapability.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(1029, mAV1SWMaxCapability);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap success, maxHevcLumaSamples:" + softMaxSamples + ", maxAvs3LumaSamples:" + softMaxSamples2 + ", maxAV1LumaSamples:" + softMaxSamples3);
                mIsFFmpegCapGot = true;
                return mMaxVCodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getVCodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVMediaCodecMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getVMediaCodecMaxCapabilityMap func in");
            if (!mMaxVCodecHwCapabilityMap.isEmpty()) {
                TPNativeLog.printLog(2, TAG, "return memory stored video max cap map");
                return mMaxVCodecHwCapabilityMap;
            }
            try {
                TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
                for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isVideo()) {
                        mVMediaCodecCapList.add(decoderMimeType);
                        TPNativeLog.printLog(2, TAG, "Video MimeType: " + decoderMimeType + " codecName: " + tPMediaDecoderInfo.getDecoderName());
                        if (isSupportedMediaCodec(decoderMimeType) && !tPMediaDecoderInfo.isSecureDecoder()) {
                            TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                            TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(getMaxLumaSample(decoderMimeType, maxProfileLevel.level), maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma());
                            TPNativeLog.printLog(2, TAG, "video codecName: " + tPMediaDecoderInfo.getDecoderName() + " lumasample: " + getMaxLumaSample(decoderMimeType, maxProfileLevel.level) + " framerate: " + tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma());
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxVCodecHwCapabilityMap);
                        }
                    }
                }
            } catch (Exception e) {
                TPNativeLog.printLog(4, TAG, "getVMediaCodecMaxCapabilityMap failed:" + Log.getStackTraceString(e));
            }
            return mMaxVCodecHwCapabilityMap;
        }
    }

    private static int getValueFromSubstring(String str, int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i2 >= str.length()) {
            i2 = str.length() - 1;
        }
        if (i > i2) {
            i = i2;
        }
        return Integer.parseInt(str.substring(i, i2));
    }

    public static synchronized void init(Context context, boolean z) {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "is local cache enabled:" + z);
            mContext = context.getApplicationContext();
            if (z) {
                mLocalCache = LocalCache.get(mContext);
            }
            getDecoderMaxCapabilityMapAsync();
        }
    }

    public static boolean isAMediaCodecBlackListInstance(String str) {
        return mAMediaCodecBlackListInstance.contains(str);
    }

    public static boolean isAMediaCodecBlackListModel() {
        return mAMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    public static boolean isBlackListType(String str) {
        return Arrays.asList("PRO 7 Plus", "PRO 7-H", "PRO+7+Plus").contains(TPSystemInfo.getDeviceName()) && TextUtils.equals(str, "video/hevc") && Build.VERSION.SDK_INT >= 14;
    }

    private static synchronized boolean isHDR10Support(int i) {
        synchronized (TPCodecUtils.class) {
            TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
            for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), "video/hevc")) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : tPMediaDecoderInfo.getProfileLevels()) {
                        if (decoderProfileLevel.profile == i) {
                            TPNativeLog.printLog(2, TAG, "support hdr10 " + i);
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    private static synchronized boolean isHDRDVSupport(int i, int i2) {
        synchronized (TPCodecUtils.class) {
            if (i == 0 && i2 == 0) {
                return mVMediaCodecCapList.contains("video/dolby-vision");
            }
            TPMediaDecoderInfo[] tPMediaDecoderInfos = TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache);
            for (TPMediaDecoderInfo tPMediaDecoderInfo : tPMediaDecoderInfos) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), "video/dolby-vision")) {
                    TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels = tPMediaDecoderInfo.getProfileLevels();
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : profileLevels) {
                        if (decoderProfileLevel.profile == i && decoderProfileLevel.level == i2) {
                            TPNativeLog.printLog(2, TAG, "support dolbyvision");
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    public static boolean isHDRDecoderTypeSupport(int i, int i2) {
        String str;
        if (i2 == 102 || i2 == 101) {
            HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap = i2 == 102 ? mHDRTypeToHDRHardwareCodecWhiteListMap : mHDRTypeToHDRSoftwareCodecWhiteListMap;
            if (hashMap.containsKey(Integer.valueOf(i))) {
                return isInHDRVersionRangeWhiteList(hashMap.get(Integer.valueOf(i)));
            }
            str = "isHDRDecodeTypeSupport, not config hdrType whiteList, hdrType = " + i;
        } else {
            str = "isHDRDecodeTypeSupport, not support decoderType, decoderType = " + i2;
        }
        TPNativeLog.printLog(3, TAG, str);
        return false;
    }

    public static boolean isHDRsupport(int i, int i2, int i3) {
        if (i == 2) {
            return isHDRDVSupport(i2, i3);
        }
        if (i == 0) {
            return isHDR10Support(4096);
        }
        if (i == 1) {
            return isHDR10Support(8192);
        }
        if (i != 4) {
            return false;
        }
        String displayVersion = getDisplayVersion();
        String systemPatchVersion = getSystemPatchVersion();
        TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):display version:" + displayVersion);
        TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):patch version:" + systemPatchVersion);
        return checkHDRVividSupportByVersion(TPSystemInfo.getDeviceName(), displayVersion, systemPatchVersion);
    }

    public static boolean isInDRMLevel1Blacklist(int i) {
        if (mDrmL1BlackList.containsKey(Integer.valueOf(i))) {
            return mDrmL1BlackList.get(Integer.valueOf(i)).contains(TPSystemInfo.getDeviceName());
        }
        return false;
    }

    private static boolean isInHDRVersionRangeWhiteList(ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList) {
        if (arrayList == null) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = arrayList.get(i);
            if (Build.VERSION.SDK_INT <= tPHdrSupportVersionRange.upperboundAndroidAPILevel && Build.VERSION.SDK_INT >= tPHdrSupportVersionRange.lowerboundAndroidAPILevel) {
                TPNativeLog.printLog(2, TAG, "inHDRVersionRangeWhiteList!");
                return true;
            }
        }
        return false;
    }

    public static boolean isInHDRVividBlackList(String str, int i, int i2) {
        if (mHdrBlackMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrBlackMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i <= tPHdrSupportVersionRange.upperboundSystemVersion && i >= tPHdrSupportVersionRange.lowerboundSystemVersion && i2 <= tPHdrSupportVersionRange.upperboundPatchVersion && i2 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInHDRVividWhiteList(String str, int i, int i2) {
        if (mHdrWhiteMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrWhiteMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i <= tPHdrSupportVersionRange.upperboundSystemVersion && i >= tPHdrSupportVersionRange.lowerboundSystemVersion && i2 <= tPHdrSupportVersionRange.upperboundPatchVersion && i2 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInMediaCodecBlackList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (TextUtils.isEmpty(deviceName) || (hashMap = mCodecCapBlackList) == null || !hashMap.containsKey(deviceName)) {
            return false;
        }
        Integer num = mCodecCapBlackList.get(deviceName);
        if (TextUtils.equals(str, "video/avc")) {
            if ((num.intValue() & 1) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/hevc")) {
            if ((num.intValue() & 2) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            if ((num.intValue() & 4) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_AAC)) {
            if ((num.intValue() & 8) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_AC3)) {
            if ((num.intValue() & 16) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_E_AC3)) {
            if ((num.intValue() & 32) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_FLAC)) {
            if ((num.intValue() & 64) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_DTS)) {
            if ((num.intValue() & 128) == 0) {
                return false;
            }
        } else if (!TextUtils.equals(str, MimeTypes.AUDIO_E_AC3_JOC) || (num.intValue() & 32) == 0) {
            return false;
        }
        return true;
    }

    public static boolean isInMediaCodecWhiteList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (TextUtils.isEmpty(deviceName) || (hashMap = mCodecCapWhiteList) == null || !hashMap.containsKey(deviceName)) {
            return false;
        }
        Integer num = mCodecCapWhiteList.get(deviceName);
        if (TextUtils.equals(str, "video/avc")) {
            if ((num.intValue() & 1) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/hevc")) {
            if ((num.intValue() & 2) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            if ((num.intValue() & 4) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_AAC)) {
            if ((num.intValue() & 8) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_AC3)) {
            if ((num.intValue() & 16) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_E_AC3)) {
            if ((num.intValue() & 32) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, MimeTypes.AUDIO_FLAC)) {
            if ((num.intValue() & 64) == 0) {
                return false;
            }
        } else if (!TextUtils.equals(str, MimeTypes.AUDIO_DTS) || (num.intValue() & 128) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (com.tencent.thumbplayer.core.common.TPCodecUtils.mAMediaCodecCapList.contains(com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC) != false) goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static synchronized boolean isMediaCodecDDPlusSupported() {
        /*
            java.lang.Class<com.tencent.thumbplayer.core.common.TPCodecUtils> r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.class
            monitor-enter(r0)
            boolean r1 = isAMediaCodecBlackListModel()     // Catch: all -> 0x0023
            r2 = 0
            if (r1 == 0) goto L_0x000c
            monitor-exit(r0)
            return r2
        L_0x000c:
            java.util.ArrayList<java.lang.String> r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAMediaCodecCapList     // Catch: all -> 0x0023
            java.lang.String r3 = "audio/eac3"
            boolean r1 = r1.contains(r3)     // Catch: all -> 0x0023
            if (r1 != 0) goto L_0x0020
            java.util.ArrayList<java.lang.String> r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAMediaCodecCapList     // Catch: all -> 0x0023
            java.lang.String r3 = "audio/eac3-joc"
            boolean r1 = r1.contains(r3)     // Catch: all -> 0x0023
            if (r1 == 0) goto L_0x0021
        L_0x0020:
            r2 = 1
        L_0x0021:
            monitor-exit(r0)
            return r2
        L_0x0023:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.isMediaCodecDDPlusSupported():boolean");
    }

    public static synchronized boolean isMediaCodecDolbyDSSupported() {
        synchronized (TPCodecUtils.class) {
            if (isAMediaCodecBlackListModel()) {
                return false;
            }
            return mAMediaCodecCapList.contains(MimeTypes.AUDIO_AC3);
        }
    }

    private static boolean isSupportedMediaCodec(String str) {
        return mSupportedMediaCodec.contains(str);
    }

    private static boolean isTheSameVersionRange(TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange2) {
        return tPHdrSupportVersionRange.lowerboundPatchVersion == tPHdrSupportVersionRange2.lowerboundPatchVersion && tPHdrSupportVersionRange.lowerboundSystemVersion == tPHdrSupportVersionRange2.lowerboundSystemVersion && tPHdrSupportVersionRange.upperboundPatchVersion == tPHdrSupportVersionRange2.upperboundPatchVersion && tPHdrSupportVersionRange.upperboundSystemVersion == tPHdrSupportVersionRange2.upperboundSystemVersion;
    }

    public static boolean isVMediaCodecBlackListModel() {
        return mVMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    private static <K, T> void replace(K k, T t, HashMap<K, T> hashMap) {
        if (hashMap.containsKey(k)) {
            hashMap.remove(k);
        }
        hashMap.put(k, t);
    }
}
