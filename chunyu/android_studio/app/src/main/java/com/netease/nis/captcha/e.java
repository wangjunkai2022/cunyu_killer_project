package com.netease.nis.captcha;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: HttpUtil.java */
/* loaded from: classes2.dex */
public class e {
    private static final Handler a = new Handler(Looper.getMainLooper());
    private static final ExecutorService b = Executors.newSingleThreadExecutor();

    /* compiled from: HttpUtil.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ b b;

        /* compiled from: HttpUtil.java */
        /* renamed from: com.netease.nis.captcha.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0017a implements b {

            /* compiled from: HttpUtil.java */
            /* renamed from: com.netease.nis.captcha.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0018a implements Runnable {
                final /* synthetic */ String a;

                RunnableC0018a(String str) {
                    this.a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.b.a(this.a);
                }
            }

            /* compiled from: HttpUtil.java */
            /* renamed from: com.netease.nis.captcha.e$a$a$b */
            /* loaded from: classes2.dex */
            class b implements Runnable {
                final /* synthetic */ int a;
                final /* synthetic */ String b;

                b(int i, String str) {
                    this.a = i;
                    this.b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.b.onError(this.a, this.b);
                }
            }

            C0017a() {
            }

            @Override // com.netease.nis.captcha.e.b
            public void a(String str) {
                e.a.post(new RunnableC0018a(str));
            }

            @Override // com.netease.nis.captcha.e.b
            public void onError(int i, String str) {
                e.a.post(new b(i, str));
            }
        }

        a(String str, b bVar) {
            this.a = str;
            this.b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.b(this.a, false, true, null, null, new C0017a());
        }
    }

    /* compiled from: HttpUtil.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(String str);

        void onError(int i, String str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 0, insn: 0x0101: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:51:0x0101
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static void b(
    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 0, insn: 0x0101: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:51:0x0101
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:228)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:198)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:151)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:364)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:304)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:270)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    public static void a(String str, b bVar) {
        c.a("%s", "get request url:" + str);
        b.execute(new a(str, bVar));
    }
}
