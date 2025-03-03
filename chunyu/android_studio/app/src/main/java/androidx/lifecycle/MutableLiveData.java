package androidx.lifecycle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes4.dex */
public class MutableLiveData<T> extends LiveData<T> {
    public MutableLiveData(T t) {
        super(t);
    }

    public MutableLiveData() {
    }

    @Override // androidx.lifecycle.LiveData
    public void postValue(T t) {
        super.postValue(t);
    }

    @Override // androidx.lifecycle.LiveData
    public void setValue(T t) {
        super.setValue(t);
    }
}
