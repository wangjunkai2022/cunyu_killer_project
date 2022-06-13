package okhttp3.mockwebserver;

import okhttp3.Headers;

/* loaded from: classes2.dex */
public final class PushPromise {
    private final Headers headers;
    private final String method;
    private final String path;
    private final MockResponse response;

    public PushPromise(String str, String str2, Headers headers, MockResponse mockResponse) {
        this.method = str;
        this.path = str2;
        this.headers = headers;
        this.response = mockResponse;
    }

    public String method() {
        return this.method;
    }

    public String path() {
        return this.path;
    }

    public Headers headers() {
        return this.headers;
    }

    public MockResponse response() {
        return this.response;
    }
}
