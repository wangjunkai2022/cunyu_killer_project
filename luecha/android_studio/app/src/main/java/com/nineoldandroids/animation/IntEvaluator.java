package com.nineoldandroids.animation;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class IntEvaluator implements TypeEvaluator<Integer> {
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        return Integer.valueOf((int) (((float) intValue) + (f * ((float) (num2.intValue() - intValue)))));
    }
}
