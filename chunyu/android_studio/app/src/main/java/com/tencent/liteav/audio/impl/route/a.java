package com.tencent.liteav.audio.impl.route;

/* compiled from: AudioConstants.java */
/* loaded from: classes2.dex */
public class a {

    /* compiled from: AudioConstants.java */
    /* renamed from: com.tencent.liteav.audio.impl.route.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0021a {
        STOPPED,
        VOICE_CHAT,
        MEDIA_PLAY_AND_RECORD,
        MEDIA_PLAYBACK,
        VOICE_PLAYBACK,
        IDLE;

        public boolean a() {
            return this == MEDIA_PLAY_AND_RECORD || this == MEDIA_PLAYBACK;
        }

        public boolean b() {
            return this == VOICE_CHAT || this == VOICE_PLAYBACK;
        }
    }

    /* compiled from: AudioConstants.java */
    /* renamed from: com.tencent.liteav.audio.impl.route.a$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[EnumC0021a.values().length];

        static {
            try {
                a[EnumC0021a.VOICE_CHAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EnumC0021a.VOICE_PLAYBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[EnumC0021a.MEDIA_PLAY_AND_RECORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[EnumC0021a.MEDIA_PLAYBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static int a(EnumC0021a aVar) {
        int i = AnonymousClass1.a[aVar.ordinal()];
        return (i == 1 || i == 2) ? 3 : 0;
    }
}
