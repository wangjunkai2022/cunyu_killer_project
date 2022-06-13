package com.facebook.imagepipeline.animated.factory;

import com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory;
import com.facebook.imagepipeline.core.ExecutorSupplier;

/* loaded from: classes4.dex */
public class AnimatedFactoryProvider {
    private static AnimatedFactory sImpl;
    private static boolean sImplLoaded;

    public static AnimatedFactory getAnimatedFactory(PlatformBitmapFactory platformBitmapFactory, ExecutorSupplier executorSupplier) {
        if (!sImplLoaded) {
            try {
                sImpl = (AnimatedFactory) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImplSupport").getConstructor(PlatformBitmapFactory.class, ExecutorSupplier.class).newInstance(platformBitmapFactory, executorSupplier);
            } catch (Throwable unused) {
            }
            AnimatedFactory animatedFactory = sImpl;
            if (animatedFactory != null) {
                sImplLoaded = true;
                return animatedFactory;
            }
            try {
                sImpl = (AnimatedFactory) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl").getConstructor(PlatformBitmapFactory.class, ExecutorSupplier.class).newInstance(platformBitmapFactory, executorSupplier);
            } catch (Throwable unused2) {
            }
            sImplLoaded = true;
        }
        return sImpl;
    }
}
