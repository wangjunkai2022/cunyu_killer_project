package com.tencent.thumbplayer.adapter.strategy;

import com.tencent.thumbplayer.adapter.b;
import com.tencent.thumbplayer.adapter.strategy.a.a;
import com.tencent.thumbplayer.utils.TPLogUtil;

/* loaded from: classes2.dex */
public class d extends b {
    private int b = 0;
    private int[] c;

    public d(a aVar) {
        super(aVar);
        this.c = aVar.c();
        int[] iArr = this.c;
        if (iArr == null || iArr.length == 0) {
            this.c = new int[1];
        }
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int a(b bVar) {
        int[] iArr = this.c;
        int length = iArr.length;
        int i = this.b;
        int i2 = length > i ? iArr[i] : 0;
        if ((i2 == 2 || i2 == 3) && !b(bVar)) {
            i2 = 0;
        }
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForOpen, playerType:" + i2);
        return i2;
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int a(b bVar, com.tencent.thumbplayer.adapter.strategy.a.b bVar2) {
        int i;
        if (bVar2 != null && bVar2.a() == 0) {
            return a(bVar);
        }
        int[] iArr = this.c;
        int length = iArr.length - 1;
        int i2 = this.b;
        if (length > i2) {
            int i3 = i2 + 1;
            this.b = i3;
            i = iArr[i3];
        } else {
            i = 0;
        }
        if ((i == 2 || i == 3) && !b(bVar)) {
            i = 0;
        }
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForRetry, playerType:" + i);
        return i;
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int[] a() {
        StringBuilder sb;
        int i;
        int[] iArr = new int[1];
        iArr[0] = -1;
        int i2 = this.b;
        int[] iArr2 = this.c;
        if (i2 >= iArr2.length) {
            sb = new StringBuilder();
            sb.append("strategyForDec error, decType:");
            i = iArr[0];
        } else {
            if (iArr2[i2] == 1 || iArr2[i2] == 2) {
                iArr[0] = 102;
            } else if (iArr2[i2] == 3) {
                iArr[0] = 101;
            }
            sb = new StringBuilder();
            sb.append("strategyForDec, decType:");
            i = iArr[0];
        }
        sb.append(i);
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", sb.toString());
        return iArr;
    }
}
