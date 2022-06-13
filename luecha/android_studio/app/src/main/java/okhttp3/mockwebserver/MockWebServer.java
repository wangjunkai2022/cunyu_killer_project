package okhttp3.mockwebserver;

import java.io.Closeable;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Header;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.ws.RealWebSocket;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Sink;
import okio.Timeout;
import org.junit.rules.ExternalResource;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class MockWebServer extends ExternalResource implements Closeable {
    private static final int CLIENT_AUTH_NONE = 0;
    private static final int CLIENT_AUTH_REQUESTED = 1;
    private static final int CLIENT_AUTH_REQUIRED = 2;
    private static final X509TrustManager UNTRUSTED_TRUST_MANAGER = new X509TrustManager() { // from class: okhttp3.mockwebserver.MockWebServer.1
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            throw new CertificateException();
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            throw new AssertionError();
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            throw new AssertionError();
        }
    };
    private static final Logger logger = Logger.getLogger(MockWebServer.class.getName());
    private ExecutorService executor;
    private InetSocketAddress inetSocketAddress;
    private ServerSocket serverSocket;
    private SSLSocketFactory sslSocketFactory;
    private boolean started;
    private boolean tunnelProxy;
    private final BlockingQueue<RecordedRequest> requestQueue = new LinkedBlockingQueue();
    private final Set<Socket> openClientSockets = Collections.newSetFromMap(new ConcurrentHashMap());
    private final Set<Http2Connection> openConnections = Collections.newSetFromMap(new ConcurrentHashMap());
    private final AtomicInteger requestCount = new AtomicInteger();
    private long bodyLimit = Long.MAX_VALUE;
    private ServerSocketFactory serverSocketFactory = ServerSocketFactory.getDefault();
    private int clientAuth = 0;
    private Dispatcher dispatcher = new QueueDispatcher();
    private int port = -1;
    private boolean protocolNegotiationEnabled = true;
    private List<Protocol> protocols = Util.immutableList(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});

    static {
        Internal.initializeInstanceForTests();
    }

    @Override // org.junit.rules.ExternalResource
    protected synchronized void before() {
        if (!this.started) {
            try {
                start();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public int getPort() {
        before();
        return this.port;
    }

    public String getHostName() {
        before();
        return this.inetSocketAddress.getAddress().getCanonicalHostName();
    }

    public Proxy toProxyAddress() {
        before();
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.inetSocketAddress.getAddress().getCanonicalHostName(), getPort()));
    }

    public void setServerSocketFactory(ServerSocketFactory serverSocketFactory) {
        if (this.executor == null) {
            this.serverSocketFactory = serverSocketFactory;
            return;
        }
        throw new IllegalStateException("setServerSocketFactory() must be called before start()");
    }

    public HttpUrl url(String str) {
        return new HttpUrl.Builder().scheme(this.sslSocketFactory != null ? "https" : "http").host(getHostName()).port(getPort()).build().resolve(str);
    }

    public void setBodyLimit(long j) {
        this.bodyLimit = j;
    }

    public void setProtocolNegotiationEnabled(boolean z) {
        this.protocolNegotiationEnabled = z;
    }

    public void setProtocols(List<Protocol> list) {
        List<Protocol> immutableList = Util.immutableList(list);
        if (immutableList.contains(Protocol.H2_PRIOR_KNOWLEDGE) && immutableList.size() > 1) {
            throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + immutableList);
        } else if (!immutableList.contains(Protocol.H2_PRIOR_KNOWLEDGE) && !immutableList.contains(Protocol.HTTP_1_1)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + immutableList);
        } else if (!immutableList.contains(null)) {
            this.protocols = immutableList;
        } else {
            throw new IllegalArgumentException("protocols must not contain null");
        }
    }

    public List<Protocol> protocols() {
        return this.protocols;
    }

    public void useHttps(SSLSocketFactory sSLSocketFactory, boolean z) {
        this.sslSocketFactory = sSLSocketFactory;
        this.tunnelProxy = z;
    }

    public void noClientAuth() {
        this.clientAuth = 0;
    }

    public void requestClientAuth() {
        this.clientAuth = 1;
    }

    public void requireClientAuth() {
        this.clientAuth = 2;
    }

    public RecordedRequest takeRequest() throws InterruptedException {
        return this.requestQueue.take();
    }

    public RecordedRequest takeRequest(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.requestQueue.poll(j, timeUnit);
    }

    public int getRequestCount() {
        return this.requestCount.get();
    }

    public void enqueue(MockResponse mockResponse) {
        ((QueueDispatcher) this.dispatcher).enqueueResponse(mockResponse.clone());
    }

    public void start() throws IOException {
        start(0);
    }

    public void start(int i) throws IOException {
        start(InetAddress.getByName("localhost"), i);
    }

    public void start(InetAddress inetAddress, int i) throws IOException {
        start(new InetSocketAddress(inetAddress, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [okhttp3.mockwebserver.MockWebServer$2, java.lang.Runnable] */
    private synchronized void start(InetSocketAddress inetSocketAddress) throws IOException {
        if (!this.started) {
            this.started = true;
            this.executor = Executors.newCachedThreadPool(Util.threadFactory("MockWebServer", false));
            this.inetSocketAddress = inetSocketAddress;
            this.serverSocket = this.serverSocketFactory.createServerSocket();
            this.serverSocket.setReuseAddress(inetSocketAddress.getPort() != 0);
            this.serverSocket.bind(inetSocketAddress, 50);
            this.port = this.serverSocket.getLocalPort();
            this.executor.execute(new NamedRunnable("MockWebServer %s", Integer.valueOf(this.port)) { // from class: okhttp3.mockwebserver.MockWebServer.2
                protected void execute() {
                    try {
                        Logger logger2 = MockWebServer.logger;
                        logger2.info(MockWebServer.this + " starting to accept connections");
                        acceptConnections();
                    } catch (Throwable th) {
                        Logger logger3 = MockWebServer.logger;
                        Level level = Level.WARNING;
                        logger3.log(level, MockWebServer.this + " failed unexpectedly", th);
                    }
                    Util.closeQuietly(MockWebServer.this.serverSocket);
                    Iterator it = MockWebServer.this.openClientSockets.iterator();
                    while (it.hasNext()) {
                        Util.closeQuietly((Socket) it.next());
                        it.remove();
                    }
                    Iterator it2 = MockWebServer.this.openConnections.iterator();
                    while (it2.hasNext()) {
                        Util.closeQuietly((Closeable) it2.next());
                        it2.remove();
                    }
                    MockWebServer.this.dispatcher.shutdown();
                    MockWebServer.this.executor.shutdown();
                }

                private void acceptConnections() throws Exception {
                    while (true) {
                        try {
                            Socket accept = MockWebServer.this.serverSocket.accept();
                            if (MockWebServer.this.dispatcher.peek().getSocketPolicy() == SocketPolicy.DISCONNECT_AT_START) {
                                MockWebServer.this.dispatchBookkeepingRequest(0, accept);
                                accept.close();
                            } else {
                                MockWebServer.this.openClientSockets.add(accept);
                                MockWebServer.this.serveConnection(accept);
                            }
                        } catch (SocketException e) {
                            Logger logger2 = MockWebServer.logger;
                            logger2.info(MockWebServer.this + " done accepting connections: " + e.getMessage());
                            return;
                        }
                    }
                }
            });
        } else {
            throw new IllegalStateException("start() already called");
        }
    }

    public synchronized void shutdown() throws IOException {
        if (this.started) {
            if (this.serverSocket != null) {
                this.serverSocket.close();
                try {
                    if (!this.executor.awaitTermination(5, TimeUnit.SECONDS)) {
                        throw new IOException("Gave up waiting for executor to shut down");
                    }
                } catch (InterruptedException unused) {
                    throw new AssertionError();
                }
            } else {
                throw new IllegalStateException("shutdown() before start()");
            }
        }
    }

    @Override // org.junit.rules.ExternalResource
    protected synchronized void after() {
        try {
            shutdown();
        } catch (IOException e) {
            logger.log(Level.WARNING, "MockWebServer shutdown failed", (Throwable) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Runnable, okhttp3.mockwebserver.MockWebServer$3] */
    public void serveConnection(final Socket socket) {
        this.executor.execute(new NamedRunnable("MockWebServer %s", new Object[]{socket.getRemoteSocketAddress()}) { // from class: okhttp3.mockwebserver.MockWebServer.3
            int sequenceNumber = 0;

            protected void execute() {
                try {
                    processConnection();
                } catch (IOException e) {
                    Logger logger2 = MockWebServer.logger;
                    logger2.info(MockWebServer.this + " connection from " + socket.getInetAddress() + " failed: " + e);
                } catch (Exception e2) {
                    Logger logger3 = MockWebServer.logger;
                    Level level = Level.SEVERE;
                    logger3.log(level, MockWebServer.this + " connection from " + socket.getInetAddress() + " crashed", (Throwable) e2);
                }
            }

            public void processConnection() throws Exception {
                Socket socket2;
                SocketPolicy socketPolicy = MockWebServer.this.dispatcher.peek().getSocketPolicy();
                Protocol protocol = Protocol.HTTP_1_1;
                if (MockWebServer.this.sslSocketFactory != null) {
                    if (MockWebServer.this.tunnelProxy) {
                        createTunnel();
                    }
                    if (socketPolicy == SocketPolicy.FAIL_HANDSHAKE) {
                        MockWebServer.this.dispatchBookkeepingRequest(this.sequenceNumber, socket);
                        MockWebServer.this.processHandshakeFailure(socket);
                        return;
                    }
                    SSLSocketFactory sSLSocketFactory = MockWebServer.this.sslSocketFactory;
                    Socket socket3 = socket;
                    socket2 = sSLSocketFactory.createSocket(socket3, socket3.getInetAddress().getHostAddress(), socket.getPort(), true);
                    SSLSocket sSLSocket = (SSLSocket) socket2;
                    sSLSocket.setUseClientMode(false);
                    if (MockWebServer.this.clientAuth == 2) {
                        sSLSocket.setNeedClientAuth(true);
                    } else if (MockWebServer.this.clientAuth == 1) {
                        sSLSocket.setWantClientAuth(true);
                    }
                    MockWebServer.this.openClientSockets.add(socket2);
                    if (MockWebServer.this.protocolNegotiationEnabled) {
                        Platform.get().configureTlsExtensions(sSLSocket, null, MockWebServer.this.protocols);
                    }
                    sSLSocket.startHandshake();
                    if (MockWebServer.this.protocolNegotiationEnabled) {
                        String selectedProtocol = Platform.get().getSelectedProtocol(sSLSocket);
                        protocol = selectedProtocol != null ? Protocol.get(selectedProtocol) : Protocol.HTTP_1_1;
                    }
                    MockWebServer.this.openClientSockets.remove(socket);
                } else if (MockWebServer.this.protocols.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                    socket2 = socket;
                    protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                } else {
                    socket2 = socket;
                }
                if (socketPolicy != SocketPolicy.STALL_SOCKET_AT_START) {
                    if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
                        Http2Connection build = new Http2Connection.Builder(false).socket(socket2).listener(new Http2SocketHandler(socket2, protocol)).build();
                        build.start();
                        MockWebServer.this.openConnections.add(build);
                        MockWebServer.this.openClientSockets.remove(socket2);
                    } else if (protocol == Protocol.HTTP_1_1) {
                        do {
                        } while (processOneRequest(socket2, Okio.buffer(Okio.source(socket2)), Okio.buffer(Okio.sink(socket2))));
                        if (this.sequenceNumber == 0) {
                            Logger logger2 = MockWebServer.logger;
                            logger2.warning(MockWebServer.this + " connection from " + socket.getInetAddress() + " didn't make a request");
                        }
                        socket2.close();
                        MockWebServer.this.openClientSockets.remove(socket2);
                    } else {
                        throw new AssertionError();
                    }
                }
            }

            private void createTunnel() throws IOException, InterruptedException {
                SocketPolicy socketPolicy;
                BufferedSource buffer = Okio.buffer(Okio.source(socket));
                BufferedSink buffer2 = Okio.buffer(Okio.sink(socket));
                do {
                    socketPolicy = MockWebServer.this.dispatcher.peek().getSocketPolicy();
                    if (!processOneRequest(socket, buffer, buffer2)) {
                        throw new IllegalStateException("Tunnel without any CONNECT!");
                    }
                } while (socketPolicy != SocketPolicy.UPGRADE_TO_SSL_AT_END);
            }

            private boolean processOneRequest(Socket socket2, BufferedSource bufferedSource, BufferedSink bufferedSink) throws IOException, InterruptedException {
                boolean z;
                RecordedRequest readRequest = MockWebServer.this.readRequest(socket2, bufferedSource, bufferedSink, this.sequenceNumber);
                if (readRequest == null) {
                    return false;
                }
                MockWebServer.this.requestCount.incrementAndGet();
                MockWebServer.this.requestQueue.add(readRequest);
                MockResponse dispatch = MockWebServer.this.dispatcher.dispatch(readRequest);
                if (dispatch.getSocketPolicy() == SocketPolicy.DISCONNECT_AFTER_REQUEST) {
                    socket2.close();
                    return false;
                } else if (dispatch.getSocketPolicy() != SocketPolicy.NO_RESPONSE) {
                    boolean z2 = "Upgrade".equalsIgnoreCase(readRequest.getHeader("Connection")) && "websocket".equalsIgnoreCase(readRequest.getHeader("Upgrade"));
                    boolean z3 = dispatch.getWebSocketListener() != null;
                    if (!z2 || !z3) {
                        MockWebServer.this.writeHttpResponse(socket2, bufferedSink, dispatch);
                        z = true;
                    } else {
                        MockWebServer.this.handleWebSocketUpgrade(socket2, bufferedSource, bufferedSink, readRequest, dispatch);
                        z = false;
                    }
                    if (MockWebServer.logger.isLoggable(Level.INFO)) {
                        MockWebServer.logger.info(MockWebServer.this + " received request: " + readRequest + " and responded: " + dispatch);
                    }
                    if (dispatch.getSocketPolicy() == SocketPolicy.DISCONNECT_AT_END) {
                        socket2.close();
                        return false;
                    }
                    if (dispatch.getSocketPolicy() == SocketPolicy.SHUTDOWN_INPUT_AT_END) {
                        socket2.shutdownInput();
                    } else if (dispatch.getSocketPolicy() == SocketPolicy.SHUTDOWN_OUTPUT_AT_END) {
                        socket2.shutdownOutput();
                    }
                    this.sequenceNumber++;
                    return z;
                } else if (bufferedSource.exhausted()) {
                    return false;
                } else {
                    throw new ProtocolException("unexpected data");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processHandshakeFailure(Socket socket) throws Exception {
        SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, new TrustManager[]{UNTRUSTED_TRUST_MANAGER}, new SecureRandom());
        SSLSocket sSLSocket = (SSLSocket) instance.getSocketFactory().createSocket(socket, socket.getInetAddress().getHostAddress(), socket.getPort(), true);
        try {
            sSLSocket.startHandshake();
            throw new AssertionError();
        } catch (IOException unused) {
            sSLSocket.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchBookkeepingRequest(int i, Socket socket) throws InterruptedException {
        RecordedRequest recordedRequest = new RecordedRequest(null, null, null, -1, null, i, socket);
        this.requestCount.incrementAndGet();
        this.requestQueue.add(recordedRequest);
        this.dispatcher.dispatch(recordedRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RecordedRequest readRequest(Socket socket, BufferedSource bufferedSource, BufferedSink bufferedSink, int i) throws IOException {
        boolean z;
        try {
            String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
            if (readUtf8LineStrict.length() == 0) {
                return null;
            }
            Headers.Builder builder = new Headers.Builder();
            long j = -1;
            boolean z2 = false;
            boolean z3 = false;
            while (true) {
                String readUtf8LineStrict2 = bufferedSource.readUtf8LineStrict();
                if (readUtf8LineStrict2.length() == 0) {
                    break;
                }
                Internal.instance.addLenient(builder, readUtf8LineStrict2);
                String lowerCase = readUtf8LineStrict2.toLowerCase(Locale.US);
                if (j == -1 && lowerCase.startsWith("content-length:")) {
                    j = Long.parseLong(readUtf8LineStrict2.substring(15).trim());
                }
                if (lowerCase.startsWith("transfer-encoding:") && lowerCase.substring(18).trim().equals("chunked")) {
                    z3 = true;
                }
                if (lowerCase.startsWith("expect:") && lowerCase.substring(7).trim().equalsIgnoreCase("100-continue")) {
                    z2 = true;
                }
            }
            SocketPolicy socketPolicy = this.dispatcher.peek().getSocketPolicy();
            if ((z2 && socketPolicy == SocketPolicy.EXPECT_CONTINUE) || socketPolicy == SocketPolicy.CONTINUE_ALWAYS) {
                bufferedSink.writeUtf8("HTTP/1.1 100 Continue\r\n");
                bufferedSink.writeUtf8("Content-Length: 0\r\n");
                bufferedSink.writeUtf8("\r\n");
                bufferedSink.flush();
            }
            TruncatingBuffer truncatingBuffer = new TruncatingBuffer(this.bodyLimit);
            ArrayList arrayList = new ArrayList();
            MockResponse peek = this.dispatcher.peek();
            if (j != -1) {
                z = j > 0;
                throttledTransfer(peek, socket, bufferedSource, Okio.buffer(truncatingBuffer), j, true);
            } else if (z3) {
                while (true) {
                    int parseInt = Integer.parseInt(bufferedSource.readUtf8LineStrict().trim(), 16);
                    if (parseInt == 0) {
                        break;
                    }
                    arrayList.add(Integer.valueOf(parseInt));
                    throttledTransfer(peek, socket, bufferedSource, Okio.buffer(truncatingBuffer), (long) parseInt, true);
                    readEmptyLine(bufferedSource);
                }
                readEmptyLine(bufferedSource);
                z = true;
            } else {
                z = false;
            }
            String substring = readUtf8LineStrict.substring(0, readUtf8LineStrict.indexOf(32));
            if (!z || HttpMethod.permitsRequestBody(substring)) {
                return new RecordedRequest(readUtf8LineStrict, builder.build(), arrayList, truncatingBuffer.receivedByteCount, truncatingBuffer.buffer, i, socket);
            }
            throw new IllegalArgumentException("Request must not have a body: " + readUtf8LineStrict);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWebSocketUpgrade(Socket socket, BufferedSource bufferedSource, BufferedSink bufferedSink, RecordedRequest recordedRequest, MockResponse mockResponse) throws IOException {
        mockResponse.setHeader("Sec-WebSocket-Accept", WebSocketProtocol.acceptHeader(recordedRequest.getHeader("Sec-WebSocket-Key")));
        writeHttpResponse(socket, bufferedSink, mockResponse);
        String str = recordedRequest.getTlsVersion() != null ? "https" : "http";
        try {
            String header = recordedRequest.getHeader("Host");
            Request.Builder builder = new Request.Builder();
            Request build = builder.url(str + "://" + header + "/").headers(recordedRequest.getHeaders()).build();
            Response build2 = new Response.Builder().code(Integer.parseInt(mockResponse.getStatus().split(" ")[1])).message(mockResponse.getStatus().split(" ", 3)[2]).headers(mockResponse.getHeaders()).request(build).protocol(Protocol.HTTP_1_1).build();
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            AnonymousClass4 r12 = new RealWebSocket.Streams(false, bufferedSource, bufferedSink) { // from class: okhttp3.mockwebserver.MockWebServer.4
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    countDownLatch.countDown();
                }
            };
            RealWebSocket realWebSocket = new RealWebSocket(build, mockResponse.getWebSocketListener(), new SecureRandom(), 0);
            mockResponse.getWebSocketListener().onOpen(realWebSocket, build2);
            realWebSocket.initReaderAndWriter("MockWebServer WebSocket " + recordedRequest.getPath(), r12);
            try {
                realWebSocket.loopReader();
                try {
                    countDownLatch.await();
                } catch (InterruptedException e) {
                    throw new AssertionError(e);
                }
            } catch (IOException e2) {
                realWebSocket.failWebSocket(e2, null);
            }
        } finally {
            Util.closeQuietly(bufferedSource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeHttpResponse(Socket socket, BufferedSink bufferedSink, MockResponse mockResponse) throws IOException {
        sleepIfDelayed(mockResponse.getHeadersDelay(TimeUnit.MILLISECONDS));
        bufferedSink.writeUtf8(mockResponse.getStatus());
        bufferedSink.writeUtf8("\r\n");
        Headers headers = mockResponse.getHeaders();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            bufferedSink.writeUtf8(headers.name(i));
            bufferedSink.writeUtf8(": ");
            bufferedSink.writeUtf8(headers.value(i));
            bufferedSink.writeUtf8("\r\n");
        }
        bufferedSink.writeUtf8("\r\n");
        bufferedSink.flush();
        Buffer body = mockResponse.getBody();
        if (body != null) {
            sleepIfDelayed(mockResponse.getBodyDelay(TimeUnit.MILLISECONDS));
            throttledTransfer(mockResponse, socket, body, bufferedSink, body.size(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sleepIfDelayed(long j) {
        if (j != 0) {
            try {
                Thread.sleep(j);
            } catch (InterruptedException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
        if (r7 == r0) goto L_0x0096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008a, code lost:
        java.lang.Thread.sleep(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0095, code lost:
        throw new java.lang.AssertionError(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0096, code lost:
        r0 = r0;
        r3 = r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void throttledTransfer(okhttp3.mockwebserver.MockResponse r21, java.net.Socket r22, okio.BufferedSource r23, okio.BufferedSink r24, long r25, boolean r27) throws java.io.IOException {
        /*
            r20 = this;
            r0 = 0
            int r2 = (r25 > r0 ? 1 : (r25 == r0 ? 0 : -1))
            if (r2 != 0) goto L_0x0007
            return
        L_0x0007:
            okio.Buffer r2 = new okio.Buffer
            r2.<init>()
            long r3 = r21.getThrottleBytesPerPeriod()
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS
            r6 = r21
            long r7 = r6.getThrottlePeriod(r5)
            r9 = 2
            long r9 = r25 / r9
            r5 = 1
            r11 = 0
            if (r27 == 0) goto L_0x0029
            okhttp3.mockwebserver.SocketPolicy r6 = r21.getSocketPolicy()
            okhttp3.mockwebserver.SocketPolicy r12 = okhttp3.mockwebserver.SocketPolicy.DISCONNECT_DURING_REQUEST_BODY
            if (r6 != r12) goto L_0x0032
            goto L_0x0033
        L_0x0029:
            okhttp3.mockwebserver.SocketPolicy r6 = r21.getSocketPolicy()
            okhttp3.mockwebserver.SocketPolicy r12 = okhttp3.mockwebserver.SocketPolicy.DISCONNECT_DURING_RESPONSE_BODY
            if (r6 != r12) goto L_0x0032
            goto L_0x0033
        L_0x0032:
            r5 = r11
        L_0x0033:
            r12 = r25
        L_0x0035:
            boolean r6 = r22.isClosed()
            if (r6 != 0) goto L_0x009a
            r6 = r11
        L_0x003c:
            long r14 = (long) r6
            int r6 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
            if (r6 >= 0) goto L_0x007f
            long r0 = r3 - r14
            long r0 = java.lang.Math.min(r12, r0)
            r16 = r3
            if (r5 == 0) goto L_0x0051
            long r3 = r12 - r9
            long r0 = java.lang.Math.min(r0, r3)
        L_0x0051:
            r3 = r0
            r0 = r23
            long r3 = r0.read(r2, r3)
            r18 = -1
            int r1 = (r3 > r18 ? 1 : (r3 == r18 ? 0 : -1))
            if (r1 != 0) goto L_0x005f
            return
        L_0x005f:
            r1 = r24
            r1.write(r2, r3)
            r24.flush()
            long r14 = r14 + r3
            int r6 = (int) r14
            long r12 = r12 - r3
            if (r5 == 0) goto L_0x0074
            int r3 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
            if (r3 != 0) goto L_0x0074
            r22.close()
            return
        L_0x0074:
            r3 = 0
            int r14 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            if (r14 != 0) goto L_0x007b
            return
        L_0x007b:
            r0 = r3
            r3 = r16
            goto L_0x003c
        L_0x007f:
            r16 = r3
            r3 = r0
            r0 = r23
            r1 = r24
            int r6 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r6 == 0) goto L_0x0096
            java.lang.Thread.sleep(r7)     // Catch: InterruptedException -> 0x008e
            goto L_0x0096
        L_0x008e:
            r0 = move-exception
            r1 = r0
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>(r1)
            throw r0
        L_0x0096:
            r0 = r3
            r3 = r16
            goto L_0x0035
        L_0x009a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.mockwebserver.MockWebServer.throttledTransfer(okhttp3.mockwebserver.MockResponse, java.net.Socket, okio.BufferedSource, okio.BufferedSink, long, boolean):void");
    }

    private void readEmptyLine(BufferedSource bufferedSource) throws IOException {
        String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
        if (readUtf8LineStrict.length() != 0) {
            throw new IllegalStateException("Expected empty but was: " + readUtf8LineStrict);
        }
    }

    public void setDispatcher(Dispatcher dispatcher) {
        if (dispatcher != null) {
            this.dispatcher = dispatcher;
            return;
        }
        throw new NullPointerException();
    }

    @Override // java.lang.Object
    public String toString() {
        return "MockWebServer[" + this.port + "]";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TruncatingBuffer implements Sink {
        private final Buffer buffer = new Buffer();
        private long receivedByteCount;
        private long remainingByteCount;

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
        }

        TruncatingBuffer(long j) {
            this.remainingByteCount = j;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            long min = Math.min(this.remainingByteCount, j);
            if (min > 0) {
                buffer.read(this.buffer, min);
            }
            long j2 = j - min;
            if (j2 > 0) {
                buffer.skip(j2);
            }
            this.remainingByteCount -= min;
            this.receivedByteCount += j;
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class Http2SocketHandler extends Http2Connection.Listener {
        private final Protocol protocol;
        private final AtomicInteger sequenceNumber;
        private final Socket socket;

        private Http2SocketHandler(Socket socket, Protocol protocol) {
            this.sequenceNumber = new AtomicInteger();
            this.socket = socket;
            this.protocol = protocol;
        }

        @Override // okhttp3.internal.http2.Http2Connection.Listener
        public void onStream(Http2Stream http2Stream) throws IOException {
            MockResponse peek = MockWebServer.this.dispatcher.peek();
            if (peek.getSocketPolicy() == SocketPolicy.RESET_STREAM_AT_START) {
                try {
                    MockWebServer.this.dispatchBookkeepingRequest(this.sequenceNumber.getAndIncrement(), this.socket);
                    http2Stream.close(ErrorCode.fromHttp2(peek.getHttp2ErrorCode()));
                } catch (InterruptedException e) {
                    throw new AssertionError(e);
                }
            } else {
                RecordedRequest readRequest = readRequest(http2Stream);
                MockWebServer.this.requestCount.incrementAndGet();
                MockWebServer.this.requestQueue.add(readRequest);
                try {
                    MockResponse dispatch = MockWebServer.this.dispatcher.dispatch(readRequest);
                    if (dispatch.getSocketPolicy() == SocketPolicy.DISCONNECT_AFTER_REQUEST) {
                        this.socket.close();
                        return;
                    }
                    writeResponse(http2Stream, dispatch);
                    if (MockWebServer.logger.isLoggable(Level.INFO)) {
                        Logger logger = MockWebServer.logger;
                        logger.info(MockWebServer.this + " received request: " + readRequest + " and responded: " + dispatch + " protocol is " + this.protocol.toString());
                    }
                    if (dispatch.getSocketPolicy() == SocketPolicy.DISCONNECT_AT_END) {
                        http2Stream.getConnection().shutdown(ErrorCode.NO_ERROR);
                    }
                } catch (InterruptedException e2) {
                    throw new AssertionError(e2);
                }
            }
        }

        private RecordedRequest readRequest(Http2Stream http2Stream) throws IOException {
            List requestHeaders = http2Stream.getRequestHeaders();
            Headers.Builder builder = new Headers.Builder();
            int size = requestHeaders.size();
            boolean z = true;
            String str = "<:method omitted>";
            String str2 = "<:path omitted>";
            boolean z2 = true;
            for (int i = 0; i < size; i++) {
                ByteString byteString = ((Header) requestHeaders.get(i)).name;
                String utf8 = ((Header) requestHeaders.get(i)).value.utf8();
                if (byteString.equals(Header.TARGET_METHOD)) {
                    str = utf8;
                } else if (byteString.equals(Header.TARGET_PATH)) {
                    str2 = utf8;
                } else if (this.protocol == Protocol.HTTP_2 || this.protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
                    builder.add(byteString.utf8(), utf8);
                } else {
                    throw new IllegalStateException();
                }
                if (byteString.utf8().equals("expect") && utf8.equalsIgnoreCase("100-continue")) {
                    z2 = false;
                }
            }
            Headers build = builder.build();
            MockResponse peek = MockWebServer.this.dispatcher.peek();
            if (z2 || peek.getSocketPolicy() != SocketPolicy.EXPECT_CONTINUE) {
                z = z2;
            } else {
                http2Stream.sendResponseHeaders(Collections.singletonList(new Header(Header.RESPONSE_STATUS, ByteString.encodeUtf8("100 Continue"))), true);
                http2Stream.getConnection().flush();
            }
            Buffer buffer = new Buffer();
            if (z) {
                String str3 = build.get("content-length");
                MockWebServer.this.throttledTransfer(peek, this.socket, Okio.buffer(http2Stream.getSource()), buffer, str3 != null ? Long.parseLong(str3) : Long.MAX_VALUE, true);
            }
            return new RecordedRequest(str + ' ' + str2 + " HTTP/1.1", build, Collections.emptyList(), buffer.size(), buffer, this.sequenceNumber.getAndIncrement(), this.socket);
        }

        private void writeResponse(Http2Stream http2Stream, MockResponse mockResponse) throws IOException {
            Settings settings = mockResponse.getSettings();
            if (settings != null) {
                http2Stream.getConnection().setSettings(settings);
            }
            if (mockResponse.getSocketPolicy() != SocketPolicy.NO_RESPONSE) {
                ArrayList arrayList = new ArrayList();
                String[] split = mockResponse.getStatus().split(" ", 3);
                if (split.length >= 2) {
                    arrayList.add(new Header(Header.RESPONSE_STATUS, split[1]));
                    Headers headers = mockResponse.getHeaders();
                    int size = headers.size();
                    boolean z = false;
                    for (int i = 0; i < size; i++) {
                        arrayList.add(new Header(headers.name(i), headers.value(i)));
                    }
                    MockWebServer.this.sleepIfDelayed(mockResponse.getHeadersDelay(TimeUnit.MILLISECONDS));
                    Buffer body = mockResponse.getBody();
                    if (body != null || !mockResponse.getPushPromises().isEmpty()) {
                        z = true;
                    }
                    http2Stream.sendResponseHeaders(arrayList, z);
                    pushPromises(http2Stream, mockResponse.getPushPromises());
                    if (body != null) {
                        BufferedSink buffer = Okio.buffer(http2Stream.getSink());
                        MockWebServer.this.sleepIfDelayed(mockResponse.getBodyDelay(TimeUnit.MILLISECONDS));
                        MockWebServer.this.throttledTransfer(mockResponse, this.socket, body, buffer, body.size(), false);
                        buffer.close();
                    } else if (z) {
                        http2Stream.close(ErrorCode.NO_ERROR);
                    }
                } else {
                    throw new AssertionError("Unexpected status: " + mockResponse.getStatus());
                }
            }
        }

        private void pushPromises(Http2Stream http2Stream, List<PushPromise> list) throws IOException {
            for (PushPromise pushPromise : list) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Header(Header.TARGET_AUTHORITY, MockWebServer.this.url(pushPromise.path()).host()));
                arrayList.add(new Header(Header.TARGET_METHOD, pushPromise.method()));
                arrayList.add(new Header(Header.TARGET_PATH, pushPromise.path()));
                Headers headers = pushPromise.headers();
                int size = headers.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    arrayList.add(new Header(headers.name(i), headers.value(i)));
                }
                MockWebServer.this.requestQueue.add(new RecordedRequest(pushPromise.method() + ' ' + pushPromise.path() + " HTTP/1.1", pushPromise.headers(), Collections.emptyList(), 0, new Buffer(), this.sequenceNumber.getAndIncrement(), this.socket));
                if (pushPromise.response().getBody() != null) {
                    z = true;
                }
                writeResponse(http2Stream.getConnection().pushStream(http2Stream.getId(), arrayList, z), pushPromise.response());
            }
        }
    }
}
