package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: RetryAndFollowUpInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "client", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "buildRedirectRequest", "Lokhttp3/Request;", "userResponse", "Lokhttp3/Response;", "method", "", "followUpRequest", "exchange", "Lokhttp3/internal/connection/Exchange;", "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "isRecoverable", "", "e", "Ljava/io/IOException;", "requestSendStarted", "recover", "call", "Lokhttp3/internal/connection/RealCall;", "userRequest", "requestIsOneShot", "retryAfter", "", "defaultDelay", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "client");
        this.client = okHttpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
        r4 = r0;
        r0 = r1.getInterceptorScopedExchange$okhttp();
        r3 = followUpRequest(r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
        if (r3 != null) goto L_0x005e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if (r0 == null) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
        if (r0.isDuplex$okhttp() == false) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        r1.timeoutEarlyExit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        r0 = r3.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (r0 == null) goto L_0x006e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r0.isOneShot() == false) goto L_0x006e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        r0 = r4.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        if (r0 == null) goto L_0x0079;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        okhttp3.internal.Util.closeQuietly(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        r8 = (r8 ? 1 : 0) + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007d, code lost:
        if (r8 > 20) goto L_0x0084;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (r4 == null) goto L_0x0044;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        r0 = r0.newBuilder().priorResponse(r4.newBuilder().body(null).build()).build();
     */
    @Override // okhttp3.Interceptor
    /* Code decompiled incorrectly, please refer to instructions dump */
    public okhttp3.Response intercept(okhttp3.Interceptor.Chain r11) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            okhttp3.internal.http.RealInterceptorChain r11 = (okhttp3.internal.http.RealInterceptorChain) r11
            okhttp3.Request r0 = r11.getRequest$okhttp()
            okhttp3.internal.connection.RealCall r1 = r11.getCall$okhttp()
            r2 = 0
            r3 = r2
            okhttp3.Response r3 = (okhttp3.Response) r3
            java.util.List r4 = kotlin.collections.CollectionsKt.emptyList()
            r5 = 1
            r6 = 0
            r7 = r4
            r8 = r6
            r4 = r3
        L_0x001c:
            r3 = r5
        L_0x001d:
            r1.enterNetworkInterceptorExchange(r0, r3)
            boolean r3 = r1.isCanceled()     // Catch: all -> 0x00e9
            if (r3 != 0) goto L_0x00df
            okhttp3.Response r0 = r11.proceed(r0)     // Catch: RouteException -> 0x00b9, IOException -> 0x009d, all -> 0x00e9
            if (r4 == 0) goto L_0x0044
            okhttp3.Response$Builder r0 = r0.newBuilder()     // Catch: all -> 0x00e9
            okhttp3.Response$Builder r3 = r4.newBuilder()     // Catch: all -> 0x00e9
            okhttp3.Response$Builder r3 = r3.body(r2)     // Catch: all -> 0x00e9
            okhttp3.Response r3 = r3.build()     // Catch: all -> 0x00e9
            okhttp3.Response$Builder r0 = r0.priorResponse(r3)     // Catch: all -> 0x00e9
            okhttp3.Response r0 = r0.build()     // Catch: all -> 0x00e9
        L_0x0044:
            r4 = r0
            okhttp3.internal.connection.Exchange r0 = r1.getInterceptorScopedExchange$okhttp()     // Catch: all -> 0x00e9
            okhttp3.Request r3 = r10.followUpRequest(r4, r0)     // Catch: all -> 0x00e9
            if (r3 != 0) goto L_0x005e
            if (r0 == 0) goto L_0x005a
            boolean r11 = r0.isDuplex$okhttp()     // Catch: all -> 0x00e9
            if (r11 == 0) goto L_0x005a
            r1.timeoutEarlyExit()     // Catch: all -> 0x00e9
        L_0x005a:
            r1.exitNetworkInterceptorExchange$okhttp(r6)
            return r4
        L_0x005e:
            okhttp3.RequestBody r0 = r3.body()     // Catch: all -> 0x00e9
            if (r0 == 0) goto L_0x006e
            boolean r0 = r0.isOneShot()     // Catch: all -> 0x00e9
            if (r0 == 0) goto L_0x006e
            r1.exitNetworkInterceptorExchange$okhttp(r6)
            return r4
        L_0x006e:
            okhttp3.ResponseBody r0 = r4.body()     // Catch: all -> 0x00e9
            if (r0 == 0) goto L_0x0079
            java.io.Closeable r0 = (java.io.Closeable) r0     // Catch: all -> 0x00e9
            okhttp3.internal.Util.closeQuietly(r0)     // Catch: all -> 0x00e9
        L_0x0079:
            int r8 = r8 + 1
            r0 = 20
            if (r8 > r0) goto L_0x0084
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            r0 = r3
            goto L_0x001c
        L_0x0084:
            java.net.ProtocolException r11 = new java.net.ProtocolException     // Catch: all -> 0x00e9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00e9
            r0.<init>()     // Catch: all -> 0x00e9
            java.lang.String r2 = "Too many follow-up requests: "
            r0.append(r2)     // Catch: all -> 0x00e9
            r0.append(r8)     // Catch: all -> 0x00e9
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x00e9
            r11.<init>(r0)     // Catch: all -> 0x00e9
            java.lang.Throwable r11 = (java.lang.Throwable) r11     // Catch: all -> 0x00e9
            throw r11     // Catch: all -> 0x00e9
        L_0x009d:
            r3 = move-exception
            boolean r9 = r3 instanceof okhttp3.internal.http2.ConnectionShutdownException     // Catch: all -> 0x00e9
            if (r9 != 0) goto L_0x00a4
            r9 = r5
            goto L_0x00a5
        L_0x00a4:
            r9 = r6
        L_0x00a5:
            boolean r9 = r10.recover(r3, r1, r0, r9)     // Catch: all -> 0x00e9
            if (r9 == 0) goto L_0x00b2
            java.util.Collection r7 = (java.util.Collection) r7     // Catch: all -> 0x00e9
            java.util.List r7 = kotlin.collections.CollectionsKt.plus(r7, r3)     // Catch: all -> 0x00e9
            goto L_0x00ce
        L_0x00b2:
            java.lang.Exception r3 = (java.lang.Exception) r3     // Catch: all -> 0x00e9
            java.lang.Throwable r11 = okhttp3.internal.Util.withSuppressed(r3, r7)     // Catch: all -> 0x00e9
            throw r11     // Catch: all -> 0x00e9
        L_0x00b9:
            r3 = move-exception
            java.io.IOException r9 = r3.getLastConnectException()     // Catch: all -> 0x00e9
            boolean r9 = r10.recover(r9, r1, r0, r6)     // Catch: all -> 0x00e9
            if (r9 == 0) goto L_0x00d4
            java.util.Collection r7 = (java.util.Collection) r7     // Catch: all -> 0x00e9
            java.io.IOException r3 = r3.getFirstConnectException()     // Catch: all -> 0x00e9
            java.util.List r7 = kotlin.collections.CollectionsKt.plus(r7, r3)     // Catch: all -> 0x00e9
        L_0x00ce:
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            r3 = r6
            goto L_0x001d
        L_0x00d4:
            java.io.IOException r11 = r3.getFirstConnectException()     // Catch: all -> 0x00e9
            java.lang.Exception r11 = (java.lang.Exception) r11     // Catch: all -> 0x00e9
            java.lang.Throwable r11 = okhttp3.internal.Util.withSuppressed(r11, r7)     // Catch: all -> 0x00e9
            throw r11     // Catch: all -> 0x00e9
        L_0x00df:
            java.io.IOException r11 = new java.io.IOException     // Catch: all -> 0x00e9
            java.lang.String r0 = "Canceled"
            r11.<init>(r0)     // Catch: all -> 0x00e9
            java.lang.Throwable r11 = (java.lang.Throwable) r11     // Catch: all -> 0x00e9
            throw r11     // Catch: all -> 0x00e9
        L_0x00e9:
            r11 = move-exception
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private final boolean recover(IOException iOException, RealCall realCall, Request request, boolean z) {
        if (!this.client.retryOnConnectionFailure()) {
            return false;
        }
        if ((!z || !requestIsOneShot(iOException, request)) && isRecoverable(iOException, z) && realCall.retryAfterFailure()) {
            return true;
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException iOException, Request request) {
        RequestBody body = request.body();
        return (body != null && body.isOneShot()) || (iOException instanceof FileNotFoundException);
    }

    private final boolean isRecoverable(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || z) {
                return false;
            }
            return true;
        } else if ((!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException)) {
            return true;
        } else {
            return false;
        }
    }

    private final Request followUpRequest(Response response, Exchange exchange) throws IOException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int code = response.code();
        String method = response.request().method();
        if (!(code == 307 || code == 308)) {
            if (code == 401) {
                return this.client.authenticator().authenticate(route, response);
            }
            if (code == 421) {
                RequestBody body = response.request().body();
                if ((body != null && body.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                return response.request();
            } else if (code == 503) {
                Response priorResponse = response.priorResponse();
                if ((priorResponse == null || priorResponse.code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                    return response.request();
                }
                return null;
            } else if (code == 407) {
                Intrinsics.checkNotNull(route);
                if (route.proxy().type() == Proxy.Type.HTTP) {
                    return this.client.proxyAuthenticator().authenticate(route, response);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            } else if (code != 408) {
                switch (code) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            } else if (!this.client.retryOnConnectionFailure()) {
                return null;
            } else {
                RequestBody body2 = response.request().body();
                if (body2 != null && body2.isOneShot()) {
                    return null;
                }
                Response priorResponse2 = response.priorResponse();
                if ((priorResponse2 == null || priorResponse2.code() != 408) && retryAfter(response, 0) <= 0) {
                    return response.request();
                }
                return null;
            }
        }
        return buildRedirectRequest(response, method);
    }

    private final Request buildRedirectRequest(Response response, String str) {
        String header$default;
        HttpUrl resolve;
        RequestBody requestBody = null;
        if (!this.client.followRedirects() || (header$default = Response.header$default(response, "Location", null, 2, null)) == null || (resolve = response.request().url().resolve(header$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(resolve.scheme(), response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(str)) {
            int code = response.code();
            boolean z = HttpMethod.INSTANCE.redirectsWithBody(str) || code == 308 || code == 307;
            if (!HttpMethod.INSTANCE.redirectsToGet(str) || code == 308 || code == 307) {
                if (z) {
                    requestBody = response.request().body();
                }
                newBuilder.method(str, requestBody);
            } else {
                newBuilder.method(ShareTarget.METHOD_GET, null);
            }
            if (!z) {
                newBuilder.removeHeader("Transfer-Encoding");
                newBuilder.removeHeader("Content-Length");
                newBuilder.removeHeader("Content-Type");
            }
        }
        if (!Util.canReuseConnectionFor(response.request().url(), resolve)) {
            newBuilder.removeHeader("Authorization");
        }
        return newBuilder.url(resolve).build();
    }

    private final int retryAfter(Response response, int i) {
        String header$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (header$default == null) {
            return i;
        }
        if (!new Regex("\\d+").matches(header$default)) {
            return Integer.MAX_VALUE;
        }
        Integer valueOf = Integer.valueOf(header$default);
        Intrinsics.checkNotNullExpressionValue(valueOf, "Integer.valueOf(header)");
        return valueOf.intValue();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: RetryAndFollowUpInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", "", "()V", "MAX_FOLLOW_UPS", "", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
