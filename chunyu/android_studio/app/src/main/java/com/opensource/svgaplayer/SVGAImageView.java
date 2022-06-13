package com.opensource.svgaplayer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.utils.SVGARange;
import com.opensource.svgaplayer.utils.log.LogUtils;
import com.umeng.analytics.pro.c;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: SVGAImageView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u00002\u00020\u0001:\u0003_`aB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u00105\u001a\u000206J\u0016\u00107\u001a\u0002082\f\u00109\u001a\b\u0012\u0004\u0012\u00020\u00000:H\u0002J\b\u0010;\u001a\u00020<H\u0002J\n\u0010=\u001a\u0004\u0018\u00010>H\u0002J\u0010\u0010?\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0012\u0010@\u001a\u0002062\b\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0012\u0010C\u001a\u0002062\b\u0010D\u001a\u0004\u0018\u00010*H\u0002J\b\u0010E\u001a\u000206H\u0014J\u0012\u0010F\u001a\u00020\u00122\b\u0010G\u001a\u0004\u0018\u00010HH\u0017J\u0010\u0010I\u001a\u0002062\u0006\u0010J\u001a\u00020\nH\u0002J\u0006\u0010K\u001a\u000206J\u001a\u0010L\u001a\u0002062\b\u0010M\u001a\u0004\u0018\u00010N2\u0006\u0010O\u001a\u00020\u0012H\u0002J\u000e\u0010P\u001a\u0002062\u0006\u0010Q\u001a\u000203J\u0010\u0010R\u001a\u0002062\b\u0010S\u001a\u0004\u0018\u00010TJ\u001a\u0010R\u001a\u0002062\b\u0010S\u001a\u0004\u0018\u00010T2\b\u0010U\u001a\u0004\u0018\u00010VJ\b\u0010W\u001a\u000206H\u0002J\u0006\u0010X\u001a\u000206J\u0010\u0010X\u001a\u0002062\u0006\u0010S\u001a\u00020TH\u0002J\u001a\u0010X\u001a\u0002062\b\u0010M\u001a\u0004\u0018\u00010N2\b\b\u0002\u0010O\u001a\u00020\u0012J\u0016\u0010Y\u001a\u0002062\u0006\u0010Z\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u0012J\u0016\u0010\\\u001a\u0002062\u0006\u0010]\u001a\u00020<2\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010^\u001a\u000206J\u000e\u0010^\u001a\u0002062\u0006\u00105\u001a\u00020\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0014\"\u0004\b\u001b\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u0012@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0014R\u001a\u0010$\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006b"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView;", "Landroid/widget/ImageView;", c.R, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TAG", "", "callback", "Lcom/opensource/svgaplayer/SVGACallback;", "getCallback", "()Lcom/opensource/svgaplayer/SVGACallback;", "setCallback", "(Lcom/opensource/svgaplayer/SVGACallback;)V", "clearsAfterDetached", "", "getClearsAfterDetached", "()Z", "setClearsAfterDetached", "(Z)V", "clearsAfterStop", "clearsAfterStop$annotations", "()V", "getClearsAfterStop", "setClearsAfterStop", "fillMode", "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "getFillMode", "()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "setFillMode", "(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V", "<set-?>", "isAnimating", "loops", "getLoops", "()I", "setLoops", "(I)V", "mAnimator", "Landroid/animation/ValueAnimator;", "mAnimatorListener", "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;", "mAnimatorUpdateListener", "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;", "mAntiAlias", "mAutoPlay", "mEndFrame", "mItemClickAreaListener", "Lcom/opensource/svgaplayer/SVGAClickAreaListener;", "mStartFrame", "clear", "", "createParseCompletion", "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "ref", "Ljava/lang/ref/WeakReference;", "generateScale", "", "getSVGADrawable", "Lcom/opensource/svgaplayer/SVGADrawable;", "loadAttrs", "onAnimationEnd", "animation", "Landroid/animation/Animator;", "onAnimatorUpdate", "animator", "onDetachedFromWindow", "onTouchEvent", "event", "Landroid/view/MotionEvent;", "parserSource", "source", "pauseAnimation", "play", SessionDescription.ATTR_RANGE, "Lcom/opensource/svgaplayer/utils/SVGARange;", "reverse", "setOnAnimKeyClickListener", "clickListener", "setVideoItem", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "dynamicItem", "Lcom/opensource/svgaplayer/SVGADynamicEntity;", "setupDrawable", "startAnimation", "stepToFrame", "frame", "andPlay", "stepToPercentage", "percentage", "stopAnimation", "AnimatorListener", "AnimatorUpdateListener", "FillMode", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public class SVGAImageView extends ImageView {
    private final String TAG;
    private HashMap _$_findViewCache;
    private SVGACallback callback;
    private boolean clearsAfterDetached;
    private boolean clearsAfterStop;
    private FillMode fillMode;
    private boolean isAnimating;
    private int loops;
    private ValueAnimator mAnimator;
    private final AnimatorListener mAnimatorListener;
    private final AnimatorUpdateListener mAnimatorUpdateListener;
    private boolean mAntiAlias;
    private boolean mAutoPlay;
    private int mEndFrame;
    private SVGAClickAreaListener mItemClickAreaListener;
    private int mStartFrame;

    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "", "(Ljava/lang/String;I)V", "Backward", "Forward", "Clear", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes2.dex */
    public enum FillMode {
        Backward,
        Forward,
        Clear
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes2.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[FillMode.values().length];

        static {
            $EnumSwitchMapping$0[FillMode.Backward.ordinal()] = 1;
            $EnumSwitchMapping$0[FillMode.Forward.ordinal()] = 2;
            $EnumSwitchMapping$0[FillMode.Clear.ordinal()] = 3;
        }
    }

    public SVGAImageView(Context context) {
        this(context, null, 0, 6, null);
    }

    public SVGAImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "It is recommended to use clearAfterDetached, or manually call to SVGAVideoEntity#clear.If you just consider cleaning up the canvas after playing, you can use FillMode#Clear.")
    public static /* synthetic */ void clearsAfterStop$annotations() {
    }

    public void _$_clearFindViewByIdCache() {
        HashMap hashMap = this._$_findViewCache;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    public /* synthetic */ SVGAImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGAImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, c.R);
        this.TAG = "SVGAImageView";
        this.fillMode = FillMode.Forward;
        this.mAntiAlias = true;
        this.mAutoPlay = true;
        this.mAnimatorListener = new AnimatorListener(this);
        this.mAnimatorUpdateListener = new AnimatorUpdateListener(this);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
        if (attributeSet != null) {
            loadAttrs(attributeSet);
        }
    }

    public final boolean isAnimating() {
        return this.isAnimating;
    }

    public final int getLoops() {
        return this.loops;
    }

    public final void setLoops(int i) {
        this.loops = i;
    }

    public final boolean getClearsAfterStop() {
        return this.clearsAfterStop;
    }

    public final void setClearsAfterStop(boolean z) {
        this.clearsAfterStop = z;
    }

    public final boolean getClearsAfterDetached() {
        return this.clearsAfterDetached;
    }

    public final void setClearsAfterDetached(boolean z) {
        this.clearsAfterDetached = z;
    }

    public final FillMode getFillMode() {
        return this.fillMode;
    }

    public final void setFillMode(FillMode fillMode) {
        Intrinsics.checkParameterIsNotNull(fillMode, "<set-?>");
        this.fillMode = fillMode;
    }

    public final SVGACallback getCallback() {
        return this.callback;
    }

    public final void setCallback(SVGACallback sVGACallback) {
        this.callback = sVGACallback;
    }

    private final void loadAttrs(AttributeSet attributeSet) {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, c.R);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SVGAImageView, 0, 0);
        this.loops = obtainStyledAttributes.getInt(R.styleable.SVGAImageView_loopCount, 0);
        this.clearsAfterStop = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_clearsAfterStop, false);
        this.clearsAfterDetached = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_clearsAfterDetached, false);
        this.mAntiAlias = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_antiAlias, true);
        this.mAutoPlay = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_autoPlay, true);
        String string = obtainStyledAttributes.getString(R.styleable.SVGAImageView_fillMode);
        if (string != null) {
            switch (string.hashCode()) {
                case 48:
                    if (string.equals("0")) {
                        this.fillMode = FillMode.Backward;
                        break;
                    }
                    break;
                case 49:
                    if (string.equals("1")) {
                        this.fillMode = FillMode.Forward;
                        break;
                    }
                    break;
                case 50:
                    if (string.equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                        this.fillMode = FillMode.Clear;
                        break;
                    }
                    break;
            }
        }
        String string2 = obtainStyledAttributes.getString(R.styleable.SVGAImageView_source);
        if (string2 != null) {
            parserSource(string2);
        }
        obtainStyledAttributes.recycle();
    }

    private final void parserSource(String str) {
        WeakReference<SVGAImageView> weakReference = new WeakReference<>(this);
        SVGAParser sVGAParser = new SVGAParser(getContext());
        if (StringsKt.startsWith$default(str, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https://", false, 2, (Object) null)) {
            SVGAParser.decodeFromURL$default(sVGAParser, new URL(str), createParseCompletion(weakReference), null, 4, null);
        } else {
            SVGAParser.decodeFromAssets$default(sVGAParser, str, createParseCompletion(weakReference), null, 4, null);
        }
    }

    private final SVGAParser.ParseCompletion createParseCompletion(WeakReference<SVGAImageView> weakReference) {
        return new SVGAParser.ParseCompletion(weakReference) { // from class: com.opensource.svgaplayer.SVGAImageView$createParseCompletion$1
            final /* synthetic */ WeakReference $ref;

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$ref = r1;
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(SVGAVideoEntity sVGAVideoEntity) {
                Intrinsics.checkParameterIsNotNull(sVGAVideoEntity, "videoItem");
                SVGAImageView sVGAImageView = (SVGAImageView) this.$ref.get();
                if (sVGAImageView != null) {
                    sVGAImageView.startAnimation(sVGAVideoEntity);
                }
            }
        };
    }

    public final void startAnimation(SVGAVideoEntity sVGAVideoEntity) {
        post(new Runnable(sVGAVideoEntity) { // from class: com.opensource.svgaplayer.SVGAImageView$startAnimation$1
            final /* synthetic */ SVGAVideoEntity $videoItem;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$videoItem = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.$videoItem.setAntiAlias(SVGAImageView.this.mAntiAlias);
                SVGAImageView.this.setVideoItem(this.$videoItem);
                SVGADrawable sVGADrawable = SVGAImageView.this.getSVGADrawable();
                if (sVGADrawable != null) {
                    ImageView.ScaleType scaleType = SVGAImageView.this.getScaleType();
                    Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
                    sVGADrawable.setScaleType(scaleType);
                }
                if (SVGAImageView.this.mAutoPlay) {
                    SVGAImageView.this.startAnimation();
                }
            }
        });
    }

    public final void startAnimation() {
        startAnimation(null, false);
    }

    public static /* synthetic */ void startAnimation$default(SVGAImageView sVGAImageView, SVGARange sVGARange, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            sVGAImageView.startAnimation(sVGARange, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startAnimation");
    }

    public final void startAnimation(SVGARange sVGARange, boolean z) {
        stopAnimation(false);
        play(sVGARange, z);
    }

    private final void play(SVGARange sVGARange, boolean z) {
        LogUtils.INSTANCE.info(this.TAG, "================ start animation ================");
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            setupDrawable();
            this.mStartFrame = Math.max(0, sVGARange != null ? sVGARange.getLocation() : 0);
            SVGAVideoEntity videoItem = sVGADrawable.getVideoItem();
            this.mEndFrame = Math.min(videoItem.getFrames() - 1, ((sVGARange != null ? sVGARange.getLocation() : 0) + (sVGARange != null ? sVGARange.getLength() : Integer.MAX_VALUE)) - 1);
            ValueAnimator ofInt = ValueAnimator.ofInt(this.mStartFrame, this.mEndFrame);
            Intrinsics.checkExpressionValueIsNotNull(ofInt, "animator");
            ofInt.setInterpolator(new LinearInterpolator());
            ofInt.setDuration((long) (((double) (((this.mEndFrame - this.mStartFrame) + 1) * (1000 / videoItem.getFPS()))) / generateScale()));
            int i = this.loops;
            ofInt.setRepeatCount(i <= 0 ? 99999 : i - 1);
            ofInt.addUpdateListener(this.mAnimatorUpdateListener);
            ofInt.addListener(this.mAnimatorListener);
            if (z) {
                ofInt.reverse();
            } else {
                ofInt.start();
            }
            this.mAnimator = ofInt;
        }
    }

    private final void setupDrawable() {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.setCleared$com_opensource_svgaplayer(false);
            ImageView.ScaleType scaleType = getScaleType();
            Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
            sVGADrawable.setScaleType(scaleType);
        }
    }

    public final SVGADrawable getSVGADrawable() {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        return (SVGADrawable) drawable;
    }

    private final double generateScale() {
        Exception e;
        Method declaredMethod;
        double d = 1.0d;
        try {
            Class<?> cls = Class.forName("android.animation.ValueAnimator");
            if (cls == null || (declaredMethod = cls.getDeclaredMethod("getDurationScale", new Class[0])) == null) {
                return 1.0d;
            }
            Object invoke = declaredMethod.invoke(cls, new Object[0]);
            if (invoke != null) {
                double floatValue = (double) ((Float) invoke).floatValue();
                if (floatValue != 0.0d) {
                    return floatValue;
                }
                try {
                    Method declaredMethod2 = cls.getDeclaredMethod("setDurationScale", Float.TYPE);
                    if (declaredMethod2 == null) {
                        return floatValue;
                    }
                    declaredMethod2.setAccessible(true);
                    declaredMethod2.invoke(cls, Float.valueOf(1.0f));
                    LogUtils.INSTANCE.info(this.TAG, "The animation duration scale has been reset to 1.0x, because you closed it on developer options.");
                    return 1.0d;
                } catch (Exception e2) {
                    e = e2;
                    d = floatValue;
                    e.printStackTrace();
                    return d;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public final void onAnimatorUpdate(ValueAnimator valueAnimator) {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            Object animatedValue = valueAnimator != null ? valueAnimator.getAnimatedValue() : null;
            if (animatedValue != null) {
                sVGADrawable.setCurrentFrame$com_opensource_svgaplayer(((Integer) animatedValue).intValue());
                double currentFrame = ((double) (sVGADrawable.getCurrentFrame() + 1)) / ((double) sVGADrawable.getVideoItem().getFrames());
                SVGACallback sVGACallback = this.callback;
                if (sVGACallback != null) {
                    sVGACallback.onStep(sVGADrawable.getCurrentFrame(), currentFrame);
                    return;
                }
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
    }

    public final void onAnimationEnd(Animator animator) {
        this.isAnimating = false;
        stopAnimation();
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[this.fillMode.ordinal()];
            if (i == 1) {
                sVGADrawable.setCurrentFrame$com_opensource_svgaplayer(this.mStartFrame);
            } else if (i == 2) {
                sVGADrawable.setCurrentFrame$com_opensource_svgaplayer(this.mEndFrame);
            } else if (i == 3) {
                sVGADrawable.setCleared$com_opensource_svgaplayer(true);
            }
        }
        SVGACallback sVGACallback = this.callback;
        if (sVGACallback != null) {
            sVGACallback.onFinished();
        }
    }

    public final void clear() {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.setCleared$com_opensource_svgaplayer(true);
        }
        SVGADrawable sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 != null) {
            sVGADrawable2.clear();
        }
        setImageDrawable(null);
    }

    public final void pauseAnimation() {
        stopAnimation(false);
        SVGACallback sVGACallback = this.callback;
        if (sVGACallback != null) {
            sVGACallback.onPause();
        }
    }

    public final void stopAnimation() {
        stopAnimation(this.clearsAfterStop);
    }

    public final void stopAnimation(boolean z) {
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.mAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.stop();
        }
        SVGADrawable sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 != null) {
            sVGADrawable2.setCleared$com_opensource_svgaplayer(z);
        }
    }

    public final void setVideoItem(SVGAVideoEntity sVGAVideoEntity) {
        setVideoItem(sVGAVideoEntity, new SVGADynamicEntity());
    }

    public final void setVideoItem(SVGAVideoEntity sVGAVideoEntity, SVGADynamicEntity sVGADynamicEntity) {
        if (sVGAVideoEntity == null) {
            setImageDrawable(null);
            return;
        }
        if (sVGADynamicEntity == null) {
            sVGADynamicEntity = new SVGADynamicEntity();
        }
        SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity, sVGADynamicEntity);
        sVGADrawable.setCleared$com_opensource_svgaplayer(true);
        setImageDrawable(sVGADrawable);
    }

    public final void stepToFrame(int i, boolean z) {
        pauseAnimation();
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.setCurrentFrame$com_opensource_svgaplayer(i);
            if (z) {
                startAnimation();
                ValueAnimator valueAnimator = this.mAnimator;
                if (valueAnimator != null) {
                    valueAnimator.setCurrentPlayTime((long) (Math.max(0.0f, Math.min(1.0f, ((float) i) / ((float) sVGADrawable.getVideoItem().getFrames()))) * ((float) valueAnimator.getDuration())));
                }
            }
        }
    }

    public final void stepToPercentage(double d, boolean z) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        SVGADrawable sVGADrawable = (SVGADrawable) drawable;
        if (sVGADrawable != null) {
            int frames = (int) (((double) sVGADrawable.getVideoItem().getFrames()) * d);
            if (frames >= sVGADrawable.getVideoItem().getFrames() && frames > 0) {
                frames = sVGADrawable.getVideoItem().getFrames() - 1;
            }
            stepToFrame(frames, z);
        }
    }

    public final void setOnAnimKeyClickListener(SVGAClickAreaListener sVGAClickAreaListener) {
        Intrinsics.checkParameterIsNotNull(sVGAClickAreaListener, "clickListener");
        this.mItemClickAreaListener = sVGAClickAreaListener;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        SVGAClickAreaListener sVGAClickAreaListener;
        if (motionEvent == null || motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return super.onTouchEvent(motionEvent);
        }
        for (Map.Entry<String, int[]> entry : sVGADrawable.getDynamicItem().getMClickMap$com_opensource_svgaplayer().entrySet()) {
            String key = entry.getKey();
            int[] value = entry.getValue();
            if (motionEvent.getX() >= ((float) value[0]) && motionEvent.getX() <= ((float) value[2]) && motionEvent.getY() >= ((float) value[1]) && motionEvent.getY() <= ((float) value[3]) && (sVGAClickAreaListener = this.mItemClickAreaListener) != null) {
                sVGAClickAreaListener.onClick(key);
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation(this.clearsAfterDetached);
        if (this.clearsAfterDetached) {
            clear();
        }
    }

    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;", "Landroid/animation/Animator$AnimatorListener;", "view", "Lcom/opensource/svgaplayer/SVGAImageView;", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", "weakReference", "Ljava/lang/ref/WeakReference;", "onAnimationCancel", "", "animation", "Landroid/animation/Animator;", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes2.dex */
    public static final class AnimatorListener implements Animator.AnimatorListener {
        private final WeakReference<SVGAImageView> weakReference;

        public AnimatorListener(SVGAImageView sVGAImageView) {
            Intrinsics.checkParameterIsNotNull(sVGAImageView, "view");
            this.weakReference = new WeakReference<>(sVGAImageView);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            SVGACallback callback;
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView != null && (callback = sVGAImageView.getCallback()) != null) {
                callback.onRepeat();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView != null) {
                sVGAImageView.onAnimationEnd(animator);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView != null) {
                sVGAImageView.isAnimating = false;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView != null) {
                sVGAImageView.isAnimating = true;
            }
        }
    }

    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "view", "Lcom/opensource/svgaplayer/SVGAImageView;", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", "weakReference", "Ljava/lang/ref/WeakReference;", "onAnimationUpdate", "", "animation", "Landroid/animation/ValueAnimator;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes2.dex */
    public static final class AnimatorUpdateListener implements ValueAnimator.AnimatorUpdateListener {
        private final WeakReference<SVGAImageView> weakReference;

        public AnimatorUpdateListener(SVGAImageView sVGAImageView) {
            Intrinsics.checkParameterIsNotNull(sVGAImageView, "view");
            this.weakReference = new WeakReference<>(sVGAImageView);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView != null) {
                sVGAImageView.onAnimatorUpdate(valueAnimator);
            }
        }
    }
}
