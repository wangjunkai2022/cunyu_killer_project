package com.tencent.thumbplayer.adapter.strategy;

import com.tencent.thumbplayer.adapter.strategy.a.a;
import com.tencent.thumbplayer.adapter.strategy.utils.TPStrategyUtils;

/* loaded from: classes2.dex */
public abstract class b implements a {
    protected a a;

    public b(a aVar) {
        this.a = aVar;
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.a
    public int a(com.tencent.thumbplayer.adapter.b bVar) {
        int a = this.a.a();
        if (a != 0) {
            if (a == 1) {
                return b(bVar) ? 2 : 0;
            }
            if (a != 2) {
                if (a == 3) {
                    return c(bVar) ? 1 : 0;
                }
                if (a != 4) {
                    return 0;
                }
                if (c(bVar)) {
                    return 1;
                }
                return TPStrategyUtils.isThumbPlayerEnable() ? 2 : 0;
            } else if (b(bVar)) {
                return 2;
            } else {
                return TPStrategyUtils.isSystemPlayerEnable() ? 1 : 0;
            }
        } else if (b(bVar)) {
            return 2;
        } else {
            return TPStrategyUtils.isSystemPlayerEnable() ? 1 : 0;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.a
    public int a(com.tencent.thumbplayer.adapter.b bVar, com.tencent.thumbplayer.adapter.strategy.a.b bVar2) {
        int a = this.a.a();
        if (bVar2 != null && bVar2.a() == 0) {
            return a(bVar);
        }
        if (!a(bVar2)) {
            return 0;
        }
        if (a != 0) {
            if (a != 1) {
                if (a != 2) {
                    return (a == 3 || a != 4 || bVar2 == null || bVar2.a() != 1 || !b(bVar)) ? 0 : 2;
                }
                if (bVar2 != null && bVar2.a() == 2 && c(bVar)) {
                    return 1;
                }
            }
            return 0;
        } else if (bVar2 != null && bVar2.a() == 1) {
            return b(bVar) ? 2 : 0;
        } else {
            if (bVar2 != null && bVar2.a() == 2 && c(bVar)) {
                return 1;
            }
        }
        return 0;
    }

    protected boolean a(com.tencent.thumbplayer.adapter.strategy.a.b bVar) {
        return false;
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.a
    public int[] a() {
        int b = this.a.b();
        if (b != 0) {
            if (b == 1) {
                return new int[]{102};
            }
            if (b != 2) {
                if (b == 3) {
                    return new int[]{101};
                }
                if (b != 4) {
                    return null;
                }
                return new int[]{101, 102};
            }
        }
        return new int[]{102, 101};
    }

    boolean b(com.tencent.thumbplayer.adapter.b bVar) {
        return TPStrategyUtils.isTVPlatform() ? TPStrategyUtils.isThumbPlayerEnable() : TPStrategyUtils.isThumbPlayerEnable() && TPStrategyUtils.enablePlayByThumbPlayer(bVar);
    }

    boolean c(com.tencent.thumbplayer.adapter.b bVar) {
        if (TPStrategyUtils.isTVPlatform()) {
            return true;
        }
        return TPStrategyUtils.isSystemPlayerEnable() && TPStrategyUtils.enablePlayBySystemPlayer(bVar);
    }
}
