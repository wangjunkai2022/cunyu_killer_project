package com.jaredrummler.truetypeparser;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class TTFTableName {
    private final String name;
    public static final TTFTableName TABLE_DIRECTORY = new TTFTableName("tableDirectory");
    public static final TTFTableName NAME = new TTFTableName("name");
    public static final TTFTableName OS2 = new TTFTableName("OS/2");

    private TTFTableName(String str) {
        this.name = str;
    }

    public static TTFTableName getValue(String str) {
        if (str != null) {
            return new TTFTableName(str);
        }
        throw new IllegalArgumentException("A TrueType font table name must not be null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TTFTableName)) {
            return false;
        }
        return this.name.equals(((TTFTableName) obj).getName());
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return this.name;
    }

    public String getName() {
        return this.name;
    }
}
