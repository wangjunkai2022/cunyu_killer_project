package com.tencent.liteav.beauty;

import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCVideoPreprocessor.java */
/* loaded from: classes5.dex */
public class a extends com.tencent.liteav.basic.module.a {
    private C0025a a;

    @Override // com.tencent.liteav.basic.module.a
    public void setID(String str) {
        super.setID(str);
        setStatusValue(3001, this.a.a());
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCVideoPreprocessor.java */
    /* renamed from: com.tencent.liteav.beauty.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    protected static class C0025a {
        private HashMap<String, String> a;

        public String a() {
            String str = "";
            for (String str2 : this.a.keySet()) {
                str = str + str2 + ":" + this.a.get(str2) + " ";
            }
            return "{" + str + "}";
        }
    }
}
