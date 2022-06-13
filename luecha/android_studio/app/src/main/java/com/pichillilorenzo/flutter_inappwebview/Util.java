package com.pichillilorenzo.flutter_inappwebview;

import android.net.http.SslCertificate;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;

/* loaded from: classes5.dex */
public class Util {
    public static final String ANDROID_ASSET_URL = "file:///android_asset/";
    static final String LOG_TAG = "Util";

    private Util() {
    }

    public static String getUrlAsset(String str) throws IOException {
        String lookupKeyForAsset = Shared.registrar != null ? Shared.registrar.lookupKeyForAsset(str) : Shared.flutterAssets.getAssetFilePathByName(str);
        IOException e = null;
        try {
            InputStream fileAsset = getFileAsset(str);
            if (fileAsset != null) {
                fileAsset.close();
            }
        } catch (IOException e2) {
            e = e2;
        }
        if (e == null) {
            return "file:///android_asset/" + lookupKeyForAsset;
        }
        throw e;
    }

    public static InputStream getFileAsset(String str) throws IOException {
        return Shared.applicationContext.getResources().getAssets().open(Shared.registrar != null ? Shared.registrar.lookupKeyForAsset(str) : Shared.flutterAssets.getAssetFilePathByName(str));
    }

    public static WaitFlutterResult invokeMethodAndWait(final MethodChannel methodChannel, final String str, final Object obj) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final HashMap hashMap = new HashMap();
        hashMap.put("result", null);
        hashMap.put("error", null);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.Util.1
            @Override // java.lang.Runnable
            public void run() {
                methodChannel.invokeMethod(str, obj, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.Util.1.1
                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void success(Object obj2) {
                        hashMap.put("result", obj2);
                        countDownLatch.countDown();
                    }

                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void error(String str2, String str3, Object obj2) {
                        Map map = hashMap;
                        map.put("error", "ERROR: " + str2 + " " + str3);
                        hashMap.put("result", obj2);
                        countDownLatch.countDown();
                    }

                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void notImplemented() {
                        countDownLatch.countDown();
                    }
                });
            }
        });
        countDownLatch.await();
        return new WaitFlutterResult(hashMap.get("result"), (String) hashMap.get("error"));
    }

    /* loaded from: classes5.dex */
    public static class WaitFlutterResult {
        public String error;
        public Object result;

        public WaitFlutterResult(Object obj, String str) {
            this.result = obj;
            this.error = str;
        }
    }

    public static PrivateKeyAndCertificates loadPrivateKeyAndCertificate(String str, String str2, String str3) {
        PrivateKeyAndCertificates privateKeyAndCertificates = null;
        try {
            InputStream fileAsset = getFileAsset(str);
            KeyStore instance = KeyStore.getInstance(str3);
            instance.load(fileAsset, str2 != null ? str2.toCharArray() : null);
            String nextElement = instance.aliases().nextElement();
            Key key = instance.getKey(nextElement, str2.toCharArray());
            if (key instanceof PrivateKey) {
                privateKeyAndCertificates = new PrivateKeyAndCertificates((PrivateKey) key, new X509Certificate[]{(X509Certificate) instance.getCertificate(nextElement)});
            }
            fileAsset.close();
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("Util", e.getMessage());
        }
        return privateKeyAndCertificates;
    }

    /* loaded from: classes5.dex */
    public static class PrivateKeyAndCertificates {
        public X509Certificate[] certificates;
        public PrivateKey privateKey;

        public PrivateKeyAndCertificates(PrivateKey privateKey, X509Certificate[] x509CertificateArr) {
            this.privateKey = privateKey;
            this.certificates = x509CertificateArr;
        }
    }

    public static OkHttpClient getUnsafeOkHttpClient() {
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.pichillilorenzo.flutter_inappwebview.Util.2
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext instance = SSLContext.getInstance("SSL");
            instance.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = instance.getSocketFactory();
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(new HostnameVerifier() { // from class: com.pichillilorenzo.flutter_inappwebview.Util.3
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            });
            return builder.connectTimeout(15, TimeUnit.SECONDS).writeTimeout(15, TimeUnit.SECONDS).readTimeout(15, TimeUnit.SECONDS).build();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static X509Certificate getX509CertFromSslCertHack(SslCertificate sslCertificate) {
        byte[] byteArray = SslCertificate.saveState(sslCertificate).getByteArray("x509-certificate");
        if (byteArray != null) {
            try {
            } catch (CertificateException unused) {
                return null;
            }
        }
        return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(byteArray));
    }
}
