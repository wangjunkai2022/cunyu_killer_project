package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ContentBlocker {
    public ContentBlockerAction action;
    public ContentBlockerTrigger trigger;

    public ContentBlocker(ContentBlockerTrigger contentBlockerTrigger, ContentBlockerAction contentBlockerAction) {
        this.trigger = contentBlockerTrigger;
        this.action = contentBlockerAction;
    }
}
