package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes2.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {
    static final HttpUrlConnectionFactory DEFAULT_CONNECTION_FACTORY = new DefaultHttpUrlConnectionFactory();
    static final int INVALID_STATUS_CODE = -1;
    private static final int MAXIMUM_REDIRECTS = 5;
    static final String REDIRECT_HEADER_FIELD = "Location";
    private static final String TAG = "HttpUrlFetcher";
    private final HttpUrlConnectionFactory connectionFactory;
    private final GlideUrl glideUrl;
    private volatile boolean isCancelled;
    private InputStream stream;
    private final int timeout;
    private HttpURLConnection urlConnection;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface HttpUrlConnectionFactory {
        HttpURLConnection build(URL url) throws IOException;
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i) {
        this(glideUrl, i, DEFAULT_CONNECTION_FACTORY);
    }

    HttpUrlFetcher(GlideUrl glideUrl, int i, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.glideUrl = glideUrl;
        this.timeout = i;
        this.connectionFactory = httpUrlConnectionFactory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.String] */
    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(Priority priority, DataFetcher.DataCallback<? super InputStream> dataCallback) {
        long logTime;
        StringBuilder sb;
        try {
            priority = "Finished http url fetcher fetch in ";
            logTime = LogTime.getLogTime();
            try {
                dataCallback.onDataReady(loadDataWithRedirects(this.glideUrl.toURL(), 0, null, this.glideUrl.getHeaders()));
            } catch (IOException e) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Failed to load data for url", e);
                }
                dataCallback.onLoadFailed(e);
                if (Log.isLoggable(TAG, 2)) {
                    sb = new StringBuilder();
                } else {
                    return;
                }
            }
            if (Log.isLoggable(TAG, 2)) {
                sb = new StringBuilder();
                sb.append((String) priority);
                sb.append(LogTime.getElapsedMillis(logTime));
                Log.v(TAG, sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, priority + LogTime.getElapsedMillis(logTime));
            }
            throw th;
        }
    }

    private InputStream loadDataWithRedirects(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                    }
                } catch (URISyntaxException unused) {
                }
            }
            this.urlConnection = buildAndConfigureConnection(url, map);
            try {
                this.urlConnection.connect();
                this.stream = this.urlConnection.getInputStream();
                if (this.isCancelled) {
                    return null;
                }
                int httpStatusCodeOrInvalid = getHttpStatusCodeOrInvalid(this.urlConnection);
                if (isHttpOk(httpStatusCodeOrInvalid)) {
                    return getStreamForSuccessfulRequest(this.urlConnection);
                }
                if (isHttpRedirect(httpStatusCodeOrInvalid)) {
                    String headerField = this.urlConnection.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField)) {
                        try {
                            URL url3 = new URL(url, headerField);
                            cleanup();
                            return loadDataWithRedirects(url3, i + 1, url, map);
                        } catch (MalformedURLException e) {
                            throw new HttpException("Bad redirect url: " + headerField, httpStatusCodeOrInvalid, e);
                        }
                    } else {
                        throw new HttpException("Received empty or null redirect url", httpStatusCodeOrInvalid);
                    }
                } else if (httpStatusCodeOrInvalid == -1) {
                    throw new HttpException(httpStatusCodeOrInvalid);
                } else {
                    try {
                        throw new HttpException(this.urlConnection.getResponseMessage(), httpStatusCodeOrInvalid);
                    } catch (IOException e2) {
                        throw new HttpException("Failed to get a response message", httpStatusCodeOrInvalid, e2);
                    }
                }
            } catch (IOException e3) {
                throw new HttpException("Failed to connect or obtain data", getHttpStatusCodeOrInvalid(this.urlConnection), e3);
            }
        } else {
            throw new HttpException("Too many (> 5) redirects!", -1);
        }
    }

    private static int getHttpStatusCodeOrInvalid(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable(TAG, 3)) {
                return -1;
            }
            Log.d(TAG, "Failed to get a response code", e);
            return -1;
        }
    }

    private HttpURLConnection buildAndConfigureConnection(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection build = this.connectionFactory.build(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                build.addRequestProperty(entry.getKey(), entry.getValue());
            }
            build.setConnectTimeout(this.timeout);
            build.setReadTimeout(this.timeout);
            build.setUseCaches(false);
            build.setDoInput(true);
            build.setInstanceFollowRedirects(false);
            return build;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    private static boolean isHttpOk(int i) {
        return i / 100 == 2;
    }

    private static boolean isHttpRedirect(int i) {
        return i / 100 == 3;
    }

    private InputStream getStreamForSuccessfulRequest(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.stream = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), (long) httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                }
                this.stream = httpURLConnection.getInputStream();
            }
            return this.stream;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", getHttpStatusCodeOrInvalid(httpURLConnection), e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.urlConnection = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.isCancelled = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    /* loaded from: classes2.dex */
    private static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
        DefaultHttpUrlConnectionFactory() {
        }

        @Override // com.bumptech.glide.load.data.HttpUrlFetcher.HttpUrlConnectionFactory
        public HttpURLConnection build(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }
}
