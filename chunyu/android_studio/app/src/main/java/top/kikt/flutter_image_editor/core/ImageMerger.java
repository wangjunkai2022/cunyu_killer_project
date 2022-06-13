package top.kikt.flutter_image_editor.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.FormatOption;
import top.kikt.flutter_image_editor.option.ImagePosition;
import top.kikt.flutter_image_editor.option.MergeImage;
import top.kikt.flutter_image_editor.option.MergeOption;

/* compiled from: ImageMerger.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Ltop/kikt/flutter_image_editor/core/ImageMerger;", "", "mergeOption", "Ltop/kikt/flutter_image_editor/option/MergeOption;", "(Ltop/kikt/flutter_image_editor/option/MergeOption;)V", UMModuleRegister.PROCESS, "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ImageMerger {
    private final MergeOption mergeOption;

    public ImageMerger(MergeOption mergeOption) {
        Intrinsics.checkNotNullParameter(mergeOption, "mergeOption");
        this.mergeOption = mergeOption;
    }

    public final byte[] process() {
        Bitmap createBitmap = Bitmap.createBitmap(this.mergeOption.getWidth(), this.mergeOption.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        for (MergeImage mergeImage : this.mergeOption.getImages()) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(mergeImage.getByteArray(), 0, mergeImage.getByteArray().length);
            ImagePosition position = mergeImage.getPosition();
            canvas.drawBitmap(decodeByteArray, (Rect) null, new Rect(position.getX(), position.getY(), position.getX() + position.getWidth(), position.getY() + position.getHeight()), (Paint) null);
        }
        FormatOption formatOption = this.mergeOption.getFormatOption();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(formatOption.getFormat() == 1 ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.PNG, formatOption.getQuality(), byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
