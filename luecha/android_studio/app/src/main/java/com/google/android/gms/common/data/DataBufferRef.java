package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public class DataBufferRef {
    protected final DataHolder mDataHolder;
    protected int mDataRow;
    private int zalm;

    public DataBufferRef(DataHolder dataHolder, int i) {
        this.mDataHolder = (DataHolder) Preconditions.checkNotNull(dataHolder);
        zag(i);
    }

    protected int getDataRow() {
        return this.mDataRow;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zag(int i) {
        Preconditions.checkState(i >= 0 && i < this.mDataHolder.getCount());
        this.mDataRow = i;
        this.zalm = this.mDataHolder.getWindowIndex(this.mDataRow);
    }

    public boolean isDataValid() {
        return !this.mDataHolder.isClosed();
    }

    public boolean hasColumn(String str) {
        return this.mDataHolder.hasColumn(str);
    }

    protected long getLong(String str) {
        return this.mDataHolder.getLong(str, this.mDataRow, this.zalm);
    }

    protected int getInteger(String str) {
        return this.mDataHolder.getInteger(str, this.mDataRow, this.zalm);
    }

    protected boolean getBoolean(String str) {
        return this.mDataHolder.getBoolean(str, this.mDataRow, this.zalm);
    }

    protected String getString(String str) {
        return this.mDataHolder.getString(str, this.mDataRow, this.zalm);
    }

    protected float getFloat(String str) {
        return this.mDataHolder.zaa(str, this.mDataRow, this.zalm);
    }

    protected double getDouble(String str) {
        return this.mDataHolder.zab(str, this.mDataRow, this.zalm);
    }

    protected byte[] getByteArray(String str) {
        return this.mDataHolder.getByteArray(str, this.mDataRow, this.zalm);
    }

    protected Uri parseUri(String str) {
        String string = this.mDataHolder.getString(str, this.mDataRow, this.zalm);
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    protected void copyToBuffer(String str, CharArrayBuffer charArrayBuffer) {
        this.mDataHolder.zaa(str, this.mDataRow, this.zalm, charArrayBuffer);
    }

    protected boolean hasNull(String str) {
        return this.mDataHolder.hasNull(str, this.mDataRow, this.zalm);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.mDataRow), Integer.valueOf(this.zalm), this.mDataHolder);
    }

    public boolean equals(Object obj) {
        if (obj instanceof DataBufferRef) {
            DataBufferRef dataBufferRef = (DataBufferRef) obj;
            if (Objects.equal(Integer.valueOf(dataBufferRef.mDataRow), Integer.valueOf(this.mDataRow)) && Objects.equal(Integer.valueOf(dataBufferRef.zalm), Integer.valueOf(this.zalm)) && dataBufferRef.mDataHolder == this.mDataHolder) {
                return true;
            }
        }
        return false;
    }
}
