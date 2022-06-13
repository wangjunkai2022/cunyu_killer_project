package kotlinx.coroutines.debug.internal;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.c;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.AgentPremain;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;

/* compiled from: DebugProbesImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\bÀ\u0002\u0018\u00002\u00020\u0013:\u0002\u008f\u0001B\t\b\u0002¢\u0006\u0004\b\u0001\u0010\u0002J3\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0011\u0010\u0012J>\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0014*\u00020\u00132\u001c\u0010\u0018\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00028\u00000\u0015H\u0082\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001b\u0010\u000eJ\u0013\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000f¢\u0006\u0004\b\u001d\u0010\u0012J)\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u001e\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f¢\u0006\u0004\b!\u0010\"J5\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002¢\u0006\u0004\b'\u0010(J?\u0010/\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020.0-2\u0006\u0010*\u001a\u00020)2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001f0+2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002¢\u0006\u0004\b/\u00100J3\u00102\u001a\u00020)2\u0006\u00101\u001a\u00020)2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001f0+2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002¢\u0006\u0004\b2\u00103J\u001d\u00105\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\f\u0018\u000104H\u0002¢\u0006\u0004\b5\u00106J\u0015\u00109\u001a\u00020#2\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:J\r\u0010;\u001a\u00020\f¢\u0006\u0004\b;\u0010\u0002J%\u0010=\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002¢\u0006\u0004\b=\u0010>J\u001b\u0010@\u001a\u00020\f2\n\u0010?\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0002¢\u0006\u0004\b@\u0010AJ)\u0010D\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0000¢\u0006\u0004\bB\u0010CJ\u001b\u0010G\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0000¢\u0006\u0004\bE\u0010FJ\u001b\u0010I\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0000¢\u0006\u0004\bH\u0010FJ'\u0010L\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f\"\b\b\u0000\u0010\u0003*\u00020J2\u0006\u0010K\u001a\u00028\u0000H\u0002¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\fH\u0002¢\u0006\u0004\bN\u0010\u0002J\u000f\u0010O\u001a\u00020\fH\u0002¢\u0006\u0004\bO\u0010\u0002J\r\u0010P\u001a\u00020\f¢\u0006\u0004\bP\u0010\u0002J\u001f\u0010R\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020Q2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bR\u0010SJ#\u0010T\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bT\u0010UJ/\u0010T\u001a\u00020\f2\n\u0010?\u001a\u0006\u0012\u0002\b\u00030\u00162\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bT\u0010VJ;\u0010^\u001a\u00020\f*\u0002072\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020X0W2\n\u0010\\\u001a\u00060Zj\u0002`[2\u0006\u0010]\u001a\u00020#H\u0002¢\u0006\u0004\b^\u0010_J\u0017\u0010`\u001a\u00020.*\u0006\u0012\u0002\b\u00030\u0016H\u0002¢\u0006\u0004\b`\u0010aJ\u001d\u0010?\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u0006\u0012\u0002\b\u00030\u0004H\u0002¢\u0006\u0004\b?\u0010bJ\u001a\u0010?\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u00020QH\u0082\u0010¢\u0006\u0004\b?\u0010cJ\u0016\u0010d\u001a\u0004\u0018\u00010Q*\u00020QH\u0082\u0010¢\u0006\u0004\bd\u0010eJ\u001b\u0010f\u001a\u0004\u0018\u00010\u0006*\b\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002¢\u0006\u0004\bf\u0010gR\u0016\u0010h\u001a\u00020#8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bh\u0010iR\"\u0010k\u001a\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020X0j8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010lR \u0010p\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00160m8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bn\u0010oR&\u0010q\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0016\u0012\u0004\u0012\u00020.0j8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010lR\u0016\u0010s\u001a\u00020r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010v\u001a\u00020u8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR$\u0010x\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\f\u0018\u0001048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\"\u0010z\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR\u0019\u0010\u0080\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0083\u0001\u001a\u00020.8@@\u0000X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010}R&\u0010\u0084\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010{\u001a\u0005\b\u0085\u0001\u0010}\"\u0005\b\u0086\u0001\u0010\u007fR\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R$\u0010\u008c\u0001\u001a\u00020#*\u0002078B@\u0002X\u0082\u0004¢\u0006\u000f\u0012\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0005\b\u0089\u0001\u0010:R\u001d\u0010\u008d\u0001\u001a\u00020.*\u00020\u001f8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001¨\u0006\u0090\u0001"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "<init>", "()V", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "completion", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "frame", "createOwner", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;", "Ljava/io/PrintStream;", "out", "", "dumpCoroutines", "(Ljava/io/PrintStream;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "dumpCoroutinesInfo", "()Ljava/util/List;", "", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "Lkotlin/coroutines/CoroutineContext;", "create", "dumpCoroutinesInfoImpl", "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "dumpCoroutinesSynchronized", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "info", "Ljava/lang/StackTraceElement;", "coroutineTrace", "enhanceStackTraceWithThreadDump", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;", "", "state", "Ljava/lang/Thread;", "thread", "enhanceStackTraceWithThreadDumpImpl", "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;", "", "indexOfResumeWith", "", "actualTrace", "Lkotlin/Pair;", "", "findContinuationStartIndex", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", "findIndexOfFrame", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/Function1;", "getDynamicAttach", "()Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/Job;", "job", "hierarchyToString", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "install", "frames", "printStackTrace", "(Ljava/io/PrintStream;Ljava/util/List;)V", "owner", "probeCoroutineCompleted", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", "", "throwable", "sanitizeStackTrace", "(Ljava/lang/Throwable;)Ljava/util/List;", "startWeakRefCleanerThread", "stopWeakRefCleanerThread", "uninstall", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "updateRunningState", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V", "updateState", "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "map", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "indent", "build", "(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V", "isFinished", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "realCaller", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "toStackTraceFrame", "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "ARTIFICIAL_FRAME_MESSAGE", "Ljava/lang/String;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "callerInfoCache", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "getCapturedCoroutines", "()Ljava/util/Set;", "capturedCoroutines", "capturedCoroutinesMap", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "coroutineStateLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/text/SimpleDateFormat;", "dynamicAttach", "Lkotlin/jvm/functions/Function1;", "enableCreationStackTraces", "Z", "getEnableCreationStackTraces", "()Z", "setEnableCreationStackTraces", "(Z)V", "installations", "I", "isInstalled$kotlinx_coroutines_core", "isInstalled", "sanitizeStackTraces", "getSanitizeStackTraces", "setSanitizeStackTraces", "weakRefCleanerThread", "Ljava/lang/Thread;", "getDebugString", "getDebugString$annotations", "(Lkotlinx/coroutines/Job;)V", "debugString", "isInternalMethod", "(Ljava/lang/StackTraceElement;)Z", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class DebugProbesImpl {
    private static final String ARTIFICIAL_FRAME_MESSAGE = "Coroutine creation stacktrace";
    public static final DebugProbesImpl INSTANCE;
    private static final Function1<Boolean, Unit> dynamicAttach;
    private static volatile int installations;
    private static Thread weakRefCleanerThread;
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    private static final ConcurrentWeakMap<CoroutineOwner<?>, Boolean> capturedCoroutinesMap = new ConcurrentWeakMap<>(false, 1, null);
    static final /* synthetic */ DebugProbesImplSequenceNumberRefVolatile debugProbesImplSequenceNumberRefVolatile = new DebugProbesImplSequenceNumberRefVolatile(0);
    private static final ReentrantReadWriteLock coroutineStateLock = new ReentrantReadWriteLock();
    private static boolean sanitizeStackTraces = true;
    private static boolean enableCreationStackTraces = true;
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> callerInfoCache = new ConcurrentWeakMap<>(true);
    static final /* synthetic */ AtomicLongFieldUpdater sequenceNumber$FU = AtomicLongFieldUpdater.newUpdater(DebugProbesImplSequenceNumberRefVolatile.class, "sequenceNumber");

    /* loaded from: classes5.dex */
    /* synthetic */ class SequenceNumberRefVolatile {
        volatile long sequenceNumber;

        public SequenceNumberRefVolatile(long j) {
            this.sequenceNumber = j;
        }
    }

    private static /* synthetic */ void getDebugString$annotations(Job job) {
    }

    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        INSTANCE = debugProbesImpl;
        dynamicAttach = debugProbesImpl.getDynamicAttach();
    }

    private DebugProbesImpl() {
    }

    public final Set<CoroutineOwner<?>> getCapturedCoroutines() {
        return capturedCoroutinesMap.keySet();
    }

    public final boolean isInstalled$kotlinx_coroutines_core() {
        return installations > 0;
    }

    public final boolean getSanitizeStackTraces() {
        return sanitizeStackTraces;
    }

    public final void setSanitizeStackTraces(boolean z) {
        sanitizeStackTraces = z;
    }

    public final boolean getEnableCreationStackTraces() {
        return enableCreationStackTraces;
    }

    public final void setEnableCreationStackTraces(boolean z) {
        enableCreationStackTraces = z;
    }

    private final Function1<Boolean, Unit> getDynamicAttach() {
        Object obj;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            DebugProbesImpl debugProbesImpl = this;
            newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.m44constructorimpl(ResultKt.createFailure(th));
        }
        if (newInstance != null) {
            obj = Result.m44constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
            if (Result.m50isFailureimpl(obj)) {
                obj = null;
            }
            return (Function1) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type (kotlin.Boolean) -> kotlin.Unit");
    }

    public final void install() {
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            installations++;
            if (installations <= 1) {
                INSTANCE.startWeakRefCleanerThread();
                if (AgentPremain.INSTANCE.isInstalledStatically()) {
                    while (i < readHoldCount) {
                        readLock.lock();
                        i++;
                    }
                    writeLock.unlock();
                    return;
                }
                Function1<Boolean, Unit> function1 = dynamicAttach;
                if (function1 != null) {
                    function1.invoke(true);
                }
                Unit unit = Unit.INSTANCE;
                while (i < readHoldCount) {
                    readLock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        } finally {
            while (i < readHoldCount) {
                readLock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    public final void uninstall() {
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                installations--;
                if (installations == 0) {
                    debugProbesImpl.stopWeakRefCleanerThread();
                    capturedCoroutinesMap.clear();
                    callerInfoCache.clear();
                    if (AgentPremain.INSTANCE.isInstalledStatically()) {
                        while (i < readHoldCount) {
                            readLock.lock();
                            i++;
                        }
                        writeLock.unlock();
                        return;
                    }
                    Function1<Boolean, Unit> function1 = dynamicAttach;
                    if (function1 != null) {
                        function1.invoke(false);
                    }
                    Unit unit = Unit.INSTANCE;
                    while (i < readHoldCount) {
                        readLock.lock();
                        i++;
                    }
                    writeLock.unlock();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Agent was not installed".toString());
        } finally {
            while (i < readHoldCount) {
                readLock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    private final void startWeakRefCleanerThread() {
        weakRefCleanerThread = ThreadsKt.thread$default(false, true, null, "Coroutines Debugger Cleaner", 0, DebugProbesImpl$startWeakRefCleanerThread$1.INSTANCE, 21, null);
    }

    private final void stopWeakRefCleanerThread() {
        Thread thread = weakRefCleanerThread;
        if (thread != null) {
            thread.interrupt();
        }
        weakRefCleanerThread = null;
    }

    public final String hierarchyToString(Job job) {
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : debugProbesImpl.getCapturedCoroutines()) {
                    if (((CoroutineOwner) obj).delegate.getContext().get(Job.Key) != null) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = arrayList;
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
                for (Object obj2 : arrayList2) {
                    linkedHashMap.put(JobKt.getJob(((CoroutineOwner) obj2).delegate.getContext()), ((CoroutineOwner) obj2).info);
                }
                StringBuilder sb = new StringBuilder();
                INSTANCE.build(job, linkedHashMap, sb, "");
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i < readHoldCount) {
                readLock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    private final void build(Job job, Map<Job, DebugCoroutineInfoImpl> map, StringBuilder sb, String str) {
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = map.get(job);
        if (debugCoroutineInfoImpl != null) {
            String state = debugCoroutineInfoImpl.getState();
            sb.append(str + getDebugString(job) + ", continuation is " + state + " at line " + ((StackTraceElement) CollectionsKt.firstOrNull((List<? extends Object>) debugCoroutineInfoImpl.lastObservedStackTrace())) + '\n');
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("\t");
            str = sb2.toString();
        } else if (!(job instanceof ScopeCoroutine)) {
            sb.append(str + getDebugString(job) + '\n');
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append("\t");
            str = sb3.toString();
        }
        for (Job job2 : job.getChildren()) {
            build(job2, map, sb, str);
        }
    }

    private final String getDebugString(Job job) {
        return job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0070, code lost:
        r6.add(r9);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final <R> java.util.List<R> dumpCoroutinesInfoImpl(kotlin.jvm.functions.Function2<? super kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner<?>, ? super kotlin.coroutines.CoroutineContext, ? extends R> r11) {
        /*
            r10 = this;
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = access$getCoroutineStateLock$p(r10)
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r0.readLock()
            int r2 = r0.getWriteHoldCount()
            r3 = 0
            if (r2 != 0) goto L_0x0014
            int r2 = r0.getReadHoldCount()
            goto L_0x0015
        L_0x0014:
            r2 = 0
        L_0x0015:
            r4 = 0
        L_0x0016:
            if (r4 >= r2) goto L_0x001e
            r1.unlock()
            int r4 = r4 + 1
            goto L_0x0016
        L_0x001e:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            r0.lock()
            r4 = 1
            kotlinx.coroutines.debug.internal.DebugProbesImpl r5 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0096
            boolean r6 = r5.isInstalled$kotlinx_coroutines_core()     // Catch: all -> 0x0096
            if (r6 == 0) goto L_0x0088
            java.util.Set r5 = access$getCapturedCoroutines$p(r5)     // Catch: all -> 0x0096
            java.lang.Iterable r5 = (java.lang.Iterable) r5     // Catch: all -> 0x0096
            kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$1 r6 = new kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$1     // Catch: all -> 0x0096
            r6.<init>()     // Catch: all -> 0x0096
            java.util.Comparator r6 = (java.util.Comparator) r6     // Catch: all -> 0x0096
            java.util.List r5 = kotlin.collections.CollectionsKt.sortedWith(r5, r6)     // Catch: all -> 0x0096
            java.lang.Iterable r5 = (java.lang.Iterable) r5     // Catch: all -> 0x0096
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: all -> 0x0096
            r6.<init>()     // Catch: all -> 0x0096
            java.util.Collection r6 = (java.util.Collection) r6     // Catch: all -> 0x0096
            java.util.Iterator r5 = r5.iterator()     // Catch: all -> 0x0096
        L_0x004c:
            boolean r7 = r5.hasNext()     // Catch: all -> 0x0096
            if (r7 == 0) goto L_0x0074
            java.lang.Object r7 = r5.next()     // Catch: all -> 0x0096
            kotlinx.coroutines.debug.internal.DebugProbesImpl$CoroutineOwner r7 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r7     // Catch: all -> 0x0096
            kotlinx.coroutines.debug.internal.DebugProbesImpl r8 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0096
            boolean r8 = access$isFinished(r8, r7)     // Catch: all -> 0x0096
            r9 = 0
            if (r8 == 0) goto L_0x0062
            goto L_0x006e
        L_0x0062:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r8 = r7.info     // Catch: all -> 0x0096
            kotlin.coroutines.CoroutineContext r8 = r8.getContext()     // Catch: all -> 0x0096
            if (r8 == 0) goto L_0x006e
            java.lang.Object r9 = r11.invoke(r7, r8)     // Catch: all -> 0x0096
        L_0x006e:
            if (r9 == 0) goto L_0x004c
            r6.add(r9)     // Catch: all -> 0x0096
            goto L_0x004c
        L_0x0074:
            java.util.List r6 = (java.util.List) r6     // Catch: all -> 0x0096
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
        L_0x0079:
            if (r3 >= r2) goto L_0x0081
            r1.lock()
            int r3 = r3 + 1
            goto L_0x0079
        L_0x0081:
            r0.unlock()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            return r6
        L_0x0088:
            java.lang.String r11 = "Debug probes are not installed"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: all -> 0x0096
            java.lang.String r11 = r11.toString()     // Catch: all -> 0x0096
            r5.<init>(r11)     // Catch: all -> 0x0096
            java.lang.Throwable r5 = (java.lang.Throwable) r5     // Catch: all -> 0x0096
            throw r5     // Catch: all -> 0x0096
        L_0x0096:
            r11 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
        L_0x009a:
            if (r3 >= r2) goto L_0x00a2
            r1.lock()
            int r3 = r3 + 1
            goto L_0x009a
        L_0x00a2:
            r0.unlock()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.dumpCoroutinesInfoImpl(kotlin.jvm.functions.Function2):java.util.List");
    }

    public final void dumpCoroutines(PrintStream printStream) {
        synchronized (printStream) {
            INSTANCE.dumpCoroutinesSynchronized(printStream);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean isFinished(CoroutineOwner<?> coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.Key)) == null || !job.isCompleted()) {
            return false;
        }
        capturedCoroutinesMap.remove(coroutineOwner);
        return true;
    }

    private final void dumpCoroutinesSynchronized(PrintStream printStream) {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                printStream.print("Coroutines dump " + dateFormat.format(Long.valueOf(System.currentTimeMillis())));
                for (CoroutineOwner coroutineOwner : SequencesKt.sortedWith(SequencesKt.filter(CollectionsKt.asSequence(debugProbesImpl.getCapturedCoroutines()), DebugProbesImpl$dumpCoroutinesSynchronized$1$2.INSTANCE), new Comparator<T>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$4
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).info.sequenceNumber));
                    }
                })) {
                    DebugCoroutineInfoImpl debugCoroutineInfoImpl = coroutineOwner.info;
                    List<StackTraceElement> lastObservedStackTrace = debugCoroutineInfoImpl.lastObservedStackTrace();
                    DebugProbesImpl debugProbesImpl2 = INSTANCE;
                    List<StackTraceElement> enhanceStackTraceWithThreadDumpImpl = debugProbesImpl2.enhanceStackTraceWithThreadDumpImpl(debugCoroutineInfoImpl.getState(), debugCoroutineInfoImpl.lastObservedThread, lastObservedStackTrace);
                    if (!Intrinsics.areEqual(debugCoroutineInfoImpl.getState(), "RUNNING") || enhanceStackTraceWithThreadDumpImpl != lastObservedStackTrace) {
                        str = debugCoroutineInfoImpl.getState();
                    } else {
                        str = debugCoroutineInfoImpl.getState() + " (Last suspension stacktrace, not an actual stacktrace)";
                    }
                    printStream.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + str);
                    if (lastObservedStackTrace.isEmpty()) {
                        printStream.print("\n\tat " + StackTraceRecoveryKt.artificialFrame("Coroutine creation stacktrace"));
                        debugProbesImpl2.printStackTrace(printStream, debugCoroutineInfoImpl.getCreationStackTrace());
                    } else {
                        debugProbesImpl2.printStackTrace(printStream, enhanceStackTraceWithThreadDumpImpl);
                    }
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i < readHoldCount) {
                readLock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    private final void printStackTrace(PrintStream printStream, List<StackTraceElement> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            printStream.print("\n\tat " + ((StackTraceElement) it.next()));
        }
    }

    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(DebugCoroutineInfo debugCoroutineInfo, List<StackTraceElement> list) {
        return enhanceStackTraceWithThreadDumpImpl(debugCoroutineInfo.getState(), debugCoroutineInfo.getLastObservedThread(), list);
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [int, boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final java.util.List<java.lang.StackTraceElement> enhanceStackTraceWithThreadDumpImpl(java.lang.String r8, java.lang.Thread r9, java.util.List<java.lang.StackTraceElement> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "RUNNING"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r0)
            r0 = 1
            r8 = r8 ^ r0
            if (r8 != 0) goto L_0x00b5
            if (r9 != 0) goto L_0x000e
            goto L_0x00b5
        L_0x000e:
            kotlin.Result$Companion r8 = kotlin.Result.Companion     // Catch: all -> 0x001c
            r8 = r7
            kotlinx.coroutines.debug.internal.DebugProbesImpl r8 = (kotlinx.coroutines.debug.internal.DebugProbesImpl) r8     // Catch: all -> 0x001c
            java.lang.StackTraceElement[] r8 = r9.getStackTrace()     // Catch: all -> 0x001c
            java.lang.Object r8 = kotlin.Result.m44constructorimpl(r8)     // Catch: all -> 0x001c
            goto L_0x0027
        L_0x001c:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.Companion
            java.lang.Object r8 = kotlin.ResultKt.createFailure(r8)
            java.lang.Object r8 = kotlin.Result.m44constructorimpl(r8)
        L_0x0027:
            boolean r9 = kotlin.Result.m50isFailureimpl(r8)
            if (r9 == 0) goto L_0x002e
            r8 = 0
        L_0x002e:
            java.lang.StackTraceElement[] r8 = (java.lang.StackTraceElement[]) r8
            if (r8 == 0) goto L_0x00b5
            int r9 = r8.length
            r1 = 0
            r2 = 0
        L_0x0035:
            r3 = -1
            if (r2 >= r9) goto L_0x0067
            r4 = r8[r2]
            java.lang.String r5 = r4.getClassName()
            java.lang.String r6 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L_0x0060
            java.lang.String r5 = r4.getMethodName()
            java.lang.String r6 = "resumeWith"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L_0x0060
            java.lang.String r4 = r4.getFileName()
            java.lang.String r5 = "ContinuationImpl.kt"
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L_0x0060
            r4 = 1
            goto L_0x0061
        L_0x0060:
            r4 = 0
        L_0x0061:
            if (r4 == 0) goto L_0x0064
            goto L_0x0068
        L_0x0064:
            int r2 = r2 + 1
            goto L_0x0035
        L_0x0067:
            r2 = -1
        L_0x0068:
            kotlin.Pair r9 = r7.findContinuationStartIndex(r2, r8, r10)
            java.lang.Object r4 = r9.component1()
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            java.lang.Object r9 = r9.component2()
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r4 != r3) goto L_0x0083
            return r10
        L_0x0083:
            int r3 = r10.size()
            int r3 = r3 + r2
            int r3 = r3 - r4
            int r3 = r3 - r0
            int r3 = r3 - r9
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>(r3)
            int r2 = r2 - r9
        L_0x0091:
            if (r1 >= r2) goto L_0x009e
            r9 = r5
            java.util.Collection r9 = (java.util.Collection) r9
            r3 = r8[r1]
            r9.add(r3)
            int r1 = r1 + 1
            goto L_0x0091
        L_0x009e:
            int r4 = r4 + r0
            int r8 = r10.size()
        L_0x00a3:
            if (r4 >= r8) goto L_0x00b2
            r9 = r5
            java.util.Collection r9 = (java.util.Collection) r9
            java.lang.Object r0 = r10.get(r4)
            r9.add(r0)
            int r4 = r4 + 1
            goto L_0x00a3
        L_0x00b2:
            java.util.List r5 = (java.util.List) r5
            return r5
        L_0x00b5:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.enhanceStackTraceWithThreadDumpImpl(java.lang.String, java.lang.Thread, java.util.List):java.util.List");
    }

    private final Pair<Integer, Boolean> findContinuationStartIndex(int i, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        int findIndexOfFrame = findIndexOfFrame(i - 1, stackTraceElementArr, list);
        if (findIndexOfFrame == -1) {
            return TuplesKt.to(Integer.valueOf(findIndexOfFrame(i - 2, stackTraceElementArr, list)), true);
        }
        return TuplesKt.to(Integer.valueOf(findIndexOfFrame), false);
    }

    private final int findIndexOfFrame(int i, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(stackTraceElementArr, i);
        if (stackTraceElement == null) {
            return -1;
        }
        int i2 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(Continuation<?> continuation) {
        updateState(continuation, "RUNNING");
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(Continuation<?> continuation) {
        updateState(continuation, "SUSPENDED");
    }

    private final void updateState(Continuation<?> continuation, String str) {
        if (isInstalled$kotlinx_coroutines_core()) {
            if (!Intrinsics.areEqual(str, "RUNNING") || !KotlinVersion.CURRENT.isAtLeast(1, 3, 30)) {
                CoroutineOwner<?> owner = owner(continuation);
                if (owner != null) {
                    updateState(owner, continuation, str);
                    return;
                }
                return;
            }
            if (!(continuation instanceof CoroutineStackFrame)) {
                continuation = null;
            }
            CoroutineStackFrame coroutineStackFrame = (CoroutineStackFrame) continuation;
            if (coroutineStackFrame != null) {
                updateRunningState(coroutineStackFrame, str);
            }
        }
    }

    private final void updateRunningState(CoroutineStackFrame coroutineStackFrame, String str) {
        ReentrantReadWriteLock.ReadLock readLock = coroutineStateLock.readLock();
        readLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> concurrentWeakMap = callerInfoCache;
                DebugCoroutineInfoImpl remove = concurrentWeakMap.remove(coroutineStackFrame);
                if (remove == null) {
                    CoroutineOwner<?> owner = debugProbesImpl.owner(coroutineStackFrame);
                    if (owner != null && (remove = owner.info) != null) {
                        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = remove.getLastObservedFrame$kotlinx_coroutines_core();
                        CoroutineStackFrame realCaller = lastObservedFrame$kotlinx_coroutines_core != null ? debugProbesImpl.realCaller(lastObservedFrame$kotlinx_coroutines_core) : null;
                        if (realCaller != null) {
                            concurrentWeakMap.remove(realCaller);
                        }
                    } else {
                        return;
                    }
                }
                if (coroutineStackFrame != null) {
                    remove.updateState$kotlinx_coroutines_core(str, (Continuation) coroutineStackFrame);
                    CoroutineStackFrame realCaller2 = debugProbesImpl.realCaller(coroutineStackFrame);
                    if (realCaller2 != null) {
                        concurrentWeakMap.put(realCaller2, remove);
                        Unit unit = Unit.INSTANCE;
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
            }
        } finally {
            readLock.unlock();
        }
    }

    private final CoroutineStackFrame realCaller(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final void updateState(CoroutineOwner<?> coroutineOwner, Continuation<?> continuation, String str) {
        ReentrantReadWriteLock.ReadLock readLock = coroutineStateLock.readLock();
        readLock.lock();
        try {
            if (INSTANCE.isInstalled$kotlinx_coroutines_core()) {
                coroutineOwner.info.updateState$kotlinx_coroutines_core(str, continuation);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final CoroutineOwner<?> owner(Continuation<?> continuation) {
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        CoroutineStackFrame coroutineStackFrame = (CoroutineStackFrame) continuation;
        if (coroutineStackFrame != null) {
            return owner(coroutineStackFrame);
        }
        return null;
    }

    private final CoroutineOwner<?> owner(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof CoroutineOwner)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (CoroutineOwner) coroutineStackFrame;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(Continuation<? super T> continuation) {
        if (!isInstalled$kotlinx_coroutines_core()) {
            return continuation;
        }
        if (owner(continuation) != null) {
            return continuation;
        }
        return createOwner(continuation, enableCreationStackTraces ? toStackTraceFrame(sanitizeStackTrace(new Exception())) : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> createOwner(Continuation<? super T> continuation, StackTraceFrame stackTraceFrame) {
        if (!isInstalled$kotlinx_coroutines_core()) {
            return continuation;
        }
        CoroutineOwner<?> coroutineOwner = new CoroutineOwner<>(continuation, new DebugCoroutineInfoImpl(continuation.getContext(), stackTraceFrame, sequenceNumber$FU.incrementAndGet(debugProbesImplSequenceNumberRefVolatile)), stackTraceFrame);
        ConcurrentWeakMap<CoroutineOwner<?>, Boolean> concurrentWeakMap = capturedCoroutinesMap;
        concurrentWeakMap.put(coroutineOwner, true);
        if (!isInstalled$kotlinx_coroutines_core()) {
            concurrentWeakMap.clear();
        }
        return coroutineOwner;
    }

    public final void probeCoroutineCompleted(CoroutineOwner<?> coroutineOwner) {
        CoroutineStackFrame realCaller;
        capturedCoroutinesMap.remove(coroutineOwner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = coroutineOwner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core != null && (realCaller = realCaller(lastObservedFrame$kotlinx_coroutines_core)) != null) {
            callerInfoCache.remove(realCaller);
        }
    }

    /* compiled from: DebugProbesImpl.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001e\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "info", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "frame", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", c.R, "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "resumeWith", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {
        public final Continuation<T> delegate;
        private final CoroutineStackFrame frame;
        public final DebugCoroutineInfoImpl info;

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(Continuation<? super T> continuation, DebugCoroutineInfoImpl debugCoroutineInfoImpl, CoroutineStackFrame coroutineStackFrame) {
            this.delegate = continuation;
            this.info = debugCoroutineInfoImpl;
            this.frame = coroutineStackFrame;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.frame;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.frame;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object obj) {
            DebugProbesImpl.INSTANCE.probeCoroutineCompleted(this);
            this.delegate.resumeWith(obj);
        }

        public String toString() {
            return this.delegate.toString();
        }
    }

    private final <T extends Throwable> List<StackTraceElement> sanitizeStackTrace(T t) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        int length2 = stackTrace.length - 1;
        while (true) {
            if (length2 < 0) {
                break;
            } else if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                i = length2;
                break;
            } else {
                length2--;
            }
        }
        int i2 = 0;
        if (!sanitizeStackTraces) {
            int i3 = length - i;
            ArrayList arrayList = new ArrayList(i3);
            while (i2 < i3) {
                arrayList.add(i2 == 0 ? StackTraceRecoveryKt.artificialFrame("Coroutine creation stacktrace") : stackTrace[i2 + i]);
                i2++;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i) + 1);
        ArrayList arrayList3 = arrayList2;
        arrayList3.add(StackTraceRecoveryKt.artificialFrame("Coroutine creation stacktrace"));
        int i4 = length - 1;
        boolean z = true;
        for (int i5 = i + 1; i5 < i4; i5++) {
            StackTraceElement stackTraceElement = stackTrace[i5];
            if (!isInternalMethod(stackTraceElement)) {
                arrayList3.add(stackTraceElement);
            } else {
                if (z) {
                    arrayList3.add(stackTraceElement);
                    z = false;
                } else if (!isInternalMethod(stackTrace[i5 + 1])) {
                    arrayList3.add(stackTraceElement);
                }
            }
            z = true;
        }
        arrayList3.add(stackTrace[i4]);
        return arrayList2;
    }

    private final boolean isInternalMethod(StackTraceElement stackTraceElement) {
        return StringsKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
        r5.add(r8);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.util.List<kotlinx.coroutines.debug.internal.DebugCoroutineInfo> dumpCoroutinesInfo() {
        /*
            r9 = this;
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = access$getCoroutineStateLock$p(r9)
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r0.readLock()
            int r2 = r0.getWriteHoldCount()
            r3 = 0
            if (r2 != 0) goto L_0x0014
            int r2 = r0.getReadHoldCount()
            goto L_0x0015
        L_0x0014:
            r2 = 0
        L_0x0015:
            r4 = 0
        L_0x0016:
            if (r4 >= r2) goto L_0x001e
            r1.unlock()
            int r4 = r4 + 1
            goto L_0x0016
        L_0x001e:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            r0.lock()
            kotlinx.coroutines.debug.internal.DebugProbesImpl r4 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0092
            boolean r5 = r4.isInstalled$kotlinx_coroutines_core()     // Catch: all -> 0x0092
            if (r5 == 0) goto L_0x0084
            java.util.Set r4 = access$getCapturedCoroutines$p(r4)     // Catch: all -> 0x0092
            java.lang.Iterable r4 = (java.lang.Iterable) r4     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$2 r5 = new kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$2     // Catch: all -> 0x0092
            r5.<init>()     // Catch: all -> 0x0092
            java.util.Comparator r5 = (java.util.Comparator) r5     // Catch: all -> 0x0092
            java.util.List r4 = kotlin.collections.CollectionsKt.sortedWith(r4, r5)     // Catch: all -> 0x0092
            java.lang.Iterable r4 = (java.lang.Iterable) r4     // Catch: all -> 0x0092
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: all -> 0x0092
            r5.<init>()     // Catch: all -> 0x0092
            java.util.Collection r5 = (java.util.Collection) r5     // Catch: all -> 0x0092
            java.util.Iterator r4 = r4.iterator()     // Catch: all -> 0x0092
        L_0x004b:
            boolean r6 = r4.hasNext()     // Catch: all -> 0x0092
            if (r6 == 0) goto L_0x0076
            java.lang.Object r6 = r4.next()     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl$CoroutineOwner r6 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r6     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl r7 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0092
            boolean r7 = access$isFinished(r7, r6)     // Catch: all -> 0x0092
            r8 = 0
            if (r7 == 0) goto L_0x0061
            goto L_0x0070
        L_0x0061:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r7 = r6.info     // Catch: all -> 0x0092
            kotlin.coroutines.CoroutineContext r7 = r7.getContext()     // Catch: all -> 0x0092
            if (r7 == 0) goto L_0x0070
            kotlinx.coroutines.debug.internal.DebugCoroutineInfo r8 = new kotlinx.coroutines.debug.internal.DebugCoroutineInfo     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r6 = r6.info     // Catch: all -> 0x0092
            r8.<init>(r6, r7)     // Catch: all -> 0x0092
        L_0x0070:
            if (r8 == 0) goto L_0x004b
            r5.add(r8)     // Catch: all -> 0x0092
            goto L_0x004b
        L_0x0076:
            java.util.List r5 = (java.util.List) r5     // Catch: all -> 0x0092
        L_0x0078:
            if (r3 >= r2) goto L_0x0080
            r1.lock()
            int r3 = r3 + 1
            goto L_0x0078
        L_0x0080:
            r0.unlock()
            return r5
        L_0x0084:
            java.lang.String r4 = "Debug probes are not installed"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: all -> 0x0092
            java.lang.String r4 = r4.toString()     // Catch: all -> 0x0092
            r5.<init>(r4)     // Catch: all -> 0x0092
            java.lang.Throwable r5 = (java.lang.Throwable) r5     // Catch: all -> 0x0092
            throw r5     // Catch: all -> 0x0092
        L_0x0092:
            r4 = move-exception
        L_0x0093:
            if (r3 >= r2) goto L_0x009b
            r1.lock()
            int r3 = r3 + 1
            goto L_0x0093
        L_0x009b:
            r0.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.dumpCoroutinesInfo():java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
        r5.add(r8);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.util.List<kotlinx.coroutines.debug.internal.DebuggerInfo> dumpDebuggerInfo() {
        /*
            r9 = this;
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = access$getCoroutineStateLock$p(r9)
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r0.readLock()
            int r2 = r0.getWriteHoldCount()
            r3 = 0
            if (r2 != 0) goto L_0x0014
            int r2 = r0.getReadHoldCount()
            goto L_0x0015
        L_0x0014:
            r2 = 0
        L_0x0015:
            r4 = 0
        L_0x0016:
            if (r4 >= r2) goto L_0x001e
            r1.unlock()
            int r4 = r4 + 1
            goto L_0x0016
        L_0x001e:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            r0.lock()
            kotlinx.coroutines.debug.internal.DebugProbesImpl r4 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0092
            boolean r5 = r4.isInstalled$kotlinx_coroutines_core()     // Catch: all -> 0x0092
            if (r5 == 0) goto L_0x0084
            java.util.Set r4 = access$getCapturedCoroutines$p(r4)     // Catch: all -> 0x0092
            java.lang.Iterable r4 = (java.lang.Iterable) r4     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$3 r5 = new kotlinx.coroutines.debug.internal.DebugProbesImpl$$special$$inlined$sortedBy$3     // Catch: all -> 0x0092
            r5.<init>()     // Catch: all -> 0x0092
            java.util.Comparator r5 = (java.util.Comparator) r5     // Catch: all -> 0x0092
            java.util.List r4 = kotlin.collections.CollectionsKt.sortedWith(r4, r5)     // Catch: all -> 0x0092
            java.lang.Iterable r4 = (java.lang.Iterable) r4     // Catch: all -> 0x0092
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: all -> 0x0092
            r5.<init>()     // Catch: all -> 0x0092
            java.util.Collection r5 = (java.util.Collection) r5     // Catch: all -> 0x0092
            java.util.Iterator r4 = r4.iterator()     // Catch: all -> 0x0092
        L_0x004b:
            boolean r6 = r4.hasNext()     // Catch: all -> 0x0092
            if (r6 == 0) goto L_0x0076
            java.lang.Object r6 = r4.next()     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl$CoroutineOwner r6 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r6     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugProbesImpl r7 = kotlinx.coroutines.debug.internal.DebugProbesImpl.INSTANCE     // Catch: all -> 0x0092
            boolean r7 = access$isFinished(r7, r6)     // Catch: all -> 0x0092
            r8 = 0
            if (r7 == 0) goto L_0x0061
            goto L_0x0070
        L_0x0061:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r7 = r6.info     // Catch: all -> 0x0092
            kotlin.coroutines.CoroutineContext r7 = r7.getContext()     // Catch: all -> 0x0092
            if (r7 == 0) goto L_0x0070
            kotlinx.coroutines.debug.internal.DebuggerInfo r8 = new kotlinx.coroutines.debug.internal.DebuggerInfo     // Catch: all -> 0x0092
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r6 = r6.info     // Catch: all -> 0x0092
            r8.<init>(r6, r7)     // Catch: all -> 0x0092
        L_0x0070:
            if (r8 == 0) goto L_0x004b
            r5.add(r8)     // Catch: all -> 0x0092
            goto L_0x004b
        L_0x0076:
            java.util.List r5 = (java.util.List) r5     // Catch: all -> 0x0092
        L_0x0078:
            if (r3 >= r2) goto L_0x0080
            r1.lock()
            int r3 = r3 + 1
            goto L_0x0078
        L_0x0080:
            r0.unlock()
            return r5
        L_0x0084:
            java.lang.String r4 = "Debug probes are not installed"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: all -> 0x0092
            java.lang.String r4 = r4.toString()     // Catch: all -> 0x0092
            r5.<init>(r4)     // Catch: all -> 0x0092
            java.lang.Throwable r5 = (java.lang.Throwable) r5     // Catch: all -> 0x0092
            throw r5     // Catch: all -> 0x0092
        L_0x0092:
            r4 = move-exception
        L_0x0093:
            if (r3 >= r2) goto L_0x009b
            r1.lock()
            int r3 = r3 + 1
            goto L_0x0093
        L_0x009b:
            r0.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.dumpDebuggerInfo():java.util.List");
    }

    private final StackTraceFrame toStackTraceFrame(List<StackTraceElement> list) {
        StackTraceFrame stackTraceFrame = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                stackTraceFrame = new StackTraceFrame(stackTraceFrame, listIterator.previous());
            }
        }
        return stackTraceFrame;
    }
}
