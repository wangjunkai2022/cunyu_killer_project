package androidx.heifwriter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* loaded from: classes2.dex */
public class EglRectBlt {
    private static final int SIZEOF_FLOAT = 4;
    private Texture2dProgram mProgram;
    private final int mTexHeight;
    private final int mTexWidth;
    private static final float[] FULL_RECTANGLE_COORDS = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private static final FloatBuffer FULL_RECTANGLE_BUF = createFloatBuffer(FULL_RECTANGLE_COORDS);
    private final float[] mTexCoords = new float[8];
    private final FloatBuffer mTexCoordArray = createFloatBuffer(this.mTexCoords);

    public static FloatBuffer createFloatBuffer(float[] fArr) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr);
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public EglRectBlt(Texture2dProgram texture2dProgram, int i, int i2) {
        this.mProgram = texture2dProgram;
        this.mTexWidth = i;
        this.mTexHeight = i2;
    }

    public void release(boolean z) {
        Texture2dProgram texture2dProgram = this.mProgram;
        if (texture2dProgram != null) {
            if (z) {
                texture2dProgram.release();
            }
            this.mProgram = null;
        }
    }

    public int createTextureObject() {
        return this.mProgram.createTextureObject();
    }

    public void loadTexture(int i, Bitmap bitmap) {
        this.mProgram.loadTexture(i, bitmap);
    }

    public void copyRect(int i, float[] fArr, Rect rect) {
        setTexRect(rect);
        this.mProgram.draw(Texture2dProgram.IDENTITY_MATRIX, FULL_RECTANGLE_BUF, 0, 4, 2, 8, fArr, this.mTexCoordArray, i, 8);
    }

    void setTexRect(Rect rect) {
        this.mTexCoords[0] = ((float) rect.left) / ((float) this.mTexWidth);
        this.mTexCoords[1] = 1.0f - (((float) rect.bottom) / ((float) this.mTexHeight));
        this.mTexCoords[2] = ((float) rect.right) / ((float) this.mTexWidth);
        this.mTexCoords[3] = 1.0f - (((float) rect.bottom) / ((float) this.mTexHeight));
        this.mTexCoords[4] = ((float) rect.left) / ((float) this.mTexWidth);
        this.mTexCoords[5] = 1.0f - (((float) rect.top) / ((float) this.mTexHeight));
        this.mTexCoords[6] = ((float) rect.right) / ((float) this.mTexWidth);
        this.mTexCoords[7] = 1.0f - (((float) rect.top) / ((float) this.mTexHeight));
        this.mTexCoordArray.put(this.mTexCoords);
        this.mTexCoordArray.position(0);
    }
}
