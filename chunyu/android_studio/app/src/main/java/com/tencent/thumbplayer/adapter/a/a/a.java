package com.tencent.thumbplayer.adapter.a.a;

import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;

/* loaded from: classes2.dex */
public interface a {

    /* renamed from: com.tencent.thumbplayer.adapter.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface AbstractC0034a {
        void a(d dVar);

        void a(TPSubtitleFrame tPSubtitleFrame);

        void a(String str);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(int i, long j);

        void a(long j);
    }

    /* loaded from: classes2.dex */
    public interface c {
        long a();
    }

    /* loaded from: classes2.dex */
    public static class d {
        String a;

        public d(String str) {
            this.a = str;
        }
    }

    void a();

    void a(int i);

    void a(AbstractC0034a aVar);

    void a(b bVar);

    void a(c cVar);

    void a(TPSubtitleRenderModel tPSubtitleRenderModel);

    void a(String str, long j);

    void b();

    void c();

    void d();

    void e();

    void f();
}
