package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface Service {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class Listener {
        public void failed(State state, Throwable th) {
        }

        public void running() {
        }

        public void starting() {
        }

        public void stopping(State state) {
        }

        public void terminated(State state) {
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum State {
        NEW {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return false;
            }
        },
        STARTING {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return false;
            }
        },
        RUNNING {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return false;
            }
        },
        STOPPING {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return false;
            }
        },
        TERMINATED {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return true;
            }
        },
        FAILED {
            @Override // com.google.common.util.concurrent.Service.State
            boolean isTerminal() {
                return true;
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean isTerminal();
    }

    void addListener(Listener listener, Executor executor);

    void awaitRunning();

    void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException;

    void awaitTerminated();

    void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException;

    Throwable failureCause();

    boolean isRunning();

    Service startAsync();

    State state();

    Service stopAsync();
}
