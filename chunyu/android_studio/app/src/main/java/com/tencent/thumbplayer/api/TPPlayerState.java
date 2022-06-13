package com.tencent.thumbplayer.api;

import android.util.SparseArray;
import com.tencent.thumbplayer.adapter.a.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class TPPlayerState {
    public static final int COMPLETE = 7;
    public static final int ERROR = 10;
    public static final int IDLE = 1;
    public static final int INDEX = 0;
    public static final int INITIALIZED = 2;
    private static final SparseArray<String> NS_STATES = new SparseArray<>();
    public static final int PAUSE = 6;
    public static final int PREPARED = 4;
    public static final int PREPARING = 3;
    public static final int RELEASED = 11;
    public static final int START = 5;
    public static final int STOPPED = 9;
    public static final int STOPPING = 8;
    private c.k mStateChangeListener;
    private int mCurState = 1;
    private int mPreState = 1;
    private int mLastState = 1;
    private int mInnerPlayState = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface STATE {
    }

    static {
        NS_STATES.put(1, "IDLE");
        NS_STATES.put(2, "INITIALIZED");
        NS_STATES.put(3, "PREPARING");
        NS_STATES.put(4, "PREPARED");
        NS_STATES.put(5, "START");
        NS_STATES.put(6, "PAUSE");
        NS_STATES.put(7, "COMPLETE");
        NS_STATES.put(8, "STOPPING");
        NS_STATES.put(9, "STOPPED");
        NS_STATES.put(10, "ERROR");
        NS_STATES.put(11, "RELEASED");
    }

    public synchronized void changeState(int i) {
        if (this.mCurState != i) {
            this.mPreState = this.mCurState;
            this.mCurState = i;
            if (this.mStateChangeListener != null) {
                this.mStateChangeListener.b(this.mPreState, this.mCurState);
            }
        }
    }

    public synchronized int innerPlayState() {
        return this.mInnerPlayState;
    }

    public synchronized boolean is(int i) {
        return this.mCurState == i;
    }

    public synchronized int lastState() {
        return this.mLastState;
    }

    public synchronized int preState() {
        return this.mPreState;
    }

    public synchronized void setInnerPlayStateState(int i) {
        if (this.mInnerPlayState != i) {
            this.mInnerPlayState = i;
        }
    }

    public synchronized void setLastState(int i) {
        if (this.mLastState != i) {
            this.mLastState = i;
        }
    }

    public void setOnPlayerStateChangeListener(c.k kVar) {
        this.mStateChangeListener = kVar;
    }

    public synchronized int state() {
        return this.mCurState;
    }

    public synchronized String toString() {
        return "state[ cur : " + NS_STATES.get(this.mCurState) + " , pre : " + NS_STATES.get(this.mPreState) + " , last : " + NS_STATES.get(this.mLastState) + " , inner play : " + NS_STATES.get(this.mInnerPlayState) + " ]";
    }
}
