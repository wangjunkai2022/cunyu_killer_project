package okhttp3.internal.http2;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Reader;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* compiled from: Http2Connection.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 \u0099\u00012\u00020\u0001:\b\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010P\u001a\u00020QJ\b\u0010R\u001a\u00020QH\u0016J'\u0010R\u001a\u00020Q2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\b\u0010V\u001a\u0004\u0018\u00010WH\u0000¢\u0006\u0002\bXJ\u0012\u0010Y\u001a\u00020Q2\b\u0010Z\u001a\u0004\u0018\u00010WH\u0002J\u0006\u0010[\u001a\u00020QJ\u0010\u0010\\\u001a\u0004\u0018\u00010B2\u0006\u0010]\u001a\u00020\u0012J\u000e\u0010^\u001a\u00020\t2\u0006\u0010_\u001a\u00020\u0006J&\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tH\u0002J\u001c\u0010`\u001a\u00020B2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0006\u0010f\u001a\u00020\u0012J-\u0010g\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020\u00122\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\bmJ+\u0010n\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\boJ#\u0010p\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0002\bqJ\u001d\u0010r\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0002\btJ$\u0010u\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0015\u0010v\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\bwJ\u0017\u0010x\u001a\u0004\u0018\u00010B2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\byJ\r\u0010z\u001a\u00020QH\u0000¢\u0006\u0002\b{J\u000e\u0010|\u001a\u00020Q2\u0006\u0010}\u001a\u00020&J\u000e\u0010~\u001a\u00020Q2\u0006\u0010\u007f\u001a\u00020TJ\u001e\u0010\u0080\u0001\u001a\u00020Q2\t\b\u0002\u0010\u0081\u0001\u001a\u00020\t2\b\b\u0002\u0010E\u001a\u00020FH\u0007J\u0018\u0010\u0082\u0001\u001a\u00020Q2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0084\u0001J,\u0010\u0085\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\u0006\u0010k\u001a\u00020\u0006J/\u0010\u0089\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\r\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0003\b\u008b\u0001J\u0007\u0010\u008c\u0001\u001a\u00020QJ\"\u0010\u008c\u0001\u001a\u00020Q2\u0007\u0010\u008d\u0001\u001a\u00020\t2\u0007\u0010\u008e\u0001\u001a\u00020\u00122\u0007\u0010\u008f\u0001\u001a\u00020\u0012J\u0007\u0010\u0090\u0001\u001a\u00020QJ\u001f\u0010\u0091\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010\u007f\u001a\u00020TH\u0000¢\u0006\u0003\b\u0092\u0001J\u001f\u0010\u0093\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0003\b\u0094\u0001J \u0010\u0095\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0097\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001dR\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010(\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u001e\u00105\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b6\u00104R\u0015\u00107\u001a\u000608R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u000e\u0010;\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020=X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020B0AX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u000e\u0010E\u001a\u00020FX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010G\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bH\u00104R\u001e\u0010I\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bJ\u00104R\u0011\u0010K\u001a\u00020L¢\u0006\b\n\u0000\u001a\u0004\bM\u0010NR\u000e\u0010O\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u009c\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "builder", "Lokhttp3/internal/http2/Http2Connection$Builder;", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "awaitPingsSent", "", "awaitPongsReceived", "client", "", "getClient$okhttp", "()Z", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "currentPushRequests", "", "", "degradedPingsSent", "degradedPongDeadlineNs", "degradedPongsReceived", "intervalPingsSent", "intervalPongsReceived", "isShutdown", "lastGoodStreamId", "getLastGoodStreamId$okhttp", "()I", "setLastGoodStreamId$okhttp", "(I)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "nextStreamId", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "okHttpSettings", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "peerSettings", "getPeerSettings", "setPeerSettings", "(Lokhttp3/internal/http2/Settings;)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "pushQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "<set-?>", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "readBytesTotal", "getReadBytesTotal", "readerRunnable", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "settingsListenerQueue", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "streams", "", "Lokhttp3/internal/http2/Http2Stream;", "getStreams$okhttp", "()Ljava/util/Map;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "writeBytesMaximum", "getWriteBytesMaximum", "writeBytesTotal", "getWriteBytesTotal", "writer", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "writerQueue", "awaitPong", "", "close", "connectionCode", "Lokhttp3/internal/http2/ErrorCode;", "streamCode", "cause", "Ljava/io/IOException;", "close$okhttp", "failConnection", "e", "flush", "getStream", "id", "isHealthy", "nowNs", "newStream", "associatedStreamId", "requestHeaders", "", "Lokhttp3/internal/http2/Header;", "out", "openStreamCount", "pushDataLater", "streamId", "source", "Lokio/BufferedSource;", "byteCount", "inFinished", "pushDataLater$okhttp", "pushHeadersLater", "pushHeadersLater$okhttp", "pushRequestLater", "pushRequestLater$okhttp", "pushResetLater", "errorCode", "pushResetLater$okhttp", "pushStream", "pushedStream", "pushedStream$okhttp", "removeStream", "removeStream$okhttp", "sendDegradedPingLater", "sendDegradedPingLater$okhttp", "setSettings", "settings", "shutdown", "statusCode", TtmlNode.START, "sendConnectionPreface", "updateConnectionFlowControl", "read", "updateConnectionFlowControl$okhttp", "writeData", "outFinished", "buffer", "Lokio/Buffer;", "writeHeaders", "alternating", "writeHeaders$okhttp", "writePing", "reply", "payload1", "payload2", "writePingAndAwaitPong", "writeSynReset", "writeSynReset$okhttp", "writeSynResetLater", "writeSynResetLater$okhttp", "writeWindowUpdateLater", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "Builder", "Companion", "Listener", "ReaderRunnable", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;
    public static final Companion Companion = new Companion(null);
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextStreamId;
    private final Settings okHttpSettings;
    private Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    private final Socket socket;
    private final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    public final boolean pushedStream$okhttp(int i) {
        return i != 0 && (i & 1) == 0;
    }

    public final void start() throws IOException {
        start$default(this, false, null, 3, null);
    }

    public final void start(boolean z) throws IOException {
        start$default(this, z, null, 2, null);
    }

    public Http2Connection(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.client = builder.getClient$okhttp();
        this.listener = builder.getListener$okhttp();
        this.connectionName = builder.getConnectionName$okhttp();
        this.nextStreamId = builder.getClient$okhttp() ? 3 : 2;
        this.taskRunner = builder.getTaskRunner$okhttp();
        this.writerQueue = this.taskRunner.newQueue();
        this.pushQueue = this.taskRunner.newQueue();
        this.settingsListenerQueue = this.taskRunner.newQueue();
        this.pushObserver = builder.getPushObserver$okhttp();
        Settings settings = new Settings();
        if (builder.getClient$okhttp()) {
            settings.set(7, 16777216);
        }
        Unit unit = Unit.INSTANCE;
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        this.writeBytesMaximum = (long) this.peerSettings.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), this.client);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), this.client));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis$okhttp() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos((long) builder.getPingIntervalMillis$okhttp());
            String str = this.connectionName + " ping";
            this.writerQueue.schedule(new Task(str, str, this, nanos) { // from class: okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1
                final /* synthetic */ String $name;
                final /* synthetic */ long $pingIntervalNanos$inlined;
                final /* synthetic */ Http2Connection this$0;

                {
                    this.$name = r1;
                    this.this$0 = r3;
                    this.$pingIntervalNanos$inlined = r4;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    boolean z;
                    synchronized (this.this$0) {
                        if (this.this$0.intervalPongsReceived < this.this$0.intervalPingsSent) {
                            z = true;
                        } else {
                            Http2Connection http2Connection = this.this$0;
                            http2Connection.intervalPingsSent = http2Connection.intervalPingsSent + 1;
                            z = false;
                        }
                    }
                    if (z) {
                        this.this$0.failConnection(null);
                        return -1;
                    }
                    this.this$0.writePing(false, 1, 0);
                    return this.$pingIntervalNanos$inlined;
                }
            }, nanos);
        }
    }

    public final boolean getClient$okhttp() {
        return this.client;
    }

    public final Listener getListener$okhttp() {
        return this.listener;
    }

    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final String getConnectionName$okhttp() {
        return this.connectionName;
    }

    public final int getLastGoodStreamId$okhttp() {
        return this.lastGoodStreamId;
    }

    public final void setLastGoodStreamId$okhttp(int i) {
        this.lastGoodStreamId = i;
    }

    public final int getNextStreamId$okhttp() {
        return this.nextStreamId;
    }

    public final void setNextStreamId$okhttp(int i) {
        this.nextStreamId = i;
    }

    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final void setPeerSettings(Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    public final synchronized int openStreamCount() {
        return this.streams.size();
    }

    public final synchronized Http2Stream getStream(int i) {
        return this.streams.get(Integer.valueOf(i));
    }

    public final synchronized Http2Stream removeStream$okhttp(int i) {
        Http2Stream remove;
        remove = this.streams.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long j) {
        this.readBytesTotal += j;
        long j2 = this.readBytesTotal - this.readBytesAcknowledged;
        if (j2 >= ((long) (this.okHttpSettings.getInitialWindowSize() / 2))) {
            writeWindowUpdateLater$okhttp(0, j2);
            this.readBytesAcknowledged += j2;
        }
    }

    public final Http2Stream pushStream(int i, List<Header> list, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(list, "requestHeaders");
        if (!this.client) {
            return newStream(i, list, z);
        }
        throw new IllegalStateException("Client cannot push requests.".toString());
    }

    public final Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(list, "requestHeaders");
        return newStream(0, list, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a A[Catch: all -> 0x0089, TryCatch #1 {, blocks: (B:4:0x0006, B:23:0x0055, B:25:0x0058, B:26:0x005e, B:28:0x0063, B:29:0x0068, B:34:0x0073, B:35:0x0080, B:5:0x0007, B:7:0x000e, B:8:0x0013, B:10:0x0017, B:12:0x002c, B:14:0x0034, B:19:0x0044, B:21:0x004a, B:22:0x0053, B:36:0x0081, B:37:0x0088), top: B:40:0x0006 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final okhttp3.internal.http2.Http2Stream newStream(int r11, java.util.List<okhttp3.internal.http2.Header> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            okhttp3.internal.http2.Http2Writer r7 = r10.writer
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: all -> 0x008c
            int r0 = r10.nextStreamId     // Catch: all -> 0x0089
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L_0x0013
            okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch: all -> 0x0089
            r10.shutdown(r0)     // Catch: all -> 0x0089
        L_0x0013:
            boolean r0 = r10.isShutdown     // Catch: all -> 0x0089
            if (r0 != 0) goto L_0x0081
            int r8 = r10.nextStreamId     // Catch: all -> 0x0089
            int r0 = r10.nextStreamId     // Catch: all -> 0x0089
            int r0 = r0 + 2
            r10.nextStreamId = r0     // Catch: all -> 0x0089
            okhttp3.internal.http2.Http2Stream r9 = new okhttp3.internal.http2.Http2Stream     // Catch: all -> 0x0089
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: all -> 0x0089
            r0 = 1
            if (r13 == 0) goto L_0x0043
            long r1 = r10.writeBytesTotal     // Catch: all -> 0x0089
            long r3 = r10.writeBytesMaximum     // Catch: all -> 0x0089
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 >= 0) goto L_0x0043
            long r1 = r9.getWriteBytesTotal()     // Catch: all -> 0x0089
            long r3 = r9.getWriteBytesMaximum()     // Catch: all -> 0x0089
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 < 0) goto L_0x0041
            goto L_0x0043
        L_0x0041:
            r13 = 0
            goto L_0x0044
        L_0x0043:
            r13 = r0
        L_0x0044:
            boolean r1 = r9.isOpen()     // Catch: all -> 0x0089
            if (r1 == 0) goto L_0x0053
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r1 = r10.streams     // Catch: all -> 0x0089
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)     // Catch: all -> 0x0089
            r1.put(r2, r9)     // Catch: all -> 0x0089
        L_0x0053:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: all -> 0x0089
            monitor-exit(r10)     // Catch: all -> 0x008c
            if (r11 != 0) goto L_0x005e
            okhttp3.internal.http2.Http2Writer r11 = r10.writer     // Catch: all -> 0x008c
            r11.headers(r6, r8, r12)     // Catch: all -> 0x008c
            goto L_0x0068
        L_0x005e:
            boolean r1 = r10.client     // Catch: all -> 0x008c
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0073
            okhttp3.internal.http2.Http2Writer r0 = r10.writer     // Catch: all -> 0x008c
            r0.pushPromise(r11, r8, r12)     // Catch: all -> 0x008c
        L_0x0068:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: all -> 0x008c
            monitor-exit(r7)
            if (r13 == 0) goto L_0x0072
            okhttp3.internal.http2.Http2Writer r11 = r10.writer
            r11.flush()
        L_0x0072:
            return r9
        L_0x0073:
            java.lang.String r11 = "client streams shouldn't have associated stream IDs"
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: all -> 0x008c
            java.lang.String r11 = r11.toString()     // Catch: all -> 0x008c
            r12.<init>(r11)     // Catch: all -> 0x008c
            java.lang.Throwable r12 = (java.lang.Throwable) r12     // Catch: all -> 0x008c
            throw r12     // Catch: all -> 0x008c
        L_0x0081:
            okhttp3.internal.http2.ConnectionShutdownException r11 = new okhttp3.internal.http2.ConnectionShutdownException     // Catch: all -> 0x0089
            r11.<init>()     // Catch: all -> 0x0089
            java.lang.Throwable r11 = (java.lang.Throwable) r11     // Catch: all -> 0x0089
            throw r11     // Catch: all -> 0x0089
        L_0x0089:
            r11 = move-exception
            monitor-exit(r10)     // Catch: all -> 0x008c
            throw r11     // Catch: all -> 0x008c
        L_0x008c:
            r11 = move-exception
            monitor-exit(r7)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    public final void writeHeaders$okhttp(int i, boolean z, List<Header> list) throws IOException {
        Intrinsics.checkNotNullParameter(list, "alternating");
        this.writer.headers(z, i, list);
    }

    public final void writeData(int i, boolean z, Buffer buffer, long j) throws IOException {
        int min;
        long j2;
        if (j == 0) {
            this.writer.data(z, i, buffer, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.writeBytesTotal >= this.writeBytesMaximum) {
                    try {
                        if (this.streams.containsKey(Integer.valueOf(i))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j, this.writeBytesMaximum - this.writeBytesTotal), this.writer.maxDataLength());
                j2 = (long) min;
                this.writeBytesTotal += j2;
                Unit unit = Unit.INSTANCE;
            }
            j -= j2;
            this.writer.data(z && j == 0, i, buffer, min);
        }
    }

    public final void writeSynResetLater$okhttp(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        String str = this.connectionName + '[' + i + "] writeSynReset";
        this.writerQueue.schedule(new Task(str, true, str, true, this, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ ErrorCode $errorCode$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            {
                this.$name = r1;
                this.$cancelable = r2;
                this.this$0 = r5;
                this.$streamId$inlined = r6;
                this.$errorCode$inlined = r7;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.this$0.writeSynReset$okhttp(this.$streamId$inlined, this.$errorCode$inlined);
                    return -1;
                } catch (IOException e) {
                    this.this$0.failConnection(e);
                    return -1;
                }
            }
        }, 0);
    }

    public final void writeSynReset$okhttp(int i, ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "statusCode");
        this.writer.rstStream(i, errorCode);
    }

    public final void writeWindowUpdateLater$okhttp(int i, long j) {
        String str = this.connectionName + '[' + i + "] windowUpdate";
        this.writerQueue.schedule(new Task(str, true, str, true, this, i, j) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ long $unacknowledgedBytesRead$inlined;
            final /* synthetic */ Http2Connection this$0;

            {
                this.$name = r1;
                this.$cancelable = r2;
                this.this$0 = r5;
                this.$streamId$inlined = r6;
                this.$unacknowledgedBytesRead$inlined = r7;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.this$0.getWriter().windowUpdate(this.$streamId$inlined, this.$unacknowledgedBytesRead$inlined);
                    return -1;
                } catch (IOException e) {
                    this.this$0.failConnection(e);
                    return -1;
                }
            }
        }, 0);
    }

    public final void writePing(boolean z, int i, int i2) {
        try {
            this.writer.ping(z, i, i2);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    public final void writePingAndAwaitPong() throws InterruptedException {
        writePing();
        awaitPong();
    }

    public final void writePing() throws InterruptedException {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    public final synchronized void awaitPong() throws InterruptedException {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    public final void flush() throws IOException {
        this.writer.flush();
    }

    public final void shutdown(ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "statusCode");
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.isShutdown) {
                    this.isShutdown = true;
                    int i = this.lastGoodStreamId;
                    Unit unit = Unit.INSTANCE;
                    this.writer.goAway(i, errorCode, Util.EMPTY_BYTE_ARRAY);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void failConnection(IOException iOException) {
        close$okhttp(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR, iOException);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, TaskRunner taskRunner, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.start(z, taskRunner);
    }

    public final void start(boolean z, TaskRunner taskRunner) throws IOException {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, (long) (initialWindowSize - 65535));
            }
        }
        TaskQueue newQueue = taskRunner.newQueue();
        String str = this.connectionName;
        newQueue.schedule(new TaskQueue$execute$1(this.readerRunnable, str, true, str, true), 0);
    }

    public final void setSettings(Settings settings) throws IOException {
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.isShutdown) {
                    this.okHttpSettings.merge(settings);
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new ConnectionShutdownException();
                }
            }
            this.writer.settings(settings);
            Unit unit2 = Unit.INSTANCE;
        }
    }

    public final synchronized boolean isHealthy(long j) {
        if (this.isShutdown) {
            return false;
        }
        if (this.degradedPongsReceived < this.degradedPingsSent) {
            if (j >= this.degradedPongDeadlineNs) {
                return false;
            }
        }
        return true;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            if (this.degradedPongsReceived >= this.degradedPingsSent) {
                this.degradedPingsSent++;
                this.degradedPongDeadlineNs = System.nanoTime() + ((long) 1000000000);
                Unit unit = Unit.INSTANCE;
                String str = this.connectionName + " ping";
                this.writerQueue.schedule(new Task(str, true, str, true, this) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1
                    final /* synthetic */ boolean $cancelable;
                    final /* synthetic */ String $name;
                    final /* synthetic */ Http2Connection this$0;

                    {
                        this.$name = r1;
                        this.$cancelable = r2;
                        this.this$0 = r5;
                    }

                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        this.this$0.writePing(false, 2, 0);
                        return -1;
                    }
                }, 0);
            }
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00107\u001a\u000208J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ.\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\b\b\u0002\u00109\u001a\u00020\f2\b\b\u0002\u0010/\u001a\u0002002\b\b\u0002\u0010#\u001a\u00020$H\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020*X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\u000200X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "client", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "pingIntervalMillis", "", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "sink", "Lokio/BufferedSink;", "getSink$okhttp", "()Lokio/BufferedSink;", "setSink$okhttp", "(Lokio/BufferedSink;)V", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", "source", "Lokio/BufferedSource;", "getSource$okhttp", "()Lokio/BufferedSource;", "setSource$okhttp", "(Lokio/BufferedSource;)V", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "build", "Lokhttp3/internal/http2/Http2Connection;", "peerName", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static final class Builder {
        private boolean client;
        public String connectionName;
        private int pingIntervalMillis;
        public BufferedSink sink;
        public Socket socket;
        public BufferedSource source;
        private final TaskRunner taskRunner;
        private Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        private PushObserver pushObserver = PushObserver.CANCEL;

        public final Builder socket(Socket socket) throws IOException {
            return socket$default(this, socket, null, null, null, 14, null);
        }

        public final Builder socket(Socket socket, String str) throws IOException {
            return socket$default(this, socket, str, null, null, 12, null);
        }

        public final Builder socket(Socket socket, String str, BufferedSource bufferedSource) throws IOException {
            return socket$default(this, socket, str, bufferedSource, null, 8, null);
        }

        public Builder(boolean z, TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.client = z;
            this.taskRunner = taskRunner;
        }

        public final boolean getClient$okhttp() {
            return this.client;
        }

        public final void setClient$okhttp(boolean z) {
            this.client = z;
        }

        public final TaskRunner getTaskRunner$okhttp() {
            return this.taskRunner;
        }

        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket == null) {
                Intrinsics.throwUninitializedPropertyAccessException("socket");
            }
            return socket;
        }

        public final void setSocket$okhttp(Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "<set-?>");
            this.socket = socket;
        }

        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            }
            return str;
        }

        public final void setConnectionName$okhttp(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.connectionName = str;
        }

        public final BufferedSource getSource$okhttp() {
            BufferedSource bufferedSource = this.source;
            if (bufferedSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException("source");
            }
            return bufferedSource;
        }

        public final void setSource$okhttp(BufferedSource bufferedSource) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<set-?>");
            this.source = bufferedSource;
        }

        public final BufferedSink getSink$okhttp() {
            BufferedSink bufferedSink = this.sink;
            if (bufferedSink == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sink");
            }
            return bufferedSink;
        }

        public final void setSink$okhttp(BufferedSink bufferedSink) {
            Intrinsics.checkNotNullParameter(bufferedSink, "<set-?>");
            this.sink = bufferedSink;
        }

        public final Listener getListener$okhttp() {
            return this.listener;
        }

        public final void setListener$okhttp(Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "<set-?>");
            this.listener = listener;
        }

        public final PushObserver getPushObserver$okhttp() {
            return this.pushObserver;
        }

        public final void setPushObserver$okhttp(PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final int getPingIntervalMillis$okhttp() {
            return this.pingIntervalMillis;
        }

        public final void setPingIntervalMillis$okhttp(int i) {
            this.pingIntervalMillis = i;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink, int i, Object obj) throws IOException {
            if ((i & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i & 4) != 0) {
                bufferedSource = Okio.buffer(Okio.source(socket));
            }
            if ((i & 8) != 0) {
                bufferedSink = Okio.buffer(Okio.sink(socket));
            }
            return builder.socket(socket, str, bufferedSource, bufferedSink);
        }

        public final Builder socket(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) throws IOException {
            String str2;
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(str, "peerName");
            Intrinsics.checkNotNullParameter(bufferedSource, "source");
            Intrinsics.checkNotNullParameter(bufferedSink, "sink");
            Builder builder = this;
            builder.socket = socket;
            if (builder.client) {
                str2 = Util.okHttpName + ' ' + str;
            } else {
                str2 = "MockWebServer " + str;
            }
            builder.connectionName = str2;
            builder.source = bufferedSource;
            builder.sink = bufferedSink;
            return builder;
        }

        public final Builder listener(Listener listener) {
            Intrinsics.checkNotNullParameter(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
            Builder builder = this;
            builder.listener = listener;
            return builder;
        }

        public final Builder pushObserver(PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "pushObserver");
            Builder builder = this;
            builder.pushObserver = pushObserver;
            return builder;
        }

        public final Builder pingIntervalMillis(int i) {
            Builder builder = this;
            builder.pingIntervalMillis = i;
            return builder;
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0016J8\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\fH\u0016J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010%\u001a\u00020\f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\t\u0010)\u001a\u00020\u0003H\u0096\u0002J \u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\fH\u0016J(\u0010.\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0017H\u0016J&\u00102\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00103\u001a\u00020\f2\f\u00104\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u00068"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "reader", "Lokhttp3/internal/http2/Http2Reader;", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "ackSettings", "alternateService", "streamId", "", "origin", "", "protocol", "Lokio/ByteString;", "host", "port", "maxAge", "", "applyAndAckSettings", "clearPrevious", "", "settings", "Lokhttp3/internal/http2/Settings;", "data", "inFinished", "source", "Lokio/BufferedSource;", SessionDescription.ATTR_LENGTH, "goAway", "lastGoodStreamId", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "debugData", "headers", "associatedStreamId", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "invoke", "ping", "ack", "payload1", "payload2", "priority", "streamDependency", "weight", "exclusive", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "windowUpdate", "windowSizeIncrement", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        private final Http2Reader reader;
        final /* synthetic */ Http2Connection this$0;

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
            Intrinsics.checkNotNullParameter(str, "origin");
            Intrinsics.checkNotNullParameter(byteString, "protocol");
            Intrinsics.checkNotNullParameter(str2, "host");
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            Intrinsics.checkNotNullParameter(http2Reader, "reader");
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }

        public final Http2Reader getReader$okhttp() {
            return this.reader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r0v8, types: [okhttp3.internal.http2.ErrorCode] */
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public void invoke2() {
            IOException e;
            ErrorCode errorCode;
            Http2Reader http2Reader;
            ErrorCode errorCode2;
            try {
                http2Reader = ErrorCode.INTERNAL_ERROR;
                errorCode = ErrorCode.INTERNAL_ERROR;
                e = null;
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    http2Reader = ErrorCode.NO_ERROR;
                    errorCode = ErrorCode.CANCEL;
                    errorCode2 = http2Reader;
                } catch (IOException e2) {
                    e = e2;
                    ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                    errorCode2 = errorCode3;
                }
            } finally {
                this.this$0.close$okhttp(http2Reader, errorCode, e);
                Util.closeQuietly(this.reader);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(bufferedSource, "source");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushDataLater$okhttp(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(i, ErrorCode.PROTOCOL_ERROR);
                long j = (long) i2;
                this.this$0.updateConnectionFlowControl$okhttp(j);
                bufferedSource.skip(j);
                return;
            }
            stream.receiveData(bufferedSource, i2);
            if (z) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z, int i, int i2, List<Header> list) {
            Intrinsics.checkNotNullParameter(list, "headerBlock");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushHeadersLater$okhttp(i, list, z);
                return;
            }
            synchronized (this.this$0) {
                Http2Stream stream = this.this$0.getStream(i);
                if (stream != null) {
                    Unit unit = Unit.INSTANCE;
                    stream.receiveHeaders(Util.toHeaders(list), z);
                } else if (!this.this$0.isShutdown) {
                    if (i > this.this$0.getLastGoodStreamId$okhttp()) {
                        if (i % 2 != this.this$0.getNextStreamId$okhttp() % 2) {
                            Http2Stream http2Stream = new Http2Stream(i, this.this$0, false, z, Util.toHeaders(list));
                            this.this$0.setLastGoodStreamId$okhttp(i);
                            this.this$0.getStreams$okhttp().put(Integer.valueOf(i), http2Stream);
                            String str = this.this$0.getConnectionName$okhttp() + '[' + i + "] onStream";
                            this.this$0.taskRunner.newQueue().schedule(new Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1(str, true, str, true, http2Stream, this, stream, i, list, z), 0);
                        }
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i, ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushResetLater$okhttp(i, errorCode);
                return;
            }
            Http2Stream removeStream$okhttp = this.this$0.removeStream$okhttp(i);
            if (removeStream$okhttp != null) {
                removeStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z, Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            String str = this.this$0.getConnectionName$okhttp() + " applyAndAckSettings";
            this.this$0.writerQueue.schedule(new Http2Connection$ReaderRunnable$settings$$inlined$execute$1(str, true, str, true, this, z, settings), 0);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(15:56|6|(1:8)(1:9)|10|(2:15|(10:17|21|22|52|23|24|54|25|28|29)(2:18|19))|20|21|22|52|23|24|54|25|28|29) */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00dd, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00de, code lost:
            r21.this$0.failConnection(r0);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public final void applyAndAckSettings(boolean r22, okhttp3.internal.http2.Settings r23) {
            /*
            // Method dump skipped, instructions count: 276
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.applyAndAckSettings(boolean, okhttp3.internal.http2.Settings):void");
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i, int i2) {
            if (z) {
                synchronized (this.this$0) {
                    try {
                        if (i == 1) {
                            Http2Connection http2Connection = this.this$0;
                            long j = http2Connection.intervalPongsReceived;
                            http2Connection.intervalPongsReceived = 1 + j;
                            Long.valueOf(j);
                        } else if (i != 2) {
                            if (i == 3) {
                                this.this$0.awaitPongsReceived++;
                                Http2Connection http2Connection2 = this.this$0;
                                if (http2Connection2 != null) {
                                    http2Connection2.notifyAll();
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                                }
                            }
                            Unit unit = Unit.INSTANCE;
                        } else {
                            Http2Connection http2Connection3 = this.this$0;
                            long j2 = http2Connection3.degradedPongsReceived;
                            http2Connection3.degradedPongsReceived = 1 + j2;
                            Long.valueOf(j2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
            String str = this.this$0.getConnectionName$okhttp() + " ping";
            this.this$0.writerQueue.schedule(new Http2Connection$ReaderRunnable$ping$$inlined$execute$1(str, true, str, true, this, i, i2), 0);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            int i2;
            Http2Stream[] http2StreamArr;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(byteString, "debugData");
            byteString.size();
            synchronized (this.this$0) {
                Object[] array = this.this$0.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                if (array != null) {
                    http2StreamArr = (Http2Stream[]) array;
                    this.this$0.isShutdown = true;
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (this.this$0) {
                    Http2Connection http2Connection = this.this$0;
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + j;
                    Http2Connection http2Connection2 = this.this$0;
                    if (http2Connection2 != null) {
                        http2Connection2.notifyAll();
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i, int i2, List<Header> list) {
            Intrinsics.checkNotNullParameter(list, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(i2, list);
        }
    }

    public final void pushRequestLater$okhttp(int i, List<Header> list) {
        Intrinsics.checkNotNullParameter(list, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater$okhttp(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            String str = this.connectionName + '[' + i + "] onRequest";
            this.pushQueue.schedule(new Task(str, true, str, true, this, i, list) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1
                final /* synthetic */ boolean $cancelable;
                final /* synthetic */ String $name;
                final /* synthetic */ List $requestHeaders$inlined;
                final /* synthetic */ int $streamId$inlined;
                final /* synthetic */ Http2Connection this$0;

                {
                    this.$name = r1;
                    this.$cancelable = r2;
                    this.this$0 = r5;
                    this.$streamId$inlined = r6;
                    this.$requestHeaders$inlined = r7;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    if (!this.this$0.pushObserver.onRequest(this.$streamId$inlined, this.$requestHeaders$inlined)) {
                        return -1;
                    }
                    try {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                        synchronized (this.this$0) {
                            this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                        }
                        return -1;
                    } catch (IOException unused) {
                        return -1;
                    }
                }
            }, 0);
        }
    }

    public final void pushHeadersLater$okhttp(int i, List<Header> list, boolean z) {
        Intrinsics.checkNotNullParameter(list, "requestHeaders");
        String str = this.connectionName + '[' + i + "] onHeaders";
        this.pushQueue.schedule(new Task(str, true, str, true, this, i, list, z) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ boolean $inFinished$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ List $requestHeaders$inlined;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            {
                this.$name = r1;
                this.$cancelable = r2;
                this.this$0 = r5;
                this.$streamId$inlined = r6;
                this.$requestHeaders$inlined = r7;
                this.$inFinished$inlined = r8;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                boolean onHeaders = this.this$0.pushObserver.onHeaders(this.$streamId$inlined, this.$requestHeaders$inlined, this.$inFinished$inlined);
                if (onHeaders) {
                    try {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1;
                    }
                }
                if (!onHeaders && !this.$inFinished$inlined) {
                    return -1;
                }
                synchronized (this.this$0) {
                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                }
                return -1;
            }
        }, 0);
    }

    public final void pushDataLater$okhttp(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "source");
        Buffer buffer = new Buffer();
        long j = (long) i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        String str = this.connectionName + '[' + i + "] onData";
        this.pushQueue.schedule(new Task(str, true, str, true, this, i, buffer, i2, z) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1
            final /* synthetic */ Buffer $buffer$inlined;
            final /* synthetic */ int $byteCount$inlined;
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ boolean $inFinished$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            {
                this.$name = r1;
                this.$cancelable = r2;
                this.this$0 = r5;
                this.$streamId$inlined = r6;
                this.$buffer$inlined = r7;
                this.$byteCount$inlined = r8;
                this.$inFinished$inlined = r9;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    boolean onData = this.this$0.pushObserver.onData(this.$streamId$inlined, this.$buffer$inlined, this.$byteCount$inlined, this.$inFinished$inlined);
                    if (onData) {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                    }
                    if (!onData && !this.$inFinished$inlined) {
                        return -1;
                    }
                    synchronized (this.this$0) {
                        this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                    }
                    return -1;
                } catch (IOException unused) {
                    return -1;
                }
            }
        }, 0);
    }

    public final void pushResetLater$okhttp(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        String str = this.connectionName + '[' + i + "] onReset";
        this.pushQueue.schedule(new Task(str, true, str, true, this, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ ErrorCode $errorCode$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            {
                this.$name = r1;
                this.$cancelable = r2;
                this.this$0 = r5;
                this.$streamId$inlined = r6;
                this.$errorCode$inlined = r7;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                this.this$0.pushObserver.onReset(this.$streamId$inlined, this.$errorCode$inlined);
                synchronized (this.this$0) {
                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                    Unit unit = Unit.INSTANCE;
                }
                return -1;
            }
        }, 0);
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "()V", "onSettings", "", "connection", "Lokhttp3/internal/http2/Http2Connection;", "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static abstract class Listener {
        public static final Companion Companion = new Companion(null);
        public static final Listener REFUSE_INCOMING_STREAMS = new Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1();

        public void onSettings(Http2Connection http2Connection, Settings settings) {
            Intrinsics.checkNotNullParameter(http2Connection, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;

        /* compiled from: Http2Connection.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", "", "()V", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", "okhttp"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes5.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "()V", "AWAIT_PING", "", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Intrinsics.checkNotNullParameter(errorCode, "connectionCode");
        Intrinsics.checkNotNullParameter(errorCode2, "streamCode");
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            try {
                shutdown(errorCode);
            } catch (IOException unused) {
            }
            Http2Stream[] http2StreamArr = null;
            synchronized (this) {
                if (!this.streams.isEmpty()) {
                    Object[] array = this.streams.values().toArray(new Http2Stream[0]);
                    if (array != null) {
                        http2StreamArr = (Http2Stream[]) array;
                        this.streams.clear();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    try {
                        http2Stream.close(errorCode2, iOException);
                    } catch (IOException unused2) {
                    }
                }
            }
            try {
                this.writer.close();
            } catch (IOException unused3) {
            }
            try {
                this.socket.close();
            } catch (IOException unused4) {
            }
            this.writerQueue.shutdown();
            this.pushQueue.shutdown();
            this.settingsListenerQueue.shutdown();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(this);
        throw new AssertionError(sb.toString());
    }
}
