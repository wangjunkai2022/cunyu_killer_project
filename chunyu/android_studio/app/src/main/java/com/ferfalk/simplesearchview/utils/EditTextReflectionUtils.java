package com.ferfalk.simplesearchview.utils;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditTextReflectionUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;", "", "()V", "EDIT_TEXT_FIELD_CURSOR_DRAWABLE", "", "EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES", "EDIT_TEXT_FIELD_EDITOR", "TAG", "kotlin.jvm.PlatformType", "setCursorColor", "", "editText", "Landroid/widget/EditText;", TtmlNode.ATTR_TTS_COLOR, "", "setCursorDrawable", "drawable", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class EditTextReflectionUtils {
    private static final String EDIT_TEXT_FIELD_CURSOR_DRAWABLE = "mCursorDrawable";
    private static final String EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES = "mCursorDrawableRes";
    private static final String EDIT_TEXT_FIELD_EDITOR = "mEditor";
    public static final EditTextReflectionUtils INSTANCE = new EditTextReflectionUtils();
    private static final String TAG = EditTextReflectionUtils.class.getSimpleName();

    private EditTextReflectionUtils() {
    }

    @JvmStatic
    public static final void setCursorDrawable(EditText editText, int i) {
        Intrinsics.checkNotNullParameter(editText, "editText");
        try {
            Field declaredField = TextView.class.getDeclaredField(EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES);
            Intrinsics.checkNotNullExpressionValue(declaredField, "f");
            declaredField.setAccessible(true);
            declaredField.set(editText, Integer.valueOf(i));
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @JvmStatic
    public static final void setCursorColor(EditText editText, int i) {
        Intrinsics.checkNotNullParameter(editText, "editText");
        try {
            Field declaredField = TextView.class.getDeclaredField(EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES);
            Intrinsics.checkNotNullExpressionValue(declaredField, "field");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField(EDIT_TEXT_FIELD_EDITOR);
            Intrinsics.checkNotNullExpressionValue(declaredField2, "field");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Drawable drawable = ContextCompat.getDrawable(editText.getContext(), i2);
            if (drawable != null) {
                drawable.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(i, BlendModeCompat.SRC_IN));
            }
            Drawable[] drawableArr = {drawable, drawable};
            Field declaredField3 = obj.getClass().getDeclaredField(EDIT_TEXT_FIELD_CURSOR_DRAWABLE);
            Intrinsics.checkNotNullExpressionValue(declaredField3, "field");
            declaredField3.setAccessible(true);
            declaredField3.set(obj, drawableArr);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }
}
