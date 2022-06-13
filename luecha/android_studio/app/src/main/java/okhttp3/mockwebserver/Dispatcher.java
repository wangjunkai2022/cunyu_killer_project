package okhttp3.mockwebserver;

/* loaded from: classes5.dex */
public abstract class Dispatcher {
    public abstract MockResponse dispatch(RecordedRequest recordedRequest) throws InterruptedException;

    public void shutdown() {
    }

    public MockResponse peek() {
        return new MockResponse().setSocketPolicy(SocketPolicy.KEEP_OPEN);
    }
}
