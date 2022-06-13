package com.netease.mobsec.e;

import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.netease.mobsec.AbstractNetClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c implements AbstractNetClient {
    private String a(InputStream inputStream) {
        String str;
        IOException e;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (IOException e2) {
                e = e2;
                str = "";
            }
        }
        str = new String(byteArrayOutputStream.toByteArray());
        try {
            inputStream.close();
            byteArrayOutputStream.close();
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            return str;
        }
        return str;
    }

    @Override // com.netease.mobsec.AbstractNetClient
    public Pair<Integer, String> sendGet(String str, int i) {
        Pair<Integer, String> pair;
        Exception e;
        HttpURLConnection httpURLConnection;
        try {
            System.nanoTime();
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            httpURLConnection.setRequestProperty("accept", "*/*");
            httpURLConnection.setRequestProperty("connection", "Keep-Alive");
        } catch (Exception e2) {
            e = e2;
            pair = null;
        }
        if (httpURLConnection.getResponseCode() == 200) {
            pair = new Pair<>(Integer.valueOf(httpURLConnection.getResponseCode()), a(httpURLConnection.getInputStream()));
            try {
                System.nanoTime();
            } catch (Exception e3) {
                e = e3;
                e.printStackTrace();
                return pair;
            }
            return pair;
        }
        throw new RuntimeException("doGet is not 200");
    }

    @Override // com.netease.mobsec.AbstractNetClient
    public Pair<Integer, String> sendPost(String str, String str2, int i) {
        Pair<Integer, String> pair;
        Exception e;
        try {
            System.nanoTime();
            byte[] bytes = str2.getBytes();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
            httpURLConnection.getOutputStream().write(bytes);
            pair = new Pair<>(Integer.valueOf(httpURLConnection.getResponseCode()), a(httpURLConnection.getInputStream()));
        } catch (Exception e2) {
            e = e2;
            pair = null;
        }
        try {
            System.nanoTime();
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return pair;
        }
        return pair;
    }
}
