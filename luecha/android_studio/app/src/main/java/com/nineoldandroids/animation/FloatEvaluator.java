package com.nineoldandroids.animation;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FloatEvaluator implements TypeEvaluator<Number> {
    public Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (f * (number2.floatValue() - floatValue)));
    }
}
