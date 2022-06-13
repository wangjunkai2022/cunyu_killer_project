package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        ChainHead[] chainHeadArr;
        int i2;
        int i3;
        if (i == 0) {
            i3 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i2 = 0;
        } else {
            int i4 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i3 = i4;
            i2 = 2;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (arrayList == null || (arrayList != null && arrayList.contains(chainHead.mFirst))) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
        if (r2.mVerticalChainStyle == 2) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
        r5 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x03ca A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v63, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    static void applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r36, androidx.constraintlayout.solver.LinearSystem r37, int r38, int r39, androidx.constraintlayout.solver.widgets.ChainHead r40) {
        /*
        // Method dump skipped, instructions count: 1391
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }
}
