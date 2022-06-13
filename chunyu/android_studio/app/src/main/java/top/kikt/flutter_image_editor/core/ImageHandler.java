package top.kikt.flutter_image_editor.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.tekartik.sqflite.Constant;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.common.font.FontUtils;
import top.kikt.flutter_image_editor.option.AddTextOpt;
import top.kikt.flutter_image_editor.option.ClipOption;
import top.kikt.flutter_image_editor.option.ColorOption;
import top.kikt.flutter_image_editor.option.FlipOption;
import top.kikt.flutter_image_editor.option.FormatOption;
import top.kikt.flutter_image_editor.option.MixImageOpt;
import top.kikt.flutter_image_editor.option.Option;
import top.kikt.flutter_image_editor.option.RotateOption;
import top.kikt.flutter_image_editor.option.ScaleOption;
import top.kikt.flutter_image_editor.option.Text;
import top.kikt.flutter_image_editor.option.draw.DrawOption;

/* compiled from: ImageHandler.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0014\u0010\u0011\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020#H\u0002J\u0018\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\u000e\u0010)\u001a\u00020*2\u0006\u0010'\u001a\u00020(J\u0016\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020-2\u0006\u0010'\u001a\u00020(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Ltop/kikt/flutter_image_editor/core/ImageHandler;", "", "bitmap", "Landroid/graphics/Bitmap;", "(Landroid/graphics/Bitmap;)V", "drawText", "", "text", "Ltop/kikt/flutter_image_editor/option/Text;", "canvas", "Landroid/graphics/Canvas;", "getStaticLayout", "Landroid/text/StaticLayout;", "textPaint", "Landroid/text/TextPaint;", "width", "", "handle", Constant.METHOD_OPTIONS, "", "Ltop/kikt/flutter_image_editor/option/Option;", "handleClip", "option", "Ltop/kikt/flutter_image_editor/option/ClipOption;", "handleColor", "Ltop/kikt/flutter_image_editor/option/ColorOption;", "handleFlip", "Ltop/kikt/flutter_image_editor/option/FlipOption;", "handleMixImage", "Ltop/kikt/flutter_image_editor/option/MixImageOpt;", "handleRotate", "Ltop/kikt/flutter_image_editor/option/RotateOption;", "handleScale", "Ltop/kikt/flutter_image_editor/option/ScaleOption;", "handleText", "Ltop/kikt/flutter_image_editor/option/AddTextOpt;", "output", "outputStream", "Ljava/io/OutputStream;", "formatOption", "Ltop/kikt/flutter_image_editor/option/FormatOption;", "outputByteArray", "", "outputToFile", "dstPath", "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ImageHandler {
    private Bitmap bitmap;

    public ImageHandler(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.bitmap = bitmap;
    }

    public final void handle(List<? extends Option> list) {
        Intrinsics.checkNotNullParameter(list, Constant.METHOD_OPTIONS);
        for (Option option : list) {
            if (option instanceof ColorOption) {
                this.bitmap = handleColor((ColorOption) option);
            } else if (option instanceof ScaleOption) {
                this.bitmap = handleScale((ScaleOption) option);
            } else if (option instanceof FlipOption) {
                this.bitmap = handleFlip((FlipOption) option);
            } else if (option instanceof ClipOption) {
                this.bitmap = handleClip((ClipOption) option);
            } else if (option instanceof RotateOption) {
                this.bitmap = handleRotate((RotateOption) option);
            } else if (option instanceof AddTextOpt) {
                this.bitmap = handleText((AddTextOpt) option);
            } else if (option instanceof MixImageOpt) {
                this.bitmap = handleMixImage((MixImageOpt) option);
            } else if (option instanceof DrawOption) {
                this.bitmap = HandleExtensionKt.draw(this.bitmap, (DrawOption) option);
            }
        }
    }

    private final Bitmap handleMixImage(MixImageOpt mixImageOpt) {
        Bitmap createBitmap = Bitmap.createBitmap(this.bitmap.getWidth(), this.bitmap.getHeight(), this.bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, (Paint) null);
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(mixImageOpt.getImg(), 0, mixImageOpt.getImg().length);
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(mixImageOpt.getPorterDuffMode()));
        canvas.drawBitmap(decodeByteArray, (Rect) null, new Rect(mixImageOpt.getX(), mixImageOpt.getY(), mixImageOpt.getX() + mixImageOpt.getW(), mixImageOpt.getY() + mixImageOpt.getH()), paint);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "newBitmap");
        return createBitmap;
    }

    private final Bitmap handleScale(ScaleOption scaleOption) {
        int min = Math.min(this.bitmap.getWidth(), scaleOption.getWidth());
        int min2 = Math.min(this.bitmap.getHeight(), scaleOption.getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Matrix matrix = new Matrix();
        int width = this.bitmap.getWidth();
        int height = this.bitmap.getHeight();
        if (!(width == min && height == min2)) {
            matrix.setScale(((float) min) / ((float) width), ((float) min2) / ((float) height));
        }
        canvas.drawBitmap(this.bitmap, matrix, paint);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "newBitmap");
        return createBitmap;
    }

    private final Bitmap handleRotate(RotateOption rotateOption) {
        Matrix matrix = new Matrix();
        matrix.postRotate((float) rotateOption.getAngle());
        Bitmap bitmap = this.bitmap;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.bitmap.getHeight(), matrix, true);
        new Canvas(createBitmap).drawBitmap(createBitmap, matrix, null);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "out");
        return createBitmap;
    }

    private final Bitmap handleFlip(FlipOption flipOption) {
        Matrix matrix = new Matrix();
        float f = -1.0f;
        float f2 = flipOption.getHorizontal() ? -1.0f : 1.0f;
        if (!flipOption.getVertical()) {
            f = 1.0f;
        }
        matrix.postScale(f2, f);
        Bitmap bitmap = this.bitmap;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.bitmap.getHeight(), matrix, true);
        new Canvas(createBitmap).drawBitmap(createBitmap, matrix, null);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "out");
        return createBitmap;
    }

    private final Bitmap handleClip(ClipOption clipOption) {
        Bitmap createBitmap = Bitmap.createBitmap(this.bitmap, clipOption.getX(), clipOption.getY(), clipOption.getWidth(), clipOption.getHeight(), (Matrix) null, false);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(bitmap, x, …tion.height, null, false)");
        return createBitmap;
    }

    private final Bitmap handleColor(ColorOption colorOption) {
        Bitmap createBitmap = Bitmap.createBitmap(this.bitmap.getWidth(), this.bitmap.getHeight(), this.bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorOption.getMatrix()));
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, paint);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "newBitmap");
        return createBitmap;
    }

    private final Bitmap handleText(AddTextOpt addTextOpt) {
        Bitmap createBitmap = Bitmap.createBitmap(this.bitmap.getWidth(), this.bitmap.getHeight(), this.bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, new Paint());
        Iterator<Text> it = addTextOpt.getTexts().iterator();
        while (it.hasNext()) {
            Text next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "text");
            drawText(next, canvas);
        }
        Intrinsics.checkNotNullExpressionValue(createBitmap, "newBitmap");
        return createBitmap;
    }

    private final void drawText(Text text, Canvas canvas) {
        boolean z = true;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setColor(Color.argb(text.getA(), text.getR(), text.getG(), text.getB()));
        textPaint.setTextSize((float) text.getFontSizePx());
        if (text.getFontName().length() <= 0) {
            z = false;
        }
        if (z) {
            try {
                textPaint.setTypeface(FontUtils.getFont(text.getFontName()));
            } catch (Exception unused) {
            }
        }
        StaticLayout staticLayout = getStaticLayout(text, textPaint, canvas.getWidth() - text.getX());
        canvas.translate((float) text.getX(), (float) text.getY());
        staticLayout.draw(canvas);
        canvas.translate((float) (-text.getX()), (float) (-text.getY()));
    }

    private final StaticLayout getStaticLayout(Text text, TextPaint textPaint, int i) {
        if (Build.VERSION.SDK_INT < 23) {
            return new StaticLayout(text.getText(), textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        StaticLayout build = StaticLayout.Builder.obtain(text.getText(), 0, text.getText().length(), textPaint, i).build();
        Intrinsics.checkNotNullExpressionValue(build, "{\n      StaticLayout.Bui…dth\n      ).build()\n    }");
        return build;
    }

    public final void outputToFile(String str, FormatOption formatOption) {
        Intrinsics.checkNotNullParameter(str, "dstPath");
        Intrinsics.checkNotNullParameter(formatOption, "formatOption");
        output(new FileOutputStream(str), formatOption);
    }

    public final byte[] outputByteArray(FormatOption formatOption) {
        Intrinsics.checkNotNullParameter(formatOption, "formatOption");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        output(byteArrayOutputStream, formatOption);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "outputStream.toByteArray()");
        return byteArray;
    }

    private final void output(OutputStream outputStream, FormatOption formatOption) {
        OutputStream outputStream2 = outputStream;
        th = null;
        try {
            OutputStream outputStream3 = outputStream2;
            if (formatOption.getFormat() == 0) {
                this.bitmap.compress(Bitmap.CompressFormat.PNG, formatOption.getQuality(), outputStream);
            } else {
                this.bitmap.compress(Bitmap.CompressFormat.JPEG, formatOption.getQuality(), outputStream);
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
