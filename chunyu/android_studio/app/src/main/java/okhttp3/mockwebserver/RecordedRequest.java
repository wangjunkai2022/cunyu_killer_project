package okhttp3.mockwebserver;

import java.io.IOException;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.TlsVersion;
import okio.Buffer;

/* loaded from: classes2.dex */
public final class RecordedRequest {
    private final Buffer body;
    private final long bodySize;
    private final List<Integer> chunkSizes;
    private final Handshake handshake;
    private final Headers headers;
    private final String method;
    private final String path;
    private final String requestLine;
    private final HttpUrl requestUrl;
    private final int sequenceNumber;

    public RecordedRequest(String str, Headers headers, List<Integer> list, long j, Buffer buffer, int i, Socket socket) {
        this.requestLine = str;
        this.headers = headers;
        this.chunkSizes = list;
        this.bodySize = j;
        this.body = buffer;
        this.sequenceNumber = i;
        boolean z = socket instanceof SSLSocket;
        if (z) {
            try {
                this.handshake = Handshake.get(((SSLSocket) socket).getSession());
            } catch (IOException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            this.handshake = null;
        }
        if (str != null) {
            int indexOf = str.indexOf(32);
            int i2 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i2);
            this.method = str.substring(0, indexOf);
            this.path = str.substring(i2, indexOf2);
            this.requestUrl = HttpUrl.parse(String.format("%s://%s:%s%s", z ? "https" : "http", socket.getInetAddress().getHostName(), Integer.valueOf(socket.getLocalPort()), this.path));
            return;
        }
        this.requestUrl = null;
        this.method = null;
        this.path = null;
    }

    public HttpUrl getRequestUrl() {
        return this.requestUrl;
    }

    public String getRequestLine() {
        return this.requestLine;
    }

    public String getMethod() {
        return this.method;
    }

    public String getPath() {
        return this.path;
    }

    public Headers getHeaders() {
        return this.headers;
    }

    public String getHeader(String str) {
        List<String> values = this.headers.values(str);
        if (values.isEmpty()) {
            return null;
        }
        return values.get(0);
    }

    public List<Integer> getChunkSizes() {
        return this.chunkSizes;
    }

    public long getBodySize() {
        return this.bodySize;
    }

    public Buffer getBody() {
        return this.body;
    }

    public String getUtf8Body() {
        return getBody().readUtf8();
    }

    public int getSequenceNumber() {
        return this.sequenceNumber;
    }

    public TlsVersion getTlsVersion() {
        Handshake handshake = this.handshake;
        if (handshake != null) {
            return handshake.tlsVersion();
        }
        return null;
    }

    public Handshake getHandshake() {
        return this.handshake;
    }

    public String toString() {
        return this.requestLine;
    }
}
