package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface ActivityResultCaller {
    <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultCallback<O> activityResultCallback);

    <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultRegistry activityResultRegistry, ActivityResultCallback<O> activityResultCallback);
}
