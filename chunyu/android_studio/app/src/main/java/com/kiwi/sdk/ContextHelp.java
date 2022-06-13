package com.kiwi.sdk;

import android.content.Context;

/* compiled from: Kiwi.java */
/* loaded from: classes2.dex */
class ContextHelp {
    private static Context CONTEXT_INSTANCE;

    ContextHelp() {
    }

    public static Context getContext() {
        if (CONTEXT_INSTANCE == null) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(cls, new Object[0]);
                CONTEXT_INSTANCE = (Context) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return CONTEXT_INSTANCE;
    }
}
