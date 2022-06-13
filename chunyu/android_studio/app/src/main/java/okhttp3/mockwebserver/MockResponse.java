package okhttp3.mockwebserver;

import com.google.common.net.HttpHeaders;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.WebSocketListener;
import okhttp3.internal.Internal;
import okhttp3.internal.http2.Settings;
import okio.Buffer;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public final class MockResponse implements Cloneable {
    private static final String CHUNKED_BODY_HEADER = "Transfer-encoding: chunked";
    private Buffer body;
    private Settings settings;
    private String status;
    private WebSocketListener webSocketListener;
    private Headers.Builder headers = new Headers.Builder();
    private long throttleBytesPerPeriod = Long.MAX_VALUE;
    private long throttlePeriodAmount = 1;
    private TimeUnit throttlePeriodUnit = TimeUnit.SECONDS;
    private SocketPolicy socketPolicy = SocketPolicy.KEEP_OPEN;
    private int http2ErrorCode = -1;
    private long bodyDelayAmount = 0;
    private TimeUnit bodyDelayUnit = TimeUnit.MILLISECONDS;
    private long headersDelayAmount = 0;
    private TimeUnit headersDelayUnit = TimeUnit.MILLISECONDS;
    private List<PushPromise> promises = new ArrayList();

    public MockResponse() {
        setResponseCode(200);
        setHeader("Content-Length", 0);
    }

    @Override // java.lang.Object
    public MockResponse clone() {
        try {
            MockResponse mockResponse = (MockResponse) super.clone();
            mockResponse.headers = this.headers.build().newBuilder();
            mockResponse.promises = new ArrayList(this.promises);
            return mockResponse;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public String getStatus() {
        return this.status;
    }

    public MockResponse setResponseCode(int i) {
        String str = (i < 100 || i >= 200) ? (i < 200 || i >= 300) ? (i < 300 || i >= 400) ? (i < 400 || i >= 500) ? (i < 500 || i >= 600) ? "Mock Response" : "Server Error" : "Client Error" : "Redirection" : "OK" : "Informational";
        return setStatus("HTTP/1.1 " + i + " " + str);
    }

    public MockResponse setStatus(String str) {
        this.status = str;
        return this;
    }

    public Headers getHeaders() {
        return this.headers.build();
    }

    public MockResponse clearHeaders() {
        this.headers = new Headers.Builder();
        return this;
    }

    public MockResponse addHeader(String str) {
        this.headers.add(str);
        return this;
    }

    public MockResponse addHeader(String str, Object obj) {
        this.headers.add(str, String.valueOf(obj));
        return this;
    }

    public MockResponse addHeaderLenient(String str, Object obj) {
        Internal.instance.addLenient(this.headers, str, String.valueOf(obj));
        return this;
    }

    public MockResponse setHeader(String str, Object obj) {
        removeHeader(str);
        return addHeader(str, obj);
    }

    public MockResponse setHeaders(Headers headers) {
        this.headers = headers.newBuilder();
        return this;
    }

    public MockResponse removeHeader(String str) {
        this.headers.removeAll(str);
        return this;
    }

    public Buffer getBody() {
        Buffer buffer = this.body;
        if (buffer != null) {
            return buffer.clone();
        }
        return null;
    }

    public MockResponse setBody(Buffer buffer) {
        setHeader("Content-Length", Long.valueOf(buffer.size()));
        this.body = buffer.clone();
        return this;
    }

    public MockResponse setBody(String str) {
        return setBody(new Buffer().writeUtf8(str));
    }

    public MockResponse setChunkedBody(Buffer buffer, int i) {
        removeHeader("Content-Length");
        this.headers.add(CHUNKED_BODY_HEADER);
        Buffer buffer2 = new Buffer();
        while (!buffer.exhausted()) {
            long min = Math.min(buffer.size(), (long) i);
            buffer2.writeHexadecimalUnsignedLong(min);
            buffer2.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            buffer2.write(buffer, min);
            buffer2.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        buffer2.writeUtf8("0\r\n\r\n");
        this.body = buffer2;
        return this;
    }

    public MockResponse setChunkedBody(String str, int i) {
        return setChunkedBody(new Buffer().writeUtf8(str), i);
    }

    public SocketPolicy getSocketPolicy() {
        return this.socketPolicy;
    }

    public MockResponse setSocketPolicy(SocketPolicy socketPolicy) {
        this.socketPolicy = socketPolicy;
        return this;
    }

    public int getHttp2ErrorCode() {
        return this.http2ErrorCode;
    }

    public MockResponse setHttp2ErrorCode(int i) {
        this.http2ErrorCode = i;
        return this;
    }

    public MockResponse throttleBody(long j, long j2, TimeUnit timeUnit) {
        this.throttleBytesPerPeriod = j;
        this.throttlePeriodAmount = j2;
        this.throttlePeriodUnit = timeUnit;
        return this;
    }

    public long getThrottleBytesPerPeriod() {
        return this.throttleBytesPerPeriod;
    }

    public long getThrottlePeriod(TimeUnit timeUnit) {
        return timeUnit.convert(this.throttlePeriodAmount, this.throttlePeriodUnit);
    }

    public MockResponse setBodyDelay(long j, TimeUnit timeUnit) {
        this.bodyDelayAmount = j;
        this.bodyDelayUnit = timeUnit;
        return this;
    }

    public long getBodyDelay(TimeUnit timeUnit) {
        return timeUnit.convert(this.bodyDelayAmount, this.bodyDelayUnit);
    }

    public MockResponse setHeadersDelay(long j, TimeUnit timeUnit) {
        this.headersDelayAmount = j;
        this.headersDelayUnit = timeUnit;
        return this;
    }

    public long getHeadersDelay(TimeUnit timeUnit) {
        return timeUnit.convert(this.headersDelayAmount, this.headersDelayUnit);
    }

    public MockResponse withPush(PushPromise pushPromise) {
        this.promises.add(pushPromise);
        return this;
    }

    public List<PushPromise> getPushPromises() {
        return this.promises;
    }

    public MockResponse withSettings(Settings settings) {
        this.settings = settings;
        return this;
    }

    public Settings getSettings() {
        return this.settings;
    }

    public MockResponse withWebSocketUpgrade(WebSocketListener webSocketListener) {
        setStatus("HTTP/1.1 101 Switching Protocols");
        setHeader("Connection", HttpHeaders.UPGRADE);
        setHeader(HttpHeaders.UPGRADE, "websocket");
        this.body = null;
        this.webSocketListener = webSocketListener;
        return this;
    }

    public WebSocketListener getWebSocketListener() {
        return this.webSocketListener;
    }

    @Override // java.lang.Object
    public String toString() {
        return this.status;
    }
}
