package com.netease.mobsec;

import android.util.Pair;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface AbstractNetClient {
    Pair<Integer, String> sendGet(String str, int i);

    Pair<Integer, String> sendPost(String str, String str2, int i);
}
