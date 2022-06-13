package xyz.ipig.native_dialog;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class PromptDialog {
    public static long viewAnimDuration = 300;
    private final String TAG;
    private OnAdClickListener adListener;
    private ViewGroup decorView;
    private ValueAnimator dissmissAnim;
    private boolean dissmissAnimCancle;
    private Handler handler;
    private Animation inAnim;
    private AnimationSet inDefaultAnim;
    private AnimationSet inSheetAnim;
    private InputMethodManager inputmanger;
    private boolean isShowing;
    private Animation outAnim;
    private boolean outAnimRunning;
    private AnimationSet outDefaultAnim;
    private AlphaAnimation outSheetAnim;
    private PromptView promptView;
    private Runnable runnable;

    public void showError(String str, boolean z) {
    }

    public void showInfo(String str, boolean z) {
    }

    public void showSuccess(String str, boolean z) {
    }

    public void showWarn(String str, boolean z) {
    }

    public void setViewAnimDuration(long j) {
        viewAnimDuration = j;
    }

    public long getViewAnimDuration() {
        return viewAnimDuration;
    }

    public void onDetach() {
        this.isShowing = false;
    }

    public PromptDialog(Activity activity) {
        this(Builder.getDefaultBuilder(), activity);
    }

    public PromptDialog(Builder builder, Activity activity) {
        this.TAG = "PromptDialog";
        this.decorView = (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290);
        this.promptView = new PromptView(activity, builder, this);
        initAnim(activity.getResources().getDisplayMetrics().widthPixels, activity.getResources().getDisplayMetrics().heightPixels);
        this.inputmanger = (InputMethodManager) activity.getSystemService("input_method");
        this.handler = new Handler();
    }

    private void initAnim(int i, int i2) {
        this.inDefaultAnim = new AnimationSet(true);
        float f = ((float) i) * 0.5f;
        float f2 = (float) i2;
        float f3 = f2 * 0.45f;
        this.inDefaultAnim.addAnimation(new ScaleAnimation(2.0f, 1.0f, 2.0f, 1.0f, f, f3));
        this.inDefaultAnim.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        this.inDefaultAnim.setDuration(viewAnimDuration);
        this.inDefaultAnim.setFillAfter(false);
        this.inDefaultAnim.setInterpolator(new DecelerateInterpolator());
        this.outDefaultAnim = new AnimationSet(true);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 2.0f, 1.0f, 2.0f, f, f3);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200);
        this.outDefaultAnim.addAnimation(scaleAnimation);
        this.outDefaultAnim.addAnimation(alphaAnimation);
        this.outDefaultAnim.setDuration(viewAnimDuration);
        this.outDefaultAnim.setFillAfter(false);
        this.outDefaultAnim.setInterpolator(new AccelerateInterpolator());
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 1.0f, 1.0f, 1.0f, f, f2 * 0.5f);
        this.inSheetAnim = new AnimationSet(true);
        this.inSheetAnim.addAnimation(alphaAnimation2);
        this.inSheetAnim.addAnimation(scaleAnimation2);
        this.inSheetAnim.setDuration(viewAnimDuration);
        this.inSheetAnim.setFillAfter(false);
        this.outSheetAnim = new AlphaAnimation(1.0f, 0.0f);
        this.outSheetAnim.setDuration(viewAnimDuration);
        this.outSheetAnim.setFillAfter(false);
    }

    public void setOutAnim(Animation animation) {
        this.outAnim = animation;
    }

    public void setInAnim(Animation animation) {
        this.inAnim = animation;
    }

    public void dismissImmediately() {
        if (this.isShowing && !this.outAnimRunning) {
            this.decorView.removeView(this.promptView);
            this.isShowing = false;
        }
    }

    public void dismiss() {
        if (this.isShowing && !this.outAnimRunning) {
            if (!this.promptView.getBuilder().withAnim || this.outAnim == null) {
                dismissImmediately();
                return;
            }
            if (this.promptView.getCurrentType() == 102) {
                this.outAnim.setStartOffset(this.promptView.getBuilder().loadingDuration);
            } else {
                this.outAnim.setStartOffset(0);
            }
            if (this.promptView.getCurrentType() == 110) {
                this.promptView.stopCustomerLoading();
            }
            this.promptView.dismiss();
            this.promptView.startAnimation(this.outAnim);
            this.outAnim.setAnimationListener(new Animation.AnimationListener() { // from class: xyz.ipig.native_dialog.PromptDialog.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    PromptDialog.this.outAnimRunning = true;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    PromptDialog.this.decorView.removeView(PromptDialog.this.promptView);
                    PromptDialog.this.outAnimRunning = false;
                    PromptDialog.this.isShowing = false;
                }
            });
        }
    }

    public void showError(String str) {
        showError(str, true);
    }

    public void showInfo(String str) {
        showInfo(str, true);
    }

    public void showWarn(String str) {
        showWarn(str, true);
    }

    public void showSuccess(String str) {
        showSuccess(str, true);
    }

    public void showSuccessDelay(final String str, long j) {
        this.decorView.postDelayed(new Runnable() { // from class: xyz.ipig.native_dialog.PromptDialog.2
            @Override // java.lang.Runnable
            public void run() {
                PromptDialog.this.showSuccess(str);
            }
        }, j);
    }

    public void showCustom(int i, String str) {
        showCustom(i, str, true);
    }

    public void showCustom(int i, String str, boolean z) {
        showSomthing(i, 108, str, z);
    }

    private void showSomthing(int i, int i2, String str, boolean z) {
        this.inAnim = this.inDefaultAnim;
        this.outAnim = this.outDefaultAnim;
        Builder defaultBuilder = Builder.getDefaultBuilder();
        defaultBuilder.text(str);
        defaultBuilder.icon(i);
        closeInput();
        checkLoadView(z);
        if (this.isShowing) {
            this.promptView.setBuilder(defaultBuilder);
            this.promptView.showSomthing(i2);
        }
    }

    public void showWarnAlert(String str, PromptButton promptButton) {
        showWarnAlert(str, promptButton, false);
    }

    public void showWarnAlert(String str, PromptButton promptButton, boolean z) {
        showAlert(str, z, promptButton);
    }

    public void showWarnAlert(String str, PromptButton promptButton, PromptButton promptButton2, boolean z) {
        showAlert(str, z, promptButton, promptButton2);
    }

    public void showWarnAlert(String str, PromptButton promptButton, PromptButton promptButton2) {
        showWarnAlert(str, promptButton, promptButton2, true);
    }

    public void showAlertSheet(String str, boolean z, PromptButton... promptButtonArr) {
        showAlert(str, z, promptButtonArr);
    }

    private void showAlert(String str, boolean z, PromptButton... promptButtonArr) {
        if (promptButtonArr.length > 2) {
            Log.i("PromptDialog", "showAlert: " + this.promptView.getScrollY());
            this.inAnim = this.inSheetAnim;
            this.outAnim = this.outSheetAnim;
        } else {
            this.inAnim = this.inDefaultAnim;
            this.outAnim = this.outDefaultAnim;
        }
        Builder alertDefaultBuilder = Builder.getAlertDefaultBuilder();
        alertDefaultBuilder.text(str);
        closeInput();
        this.promptView.setBuilder(alertDefaultBuilder);
        checkLoadView(z);
        this.promptView.showSomthingAlert(promptButtonArr);
    }

    public ImageView showAd(boolean z, OnAdClickListener onAdClickListener) {
        this.adListener = onAdClickListener;
        this.inAnim = this.inSheetAnim;
        this.outAnim = this.outSheetAnim;
        Builder defaultBuilder = Builder.getDefaultBuilder();
        defaultBuilder.touchAble(false);
        closeInput();
        checkLoadView(z);
        this.promptView.setBuilder(defaultBuilder);
        this.promptView.showAd();
        return this.promptView;
    }

    public void showLoading(String str, boolean z) {
        this.inAnim = this.inDefaultAnim;
        this.outAnim = this.outDefaultAnim;
        if (this.promptView.getCurrentType() != 102) {
            Builder defaultBuilder = Builder.getDefaultBuilder();
            defaultBuilder.icon(R.drawable.ic_prompt_loading);
            defaultBuilder.text(str);
            this.promptView.setBuilder(defaultBuilder);
            closeInput();
            checkLoadView(z);
            this.promptView.showLoading();
            return;
        }
        this.promptView.setText(str);
    }

    public void showLoading(String str) {
        showLoading(str, true);
    }

    public void showLoadingWithDelay(final String str, long j) {
        Runnable runnable = this.runnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        this.runnable = new Runnable() { // from class: xyz.ipig.native_dialog.PromptDialog.3
            @Override // java.lang.Runnable
            public void run() {
                PromptDialog.this.showLoading(str);
            }
        };
        this.handler.postDelayed(this.runnable, j);
    }

    private void checkLoadView(boolean z) {
        Animation animation;
        if (!this.isShowing) {
            this.decorView.addView(this.promptView);
            this.isShowing = true;
            if (this.promptView.getBuilder().withAnim && (animation = this.inAnim) != null && z) {
                this.promptView.startAnimation(animation);
            }
        }
    }

    protected void closeInput() {
        ViewGroup viewGroup = this.decorView;
        if (viewGroup != null) {
            this.inputmanger.hideSoftInputFromWindow(viewGroup.getWindowToken(), 0);
        }
    }

    public Builder getDefaultBuilder() {
        return Builder.getDefaultBuilder();
    }

    public Builder getAlertDefaultBuilder() {
        return Builder.getAlertDefaultBuilder();
    }

    public boolean onBackPressed() {
        if (this.isShowing && this.promptView.getCurrentType() == 102) {
            return false;
        }
        if (!this.isShowing) {
            return true;
        }
        if (this.promptView.getCurrentType() != 107 && this.promptView.getCurrentType() != 109) {
            return true;
        }
        dismiss();
        return false;
    }

    public void onAdClick() {
        OnAdClickListener onAdClickListener = this.adListener;
        if (onAdClickListener != null) {
            onAdClickListener.onAdClick();
        }
    }

    public void showCustomLoading(int i, String str) {
        this.inAnim = this.inDefaultAnim;
        this.outAnim = this.outDefaultAnim;
        if (this.promptView.getCurrentType() != 110) {
            Builder defaultBuilder = Builder.getDefaultBuilder();
            defaultBuilder.icon(i);
            defaultBuilder.text(str);
            this.promptView.setBuilder(defaultBuilder);
            closeInput();
            checkLoadView(true);
            this.promptView.showCustomLoading();
            return;
        }
        this.promptView.setText(str);
    }

    public void showCustomerLoadingWithDelay(final int i, final String str, long j) {
        this.runnable = new Runnable() { // from class: xyz.ipig.native_dialog.PromptDialog.4
            @Override // java.lang.Runnable
            public void run() {
                PromptDialog.this.showCustomLoading(i, str);
            }
        };
        this.handler.postDelayed(this.runnable, j);
    }
}
