package okhttp3.internal.ws;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: WebSocketExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cBE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003JN\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "perMessageDeflate", "", "clientMaxWindowBits", "", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Ljava/lang/Integer;", "component1", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "equals", "other", "hashCode", "noContextTakeover", "clientOriginated", "toString", "", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = webSocketExtensions.perMessageDeflate;
        }
        if ((i & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        if ((i & 4) != 0) {
            z2 = webSocketExtensions.clientNoContextTakeover;
        }
        if ((i & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        if ((i & 16) != 0) {
            z3 = webSocketExtensions.serverNoContextTakeover;
        }
        if ((i & 32) != 0) {
            z4 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z, num, z2, num2, z3, z4);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        return new WebSocketExtensions(z, num, z2, num2, z3, z4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    public int hashCode() {
        boolean z = this.perMessageDeflate;
        int i = 1;
        if (z) {
            z = true;
        }
        int i2 = z ? 1 : 0;
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = i2 * 31;
        Integer num = this.clientMaxWindowBits;
        int i6 = 0;
        int hashCode = (i5 + (num != null ? num.hashCode() : 0)) * 31;
        boolean z2 = this.clientNoContextTakeover;
        if (z2) {
            z2 = true;
        }
        int i7 = z2 ? 1 : 0;
        int i8 = z2 ? 1 : 0;
        int i9 = z2 ? 1 : 0;
        int i10 = (hashCode + i7) * 31;
        Integer num2 = this.serverMaxWindowBits;
        if (num2 != null) {
            i6 = num2.hashCode();
        }
        int i11 = (i10 + i6) * 31;
        boolean z3 = this.serverNoContextTakeover;
        if (z3) {
            z3 = true;
        }
        int i12 = z3 ? 1 : 0;
        int i13 = z3 ? 1 : 0;
        int i14 = z3 ? 1 : 0;
        int i15 = (i11 + i12) * 31;
        boolean z4 = this.unknownValues;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        return i15 + i;
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }

    public WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        this.perMessageDeflate = z;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z2;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z3;
        this.unknownValues = z4;
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4);
    }

    public final boolean noContextTakeover(boolean z) {
        if (z) {
            return this.clientNoContextTakeover;
        }
        return this.serverNoContextTakeover;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: WebSocketExtensions.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "()V", "HEADER_WEB_SOCKET_EXTENSION", "", "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
            if (r8 != false) goto L_0x005b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x005b, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
            if (r15 >= r13) goto L_0x00d5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x005f, code lost:
            r1 = okhttp3.internal.Util.delimiterOffset(r5, ';', r15, r13);
            r6 = okhttp3.internal.Util.delimiterOffset(r5, '=', r15, r1);
            r8 = okhttp3.internal.Util.trimSubstring(r5, r15, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x006d, code lost:
            if (r6 >= r1) goto L_0x007e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
            r6 = kotlin.text.StringsKt.removeSurrounding(okhttp3.internal.Util.trimSubstring(r5, r6 + 1, r1), (java.lang.CharSequence) "\"");
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
            r6 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x007f, code lost:
            r15 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0087, code lost:
            if (kotlin.text.StringsKt.equals(r8, "client_max_window_bits", true) == false) goto L_0x0099;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
            if (r7 == null) goto L_0x008d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x008b, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x008d, code lost:
            if (r6 == null) goto L_0x0094;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
            r1 = kotlin.text.StringsKt.toIntOrNull(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0094, code lost:
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
            r7 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
            if (r1 != null) goto L_0x005d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
            if (kotlin.text.StringsKt.equals(r8, "client_no_context_takeover", true) == false) goto L_0x00ab;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00a1, code lost:
            if (r10 == false) goto L_0x00a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00a3, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a5, code lost:
            if (r6 == null) goto L_0x00a9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00a7, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a9, code lost:
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
            if (kotlin.text.StringsKt.equals(r8, "server_max_window_bits", true) == false) goto L_0x00c3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
            if (r9 == null) goto L_0x00b7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
            if (r6 == null) goto L_0x00be;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b9, code lost:
            r1 = kotlin.text.StringsKt.toIntOrNull(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00bf, code lost:
            r9 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c0, code lost:
            if (r1 != null) goto L_0x005d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
            if (kotlin.text.StringsKt.equals(r8, "server_no_context_takeover", true) == false) goto L_0x005b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00cb, code lost:
            if (r11 == false) goto L_0x00cf;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00cd, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00cf, code lost:
            if (r6 == null) goto L_0x00d3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00d1, code lost:
            r19 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00d3, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00d5, code lost:
            r8 = true;
         */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public final okhttp3.internal.ws.WebSocketExtensions parse(okhttp3.Headers r21) throws java.io.IOException {
            /*
            // Method dump skipped, instructions count: 238
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.WebSocketExtensions.Companion.parse(okhttp3.Headers):okhttp3.internal.ws.WebSocketExtensions");
        }
    }
}
