package com.ferfalk.simplesearchview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.widget.ImageViewCompat;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.ferfalk.simplesearchview.databinding.SearchViewBinding;
import com.ferfalk.simplesearchview.utils.ContextUtils;
import com.ferfalk.simplesearchview.utils.DimensUtils;
import com.ferfalk.simplesearchview.utils.EditTextReflectionUtils;
import com.ferfalk.simplesearchview.utils.SimpleAnimationListener;
import com.ferfalk.simplesearchview.utils.SimpleAnimationUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.tabs.TabLayout;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleSearchView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 |2\u00020\u0001:\u0006|}~\u007f\u0080\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u00108\u001a\u000209H\u0016J\u000f\u0010:\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0002\u0010;J\u0019\u0010<\u001a\u0004\u0018\u0001092\b\b\u0002\u0010=\u001a\u00020\nH\u0007¢\u0006\u0002\u0010>J\u000e\u0010?\u001a\u0002092\u0006\u0010@\u001a\u00020\nJ\u0012\u0010A\u001a\u0002092\b\b\u0002\u0010=\u001a\u00020\nH\u0007J\b\u0010B\u001a\u000209H\u0002J\b\u0010C\u001a\u000209H\u0002J\u001a\u0010D\u001a\u0002092\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J*\u0010E\u001a\u00020\n2\u0006\u0010F\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u00072\u0006\u0010H\u001a\u00020I2\b\b\u0002\u0010J\u001a\u00020\nH\u0007J\u0006\u0010K\u001a\u00020\nJ\u0010\u0010L\u001a\u0002092\u0006\u0010M\u001a\u00020NH\u0016J\b\u0010O\u001a\u00020NH\u0016J\b\u0010P\u001a\u000209H\u0002J\u0010\u0010Q\u001a\u0002092\u0006\u0010R\u001a\u00020!H\u0002J\u001a\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\u00072\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u000e\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020YJ\u0010\u0010Z\u001a\u0002092\b\b\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010\\\u001a\u0002092\b\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010_\u001a\u0002092\b\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010`\u001a\u0002092\b\b\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010a\u001a\u0002092\b\b\u0001\u0010]\u001a\u00020\u0007J\u0010\u0010b\u001a\u0002092\b\u0010c\u001a\u0004\u0018\u00010!J\u0010\u0010d\u001a\u0002092\b\b\u0001\u0010[\u001a\u00020\u0007J\u000e\u0010e\u001a\u0002092\u0006\u0010X\u001a\u00020YJ\u0010\u0010f\u001a\u0002092\b\b\u0001\u0010[\u001a\u00020\u0007J\u000e\u0010g\u001a\u0002092\u0006\u0010h\u001a\u00020\u0007J\u000e\u0010i\u001a\u0002092\u0006\u0010\u001f\u001a\u00020\nJ\u000e\u0010j\u001a\u0002092\u0006\u0010k\u001a\u00020lJ\u0010\u0010m\u001a\u0002092\b\u0010n\u001a\u0004\u0018\u00010#J\u0010\u0010o\u001a\u0002092\b\u0010n\u001a\u0004\u0018\u00010-J\u0018\u0010p\u001a\u0002092\b\u0010q\u001a\u0004\u0018\u00010!2\u0006\u0010J\u001a\u00020\nJ\u0010\u0010r\u001a\u0002092\b\u0010s\u001a\u0004\u0018\u00010^J\u000e\u0010t\u001a\u0002092\u0006\u00102\u001a\u000201J\u0010\u0010u\u001a\u0002092\b\b\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010v\u001a\u0002092\b\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010w\u001a\u0002092\b\u00106\u001a\u0004\u0018\u000107J\u0019\u0010x\u001a\u0004\u0018\u0001092\b\b\u0002\u0010=\u001a\u00020\nH\u0007¢\u0006\u0002\u0010>J\u0012\u0010y\u001a\u0002092\b\b\u0002\u0010=\u001a\u00020\nH\u0007J\u000e\u0010z\u001a\u0002092\u0006\u0010{\u001a\u00020\nJ\b\u0010@\u001a\u000209H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u0004\u0018\u00010&8FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u00020\u0007X\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\b/\u00100R\"\u00102\u001a\u0004\u0018\u0001012\b\u0010\u001b\u001a\u0004\u0018\u000101@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u000e\u00105\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0081\u0001"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView;", "Landroid/widget/FrameLayout;", "creationContext", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "allowVoiceSearch", "", "animationDuration", "getAnimationDuration", "()I", "setAnimationDuration", "(I)V", "binding", "Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;", "value", "cardStyle", "getCardStyle", "setCardStyle", "cardStyleBackground", "Landroid/graphics/drawable/GradientDrawable;", "getCardStyleBackground", "()Landroid/graphics/drawable/GradientDrawable;", "isClearingFocus", "<set-?>", "isSearchOpen", "()Z", "isVoiceAvailable", "keepQuery", "oldQuery", "", "onQueryChangeListener", "Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;", "query", "revealAnimationCenter", "Landroid/graphics/Point;", "getRevealAnimationCenter", "()Landroid/graphics/Point;", "setRevealAnimationCenter", "(Landroid/graphics/Point;)V", "searchIsClosing", "searchViewListener", "Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;", TtmlNode.TAG_STYLE, "getStyle$annotations", "()V", "Lcom/google/android/material/tabs/TabLayout;", "tabLayout", "getTabLayout", "()Lcom/google/android/material/tabs/TabLayout;", "tabLayoutInitialHeight", "voiceSearchPrompt", "", "clearFocus", "", "clearSearch", "()Ljava/lang/Boolean;", "closeSearch", "animate", "(Z)Lkotlin/Unit;", "enableVoiceSearch", "voiceSearch", "hideTabLayout", "initClickListeners", "initSearchEditText", "initStyle", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "submit", "onBackPressed", "onRestoreInstanceState", "state", "Landroid/os/Parcelable;", "onSaveInstanceState", "onSubmitQuery", "onTextChanged", "newText", "requestFocus", "direction", "previouslyFocusedRect", "Landroid/graphics/Rect;", "setBackIconAlpha", "alpha", "", "setBackIconColor", TtmlNode.ATTR_TTS_COLOR, "setBackIconDrawable", "drawable", "Landroid/graphics/drawable/Drawable;", "setClearIconDrawable", "setCursorColor", "setCursorDrawable", "setHint", "hint", "setHintTextColor", "setIconsAlpha", "setIconsColor", "setInputType", "inputType", "setKeepQuery", "setMenuItem", "menuItem", "Landroid/view/MenuItem;", "setOnQueryTextListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnSearchViewListener", "setQuery", "sequence", "setSearchBackground", "background", "setTabLayout", "setTextColor", "setVoiceIconDrawable", "setVoiceSearchPrompt", "showSearch", "showTabLayout", "showVoice", "show", "Companion", "OnQueryTextListener", "SavedState", "SearchViewListener", "Style", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class SimpleSearchView extends FrameLayout {
    public static final int ANIMATION_CENTER_PADDING = 26;
    private static final float BACK_ICON_ALPHA_DEFAULT = 0.87f;
    public static final int CARD_CORNER_RADIUS = 4;
    private static final int CARD_ELEVATION = 2;
    private static final int CARD_PADDING = 6;
    public static final Companion Companion = new Companion(null);
    private static final float ICONS_ALPHA_DEFAULT = 0.54f;
    public static final int REQUEST_VOICE_SEARCH = 735;
    public static final int STYLE_BAR = 0;
    public static final int STYLE_CARD = 1;
    private boolean allowVoiceSearch;
    private int animationDuration;
    private final SearchViewBinding binding;
    private boolean isClearingFocus;
    private boolean isSearchOpen;
    private boolean keepQuery;
    private CharSequence oldQuery;
    private OnQueryTextListener onQueryChangeListener;
    private CharSequence query;
    private Point revealAnimationCenter;
    private boolean searchIsClosing;
    private SearchViewListener searchViewListener;
    private int style;
    private TabLayout tabLayout;
    private int tabLayoutInitialHeight;
    private String voiceSearchPrompt;

    /* compiled from: SimpleSearchView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;", "", "onQueryTextChange", "", "newText", "", "onQueryTextCleared", "onQueryTextSubmit", "query", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextCleared();

        boolean onQueryTextSubmit(String str);
    }

    /* compiled from: SimpleSearchView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;", "", "onSearchViewClosed", "", "onSearchViewClosedAnimation", "onSearchViewShown", "onSearchViewShownAnimation", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public interface SearchViewListener {
        void onSearchViewClosed();

        void onSearchViewClosedAnimation();

        void onSearchViewShown();

        void onSearchViewShownAnimation();
    }

    /* compiled from: SimpleSearchView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$Style;", "", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    /* loaded from: classes4.dex */
    public @interface Style {
    }

    public SimpleSearchView(Context context) {
        this(context, null, 0, 6, null);
    }

    public SimpleSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private static /* synthetic */ void getStyle$annotations() {
    }

    public final Unit closeSearch() {
        return closeSearch$default(this, false, 1, null);
    }

    public final void hideTabLayout() {
        hideTabLayout$default(this, false, 1, null);
    }

    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return onActivityResult$default(this, i, i2, intent, false, 8, null);
    }

    public final Unit showSearch() {
        return showSearch$default(this, false, 1, null);
    }

    public final void showTabLayout() {
        showTabLayout$default(this, false, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "creationContext");
        this.animationDuration = 250;
        this.voiceSearchPrompt = "";
        SearchViewBinding inflate = SearchViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "SearchViewBinding.inflat…rom(context), this, true)");
        this.binding = inflate;
        initStyle(attributeSet, i);
        initSearchEditText();
        initClickListeners();
        showVoice(true);
        if (!isInEditMode()) {
            setVisibility(4);
        }
    }

    public /* synthetic */ SimpleSearchView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final int getAnimationDuration() {
        return this.animationDuration;
    }

    public final void setAnimationDuration(int i) {
        this.animationDuration = i;
    }

    public final void setRevealAnimationCenter(Point point) {
        this.revealAnimationCenter = point;
    }

    public final Point getRevealAnimationCenter() {
        Point point = this.revealAnimationCenter;
        if (point != null) {
            return point;
        }
        int width = getWidth();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, c.R);
        Point point2 = new Point(width - DimensUtils.convertDpToPx(26, context), getHeight() / 2);
        this.revealAnimationCenter = point2;
        return point2;
    }

    public final boolean isSearchOpen() {
        return this.isSearchOpen;
    }

    public final TabLayout getTabLayout() {
        return this.tabLayout;
    }

    private final void initStyle(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SimpleSearchView, i, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…rchView, defStyleAttr, 0)");
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_type)) {
            setCardStyle(obtainStyledAttributes.getInt(R.styleable.SimpleSearchView_type, this.style));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_backIconAlpha)) {
            setBackIconAlpha(obtainStyledAttributes.getFloat(R.styleable.SimpleSearchView_backIconAlpha, BACK_ICON_ALPHA_DEFAULT));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_iconsAlpha)) {
            setIconsAlpha(obtainStyledAttributes.getFloat(R.styleable.SimpleSearchView_iconsAlpha, 0.54f));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_backIconTint)) {
            int i2 = R.styleable.SimpleSearchView_backIconTint;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, c.R);
            setBackIconColor(obtainStyledAttributes.getColor(i2, ContextUtils.getPrimaryColor(context)));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_iconsTint)) {
            setIconsColor(obtainStyledAttributes.getColor(R.styleable.SimpleSearchView_iconsTint, -16777216));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_cursorColor)) {
            int i3 = R.styleable.SimpleSearchView_cursorColor;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, c.R);
            setCursorColor(obtainStyledAttributes.getColor(i3, ContextUtils.getAccentColor(context2)));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_hintColor)) {
            setHintTextColor(obtainStyledAttributes.getColor(R.styleable.SimpleSearchView_hintColor, ContextCompat.getColor(getContext(), R.color.default_textColorHint)));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_searchBackground)) {
            setSearchBackground(obtainStyledAttributes.getDrawable(R.styleable.SimpleSearchView_searchBackground));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_searchBackIcon)) {
            setBackIconDrawable(obtainStyledAttributes.getDrawable(R.styleable.SimpleSearchView_searchBackIcon));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_searchClearIcon)) {
            setClearIconDrawable(obtainStyledAttributes.getDrawable(R.styleable.SimpleSearchView_searchClearIcon));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_searchVoiceIcon)) {
            setVoiceIconDrawable(obtainStyledAttributes.getDrawable(R.styleable.SimpleSearchView_searchVoiceIcon));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_voiceSearch)) {
            enableVoiceSearch(obtainStyledAttributes.getBoolean(R.styleable.SimpleSearchView_voiceSearch, this.allowVoiceSearch));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_voiceSearchPrompt)) {
            setVoiceSearchPrompt(obtainStyledAttributes.getString(R.styleable.SimpleSearchView_voiceSearchPrompt));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_android_hint)) {
            setHint(obtainStyledAttributes.getString(R.styleable.SimpleSearchView_android_hint));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_android_inputType)) {
            setInputType(obtainStyledAttributes.getInt(R.styleable.SimpleSearchView_android_inputType, 524288));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SimpleSearchView_android_textColor)) {
            setTextColor(obtainStyledAttributes.getColor(R.styleable.SimpleSearchView_android_textColor, ContextCompat.getColor(getContext(), R.color.default_textColor)));
        }
        obtainStyledAttributes.recycle();
    }

    private final void initSearchEditText() {
        SearchViewBinding searchViewBinding = this.binding;
        searchViewBinding.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initSearchEditText$$inlined$with$lambda$1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                SimpleSearchView.this.onSubmitQuery();
                return true;
            }
        });
        searchViewBinding.searchEditText.addTextChangedListener(new SimpleTextWatcher() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initSearchEditText$$inlined$with$lambda$2
            @Override // com.ferfalk.simplesearchview.SimpleTextWatcher, android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                Intrinsics.checkNotNullParameter(charSequence, ai.az);
                if (!(SimpleSearchView.this.searchIsClosing)) {
                    SimpleSearchView.this.onTextChanged(charSequence);
                }
            }
        });
        EditText editText = searchViewBinding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initSearchEditText$1$3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    EditText editText2 = SearchViewBinding.this.searchEditText;
                    Intrinsics.checkNotNullExpressionValue(editText2, "searchEditText");
                    ContextUtils.showKeyboard(editText2);
                }
            }
        });
    }

    private final void initClickListeners() {
        SearchViewBinding searchViewBinding = this.binding;
        searchViewBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initClickListeners$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimpleSearchView.closeSearch$default(SimpleSearchView.this, false, 1, null);
            }
        });
        searchViewBinding.clearButton.setOnClickListener(new View.OnClickListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initClickListeners$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Boolean unused = SimpleSearchView.this.clearSearch();
            }
        });
        searchViewBinding.voiceButton.setOnClickListener(new View.OnClickListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$initClickListeners$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimpleSearchView.this.voiceSearch();
            }
        });
    }

    @Override // android.view.View, android.view.ViewGroup
    public void clearFocus() {
        SearchViewBinding searchViewBinding = this.binding;
        this.isClearingFocus = true;
        ContextUtils.hideKeyboard(this);
        super.clearFocus();
        searchViewBinding.searchEditText.clearFocus();
        this.isClearingFocus = false;
    }

    @Override // android.view.View, android.view.ViewGroup
    public boolean requestFocus(int i, Rect rect) {
        SearchViewBinding searchViewBinding = this.binding;
        if (!this.isClearingFocus && isFocusable()) {
            return searchViewBinding.searchEditText.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence charSequence = this.query;
        savedState.setQuery(charSequence != null ? String.valueOf(charSequence) : null);
        savedState.setSearchOpen(this.isSearchOpen);
        savedState.setAnimationDuration(this.animationDuration);
        savedState.setKeepQuery(this.keepQuery);
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Intrinsics.checkNotNullParameter(parcelable, "state");
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.query = savedState.getQuery();
        this.animationDuration = savedState.getAnimationDuration();
        this.voiceSearchPrompt = savedState.getVoiceSearchPrompt();
        this.keepQuery = savedState.getKeepQuery();
        if (savedState.isSearchOpen()) {
            showSearch(false);
            setQuery(savedState.getQuery(), false);
        }
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    public final void voiceSearch() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, c.R);
        Activity scanForActivity = ContextUtils.scanForActivity(context);
        if (scanForActivity != null) {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            String str = this.voiceSearchPrompt;
            if (!(str == null || str.length() == 0)) {
                intent.putExtra("android.speech.extra.PROMPT", this.voiceSearchPrompt);
            }
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
            intent.putExtra("android.speech.extra.MAX_RESULTS", 1);
            scanForActivity.startActivityForResult(intent, REQUEST_VOICE_SEARCH);
        }
    }

    public final Boolean clearSearch() {
        EditText editText = this.binding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        editText.setText((CharSequence) null);
        OnQueryTextListener onQueryTextListener = this.onQueryChangeListener;
        if (onQueryTextListener != null) {
            return Boolean.valueOf(onQueryTextListener.onQueryTextCleared());
        }
        return null;
    }

    public final void onTextChanged(CharSequence charSequence) {
        OnQueryTextListener onQueryTextListener;
        SearchViewBinding searchViewBinding = this.binding;
        this.query = charSequence;
        if (!TextUtils.isEmpty(charSequence)) {
            ImageButton imageButton = searchViewBinding.clearButton;
            Intrinsics.checkNotNullExpressionValue(imageButton, "clearButton");
            imageButton.setVisibility(0);
            showVoice(false);
        } else {
            ImageButton imageButton2 = searchViewBinding.clearButton;
            Intrinsics.checkNotNullExpressionValue(imageButton2, "clearButton");
            imageButton2.setVisibility(8);
            showVoice(true);
        }
        if (!TextUtils.equals(charSequence, this.oldQuery) && (onQueryTextListener = this.onQueryChangeListener) != null) {
            onQueryTextListener.onQueryTextChange(charSequence.toString());
        }
        this.oldQuery = charSequence.toString();
    }

    public final void onSubmitQuery() {
        SearchViewBinding searchViewBinding = this.binding;
        EditText editText = searchViewBinding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        Editable text = editText.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            OnQueryTextListener onQueryTextListener = this.onQueryChangeListener;
            if (onQueryTextListener != null) {
                Intrinsics.checkNotNull(onQueryTextListener);
                if (onQueryTextListener.onQueryTextSubmit(text.toString())) {
                    return;
                }
            }
            closeSearch$default(this, false, 1, null);
            this.searchIsClosing = true;
            EditText editText2 = searchViewBinding.searchEditText;
            Intrinsics.checkNotNullExpressionValue(editText2, "searchEditText");
            editText2.setText((CharSequence) null);
            this.searchIsClosing = false;
        }
    }

    private final boolean isVoiceAvailable() {
        if (isInEditMode()) {
            return true;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, c.R);
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0);
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "pm.queryIntentActivities…ION_RECOGNIZE_SPEECH), 0)");
        return !queryIntentActivities.isEmpty();
    }

    public final void setKeepQuery(boolean z) {
        this.keepQuery = z;
    }

    public static /* synthetic */ Unit showSearch$default(SimpleSearchView simpleSearchView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return simpleSearchView.showSearch(z);
    }

    public final Unit showSearch(boolean z) {
        SearchViewBinding searchViewBinding = this.binding;
        if (this.isSearchOpen) {
            return null;
        }
        searchViewBinding.searchEditText.setText(this.keepQuery ? this.query : null);
        searchViewBinding.searchEditText.requestFocus();
        if (z) {
            SimpleAnimationUtils.revealOrFadeIn(this, this.animationDuration, new SimpleAnimationListener(z) { // from class: com.ferfalk.simplesearchview.SimpleSearchView$showSearch$$inlined$with$lambda$1
                final /* synthetic */ boolean $animate$inlined;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$animate$inlined = r2;
                }

                @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationListener, com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.AnimationListener
                public boolean onAnimationEnd(View view) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    SimpleSearchView.SearchViewListener searchViewListener = SimpleSearchView.this.searchViewListener;
                    if (searchViewListener == null) {
                        return false;
                    }
                    searchViewListener.onSearchViewShownAnimation();
                    return false;
                }
            }, getRevealAnimationCenter()).start();
        } else {
            setVisibility(0);
        }
        hideTabLayout(z);
        this.isSearchOpen = true;
        SearchViewListener searchViewListener = this.searchViewListener;
        if (searchViewListener == null) {
            return null;
        }
        searchViewListener.onSearchViewShown();
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit closeSearch$default(SimpleSearchView simpleSearchView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return simpleSearchView.closeSearch(z);
    }

    public final Unit closeSearch(boolean z) {
        SearchViewBinding searchViewBinding = this.binding;
        if (!this.isSearchOpen) {
            return null;
        }
        this.searchIsClosing = true;
        EditText editText = searchViewBinding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        editText.setText((CharSequence) null);
        this.searchIsClosing = false;
        clearFocus();
        if (z) {
            SimpleAnimationUtils.hideOrFadeOut(this, this.animationDuration, new SimpleAnimationListener(z) { // from class: com.ferfalk.simplesearchview.SimpleSearchView$closeSearch$$inlined$with$lambda$1
                final /* synthetic */ boolean $animate$inlined;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$animate$inlined = r2;
                }

                @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationListener, com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.AnimationListener
                public boolean onAnimationEnd(View view) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    SimpleSearchView.SearchViewListener searchViewListener = SimpleSearchView.this.searchViewListener;
                    if (searchViewListener == null) {
                        return false;
                    }
                    searchViewListener.onSearchViewClosedAnimation();
                    return false;
                }
            }, getRevealAnimationCenter()).start();
        } else {
            setVisibility(4);
        }
        showTabLayout(z);
        this.isSearchOpen = false;
        SearchViewListener searchViewListener = this.searchViewListener;
        if (searchViewListener == null) {
            return null;
        }
        searchViewListener.onSearchViewClosed();
        return Unit.INSTANCE;
    }

    public final void setTabLayout(TabLayout tabLayout) {
        Intrinsics.checkNotNullParameter(tabLayout, "tabLayout");
        this.tabLayout = tabLayout;
        Intrinsics.checkNotNull(tabLayout);
        tabLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener(tabLayout) { // from class: com.ferfalk.simplesearchview.SimpleSearchView$setTabLayout$1
            final /* synthetic */ TabLayout $tabLayout;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$tabLayout = r2;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SimpleSearchView.this.tabLayoutInitialHeight = this.$tabLayout.getHeight();
                this.$tabLayout.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
        });
        TabLayout tabLayout2 = this.tabLayout;
        Intrinsics.checkNotNull(tabLayout2);
        tabLayout2.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new SimpleOnTabSelectedListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$setTabLayout$2
            @Override // com.ferfalk.simplesearchview.SimpleOnTabSelectedListener, com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                SimpleSearchView.closeSearch$default(SimpleSearchView.this, false, 1, null);
            }
        });
    }

    public static /* synthetic */ void showTabLayout$default(SimpleSearchView simpleSearchView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        simpleSearchView.showTabLayout(z);
    }

    public final void showTabLayout(boolean z) {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            if (z) {
                Intrinsics.checkNotNull(tabLayout);
                SimpleAnimationUtils.verticalSlideView$default(tabLayout, 0, this.tabLayoutInitialHeight, this.animationDuration, null, 16, null).start();
            } else if (tabLayout != null) {
                tabLayout.setVisibility(0);
            }
        }
    }

    public static /* synthetic */ void hideTabLayout$default(SimpleSearchView simpleSearchView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        simpleSearchView.hideTabLayout(z);
    }

    public final void hideTabLayout(boolean z) {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            if (z) {
                Intrinsics.checkNotNull(tabLayout);
                TabLayout tabLayout2 = this.tabLayout;
                Intrinsics.checkNotNull(tabLayout2);
                SimpleAnimationUtils.verticalSlideView$default(tabLayout, tabLayout2.getHeight(), 0, this.animationDuration, null, 16, null).start();
                return;
            }
            Intrinsics.checkNotNull(tabLayout);
            tabLayout.setVisibility(8);
        }
    }

    public final boolean onBackPressed() {
        if (!this.isSearchOpen) {
            return false;
        }
        closeSearch$default(this, false, 1, null);
        return true;
    }

    public static /* synthetic */ boolean onActivityResult$default(SimpleSearchView simpleSearchView, int i, int i2, Intent intent, boolean z, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            z = true;
        }
        return simpleSearchView.onActivityResult(i, i2, intent, z);
    }

    public final boolean onActivityResult(int i, int i2, Intent intent, boolean z) {
        Intrinsics.checkNotNullParameter(intent, "data");
        if (i != 735 || i2 != -1) {
            return false;
        }
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
        ArrayList<String> arrayList = stringArrayListExtra;
        if (!(arrayList == null || arrayList.isEmpty())) {
            String str = stringArrayListExtra.get(0);
            if (!TextUtils.isEmpty(str)) {
                setQuery(str, z);
            }
        }
        return true;
    }

    public final int getCardStyle() {
        return this.style;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final void setCardStyle(int r8) {
        /*
            r7 = this;
            com.ferfalk.simplesearchview.databinding.SearchViewBinding r0 = r7.binding
            r7.style = r8
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams
            r2 = -1
            r1.<init>(r2, r2)
            r3 = 0
            java.lang.String r4 = "searchContainer"
            java.lang.String r5 = "bottomLine"
            if (r8 == 0) goto L_0x0059
            r6 = 1
            if (r8 == r6) goto L_0x0022
            androidx.constraintlayout.widget.ConstraintLayout r8 = r0.searchContainer
            r8.setBackgroundColor(r2)
            android.view.View r8 = r0.bottomLine
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r5)
            r8.setVisibility(r3)
            goto L_0x0066
        L_0x0022:
            androidx.constraintlayout.widget.ConstraintLayout r8 = r0.searchContainer
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r4)
            android.graphics.drawable.GradientDrawable r2 = r7.getCardStyleBackground()
            android.graphics.drawable.Drawable r2 = (android.graphics.drawable.Drawable) r2
            r8.setBackground(r2)
            android.view.View r8 = r0.bottomLine
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r5)
            r2 = 8
            r8.setVisibility(r2)
            r8 = 6
            android.content.Context r2 = r7.getContext()
            java.lang.String r3 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            int r8 = com.ferfalk.simplesearchview.utils.DimensUtils.convertDpToPx(r8, r2)
            r1.setMargins(r8, r8, r8, r8)
            r8 = 2
            android.content.Context r2 = r7.getContext()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            int r8 = com.ferfalk.simplesearchview.utils.DimensUtils.convertDpToPx(r8, r2)
            float r8 = (float) r8
            goto L_0x0067
        L_0x0059:
            androidx.constraintlayout.widget.ConstraintLayout r8 = r0.searchContainer
            r8.setBackgroundColor(r2)
            android.view.View r8 = r0.bottomLine
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r5)
            r8.setVisibility(r3)
        L_0x0066:
            r8 = 0
        L_0x0067:
            androidx.constraintlayout.widget.ConstraintLayout r2 = r0.searchContainer
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            android.view.ViewGroup$LayoutParams r1 = (android.view.ViewGroup.LayoutParams) r1
            r2.setLayoutParams(r1)
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            if (r1 < r2) goto L_0x007f
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.searchContainer
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)
            r0.setElevation(r8)
        L_0x007f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ferfalk.simplesearchview.SimpleSearchView.setCardStyle(int):void");
    }

    private final GradientDrawable getCardStyleBackground() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, c.R);
        gradientDrawable.setCornerRadius((float) DimensUtils.convertDpToPx(4, context));
        return gradientDrawable;
    }

    public final void setIconsAlpha(float f) {
        SearchViewBinding searchViewBinding = this.binding;
        ImageButton imageButton = searchViewBinding.clearButton;
        Intrinsics.checkNotNullExpressionValue(imageButton, "clearButton");
        imageButton.setAlpha(f);
        ImageButton imageButton2 = searchViewBinding.voiceButton;
        Intrinsics.checkNotNullExpressionValue(imageButton2, "voiceButton");
        imageButton2.setAlpha(f);
    }

    public final void setIconsColor(int i) {
        SearchViewBinding searchViewBinding = this.binding;
        ImageViewCompat.setImageTintList(searchViewBinding.clearButton, ColorStateList.valueOf(i));
        ImageViewCompat.setImageTintList(searchViewBinding.voiceButton, ColorStateList.valueOf(i));
    }

    public final void setBackIconAlpha(float f) {
        ImageButton imageButton = this.binding.backButton;
        Intrinsics.checkNotNullExpressionValue(imageButton, "backButton");
        imageButton.setAlpha(f);
    }

    public final void setBackIconColor(int i) {
        ImageViewCompat.setImageTintList(this.binding.backButton, ColorStateList.valueOf(i));
    }

    public final void setBackIconDrawable(Drawable drawable) {
        this.binding.backButton.setImageDrawable(drawable);
    }

    public final void setVoiceIconDrawable(Drawable drawable) {
        this.binding.voiceButton.setImageDrawable(drawable);
    }

    public final void setClearIconDrawable(Drawable drawable) {
        this.binding.clearButton.setImageDrawable(drawable);
    }

    public final void setSearchBackground(Drawable drawable) {
        ConstraintLayout constraintLayout = this.binding.searchContainer;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "searchContainer");
        constraintLayout.setBackground(drawable);
    }

    public final void setTextColor(int i) {
        this.binding.searchEditText.setTextColor(i);
    }

    public final void setHintTextColor(int i) {
        this.binding.searchEditText.setHintTextColor(i);
    }

    public final void setHint(CharSequence charSequence) {
        EditText editText = this.binding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        editText.setHint(charSequence);
    }

    public final void setInputType(int i) {
        EditText editText = this.binding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        editText.setInputType(i);
    }

    public final void setCursorDrawable(int i) {
        EditText editText = this.binding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        EditTextReflectionUtils.setCursorDrawable(editText, i);
    }

    public final void setCursorColor(int i) {
        EditText editText = this.binding.searchEditText;
        Intrinsics.checkNotNullExpressionValue(editText, "searchEditText");
        EditTextReflectionUtils.setCursorColor(editText, i);
    }

    public final void enableVoiceSearch(boolean z) {
        this.allowVoiceSearch = z;
    }

    public final void setQuery(CharSequence charSequence, boolean z) {
        SearchViewBinding searchViewBinding = this.binding;
        searchViewBinding.searchEditText.setText(charSequence);
        if (charSequence != null) {
            searchViewBinding.searchEditText.setSelection(searchViewBinding.searchEditText.length());
            this.query = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            onSubmitQuery();
        }
    }

    public final void showVoice(boolean z) {
        SearchViewBinding searchViewBinding = this.binding;
        if (!z || !isVoiceAvailable() || !this.allowVoiceSearch) {
            ImageButton imageButton = searchViewBinding.voiceButton;
            Intrinsics.checkNotNullExpressionValue(imageButton, "voiceButton");
            imageButton.setVisibility(8);
            return;
        }
        ImageButton imageButton2 = searchViewBinding.voiceButton;
        Intrinsics.checkNotNullExpressionValue(imageButton2, "voiceButton");
        imageButton2.setVisibility(0);
    }

    public final void setMenuItem(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.ferfalk.simplesearchview.SimpleSearchView$setMenuItem$1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem2) {
                SimpleSearchView.showSearch$default(SimpleSearchView.this, false, 1, null);
                return true;
            }
        });
    }

    public final void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.onQueryChangeListener = onQueryTextListener;
    }

    public final void setOnSearchViewListener(SearchViewListener searchViewListener) {
        this.searchViewListener = searchViewListener;
    }

    public final void setVoiceSearchPrompt(String str) {
        this.voiceSearchPrompt = str;
    }

    /* compiled from: SimpleSearchView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\tH\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001b¨\u0006$"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;", "Landroid/view/View$BaseSavedState;", "superState", "Landroid/os/Parcelable;", "(Landroid/os/Parcelable;)V", "in", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "animationDuration", "", "getAnimationDuration", "()I", "setAnimationDuration", "(I)V", "isSearchOpen", "", "()Z", "setSearchOpen", "(Z)V", "keepQuery", "getKeepQuery", "setKeepQuery", "query", "", "getQuery", "()Ljava/lang/String;", "setQuery", "(Ljava/lang/String;)V", "voiceSearchPrompt", "getVoiceSearchPrompt", "setVoiceSearchPrompt", "writeToParcel", "", "out", "flags", "Companion", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class SavedState extends View.BaseSavedState {
        private int animationDuration;
        private boolean isSearchOpen;
        private boolean keepQuery;
        private String query;
        private String voiceSearchPrompt;
        public static final Companion Companion = new Companion(null);
        private static final Parcelable.Creator<SavedState> CREATOR = new SimpleSearchView$SavedState$Companion$CREATOR$1();

        public /* synthetic */ SavedState(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        public final String getQuery() {
            return this.query;
        }

        public final void setQuery(String str) {
            this.query = str;
        }

        public final boolean isSearchOpen() {
            return this.isSearchOpen;
        }

        public final void setSearchOpen(boolean z) {
            this.isSearchOpen = z;
        }

        public final int getAnimationDuration() {
            return this.animationDuration;
        }

        public final void setAnimationDuration(int i) {
            this.animationDuration = i;
        }

        public final String getVoiceSearchPrompt() {
            return this.voiceSearchPrompt;
        }

        public final void setVoiceSearchPrompt(String str) {
            this.voiceSearchPrompt = str;
        }

        public final boolean getKeepQuery() {
            return this.keepQuery;
        }

        public final void setKeepQuery(boolean z) {
            this.keepQuery = z;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.query = parcel.readString();
            boolean z = false;
            this.isSearchOpen = parcel.readInt() == 1;
            this.animationDuration = parcel.readInt();
            this.voiceSearchPrompt = parcel.readString();
            this.keepQuery = parcel.readInt() == 1 ? true : z;
        }

        @Override // android.view.View.BaseSavedState, android.os.Parcelable, android.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            super.writeToParcel(parcel, i);
            parcel.writeString(this.query);
            parcel.writeInt(this.isSearchOpen ? 1 : 0);
            parcel.writeInt(this.animationDuration);
            parcel.writeString(this.voiceSearchPrompt);
            parcel.writeInt(this.keepQuery ? 1 : 0);
        }

        /* compiled from: SimpleSearchView.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;", "getCREATOR", "()Landroid/os/Parcelable$Creator;", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes4.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Parcelable.Creator<SavedState> getCREATOR() {
                return SavedState.CREATOR;
            }
        }
    }

    /* compiled from: SimpleSearchView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;", "", "()V", "ANIMATION_CENTER_PADDING", "", "BACK_ICON_ALPHA_DEFAULT", "", "CARD_CORNER_RADIUS", "CARD_ELEVATION", "CARD_PADDING", "ICONS_ALPHA_DEFAULT", "REQUEST_VOICE_SEARCH", "STYLE_BAR", "STYLE_CARD", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
