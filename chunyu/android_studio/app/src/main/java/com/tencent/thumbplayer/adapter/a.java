package com.tencent.thumbplayer.adapter;

import com.tencent.thumbplayer.adapter.a.b;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.a.e;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import java.util.Map;

/* loaded from: classes2.dex */
public interface a extends b {
    int a();

    void a(c.k kVar);

    void a(e eVar);

    void a(e eVar, int i, long j);

    void a(e eVar, Map<String, String> map);

    void a(e eVar, Map<String, String> map, int i, long j);

    void a(TPVideoInfo tPVideoInfo);

    void a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer);

    int b();

    void b(TPVideoInfo tPVideoInfo);

    boolean c();

    int d();

    b e();
}
