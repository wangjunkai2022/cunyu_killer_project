package com.tencent.thumbplayer.adapter;

import com.tencent.thumbplayer.api.TPPlayerState;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class g {
    private TPPlayerState a;

    public g(TPPlayerState tPPlayerState) {
        this.a = tPPlayerState;
    }

    private static boolean a(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(2) || tPPlayerState.is(8) || tPPlayerState.is(9);
    }

    private static boolean b(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1);
    }

    private static boolean c(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7) || tPPlayerState.is(8) || tPPlayerState.is(9);
    }

    private static boolean d(TPPlayerState tPPlayerState) {
        return true;
    }

    private static boolean e(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean f(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean g(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean h(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7) || tPPlayerState.is(10);
    }

    private static boolean i(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean j(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean k(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean l(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean m(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean n(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean o(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean p(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7) || tPPlayerState.is(10);
    }

    private static boolean q(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3);
    }

    private static boolean r(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean s(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean t(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean u(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean v(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean w(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7) || tPPlayerState.is(8);
    }

    private static boolean x(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean y(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    public final boolean a(int i) {
        if (i == 1) {
            return a(this.a);
        }
        if (i == 2) {
            return b(this.a);
        }
        if (i == 3) {
            return c(this.a);
        }
        if (i == 4) {
            return d(this.a);
        }
        if (i == 5) {
            return e(this.a);
        }
        if (i == 6) {
            return f(this.a);
        }
        if (i == 7) {
            return g(this.a);
        }
        if (i == 8) {
            return h(this.a);
        }
        if (i == 9) {
            return i(this.a);
        }
        if (i == 11) {
            return j(this.a);
        }
        if (i == 12) {
            return k(this.a);
        }
        if (i == 13) {
            return m(this.a);
        }
        if (i == 14) {
            return n(this.a);
        }
        if (i == 15) {
            return o(this.a);
        }
        if (i == 16) {
            return p(this.a);
        }
        if (i == 17) {
            return x(this.a);
        }
        if (i == 18) {
            return y(this.a);
        }
        if (i == 19) {
            return l(this.a);
        }
        return false;
    }

    public final boolean b(int i) {
        if (i == 1) {
            return q(this.a);
        }
        if (i == 2) {
            return r(this.a);
        }
        if (i == 3) {
            return s(this.a);
        }
        if (i == 4) {
            return t(this.a);
        }
        if (i == 5) {
            return u(this.a);
        }
        if (i == 6) {
            return v(this.a);
        }
        if (i == 7) {
            return w(this.a);
        }
        return false;
    }
}
