package com.netease.mobsec;

import android.util.Pair;

/* loaded from: classes2.dex */
public interface AbstractNetClient {
    Pair<Integer, String> sendGet(String str, int i);

    Pair<Integer, String> sendPost(String str, String str2, int i);
}
