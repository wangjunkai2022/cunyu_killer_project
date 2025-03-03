package com.facebook.common.soloader;

/* loaded from: classes2.dex */
public class SoLoaderShim {
    private static volatile Handler sHandler = new DefaultHandler();

    /* loaded from: classes2.dex */
    public interface Handler {
        void loadLibrary(String str);
    }

    /* loaded from: classes2.dex */
    public static class DefaultHandler implements Handler {
        @Override // com.facebook.common.soloader.SoLoaderShim.Handler
        public void loadLibrary(String str) {
            System.loadLibrary(str);
        }
    }

    public static void setHandler(Handler handler) {
        if (handler != null) {
            sHandler = handler;
            return;
        }
        throw new NullPointerException("Handler cannot be null");
    }

    public static void loadLibrary(String str) {
        sHandler.loadLibrary(str);
    }

    public static void setInTestMode() {
        setHandler(new Handler() { // from class: com.facebook.common.soloader.SoLoaderShim.1
            @Override // com.facebook.common.soloader.SoLoaderShim.Handler
            public void loadLibrary(String str) {
            }
        });
    }
}
