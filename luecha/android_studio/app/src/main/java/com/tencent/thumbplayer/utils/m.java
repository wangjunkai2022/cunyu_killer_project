package com.tencent.thumbplayer.utils;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class m extends ReentrantReadWriteLock {
    private Condition a = writeLock().newCondition();
}
