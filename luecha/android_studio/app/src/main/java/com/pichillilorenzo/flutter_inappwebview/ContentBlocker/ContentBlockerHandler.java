package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

import android.util.Log;
import android.webkit.WebResourceResponse;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview.Util;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes5.dex */
public class ContentBlockerHandler {
    protected static final String LOG_TAG = "ContentBlockerHandler";
    protected List<ContentBlocker> ruleList;

    public ContentBlockerHandler() {
        this.ruleList = new ArrayList();
    }

    public ContentBlockerHandler(List<ContentBlocker> list) {
        this.ruleList = new ArrayList();
        this.ruleList = list;
    }

    public List<ContentBlocker> getRuleList() {
        return this.ruleList;
    }

    public void setRuleList(List<ContentBlocker> list) {
        this.ruleList = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f7  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public android.webkit.WebResourceResponse checkUrl(final com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView r19, java.lang.String r20, com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerTriggerResourceType r21) throws java.net.URISyntaxException, java.lang.InterruptedException, java.net.MalformedURLException {
        /*
        // Method dump skipped, instructions count: 739
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerHandler.checkUrl(com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView, java.lang.String, com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerTriggerResourceType):android.webkit.WebResourceResponse");
    }

    /* renamed from: com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerHandler$3 */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$pichillilorenzo$flutter_inappwebview$ContentBlocker$ContentBlockerActionType = new int[ContentBlockerActionType.values().length];

        static {
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$ContentBlocker$ContentBlockerActionType[ContentBlockerActionType.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$ContentBlocker$ContentBlockerActionType[ContentBlockerActionType.CSS_DISPLAY_NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$ContentBlocker$ContentBlockerActionType[ContentBlockerActionType.MAKE_HTTPS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebResourceResponse checkUrl(InAppWebView inAppWebView, String str) throws URISyntaxException, InterruptedException, MalformedURLException {
        return checkUrl(inAppWebView, str, getResourceTypeFromUrl(str));
    }

    public WebResourceResponse checkUrl(InAppWebView inAppWebView, String str, String str2) throws URISyntaxException, InterruptedException, MalformedURLException {
        return checkUrl(inAppWebView, str, getResourceTypeFromContentType(str2));
    }

    public ContentBlockerTriggerResourceType getResourceTypeFromUrl(String str) {
        ContentBlockerTriggerResourceType contentBlockerTriggerResourceType = ContentBlockerTriggerResourceType.RAW;
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            return contentBlockerTriggerResourceType;
        }
        Response response = null;
        try {
            response = Util.getUnsafeOkHttpClient().newCall(new Request.Builder().url(str).head().build()).execute();
            if (response.header("content-type") == null) {
                return contentBlockerTriggerResourceType;
            }
            String[] split = response.header("content-type").split(";");
            String trim = split[0].trim();
            if (split.length > 1 && split[1].contains("charset=")) {
                split[1].replace("charset=", "").trim();
            }
            response.body().close();
            response.close();
            return getResourceTypeFromContentType(trim);
        } catch (Exception e) {
            if (response != null) {
                response.body().close();
                response.close();
            }
            e.printStackTrace();
            Log.e("ContentBlockerHandler", e.getMessage());
            return contentBlockerTriggerResourceType;
        }
    }

    public ContentBlockerTriggerResourceType getResourceTypeFromContentType(String str) {
        ContentBlockerTriggerResourceType contentBlockerTriggerResourceType = ContentBlockerTriggerResourceType.RAW;
        if (str.equals("text/css")) {
            return ContentBlockerTriggerResourceType.STYLE_SHEET;
        }
        if (str.equals("image/svg+xml")) {
            return ContentBlockerTriggerResourceType.SVG_DOCUMENT;
        }
        if (str.startsWith("image/")) {
            return ContentBlockerTriggerResourceType.IMAGE;
        }
        if (str.startsWith("font/")) {
            return ContentBlockerTriggerResourceType.FONT;
        }
        if (str.startsWith("audio/") || str.startsWith("video/") || str.equals("application/ogg")) {
            return ContentBlockerTriggerResourceType.MEDIA;
        }
        if (str.endsWith("javascript")) {
            return ContentBlockerTriggerResourceType.SCRIPT;
        }
        if (str.startsWith("text/")) {
            return ContentBlockerTriggerResourceType.DOCUMENT;
        }
        return contentBlockerTriggerResourceType;
    }
}
