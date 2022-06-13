package com.tencent.liteav.basic.license;

import android.content.Context;
import java.io.File;

/* compiled from: HttpFileUtil.java */
/* loaded from: classes2.dex */
public class c extends a {
    private Context b;
    private String c;
    private String d;
    private String e;
    private b f;
    private long g;
    private long h;
    private boolean i;
    private String j;

    public c(Context context, String str, String str2, String str3, b bVar, boolean z, String str4) {
        this.b = context;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = bVar;
        this.i = z;
        this.j = str4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d3, code lost:
        if (r19.f != null) goto L_0x01d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01d5, code lost:
        r19.f.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0215, code lost:
        if (r19.f == null) goto L_0x0218;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01ec A[Catch: IOException -> 0x01fd, TryCatch #16 {IOException -> 0x01fd, blocks: (B:128:0x01e7, B:130:0x01ec, B:132:0x01f1, B:133:0x01f4, B:135:0x01f8), top: B:175:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f1 A[Catch: IOException -> 0x01fd, TryCatch #16 {IOException -> 0x01fd, blocks: (B:128:0x01e7, B:130:0x01ec, B:132:0x01f1, B:133:0x01f4, B:135:0x01f8), top: B:175:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01f8 A[Catch: IOException -> 0x01fd, TRY_LEAVE, TryCatch #16 {IOException -> 0x01fd, blocks: (B:128:0x01e7, B:130:0x01ec, B:132:0x01f1, B:133:0x01f4, B:135:0x01f8), top: B:175:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0206 A[Catch: IOException -> 0x0218, TRY_ENTER, TryCatch #4 {IOException -> 0x0218, blocks: (B:112:0x01c4, B:114:0x01c9, B:116:0x01ce, B:117:0x01d1, B:119:0x01d5, B:143:0x0206, B:145:0x020b, B:147:0x0210, B:148:0x0213), top: B:166:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x020b A[Catch: IOException -> 0x0218, TryCatch #4 {IOException -> 0x0218, blocks: (B:112:0x01c4, B:114:0x01c9, B:116:0x01ce, B:117:0x01d1, B:119:0x01d5, B:143:0x0206, B:145:0x020b, B:147:0x0210, B:148:0x0213), top: B:166:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0210 A[Catch: IOException -> 0x0218, TryCatch #4 {IOException -> 0x0218, blocks: (B:112:0x01c4, B:114:0x01c9, B:116:0x01ce, B:117:0x01d1, B:119:0x01d5, B:143:0x0206, B:145:0x020b, B:147:0x0210, B:148:0x0213), top: B:166:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.tencent.liteav.basic.license.b] */
    /* JADX WARN: Type inference failed for: r0v45, types: [com.tencent.liteav.basic.license.b] */
    /* JADX WARN: Type inference failed for: r0v49, types: [com.tencent.liteav.basic.license.b] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.tencent.liteav.basic.license.b] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void run() {
        /*
        // Method dump skipped, instructions count: 555
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.basic.license.c.run():void");
    }

    private void a(Exception exc, int i) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.a((File) null, exc);
        }
        this.f = null;
    }
}
