package com.google.common.html;

import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class HtmlEscapers {
    private static final Escaper HTML_ESCAPER = Escapers.builder().addEscape('\"', "&quot;").addEscape('\'', "&#39;").addEscape('&', "&amp;").addEscape('<', "&lt;").addEscape('>', "&gt;").build();

    public static Escaper htmlEscaper() {
        return HTML_ESCAPER;
    }

    private HtmlEscapers() {
    }
}
