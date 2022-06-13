package io.flutter.embedding.android;

import android.view.KeyEvent;
import android.view.View;
import io.flutter.Log;
import io.flutter.plugin.editing.TextInputPlugin;
import java.util.HashSet;

/* loaded from: classes5.dex */
public class KeyboardManager {
    private static final String TAG = "KeyboardManager";
    private final HashSet<KeyEvent> redispatchedEvents = new HashSet<>();
    protected final Responder[] responders;
    private final TextInputPlugin textInputPlugin;
    private final View view;

    /* loaded from: classes5.dex */
    public interface Responder {

        /* loaded from: classes5.dex */
        public interface OnKeyEventHandledCallback {
            void onKeyEventHandled(Boolean bool);
        }

        void handleEvent(KeyEvent keyEvent, OnKeyEventHandledCallback onKeyEventHandledCallback);
    }

    public KeyboardManager(View view, TextInputPlugin textInputPlugin, Responder[] responderArr) {
        this.view = view;
        this.textInputPlugin = textInputPlugin;
        this.responders = responderArr;
    }

    /* loaded from: classes5.dex */
    public class PerEventCallbackBuilder {
        boolean isEventHandled = false;
        final KeyEvent keyEvent;
        int unrepliedCount;

        /* loaded from: classes5.dex */
        public class Callback implements Responder.OnKeyEventHandledCallback {
            boolean isCalled;

            private Callback() {
                PerEventCallbackBuilder.this = r1;
                this.isCalled = false;
            }

            @Override // io.flutter.embedding.android.KeyboardManager.Responder.OnKeyEventHandledCallback
            public void onKeyEventHandled(Boolean bool) {
                if (!this.isCalled) {
                    this.isCalled = true;
                    PerEventCallbackBuilder.this.unrepliedCount--;
                    PerEventCallbackBuilder perEventCallbackBuilder = PerEventCallbackBuilder.this;
                    perEventCallbackBuilder.isEventHandled = bool.booleanValue() | perEventCallbackBuilder.isEventHandled;
                    if (PerEventCallbackBuilder.this.unrepliedCount == 0 && !PerEventCallbackBuilder.this.isEventHandled) {
                        KeyboardManager.this.onUnhandled(PerEventCallbackBuilder.this.keyEvent);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("The onKeyEventHandledCallback should be called exactly once.");
            }
        }

        PerEventCallbackBuilder(KeyEvent keyEvent) {
            KeyboardManager.this = r1;
            this.unrepliedCount = KeyboardManager.this.responders.length;
            this.keyEvent = keyEvent;
        }

        public Responder.OnKeyEventHandledCallback buildCallback() {
            return new Callback();
        }
    }

    public boolean handleEvent(KeyEvent keyEvent) {
        if (this.redispatchedEvents.remove(keyEvent)) {
            return false;
        }
        if (this.responders.length > 0) {
            PerEventCallbackBuilder perEventCallbackBuilder = new PerEventCallbackBuilder(keyEvent);
            for (Responder responder : this.responders) {
                responder.handleEvent(keyEvent, perEventCallbackBuilder.buildCallback());
            }
            return true;
        }
        onUnhandled(keyEvent);
        return true;
    }

    public void destroy() {
        int size = this.redispatchedEvents.size();
        if (size > 0) {
            Log.w("KeyboardManager", "A KeyboardManager was destroyed with " + String.valueOf(size) + " unhandled redispatch event(s).");
        }
    }

    public void onUnhandled(KeyEvent keyEvent) {
        if (!this.textInputPlugin.handleKeyEvent(keyEvent) && this.view != null) {
            this.redispatchedEvents.add(keyEvent);
            this.view.getRootView().dispatchKeyEvent(keyEvent);
            if (this.redispatchedEvents.remove(keyEvent)) {
                Log.w("KeyboardManager", "A redispatched key event was consumed before reaching KeyboardManager");
            }
        }
    }
}
