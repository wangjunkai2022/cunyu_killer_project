package com.tencent.liteav.network;

import android.os.AsyncTask;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

/* compiled from: TXCHttpURLClient.java */
/* loaded from: classes2.dex */
public class c {

    /* compiled from: TXCHttpURLClient.java */
    /* loaded from: classes2.dex */
    private static class a {
        public static final c a = new c();
    }

    /* compiled from: TXCHttpURLClient.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(String str);
    }

    public static c a() {
        return a.a;
    }

    private c() {
    }

    public void a(final String str, final b bVar) {
        AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.network.c.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                IOException e;
                try {
                    try {
                        BufferedReader bufferedReader = null;
                        try {
                            URLConnection openConnection = new URL(str).openConnection();
                            openConnection.setConnectTimeout(15000);
                            openConnection.setReadTimeout(15000);
                            openConnection.connect();
                            InputStream inputStream = openConnection.getInputStream();
                            if (inputStream != null) {
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    while (true) {
                                        String readLine = bufferedReader2.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        sb.append(readLine);
                                        sb.append("\n");
                                    }
                                    if (bVar != null) {
                                        bVar.a(sb.toString());
                                    }
                                    bufferedReader2.close();
                                } catch (IOException e2) {
                                    e = e2;
                                    bufferedReader = bufferedReader2;
                                    e.printStackTrace();
                                    if (bVar != null) {
                                        bVar.a();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (bufferedReader2 != null) {
                                        try {
                                            bufferedReader2.close();
                                        } catch (IOException e3) {
                                            e3.printStackTrace();
                                        }
                                    }
                                    throw th;
                                }
                            } else if (bVar != null) {
                                bVar.a();
                            }
                        } catch (IOException e4) {
                            e = e4;
                        }
                    } catch (IOException e5) {
                        while (true) {
                            e5.printStackTrace();
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        });
    }
}
