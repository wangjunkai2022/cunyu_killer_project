package io.flutter.embedding.android;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.renderer.FlutterUiDisplayListener;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class FlutterSplashView extends FrameLayout {
    private static String TAG = "FlutterSplashView";
    private final FlutterView.FlutterEngineAttachmentListener flutterEngineAttachmentListener;
    private final FlutterUiDisplayListener flutterUiDisplayListener;
    private FlutterView flutterView;
    private final Runnable onTransitionComplete;
    private String previousCompletedSplashIsolate;
    private SplashScreen splashScreen;
    private Bundle splashScreenState;
    private View splashScreenView;
    private String transitioningIsolateId;

    public FlutterSplashView(Context context) {
        this(context, null, 0);
    }

    public FlutterSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlutterSplashView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.flutterEngineAttachmentListener = new FlutterView.FlutterEngineAttachmentListener() { // from class: io.flutter.embedding.android.FlutterSplashView.1
            @Override // io.flutter.embedding.android.FlutterView.FlutterEngineAttachmentListener
            public void onFlutterEngineDetachedFromFlutterView() {
            }

            @Override // io.flutter.embedding.android.FlutterView.FlutterEngineAttachmentListener
            public void onFlutterEngineAttachedToFlutterView(FlutterEngine flutterEngine) {
                FlutterSplashView.this.flutterView.removeFlutterEngineAttachmentListener(this);
                FlutterSplashView flutterSplashView = FlutterSplashView.this;
                flutterSplashView.displayFlutterViewWithSplash(flutterSplashView.flutterView, FlutterSplashView.this.splashScreen);
            }
        };
        this.flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.embedding.android.FlutterSplashView.2
            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiNoLongerDisplayed() {
            }

            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiDisplayed() {
                if (FlutterSplashView.this.splashScreen != null) {
                    FlutterSplashView.this.transitionToFlutter();
                }
            }
        };
        this.onTransitionComplete = new Runnable() { // from class: io.flutter.embedding.android.FlutterSplashView.3
            @Override // java.lang.Runnable
            public void run() {
                FlutterSplashView flutterSplashView = FlutterSplashView.this;
                flutterSplashView.removeView(flutterSplashView.splashScreenView);
                FlutterSplashView flutterSplashView2 = FlutterSplashView.this;
                flutterSplashView2.previousCompletedSplashIsolate = flutterSplashView2.transitioningIsolateId;
            }
        };
        setSaveEnabled(true);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.previousCompletedSplashIsolate = this.previousCompletedSplashIsolate;
        SplashScreen splashScreen = this.splashScreen;
        savedState.splashScreenState = splashScreen != null ? splashScreen.saveSplashScreenState() : null;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.previousCompletedSplashIsolate = savedState.previousCompletedSplashIsolate;
        this.splashScreenState = savedState.splashScreenState;
    }

    public void displayFlutterViewWithSplash(FlutterView flutterView, SplashScreen splashScreen) {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 != null) {
            flutterView2.removeOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
            removeView(this.flutterView);
        }
        View view = this.splashScreenView;
        if (view != null) {
            removeView(view);
        }
        this.flutterView = flutterView;
        addView(flutterView);
        this.splashScreen = splashScreen;
        if (splashScreen == null) {
            return;
        }
        if (isSplashScreenNeededNow()) {
            Log.v(TAG, "Showing splash screen UI.");
            this.splashScreenView = splashScreen.createSplashView(getContext(), this.splashScreenState);
            addView(this.splashScreenView);
            flutterView.addOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
        } else if (isSplashScreenTransitionNeededNow()) {
            Log.v(TAG, "Showing an immediate splash transition to Flutter due to previously interrupted transition.");
            this.splashScreenView = splashScreen.createSplashView(getContext(), this.splashScreenState);
            addView(this.splashScreenView);
            transitionToFlutter();
        } else if (!flutterView.isAttachedToFlutterEngine()) {
            Log.v(TAG, "FlutterView is not yet attached to a FlutterEngine. Showing nothing until a FlutterEngine is attached.");
            flutterView.addFlutterEngineAttachmentListener(this.flutterEngineAttachmentListener);
        }
    }

    private boolean isSplashScreenNeededNow() {
        FlutterView flutterView = this.flutterView;
        return flutterView != null && flutterView.isAttachedToFlutterEngine() && !this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
    }

    private boolean isSplashScreenTransitionNeededNow() {
        SplashScreen splashScreen;
        FlutterView flutterView = this.flutterView;
        return flutterView != null && flutterView.isAttachedToFlutterEngine() && (splashScreen = this.splashScreen) != null && splashScreen.doesSplashViewRememberItsTransition() && wasPreviousSplashTransitionInterrupted();
    }

    private boolean wasPreviousSplashTransitionInterrupted() {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterView is set.");
        } else if (flutterView.isAttachedToFlutterEngine()) {
            return this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
        } else {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
    }

    private boolean hasSplashCompleted() {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterView is set.");
        } else if (flutterView.isAttachedToFlutterEngine()) {
            return this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId() != null && this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId().equals(this.previousCompletedSplashIsolate);
        } else {
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void transitionToFlutter() {
        this.transitioningIsolateId = this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId();
        String str = TAG;
        Log.v(str, "Transitioning splash screen to a Flutter UI. Isolate: " + this.transitioningIsolateId);
        this.splashScreen.transitionToFlutter(this.onTransitionComplete);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class SavedState extends View.BaseSavedState {
        public static Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: io.flutter.embedding.android.FlutterSplashView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private String previousCompletedSplashIsolate;
        private Bundle splashScreenState;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.previousCompletedSplashIsolate = parcel.readString();
            this.splashScreenState = parcel.readBundle(getClass().getClassLoader());
        }

        @Override // android.view.View.BaseSavedState, android.os.Parcelable, android.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.previousCompletedSplashIsolate);
            parcel.writeBundle(this.splashScreenState);
        }
    }
}
