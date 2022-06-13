package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

/* loaded from: classes2.dex */
public class ContentBlocker {
    public ContentBlockerAction action;
    public ContentBlockerTrigger trigger;

    public ContentBlocker(ContentBlockerTrigger contentBlockerTrigger, ContentBlockerAction contentBlockerAction) {
        this.trigger = contentBlockerTrigger;
        this.action = contentBlockerAction;
    }
}
