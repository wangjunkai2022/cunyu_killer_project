package com.tencent.liteav.basic.license;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.c;
import java.io.File;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class LicenceCheck {
    private static LicenceCheck d;
    private Context a;
    private a e;
    private String b = "YTFaceSDK.licence";
    private String c = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB";
    private int f = -1;
    private b g = new b("TXUgcSDK.licence");
    private b h = new b("TXLiveSDK.licence");
    private b i = new b("TXLiveSDK.licence");

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, String str);
    }

    private native byte[] nativeIvParameterSpec(byte[] bArr);

    private native String nativeRSAKey();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class b {
        String a;
        String b;
        String c = "";
        String d = "";
        String e = "";
        boolean f = false;
        boolean g = false;
        int h = -1;
        String i = "";

        public b(String str) {
            this.a = str;
            this.b = str + ".tmp";
        }
    }

    public static LicenceCheck a() {
        if (d == null) {
            d = new LicenceCheck();
        }
        return d;
    }

    private LicenceCheck() {
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    public void a(Context context, String str, String str2) {
        a(this.i, context, str, str2);
    }

    private void a(b bVar, Context context, String str, String str2) {
        if (context != null) {
            this.a = context.getApplicationContext();
            TXCCommonUtil.setAppContext(context);
        }
        bVar.d = str2;
        bVar.e = str;
        if (this.a != null) {
            bVar.c = c();
            if (!c.a(bVar.c + File.separator + bVar.a)) {
                TXCLog.i("LicenceCheck", "setLicense, file not exist, to download");
                b(bVar, "");
            }
            a(bVar);
        }
    }

    public void a(final b bVar) {
        String str;
        if (TextUtils.isEmpty(bVar.e)) {
            TXCLog.e("LicenceCheck", "downloadLicense, mUrl is empty, ignore!");
        } else if (bVar.f) {
            TXCLog.i("LicenceCheck", "downloadLicense, in downloading, ignore");
        } else {
            AnonymousClass1 r7 = new b() { // from class: com.tencent.liteav.basic.license.LicenceCheck.1
                @Override // com.tencent.liteav.basic.license.b
                public void a(File file, String str2) {
                    if (file == null) {
                        TXCLog.i("LicenceCheck", "downloadLicense, license not modified");
                        return;
                    }
                    LicenceCheck.this.b(bVar, str2);
                    LicenceCheck licenceCheck = LicenceCheck.this;
                    b bVar2 = bVar;
                    licenceCheck.c(bVar2, bVar2.e);
                    TXCLog.i("LicenceCheck", "downloadLicense, onSaveSuccess");
                    String i = LicenceCheck.this.i(bVar);
                    if (TextUtils.isEmpty(i)) {
                        TXCLog.e("LicenceCheck", "downloadLicense, readDownloadTempLicence is empty!");
                        bVar.f = false;
                    } else if (LicenceCheck.this.e(bVar, i) == 0) {
                        LicenceCheck.this.g(bVar);
                    }
                }

                @Override // com.tencent.liteav.basic.license.b
                public void a(File file, Exception exc) {
                    TXCLog.i("LicenceCheck", "downloadLicense, onSaveFailed");
                }

                @Override // com.tencent.liteav.basic.license.b
                public void a(int i) {
                    TXCLog.i("LicenceCheck", "downloadLicense, onProgressUpdate");
                }

                @Override // com.tencent.liteav.basic.license.b
                public void a() {
                    TXCLog.i("LicenceCheck", "downloadLicense, onProcessEnd");
                    bVar.f = false;
                }
            };
            if (this.a == null) {
                TXCLog.e("LicenceCheck", "context is NULL !!! Please set context in method:setLicense(Context context, String url, String key)");
                return;
            }
            bVar.c = c();
            String b2 = b(bVar);
            String c = c(bVar);
            if (TextUtils.isEmpty(c) || bVar.e.equals(c)) {
                str = b2;
            } else {
                b(bVar, "");
                c(bVar, "");
                str = "";
            }
            new Thread(new c(this.a, bVar.e, bVar.c, bVar.b, r7, false, str)).start();
            bVar.f = true;
        }
    }

    public int a(e eVar, Context context) {
        return a(this.i, eVar, context);
    }

    public int b(e eVar, Context context) {
        return a(this.h, eVar, context);
    }

    private String b(b bVar) {
        Context context = this.a;
        if (context == null) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("LicenceCheck.lastModified", 0);
        return sharedPreferences.getString(bVar.a + ".lastModified", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(b bVar, String str) {
        Context context = this.a;
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("LicenceCheck.lastModified", 0).edit();
            edit.putString(bVar.a + ".lastModified", str);
            edit.commit();
        }
    }

    private String c(b bVar) {
        Context context = this.a;
        if (context == null) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("LicenceCheck.licenceUrl", 0);
        return sharedPreferences.getString(bVar.a + ".licenceUrl", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(b bVar, String str) {
        Context context = this.a;
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("LicenceCheck.licenceUrl", 0).edit();
            edit.putString(bVar.a + ".licenceUrl", str);
            edit.commit();
        }
    }

    private int a(b bVar, e eVar, Context context) {
        int a2 = a(bVar, context);
        if (a2 != 0) {
            a(bVar);
        }
        if (eVar != null) {
            eVar.a = bVar.i;
        }
        return a2;
    }

    private int a(b bVar, Context context) {
        if (bVar.g) {
            return 0;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (e(bVar) == 0) {
            bVar.g = true;
            return 0;
        }
        int d2 = d(bVar);
        if (d2 != 0) {
            return d2;
        }
        bVar.g = true;
        return 0;
    }

    private int d(b bVar) {
        String str;
        String str2 = c() + File.separator + bVar.a;
        if (!c.a(str2)) {
            return -7;
        }
        try {
            str = c.b(str2);
        } catch (Exception e) {
            TXCLog.e("LicenceCheck", "read licence file error: ", e);
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            return a(bVar, str);
        }
        TXCLog.e("LicenceCheck", "checkLocalLicence, licenceStr is empty");
        return -8;
    }

    private int e(b bVar) {
        if (!f(bVar)) {
            return -6;
        }
        String b2 = c.b(this.a, bVar.a);
        if (!TextUtils.isEmpty(b2)) {
            return a(bVar, b2);
        }
        TXCLog.e("LicenceCheck", "checkAssetLicence, licenceAssetStr is empty");
        return -8;
    }

    public int a(b bVar, String str) {
        try {
            new JSONObject(str);
            return e(bVar, str);
        } catch (JSONException unused) {
            if (bVar == this.h) {
                return -1;
            }
            return f(bVar, str);
        }
    }

    private boolean f(b bVar) {
        return c.a(this.a, bVar.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(b bVar) {
        File file = new File(c() + File.separator + bVar.a);
        if (file.exists()) {
            boolean delete = file.delete();
            TXCLog.i("LicenceCheck", "delete dst file:" + delete);
        }
        File file2 = new File(bVar.c + File.separator + bVar.b);
        if (file2.exists()) {
            boolean renameTo = file2.renameTo(file);
            TXCLog.i("LicenceCheck", "rename file:" + renameTo);
        }
        bVar.g = true;
    }

    private static long b(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(str).getTime();
        } catch (Exception e) {
            TXCLog.e("LicenceCheck", "time str to millsecond failed.", e);
            return -1;
        }
    }

    public PublicKey a(String str) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    private String d(b bVar, String str) {
        if (TextUtils.isEmpty(bVar.d)) {
            TXCLog.e("LicenceCheck", "decodeLicence, mKey is empty!!!");
            return "";
        }
        byte[] bytes = bVar.d.getBytes();
        SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(nativeIvParameterSpec(bytes));
        byte[] decode = Base64.decode(str, 0);
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, ivParameterSpec);
            String str2 = new String(instance.doFinal(decode), "UTF-8");
            TXCLog.i("LicenceCheck", "decodeLicence : " + str2);
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int e(b bVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("appId");
            String string = jSONObject.getString("encryptedLicense");
            String string2 = jSONObject.getString("signature");
            TXCLog.i("LicenceCheck", "appid:" + optInt);
            TXCLog.i("LicenceCheck", "encryptedLicense:" + string);
            TXCLog.i("LicenceCheck", "signature:" + string2);
            return a(bVar, string, string2);
        } catch (JSONException e) {
            e.printStackTrace();
            a(-1);
            a aVar = this.e;
            if (aVar != null) {
                aVar.a(-1, "licence check failed!! json error");
            }
            return -1;
        }
    }

    private int a(b bVar, String str, String str2) {
        boolean z;
        try {
            z = a(Base64.decode(str, 0), Base64.decode(str2, 0), a(this.c));
        } catch (Exception e) {
            e.printStackTrace();
            TXCLog.e("LicenceCheck", "verifyLicence, exception is : " + e);
            z = false;
        }
        if (!z) {
            a(-2);
            a aVar = this.e;
            if (aVar != null) {
                aVar.a(-2, "licence check failed!! verify signature failed");
            }
            TXCLog.e("LicenceCheck", "verifyLicence, signature not pass!");
            return -2;
        }
        String d2 = d(bVar, str);
        if (TextUtils.isEmpty(d2)) {
            a(-3);
            a aVar2 = this.e;
            if (aVar2 != null) {
                aVar2.a(-3, "licence check failed!! decryption failed");
            }
            TXCLog.e("LicenceCheck", "verifyLicence, decodeValue is empty!");
            return -3;
        }
        bVar.i = d2;
        try {
            JSONObject jSONObject = new JSONObject(d2);
            TXCLog.i("LicenceCheck", "verifyLicence, object " + jSONObject.toString());
            String string = jSONObject.getString("pituLicense");
            JSONArray optJSONArray = jSONObject.optJSONArray("appData");
            if (optJSONArray == null) {
                TXCLog.e("LicenceCheck", "verifyLicence, appDataArray is null!");
                a(-1);
                if (this.e != null) {
                    this.e.a(-1, "licence check failed!! json error");
                }
                return -1;
            }
            this.f = -1;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                String optString = jSONObject2.optString("packageName");
                if (!optString.equals(this.a.getPackageName())) {
                    TXCLog.e("LicenceCheck", "verifyLicence, checkPackageName not match! license packageName: " + optString + ", current app packageName: " + this.a.getPackageName());
                } else if (!a(jSONObject2.optString("startDate"), jSONObject2.optString("endDate"))) {
                    TXCLog.e("LicenceCheck", "verifyLicence, checkDateExpire! appDataJsonObject " + jSONObject2.toString());
                    z2 = true;
                } else if (!a(bVar, jSONObject2, string)) {
                    TXCLog.e("LicenceCheck", "verifyLicence, checkFeature inValid! appDataJsonObject " + jSONObject2.toString());
                    z2 = true;
                    z3 = true;
                } else {
                    z2 = true;
                    z3 = true;
                    z4 = true;
                }
            }
            if (!z2) {
                a(-4);
                if (this.e != null) {
                    this.e.a(-4, "licence check failed!! packagename error");
                }
                return -4;
            } else if (!z3) {
                a(-11);
                if (this.e != null) {
                    this.e.a(-11, "licence check failed!! licence expired");
                }
                return -11;
            } else if (!z4) {
                a(-5);
                if (this.e != null) {
                    this.e.a(-5, "licence check failed!! feature verification failed");
                }
                return -5;
            } else {
                if (!TextUtils.isEmpty(string)) {
                    try {
                        byte[] decode = Base64.decode(string, 0);
                        File file = new File(c() + File.separator + this.b);
                        c.a(file.getAbsolutePath(), decode);
                        TXCCommonUtil.setPituLicencePath(file.getAbsolutePath());
                    } catch (Exception e2) {
                        TXCLog.e("LicenceCheck", "decode pitu license error:" + e2);
                    }
                }
                TXCDRApi.txReportDAU(this.a, com.tencent.liteav.basic.datareport.a.aK);
                a aVar3 = this.e;
                if (aVar3 != null) {
                    aVar3.a(0, "licence check success!!");
                }
                return 0;
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
            TXCLog.e("LicenceCheck", "verifyLicence, json format error ! exception = " + e3);
            a(-1);
            a aVar4 = this.e;
            if (aVar4 != null) {
                aVar4.a(-1, "licence check failed!! json error");
            }
            return -1;
        }
    }

    private boolean a(b bVar, JSONObject jSONObject, String str) {
        int optInt = jSONObject.optInt("feature");
        boolean z = false;
        if (bVar == this.h) {
            optInt = (optInt >> 4) & 15;
            if (optInt >= 1 && optInt <= 2) {
                z = true;
            }
            TXCLog.i("LicenceCheck", "live parseVersionType, featureCode = " + optInt + ", isValid: " + z);
        } else if (bVar == this.g) {
            int i = optInt & 15;
            int i2 = 5;
            if (i <= 1) {
                if (i == 1 || optInt == 0) {
                    if (TextUtils.isEmpty(str)) {
                        i2 = 3;
                    }
                    z = true;
                    optInt = i2;
                    TXCLog.i("LicenceCheck", "ugc parseVersionType, featureCode = " + optInt + ", isValid: " + z);
                }
                optInt = i;
                TXCLog.i("LicenceCheck", "ugc parseVersionType, featureCode = " + optInt + ", isValid: " + z);
            } else {
                if (i >= 2 && i <= 5) {
                    optInt = i;
                    z = true;
                    TXCLog.i("LicenceCheck", "ugc parseVersionType, featureCode = " + optInt + ", isValid: " + z);
                }
                optInt = i;
                TXCLog.i("LicenceCheck", "ugc parseVersionType, featureCode = " + optInt + ", isValid: " + z);
            }
        } else if (bVar == this.i) {
            optInt = (optInt >> 8) & 15;
            if (optInt >= 1) {
                z = true;
            }
            TXCLog.i("LicenceCheck", "vod parseVersionType, featureCode = " + optInt + ", isValid: " + z);
        }
        if (z) {
            if (optInt > this.f) {
                this.f = optInt;
            }
            bVar.h = this.f;
        }
        TXCLog.i("LicenceCheck", "parseVersionType, finalFeatureCode = " + bVar.h);
        return z;
    }

    public int b() {
        return h(this.i);
    }

    private int h(b bVar) {
        return bVar.h;
    }

    private void a(int i) {
        TXCLog.e("LicenceCheck", "onFail ret " + i);
        TXCDRApi.txReportDAU(this.a, com.tencent.liteav.basic.datareport.a.aL, i, "");
    }

    private boolean a(String str, String str2) {
        long b2 = b(str);
        long b3 = b(str2);
        long currentTimeMillis = System.currentTimeMillis();
        if (b2 < 0 || b3 < 0) {
            TXCLog.e("LicenceCheck", "check date millis < 0! stateDate: " + b2 + ", endDate: " + b3);
            return false;
        } else if (b3 >= currentTimeMillis && b2 <= currentTimeMillis) {
            return true;
        } else {
            TXCLog.e("LicenceCheck", "check date expire! currentDate: " + currentTimeMillis + ", startDate: " + b2 + ", endDate: " + b3);
            return false;
        }
    }

    private int f(b bVar, String str) {
        String c = c(str);
        if (TextUtils.isEmpty(c)) {
            TXCLog.e("LicenceCheck", "verifyOldLicence, decryptStr is empty");
            a(-3);
            a aVar = this.e;
            if (aVar != null) {
                aVar.a(-3, "licence check failed!! decryption failed");
            }
            return -3;
        }
        bVar.i = c;
        try {
            JSONObject jSONObject = new JSONObject(c);
            if (!jSONObject.getString("packagename").equals(a(this.a))) {
                TXCLog.e("LicenceCheck", "packagename not match!");
                a(-4);
                if (this.e != null) {
                    this.e.a(-4, "licence check failed!! packagename error");
                }
                return -4;
            } else if (!a(jSONObject.getString("startdate"), jSONObject.getString("enddate"))) {
                return -11;
            } else {
                bVar.h = 5;
                TXCDRApi.txReportDAU(this.a, com.tencent.liteav.basic.datareport.a.aK);
                return 0;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            TXCLog.e("LicenceCheck", "verifyOldLicence, json format error !");
            a(-1);
            a aVar2 = this.e;
            if (aVar2 != null) {
                aVar2.a(-1, "licence check failed!! json error");
            }
            return -1;
        }
    }

    private static String a(Context context) {
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    private String c(String str) {
        try {
            return new String(f.b(Base64.decode(str, 0), Base64.decode(nativeRSAKey(), 0)));
        } catch (Exception e) {
            e.printStackTrace();
            TXCLog.e("LicenceCheck", "decryptLicenceStr, exception is : " + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String i(b bVar) {
        return c.b(new File(bVar.c + File.separator + bVar.b).getAbsolutePath());
    }

    public static boolean a(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature instance = Signature.getInstance("SHA256WithRSA");
        instance.initVerify(publicKey);
        instance.update(bArr);
        return instance.verify(bArr2);
    }

    public String c() {
        File filesDir = this.a.getFilesDir();
        File file = new File(filesDir + File.separator + "liteav/licence");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}
