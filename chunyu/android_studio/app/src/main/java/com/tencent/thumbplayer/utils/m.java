package com.tencent.thumbplayer.utils;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes2.dex */
public class m extends ReentrantReadWriteLock {
    private Condition a = writeLock().newCondition();
}
