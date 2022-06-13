package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class RequestPermissionHandler implements ActivityCompat.OnRequestPermissionsResultCallback {
    private static Map<Integer, List<Runnable>> actionDictionary = new HashMap();

    public static void checkAndRun(Activity activity, String str, int i, Runnable runnable) {
        if (ContextCompat.checkSelfPermission(activity.getApplicationContext(), str) != 0) {
            if (actionDictionary.containsKey(Integer.valueOf(i))) {
                actionDictionary.get(Integer.valueOf(i)).add(runnable);
            } else {
                actionDictionary.put(Integer.valueOf(i), Arrays.asList(runnable));
            }
            ActivityCompat.requestPermissions(activity, new String[]{str}, i);
            return;
        }
        runnable.run();
    }

    @Override // androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.d("asdasd", "\n\na asd asd \n\n");
        if (iArr.length > 0 && iArr[0] == 0) {
            List<Runnable> list = actionDictionary.get(Integer.valueOf(i));
            for (Runnable runnable : list) {
                runnable.run();
                list.remove(runnable);
            }
        }
    }
}
