package com.appinstall.api;

/* loaded from: classes2.dex */
public final class Configuration {
    private boolean a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;

    /* loaded from: classes2.dex */
    public static class Builder {
        private boolean a;
        private String b;
        private String c;
        private boolean d;
        private boolean e;

        public Builder adEnabled(boolean z) {
            this.a = z;
            return this;
        }

        public Configuration build() {
            return new Configuration(this.a, this.b, this.c, this.d, this.e);
        }

        public Builder gaid(String str) {
            this.c = str;
            return this;
        }

        public Builder imeiDisabled() {
            this.d = true;
            return this;
        }

        public Builder macDisabled() {
            this.e = true;
            return this;
        }

        public Builder oaid(String str) {
            this.b = str;
            return this;
        }
    }

    private Configuration() {
    }

    private Configuration(boolean z, String str, String str2, boolean z2, boolean z3) {
        this.a = z;
        this.b = str;
        this.c = str2;
        this.d = z2;
        this.e = z3;
    }

    public static Configuration getDefault() {
        return new Configuration();
    }

    public String getGaid() {
        return this.c;
    }

    public String getOaid() {
        return this.b;
    }

    public boolean isAdEnabled() {
        return this.a;
    }

    public boolean isImeiDisabled() {
        return this.d;
    }

    public boolean isMacDisabled() {
        return this.e;
    }
}
