package top.kikt.flutter_image_editor.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.draw.ArcToPathPart;
import top.kikt.flutter_image_editor.option.draw.BezierPathPart;
import top.kikt.flutter_image_editor.option.draw.DrawOption;
import top.kikt.flutter_image_editor.option.draw.DrawPart;
import top.kikt.flutter_image_editor.option.draw.LineDrawPart;
import top.kikt.flutter_image_editor.option.draw.LineToPathPart;
import top.kikt.flutter_image_editor.option.draw.MovePathPart;
import top.kikt.flutter_image_editor.option.draw.OvalDrawPart;
import top.kikt.flutter_image_editor.option.draw.PathDrawPart;
import top.kikt.flutter_image_editor.option.draw.PathPart;
import top.kikt.flutter_image_editor.option.draw.PointsDrawPart;
import top.kikt.flutter_image_editor.option.draw.RectDrawPart;

/* compiled from: HandleExtension.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007\u001a\u0016\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\t\u001a\u0016\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000b\u001a\u0016\u0010\f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\r\u001a\u0012\u0010\u000e\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"drawLine", "", "canvas", "Landroid/graphics/Canvas;", "drawPart", "Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;", "drawOval", "Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;", "drawPath", "Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;", "drawPoints", "Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;", "drawRect", "Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;", "draw", "Landroid/graphics/Bitmap;", "option", "Ltop/kikt/flutter_image_editor/option/draw/DrawOption;", "image_editor_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class HandleExtensionKt {
    public static final Bitmap draw(Bitmap bitmap, DrawOption drawOption) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(drawOption, "option");
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        for (DrawPart drawPart : drawOption.getDrawPart()) {
            if (drawPart instanceof LineDrawPart) {
                drawLine(canvas, (LineDrawPart) drawPart);
            } else if (drawPart instanceof RectDrawPart) {
                drawRect(canvas, (RectDrawPart) drawPart);
            } else if (drawPart instanceof OvalDrawPart) {
                drawOval(canvas, (OvalDrawPart) drawPart);
            } else if (drawPart instanceof PointsDrawPart) {
                drawPoints(canvas, (PointsDrawPart) drawPart);
            } else if (drawPart instanceof PathDrawPart) {
                drawPath(canvas, (PathDrawPart) drawPart);
            }
        }
        Intrinsics.checkNotNullExpressionValue(createBitmap, "newBitmap");
        return createBitmap;
    }

    public static final void drawPath(Canvas canvas, PathDrawPart pathDrawPart) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(pathDrawPart, "drawPart");
        Path path = new Path();
        boolean autoClose = pathDrawPart.getAutoClose();
        for (PathPart pathPart : pathDrawPart.getPaths()) {
            if (pathPart instanceof MovePathPart) {
                MovePathPart movePathPart = (MovePathPart) pathPart;
                path.moveTo((float) movePathPart.getOffset().x, (float) movePathPart.getOffset().y);
            } else if (pathPart instanceof LineToPathPart) {
                LineToPathPart lineToPathPart = (LineToPathPart) pathPart;
                path.lineTo((float) lineToPathPart.getOffset().x, (float) lineToPathPart.getOffset().y);
            } else if (pathPart instanceof ArcToPathPart) {
                ArcToPathPart arcToPathPart = (ArcToPathPart) pathPart;
                path.arcTo(new RectF(arcToPathPart.getRect()), arcToPathPart.getStart().floatValue(), arcToPathPart.getSweep().floatValue(), arcToPathPart.getUseCenter());
            } else if (pathPart instanceof BezierPathPart) {
                BezierPathPart bezierPathPart = (BezierPathPart) pathPart;
                if (bezierPathPart.getKind() == 2) {
                    path.quadTo((float) bezierPathPart.getControl1().x, (float) bezierPathPart.getControl1().y, (float) bezierPathPart.getTarget().x, (float) bezierPathPart.getTarget().y);
                } else if (bezierPathPart.getKind() == 3) {
                    Point control2 = bezierPathPart.getControl2();
                    Intrinsics.checkNotNull(control2);
                    path.cubicTo((float) bezierPathPart.getControl1().x, (float) bezierPathPart.getControl1().y, (float) control2.x, (float) bezierPathPart.getControl2().y, (float) bezierPathPart.getTarget().x, (float) bezierPathPart.getTarget().y);
                }
            }
        }
        if (autoClose) {
            path.close();
        }
        canvas.drawPath(path, pathDrawPart.getPaint());
    }

    public static final void drawPoints(Canvas canvas, PointsDrawPart pointsDrawPart) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(pointsDrawPart, "drawPart");
        List<Point> offsets = pointsDrawPart.getOffsets();
        Paint paint = pointsDrawPart.getPaint();
        for (Point point : offsets) {
            canvas.drawPoint((float) point.x, (float) point.y, paint);
        }
    }

    public static final void drawOval(Canvas canvas, OvalDrawPart ovalDrawPart) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(ovalDrawPart, "drawPart");
        canvas.drawOval(new RectF(ovalDrawPart.getRect()), ovalDrawPart.getPaint());
    }

    public static final void drawRect(Canvas canvas, RectDrawPart rectDrawPart) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(rectDrawPart, "drawPart");
        canvas.drawRect(rectDrawPart.getRect(), rectDrawPart.getPaint());
    }

    private static final void drawLine(Canvas canvas, LineDrawPart lineDrawPart) {
        canvas.drawLine((float) lineDrawPart.getStart().x, (float) lineDrawPart.getStart().y, (float) lineDrawPart.getEnd().x, (float) lineDrawPart.getEnd().y, lineDrawPart.getPaint());
    }
}
