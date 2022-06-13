package com.tencent.rtmp;

import android.content.Context;
import android.util.Log;
import com.tencent.liteav.TXLiteAVExternalDecoderFactoryInterface;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.license.LicenceCheck;
import com.tencent.liteav.basic.license.e;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXLiveBase {
    private static final String FILE_MD5_FFMPEG_ARM = "___md5_libtxffmpeg_arm_md5______";
    private static final String FILE_MD5_FFMPEG_V64 = "___md5_libtxffmpeg_v64_md5______";
    private static final String FILE_MD5_FFMPEG_V7A = "___md5_libtxffmpeg_v7a_md5______";
    private static final String FILE_MD5_LITEAV_ARM = "___md5_libliteavsdk_arm_md5_____";
    private static final String FILE_MD5_LITEAV_V64 = "___md5_libliteavsdk_v64_md5_____";
    private static final String FILE_MD5_LITEAV_V7A = "___md5_libliteavsdk_v7a_md5_____";
    private static final String FILE_MD5_SATURN_ARM = "___md5_libsaturn_arm_md5________";
    private static final String FILE_MD5_SATURN_V64 = "___md5_libsaturn_v64_md5________";
    private static final String FILE_MD5_SATURN_V7A = "___md5_libsaturn_v7a_md5________";
    private static final String FILE_MD5_TRAE_ARM = "___md5_libtraeimp_arm_md5_______";
    private static final String FILE_MD5_TRAE_V64 = "___md5_libtraeimp_v64_md5_______";
    private static final String FILE_MD5_TRAE_V7A = "___md5_libtraeimp_v7a_md5_______";
    private static final String TAG = "TXLiveBase";
    private static TXLiveBase instance = new TXLiveBase();
    private static TXLiveBaseListener listener;
    private static boolean sHasLoadedLibrary;

    private static native void nativeClassInit();

    private static native long nativeGetNetworkTimestamp();

    private static native int nativeUpdateNetworkTime();

    private TXLiveBase() {
    }

    public static TXLiveBase getInstance() {
        return instance;
    }

    public void setLicence(Context context, String str, String str2) {
        LicenceCheck.a().a(context, str, str2);
    }

    public String getLicenceInfo(Context context) {
        e eVar = new e();
        LicenceCheck.a().b(eVar, context);
        return eVar.a;
    }

    public static void setListener(TXLiveBaseListener tXLiveBaseListener) {
        TXCLog.setListener(new b());
        LicenceCheck.a().a(new a());
        listener = tXLiveBaseListener;
    }

    public static int setGlobalEnv(String str) {
        return TXCCommonUtil.setGlobalEnv(str, TXCCommonUtil.ENV_PRIORITY_API);
    }

    public static void setLogLevel(int i) {
        TXCLog.setLevel(i);
    }

    public static void setConsoleEnabled(boolean z) {
        TXCLog.setConsoleEnabled(z);
    }

    public static void setAppVersion(String str) {
        TXCDRApi.txSetAppVersion(str);
        TXCCommonUtil.setAppVersion(str);
    }

    public static void setLibraryPath(String str) {
        Log.i("TXLiveBase", "setLibraryPath " + str);
        h.b(str);
    }

    public static boolean isLibraryPathValid(String str) {
        String fileMD5 = getFileMD5(str, "libliteavsdk.so");
        String fileMD52 = getFileMD5(str, "libsaturn.so");
        String fileMD53 = getFileMD5(str, "libtxffmpeg.so");
        String fileMD54 = getFileMD5(str, "libtraeimp-rtmp.so");
        Log.e("TXLiveBase", "MD5-CHECK-V64 libliteavsdk = " + fileMD5 + " FILE_MD5_LITEAV_V64 = ___md5_libliteavsdk_v64_md5_____");
        Log.e("TXLiveBase", "MD5-CHECK-V64 libsaturn    = " + fileMD52 + " FILE_MD5_SATURN_V64 = ___md5_libsaturn_v64_md5________");
        Log.e("TXLiveBase", "MD5-CHECK-V64 libtxffmpeg  = " + fileMD53 + " FILE_MD5_FFMPEG_V64 = ___md5_libtxffmpeg_v64_md5______");
        Log.e("TXLiveBase", "MD5-CHECK-V64 libtraeimpl  = " + fileMD54 + " FILE_MD5_TRAE_V64   = ___md5_libtraeimp_v64_md5_______");
        if (fileMD5 != null && fileMD5.equalsIgnoreCase("___md5_libliteavsdk_v64_md5_____") && fileMD52 != null && fileMD52.equalsIgnoreCase("___md5_libsaturn_v64_md5________") && fileMD53 != null && fileMD53.equalsIgnoreCase("___md5_libtxffmpeg_v64_md5______") && fileMD54 != null && fileMD54.equalsIgnoreCase("___md5_libtraeimp_v64_md5_______")) {
            return true;
        }
        Log.e("TXLiveBase", "MD5-CHECK-V7A libliteavsdk = " + fileMD5 + " FILE_MD5_LITEAV_V7A = ___md5_libliteavsdk_v7a_md5_____");
        Log.e("TXLiveBase", "MD5-CHECK-V7A libsaturn    = " + fileMD52 + " FILE_MD5_SATURN_V7A = ___md5_libsaturn_v7a_md5________");
        Log.e("TXLiveBase", "MD5-CHECK-V7A libtxffmpeg  = " + fileMD53 + " FILE_MD5_FFMPEG_V7A = ___md5_libtxffmpeg_v7a_md5______");
        Log.e("TXLiveBase", "MD5-CHECK-V7A libtraeimpl  = " + fileMD54 + " FILE_MD5_TRAE_V7A   = ___md5_libtraeimp_v7a_md5_______");
        if (fileMD5 != null && fileMD5.equalsIgnoreCase("___md5_libliteavsdk_v7a_md5_____") && fileMD52 != null && fileMD52.equalsIgnoreCase("___md5_libsaturn_v7a_md5________") && fileMD53 != null && fileMD53.equalsIgnoreCase("___md5_libtxffmpeg_v7a_md5______") && fileMD54 != null && fileMD54.equalsIgnoreCase("___md5_libtraeimp_v7a_md5_______")) {
            return true;
        }
        Log.e("TXLiveBase", "MD5-CHECK-ARM libliteavsdk = " + fileMD5 + " FILE_MD5_LITEAV_ARM = ___md5_libliteavsdk_arm_md5_____");
        Log.e("TXLiveBase", "MD5-CHECK-ARM libsaturn    = " + fileMD52 + " FILE_MD5_SATURN_ARM = ___md5_libsaturn_arm_md5________");
        Log.e("TXLiveBase", "MD5-CHECK-ARM libtxffmpeg  = " + fileMD53 + " FILE_MD5_FFMPEG_ARM = ___md5_libtxffmpeg_arm_md5______");
        Log.e("TXLiveBase", "MD5-CHECK-ARM libtraeimpl  = " + fileMD54 + " FILE_MD5_TRAE_ARM   = ___md5_libtraeimp_arm_md5_______");
        if (fileMD5 == null || !fileMD5.equalsIgnoreCase("___md5_libliteavsdk_arm_md5_____") || fileMD52 == null || !fileMD52.equalsIgnoreCase("___md5_libsaturn_arm_md5________") || fileMD53 == null || !fileMD53.equalsIgnoreCase("___md5_libtxffmpeg_arm_md5______") || fileMD54 == null || !fileMD54.equalsIgnoreCase("___md5_libtraeimp_arm_md5_______")) {
            return false;
        }
        return true;
    }

    public static void setExternalDecoderFactory(TXLiteAVExternalDecoderFactoryInterface tXLiteAVExternalDecoderFactoryInterface) {
        TXCLog.i("TXLiveBase", "setExternalDecoderFactory decoderFactory = " + tXLiteAVExternalDecoderFactoryInterface);
        com.tencent.liteav.basic.a.a(tXLiteAVExternalDecoderFactoryInterface);
    }

    public static String getSDKVersionStr() {
        return TXCCommonUtil.getSDKVersionStr();
    }

    public static void setPituLicencePath(String str) {
        TXCCommonUtil.setPituLicencePath(str);
    }

    public static String getPituSDKVersion() {
        return l.a();
    }

    public static void setAppID(String str) {
        TXCCommonUtil.setAppID(str);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class b implements TXCLog.a {
        private b() {
        }

        @Override // com.tencent.liteav.basic.log.TXCLog.a
        public void a(int i, String str, String str2) {
            TXLiveBaseListener tXLiveBaseListener = TXLiveBase.listener;
            if (tXLiveBaseListener != null) {
                tXLiveBaseListener.onLog(i, str, str2);
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a implements LicenceCheck.a {
        private a() {
        }

        @Override // com.tencent.liteav.basic.license.LicenceCheck.a
        public void a(int i, String str) {
            TXLiveBaseListener tXLiveBaseListener = TXLiveBase.listener;
            if (tXLiveBaseListener != null) {
                tXLiveBaseListener.onLicenceLoaded(i, str);
            }
        }
    }

    private static String getFileMD5(String str, String str2) {
        File file = new File(str, str2);
        MessageDigest messageDigest = null;
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            fileInputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        }
        return new BigInteger(1, messageDigest.digest()).toString(16);
    }

    public static void setUserId(String str) {
        TXCCommonUtil.setUserId(str);
    }

    public static int updateNetworkTime() {
        if (!sHasLoadedLibrary) {
            h.f();
            nativeClassInit();
            sHasLoadedLibrary = true;
        }
        return nativeUpdateNetworkTime();
    }

    public static long getNetworkTimestamp() {
        if (!sHasLoadedLibrary) {
            return 0;
        }
        return nativeGetNetworkTimestamp();
    }

    public static void onUpdateNetworkTime(int i, String str) {
        TXLiveBaseListener tXLiveBaseListener = listener;
        if (tXLiveBaseListener != null) {
            tXLiveBaseListener.onUpdateNetworkTime(i, str);
        }
    }

    public static boolean setExtID(String str, String str2) {
        return TXCCommonUtil.setExtID(str, str2);
    }
}
