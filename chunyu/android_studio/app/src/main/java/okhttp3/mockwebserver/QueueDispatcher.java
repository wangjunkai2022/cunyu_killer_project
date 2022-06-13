package okhttp3.mockwebserver;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class QueueDispatcher extends Dispatcher {
    private static final MockResponse DEAD_LETTER = new MockResponse().setStatus("HTTP/1.1 503 shutting down");
    private static final Logger logger = Logger.getLogger(QueueDispatcher.class.getName());
    private MockResponse failFastResponse;
    protected final BlockingQueue<MockResponse> responseQueue = new LinkedBlockingQueue();

    @Override // okhttp3.mockwebserver.Dispatcher
    public MockResponse dispatch(RecordedRequest recordedRequest) throws InterruptedException {
        String requestLine = recordedRequest.getRequestLine();
        if (requestLine != null && requestLine.equals("GET /favicon.ico HTTP/1.1")) {
            Logger logger2 = logger;
            logger2.info("served " + requestLine);
            return new MockResponse().setResponseCode(404);
        } else if (this.failFastResponse != null && this.responseQueue.peek() == null) {
            return this.failFastResponse;
        } else {
            MockResponse take = this.responseQueue.take();
            MockResponse mockResponse = DEAD_LETTER;
            if (take == mockResponse) {
                this.responseQueue.add(mockResponse);
            }
            return take;
        }
    }

    @Override // okhttp3.mockwebserver.Dispatcher
    public MockResponse peek() {
        MockResponse peek = this.responseQueue.peek();
        if (peek != null) {
            return peek;
        }
        MockResponse mockResponse = this.failFastResponse;
        if (mockResponse != null) {
            return mockResponse;
        }
        return super.peek();
    }

    public void enqueueResponse(MockResponse mockResponse) {
        this.responseQueue.add(mockResponse);
    }

    @Override // okhttp3.mockwebserver.Dispatcher
    public void shutdown() {
        this.responseQueue.add(DEAD_LETTER);
    }

    public void setFailFast(boolean z) {
        setFailFast(z ? new MockResponse().setResponseCode(404) : null);
    }

    public void setFailFast(MockResponse mockResponse) {
        this.failFastResponse = mockResponse;
    }
}
