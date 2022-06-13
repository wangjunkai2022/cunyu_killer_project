package top.kikt.flutter_image_editor.common.font;

import android.graphics.Typeface;
import android.os.Build;
import com.jaredrummler.truetypeparser.TTFFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FontUtils {
    private static int fontIndex = -1;
    private static Map<String, Typeface> map = new HashMap();

    public static String registerFont(String str) throws IOException {
        String fullName = Build.VERSION.SDK_INT >= 19 ? TTFFile.open(new FileInputStream(str)).getFullName() : null;
        if (fullName == null) {
            fontIndex++;
            fullName = String.valueOf(fontIndex);
        }
        if (map.containsKey(fullName)) {
            return fullName;
        }
        map.put(fullName, Typeface.createFromFile(new File(str)));
        return fullName;
    }

    public static Typeface getFont(String str) {
        return map.get(str);
    }
}
