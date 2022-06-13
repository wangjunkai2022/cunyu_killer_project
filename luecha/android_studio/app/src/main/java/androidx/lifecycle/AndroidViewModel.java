package androidx.lifecycle;

import android.app.Application;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class AndroidViewModel extends ViewModel {
    private Application mApplication;

    public AndroidViewModel(Application application) {
        this.mApplication = application;
    }

    public <T extends Application> T getApplication() {
        return (T) this.mApplication;
    }
}
