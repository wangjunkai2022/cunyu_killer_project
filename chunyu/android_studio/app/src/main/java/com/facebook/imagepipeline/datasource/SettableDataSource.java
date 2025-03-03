package com.facebook.imagepipeline.datasource;

import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public final class SettableDataSource<T> extends AbstractDataSource<CloseableReference<T>> {
    @Override // com.facebook.datasource.AbstractDataSource
    protected /* bridge */ /* synthetic */ void closeResult(@Nullable Object obj) {
        closeResult((CloseableReference) ((CloseableReference) obj));
    }

    public static <V> SettableDataSource<V> create() {
        return new SettableDataSource<>();
    }

    private SettableDataSource() {
    }

    public boolean set(@Nullable CloseableReference<T> closeableReference) {
        return super.setResult(CloseableReference.cloneOrNull(closeableReference), true);
    }

    public boolean setException(Throwable th) {
        return super.setFailure(th);
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setProgress(float f) {
        return super.setProgress(f);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
    @Nullable
    public CloseableReference<T> getResult() {
        return CloseableReference.cloneOrNull((CloseableReference) super.getResult());
    }

    protected void closeResult(@Nullable CloseableReference<T> closeableReference) {
        CloseableReference.closeSafely((CloseableReference<?>) closeableReference);
    }
}
