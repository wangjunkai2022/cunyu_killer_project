package androidx.transition;

import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public abstract class TransitionPropagation {
    public abstract void captureValues(TransitionValues transitionValues);

    public abstract String[] getPropagationProperties();

    public abstract long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2);
}
