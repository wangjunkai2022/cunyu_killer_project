package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import com.pichillilorenzo.flutter_inappwebview.Util;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public class FlutterWebView implements PlatformView, MethodChannel.MethodCallHandler {
    static final String LOG_TAG = "IAWFlutterWebView";
    public final MethodChannel channel;
    public InAppWebView webView;

    public FlutterWebView(BinaryMessenger binaryMessenger, Context context, Object obj, HashMap<String, Object> hashMap, View view) {
        String urlAsset;
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappwebview_" + obj);
        this.channel.setMethodCallHandler(this);
        DisplayListenerProxy displayListenerProxy = new DisplayListenerProxy();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        displayListenerProxy.onPreWebViewInitialization(displayManager);
        String str = (String) hashMap.get("initialUrl");
        String str2 = (String) hashMap.get("initialFile");
        Map map = (Map) hashMap.get("initialData");
        Map map2 = (Map) hashMap.get("initialHeaders");
        Map map3 = (Map) hashMap.get("contextMenu");
        Integer num = (Integer) hashMap.get("windowId");
        InAppWebViewOptions inAppWebViewOptions = new InAppWebViewOptions();
        inAppWebViewOptions.parse((Map) hashMap.get("initialOptions"));
        if (Shared.activity == null) {
            Log.e(LOG_TAG, "\n\n\nERROR: Shared.activity is null!!!\n\nYou need to upgrade your Flutter project to use the new Java Embedding API:\n\n- Take a look at the \"IMPORTANT Note for Android\" section here: https://github.com/pichillilorenzo/flutter_inappwebview#important-note-for-android\n- See the official wiki here: https://github.com/flutter/flutter/wiki/Upgrading-pre-1.12-Android-projects\n\n\n");
        }
        this.webView = new InAppWebView(Shared.activity, this, obj, num, inAppWebViewOptions, map3, view);
        displayListenerProxy.onPostWebViewInitialization(displayManager);
        try {
            Class<? super Object> superclass = this.webView.getClass().getSuperclass();
            while (!superclass.getName().equals("android.view.View")) {
                superclass = superclass.getSuperclass();
            }
            Field declaredField = superclass.getDeclaredField("mContext");
            declaredField.setAccessible(true);
            declaredField.set(this.webView, context);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(LOG_TAG, "Cannot find mContext for this WebView");
        }
        this.webView.prepare();
        if (num != null) {
            Message message = InAppWebViewChromeClient.windowWebViewMessages.get(num);
            if (message != null) {
                ((WebView.WebViewTransport) message.obj).setWebView(this.webView);
                message.sendToTarget();
            }
        } else {
            if (str2 != null) {
                try {
                    urlAsset = Util.getUrlAsset(str2);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    Log.e(LOG_TAG, str2 + " asset file cannot be found!", e2);
                    return;
                }
            } else {
                urlAsset = str;
            }
            if (map != null) {
                String str3 = (String) map.get("data");
                String str4 = (String) map.get("mimeType");
                String str5 = (String) map.get("encoding");
                this.webView.loadDataWithBaseURL((String) map.get("baseUrl"), str3, str4, str5, (String) map.get("historyUrl"));
            } else {
                this.webView.loadUrl(urlAsset, map2);
            }
        }
        if (view == null && (obj instanceof String)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("uuid", obj);
            this.channel.invokeMethod("onHeadlessWebViewCreated", hashMap2);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this.webView;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1787354268:
                if (str.equals("pauseTimers")) {
                    c = '\"';
                    break;
                }
                c = 65535;
                break;
            case -1773179062:
                if (str.equals("getContentHeight")) {
                    c = '%';
                    break;
                }
                c = 65535;
                break;
            case -1624396757:
                if (str.equals("saveWebArchive")) {
                    c = '-';
                    break;
                }
                c = 65535;
                break;
            case -1331417355:
                if (str.equals("getScrollX")) {
                    c = '4';
                    break;
                }
                c = 65535;
                break;
            case -1331417354:
                if (str.equals("getScrollY")) {
                    c = '5';
                    break;
                }
                c = 65535;
                break;
            case -1309347773:
                if (str.equals("canGoBackOrForward")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1249348039:
                if (str.equals("getUrl")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1241591313:
                if (str.equals("goBack")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1067273523:
                if (str.equals("canGoForward")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -995752566:
                if (str.equals("pageUp")) {
                    c = ',';
                    break;
                }
                c = 65535;
                break;
            case -948122918:
                if (str.equals("stopLoading")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -934641255:
                if (str.equals("reload")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -934426579:
                if (str.equals("resume")) {
                    c = '!';
                    break;
                }
                c = 65535;
                break;
            case -759238347:
                if (str.equals("clearCache")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case -756050293:
                if (str.equals("clearFocus")) {
                    c = '0';
                    break;
                }
                c = 65535;
                break;
            case -696286326:
                if (str.equals("zoomBy")) {
                    c = '&';
                    break;
                }
                c = 65535;
                break;
            case -696286120:
                if (str.equals("zoomIn")) {
                    c = FilenameUtils.EXTENSION_SEPARATOR;
                    break;
                }
                c = 65535;
                break;
            case -679382964:
                if (str.equals("findNext")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case -678975813:
                if (str.equals("printCurrentPage")) {
                    c = '$';
                    break;
                }
                c = 65535;
                break;
            case -402165756:
                if (str.equals("scrollBy")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case -402165208:
                if (str.equals("scrollTo")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case -391221073:
                if (str.equals("postUrl")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -318289731:
                if (str.equals("goForward")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -317054497:
                if (str.equals("canGoBack")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -243128142:
                if (str.equals("isLoading")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case -212614552:
                if (str.equals("getOptions")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -127960866:
                if (str.equals("getSelectedText")) {
                    c = ')';
                    break;
                }
                c = 65535;
                break;
            case -110027141:
                if (str.equals("zoomOut")) {
                    c = IOUtils.DIR_SEPARATOR_UNIX;
                    break;
                }
                c = 65535;
                break;
            case -53272641:
                if (str.equals("injectCSSCode")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -32598479:
                if (str.equals("getCopyBackForwardList")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case -17750794:
                if (str.equals("startSafeBrowsing")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case 156768144:
                if (str.equals("setTransparent")) {
                    c = '7';
                    break;
                }
                c = 65535;
                break;
            case 194959693:
                if (str.equals("takeScreenshot")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 336631465:
                if (str.equals("loadUrl")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 492688268:
                if (str.equals("getHitTestResult")) {
                    c = '*';
                    break;
                }
                c = 65535;
                break;
            case 740366903:
                if (str.equals("injectCSSFileFromUrl")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 817048102:
                if (str.equals("clearMatches")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case 858987473:
                if (str.equals("pageDown")) {
                    c = '+';
                    break;
                }
                c = 65535;
                break;
            case 903120263:
                if (str.equals("clearHistory")) {
                    c = '8';
                    break;
                }
                c = 65535;
                break;
            case 1042858233:
                if (str.equals("clearSslPreferences")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 1076821923:
                if (str.equals("getProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1091267752:
                if (str.equals("getOriginalUrl")) {
                    c = '\'';
                    break;
                }
                c = 65535;
                break;
            case 1246613238:
                if (str.equals("requestFocusNodeHref")) {
                    c = '2';
                    break;
                }
                c = 65535;
                break;
            case 1312131169:
                if (str.equals("getCertificate")) {
                    c = '6';
                    break;
                }
                c = 65535;
                break;
            case 1520566363:
                if (str.equals("resumeTimers")) {
                    c = '#';
                    break;
                }
                c = 65535;
                break;
            case 1724190684:
                if (str.equals("setOptions")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1729408231:
                if (str.equals("requestImageRef")) {
                    c = '3';
                    break;
                }
                c = 65535;
                break;
            case 1779894764:
                if (str.equals("setContextMenu")) {
                    c = '1';
                    break;
                }
                c = 65535;
                break;
            case 1810715187:
                if (str.equals("goBackOrForward")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1845118384:
                if (str.equals("loadData")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1845185410:
                if (str.equals("loadFile")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1916929588:
                if (str.equals("findAllAsync")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 1925083019:
                if (str.equals("injectJavascriptFileFromUrl")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1937913574:
                if (str.equals("evaluateJavascript")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1965076372:
                if (str.equals("getScale")) {
                    c = '(';
                    break;
                }
                c = 65535;
                break;
            case 1966196898:
                if (str.equals("getTitle")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        Object obj = null;
        switch (c) {
            case 0:
                InAppWebView inAppWebView = this.webView;
                if (inAppWebView != null) {
                    obj = inAppWebView.getUrl();
                }
                result.success(obj);
                return;
            case 1:
                InAppWebView inAppWebView2 = this.webView;
                if (inAppWebView2 != null) {
                    obj = inAppWebView2.getTitle();
                }
                result.success(obj);
                return;
            case 2:
                InAppWebView inAppWebView3 = this.webView;
                if (inAppWebView3 != null) {
                    obj = Integer.valueOf(inAppWebView3.getProgress());
                }
                result.success(obj);
                return;
            case 3:
                InAppWebView inAppWebView4 = this.webView;
                if (inAppWebView4 != null) {
                    inAppWebView4.loadUrl((String) methodCall.argument(ImagesContract.URL), (Map) methodCall.argument("headers"), result);
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case 4:
                InAppWebView inAppWebView5 = this.webView;
                if (inAppWebView5 != null) {
                    inAppWebView5.postUrl((String) methodCall.argument(ImagesContract.URL), (byte[]) methodCall.argument("postData"), result);
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case 5:
                String str2 = (String) methodCall.argument("data");
                String str3 = (String) methodCall.argument("mimeType");
                String str4 = (String) methodCall.argument("encoding");
                String str5 = (String) methodCall.argument("baseUrl");
                String str6 = (String) methodCall.argument("historyUrl");
                InAppWebView inAppWebView6 = this.webView;
                if (inAppWebView6 != null) {
                    inAppWebView6.loadData(str2, str3, str4, str5, str6, result);
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case 6:
                InAppWebView inAppWebView7 = this.webView;
                if (inAppWebView7 != null) {
                    inAppWebView7.loadFile((String) methodCall.argument(ImagesContract.URL), (Map) methodCall.argument("headers"), result);
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case 7:
                if (this.webView != null) {
                    this.webView.evaluateJavascript((String) methodCall.argument("source"), result);
                    return;
                } else {
                    result.success("");
                    return;
                }
            case '\b':
                if (this.webView != null) {
                    this.webView.injectJavascriptFileFromUrl((String) methodCall.argument("urlFile"));
                }
                result.success(true);
                return;
            case '\t':
                if (this.webView != null) {
                    this.webView.injectCSSCode((String) methodCall.argument("source"));
                }
                result.success(true);
                return;
            case '\n':
                if (this.webView != null) {
                    this.webView.injectCSSFileFromUrl((String) methodCall.argument("urlFile"));
                }
                result.success(true);
                return;
            case 11:
                InAppWebView inAppWebView8 = this.webView;
                if (inAppWebView8 != null) {
                    inAppWebView8.reload();
                }
                result.success(true);
                return;
            case '\f':
                InAppWebView inAppWebView9 = this.webView;
                if (inAppWebView9 != null) {
                    inAppWebView9.goBack();
                }
                result.success(true);
                return;
            case '\r':
                InAppWebView inAppWebView10 = this.webView;
                result.success(Boolean.valueOf(inAppWebView10 != null && inAppWebView10.canGoBack()));
                return;
            case 14:
                InAppWebView inAppWebView11 = this.webView;
                if (inAppWebView11 != null) {
                    inAppWebView11.goForward();
                }
                result.success(true);
                return;
            case 15:
                InAppWebView inAppWebView12 = this.webView;
                result.success(Boolean.valueOf(inAppWebView12 != null && inAppWebView12.canGoForward()));
                return;
            case 16:
                InAppWebView inAppWebView13 = this.webView;
                if (inAppWebView13 != null) {
                    inAppWebView13.goBackOrForward(((Integer) methodCall.argument("steps")).intValue());
                }
                result.success(true);
                return;
            case 17:
                InAppWebView inAppWebView14 = this.webView;
                result.success(Boolean.valueOf(inAppWebView14 != null && inAppWebView14.canGoBackOrForward(((Integer) methodCall.argument("steps")).intValue())));
                return;
            case 18:
                InAppWebView inAppWebView15 = this.webView;
                if (inAppWebView15 != null) {
                    inAppWebView15.stopLoading();
                }
                result.success(true);
                return;
            case 19:
                InAppWebView inAppWebView16 = this.webView;
                result.success(Boolean.valueOf(inAppWebView16 != null && inAppWebView16.isLoading()));
                return;
            case 20:
                InAppWebView inAppWebView17 = this.webView;
                if (inAppWebView17 != null) {
                    inAppWebView17.takeScreenshot(result);
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case 21:
                if (this.webView != null) {
                    InAppWebViewOptions inAppWebViewOptions = new InAppWebViewOptions();
                    HashMap<String, Object> hashMap = (HashMap) methodCall.argument(Constant.METHOD_OPTIONS);
                    inAppWebViewOptions.parse((Map<String, Object>) hashMap);
                    this.webView.setOptions(inAppWebViewOptions, hashMap);
                }
                result.success(true);
                return;
            case 22:
                InAppWebView inAppWebView18 = this.webView;
                if (inAppWebView18 != null) {
                    obj = inAppWebView18.getOptions();
                }
                result.success(obj);
                return;
            case 23:
                InAppWebView inAppWebView19 = this.webView;
                if (inAppWebView19 != null) {
                    obj = inAppWebView19.getCopyBackForwardList();
                }
                result.success(obj);
                return;
            case 24:
                if (this.webView == null || Build.VERSION.SDK_INT < 27 || !WebViewFeature.isFeatureSupported("START_SAFE_BROWSING")) {
                    result.success(false);
                    return;
                } else {
                    WebViewCompat.startSafeBrowsing(this.webView.getContext(), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.FlutterWebView.1
                        public void onReceiveValue(Boolean bool) {
                            result.success(bool);
                        }
                    });
                    return;
                }
            case 25:
                InAppWebView inAppWebView20 = this.webView;
                if (inAppWebView20 != null) {
                    inAppWebView20.clearAllCache();
                }
                result.success(true);
                return;
            case 26:
                InAppWebView inAppWebView21 = this.webView;
                if (inAppWebView21 != null) {
                    inAppWebView21.clearSslPreferences();
                }
                result.success(true);
                return;
            case 27:
                if (this.webView != null) {
                    this.webView.findAllAsync((String) methodCall.argument("find"));
                }
                result.success(true);
                return;
            case 28:
                if (this.webView != null) {
                    this.webView.findNext(((Boolean) methodCall.argument("forward")).booleanValue());
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case 29:
                InAppWebView inAppWebView22 = this.webView;
                if (inAppWebView22 != null) {
                    inAppWebView22.clearMatches();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case 30:
                if (this.webView != null) {
                    this.webView.scrollTo((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                }
                result.success(true);
                return;
            case 31:
                if (this.webView != null) {
                    this.webView.scrollBy((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                }
                result.success(true);
                return;
            case ' ':
                InAppWebView inAppWebView23 = this.webView;
                if (inAppWebView23 != null) {
                    inAppWebView23.onPause();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '!':
                InAppWebView inAppWebView24 = this.webView;
                if (inAppWebView24 != null) {
                    inAppWebView24.onResume();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '\"':
                InAppWebView inAppWebView25 = this.webView;
                if (inAppWebView25 != null) {
                    inAppWebView25.pauseTimers();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '#':
                InAppWebView inAppWebView26 = this.webView;
                if (inAppWebView26 != null) {
                    inAppWebView26.resumeTimers();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '$':
                if (this.webView == null || Build.VERSION.SDK_INT < 21) {
                    result.success(false);
                    return;
                }
                this.webView.printCurrentPage();
                result.success(true);
                return;
            case '%':
                InAppWebView inAppWebView27 = this.webView;
                if (inAppWebView27 != null) {
                    obj = Integer.valueOf(inAppWebView27.getContentHeight());
                }
                result.success(obj);
                return;
            case '&':
                if (this.webView == null || Build.VERSION.SDK_INT < 21) {
                    result.success(false);
                    return;
                }
                this.webView.zoomBy((float) ((Double) methodCall.argument("zoomFactor")).doubleValue());
                result.success(true);
                return;
            case '\'':
                InAppWebView inAppWebView28 = this.webView;
                if (inAppWebView28 != null) {
                    obj = inAppWebView28.getOriginalUrl();
                }
                result.success(obj);
                return;
            case '(':
                InAppWebView inAppWebView29 = this.webView;
                if (inAppWebView29 != null) {
                    obj = inAppWebView29.getUpdatedScale();
                }
                result.success(obj);
                return;
            case ')':
                if (this.webView == null || Build.VERSION.SDK_INT < 19) {
                    result.success(null);
                    return;
                } else {
                    this.webView.getSelectedText(result);
                    return;
                }
            case '*':
                InAppWebView inAppWebView30 = this.webView;
                if (inAppWebView30 != null) {
                    WebView.HitTestResult hitTestResult = inAppWebView30.getHitTestResult();
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("type", Integer.valueOf(hitTestResult.getType()));
                    hashMap2.put("extra", hitTestResult.getExtra());
                    result.success(hashMap2);
                    return;
                }
                result.success(null);
                return;
            case '+':
                if (this.webView != null) {
                    result.success(Boolean.valueOf(this.webView.pageDown(((Boolean) methodCall.argument("bottom")).booleanValue())));
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case ',':
                if (this.webView != null) {
                    result.success(Boolean.valueOf(this.webView.pageUp(((Boolean) methodCall.argument("top")).booleanValue())));
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case '-':
                if (this.webView != null) {
                    this.webView.saveWebArchive((String) methodCall.argument("basename"), ((Boolean) methodCall.argument("autoname")).booleanValue(), new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.FlutterWebView.2
                        public void onReceiveValue(String str7) {
                            result.success(str7);
                        }
                    });
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '.':
                InAppWebView inAppWebView31 = this.webView;
                if (inAppWebView31 != null) {
                    result.success(Boolean.valueOf(inAppWebView31.zoomIn()));
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case '/':
                InAppWebView inAppWebView32 = this.webView;
                if (inAppWebView32 != null) {
                    result.success(Boolean.valueOf(inAppWebView32.zoomOut()));
                    return;
                } else {
                    result.success(false);
                    return;
                }
            case '0':
                InAppWebView inAppWebView33 = this.webView;
                if (inAppWebView33 != null) {
                    inAppWebView33.clearFocus();
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '1':
                if (this.webView != null) {
                    this.webView.contextMenu = (Map) methodCall.argument("contextMenu");
                    result.success(true);
                    return;
                }
                result.success(false);
                return;
            case '2':
                InAppWebView inAppWebView34 = this.webView;
                if (inAppWebView34 != null) {
                    result.success(inAppWebView34.requestFocusNodeHref());
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '3':
                InAppWebView inAppWebView35 = this.webView;
                if (inAppWebView35 != null) {
                    result.success(inAppWebView35.requestImageRef());
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '4':
                InAppWebView inAppWebView36 = this.webView;
                if (inAppWebView36 != null) {
                    result.success(Integer.valueOf(inAppWebView36.getScrollX()));
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '5':
                InAppWebView inAppWebView37 = this.webView;
                if (inAppWebView37 != null) {
                    result.success(Integer.valueOf(inAppWebView37.getScrollY()));
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '6':
                InAppWebView inAppWebView38 = this.webView;
                if (inAppWebView38 != null) {
                    result.success(inAppWebView38.getCertificateMap());
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '7':
                InAppWebView inAppWebView39 = this.webView;
                if (inAppWebView39 != null) {
                    inAppWebView39.setBackgroundColor(0);
                    if (this.webView.getBackground() != null) {
                        this.webView.getBackground().setAlpha(0);
                        return;
                    }
                    return;
                }
                result.success(null);
                return;
            case '8':
                InAppWebView inAppWebView40 = this.webView;
                if (inAppWebView40 == null) {
                    result.success(false);
                    break;
                } else {
                    inAppWebView40.clearHistory();
                    result.success(true);
                    break;
                }
        }
        result.notImplemented();
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        this.channel.setMethodCallHandler(null);
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.inAppWebViewChromeClient.dispose();
            this.webView.inAppWebViewClient.dispose();
            this.webView.javaScriptBridgeInterface.dispose();
            this.webView.setWebChromeClient(new WebChromeClient());
            this.webView.setWebViewClient(new WebViewClient() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.FlutterWebView.3
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    FlutterWebView.this.webView.dispose();
                    FlutterWebView.this.webView.destroy();
                    FlutterWebView.this.webView = null;
                }
            });
            this.webView.getSettings().setJavaScriptEnabled(false);
            this.webView.loadUrl("about:blank");
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onInputConnectionLocked() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && inAppWebView.inAppBrowserActivity == null) {
            this.webView.lockInputConnection();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onInputConnectionUnlocked() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && inAppWebView.inAppBrowserActivity == null) {
            this.webView.unlockInputConnection();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewAttached(View view) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.setContainerView(view);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewDetached() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.setContainerView(null);
        }
    }
}
