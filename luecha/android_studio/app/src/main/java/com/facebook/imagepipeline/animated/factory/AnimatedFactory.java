package com.facebook.imagepipeline.animated.factory;

import android.content.Context;

/* loaded from: classes2.dex */
public interface AnimatedFactory {
    AnimatedDrawableFactory getAnimatedDrawableFactory(Context context);

    AnimatedImageFactory getAnimatedImageFactory();
}
