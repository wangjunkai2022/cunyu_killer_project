package com.pichillilorenzo.flutter_inappwebview.InAppBrowser;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.AssetHelper;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewOptions;
import com.pichillilorenzo.flutter_inappwebview.R;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public class InAppBrowserActivity extends AppCompatActivity implements MethodChannel.MethodCallHandler {
    static final String LOG_TAG = "InAppBrowserActivity";
    private String _dialog_cancleText;
    private String _dialog_confirmText;
    private String _dialog_text;
    private String _dialog_title;
    public ActionBar actionBar;
    public MethodChannel channel;
    public Map<String, String> closeButtonOptions;
    public String fromActivity;
    public Map<String, String> headers;
    public LinearLayout ll_close;
    public Menu menu;
    public InAppBrowserOptions options;
    public ProgressBar progressBar;
    public SearchView searchView;
    private Dialog sweetAlertDialog;
    public String uuid;
    public InAppWebView webView;
    public Integer windowId;
    public boolean isHidden = false;
    public List<ActivityResultListener> activityResultListeners = new ArrayList();

    /* loaded from: classes2.dex */
    public interface ActivityResultListener {
        boolean onActivityResult(int i, int i2, Intent intent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Bundle extras = getIntent().getExtras();
            this.uuid = extras.getString("uuid");
            this.windowId = Integer.valueOf(extras.getInt("windowId"));
            BinaryMessenger binaryMessenger = Shared.messenger;
            this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappbrowser_" + this.uuid);
            this.channel.setMethodCallHandler(this);
            requestWindowFeature(1);
            setContentView(R.layout.activity_web_view);
            getWindow().addFlags(1024);
            this.webView = (InAppWebView) findViewById(R.id.webView);
            InAppWebView inAppWebView = this.webView;
            inAppWebView.windowId = this.windowId;
            inAppWebView.inAppBrowserActivity = this;
            inAppWebView.channel = this.channel;
            this.fromActivity = extras.getString("fromActivity");
            HashMap hashMap = (HashMap) extras.getSerializable(Constant.METHOD_OPTIONS);
            this.options = new InAppBrowserOptions();
            this.options.parse((Map<String, Object>) hashMap);
            InAppWebViewOptions inAppWebViewOptions = new InAppWebViewOptions();
            inAppWebViewOptions.parse((Map<String, Object>) hashMap);
            InAppWebView inAppWebView2 = this.webView;
            inAppWebView2.options = inAppWebViewOptions;
            inAppWebView2.contextMenu = (HashMap) extras.getSerializable("contextMenu");
            this.actionBar = getSupportActionBar();
            prepareView();
            if (this.windowId.intValue() != -1) {
                Message message = InAppWebViewChromeClient.windowWebViewMessages.get(this.windowId);
                if (message != null) {
                    ((WebView.WebViewTransport) message.obj).setWebView(this.webView);
                    message.sendToTarget();
                }
            } else if (!Boolean.valueOf(extras.getBoolean("isData")).booleanValue()) {
                this.headers = (HashMap) extras.getSerializable("headers");
                this.closeButtonOptions = (HashMap) extras.getSerializable("closeButtonOptions");
                this.webView.loadUrl(extras.getString(ImagesContract.URL), this.headers);
                updateCloseButton();
            } else {
                String string = extras.getString("data");
                String string2 = extras.getString("mimeType");
                String string3 = extras.getString("encoding");
                this.webView.loadDataWithBaseURL(extras.getString("baseUrl"), string, string2, string3, extras.getString("historyUrl"));
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put("uuid", this.uuid);
            this.channel.invokeMethod("onBrowserCreated", hashMap2);
            AndroidBug5497Workaround.assistActivity(this);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1787354268:
                if (str.equals("pauseTimers")) {
                    c = '&';
                    break;
                }
                c = 65535;
                break;
            case -1773179062:
                if (str.equals("getContentHeight")) {
                    c = ')';
                    break;
                }
                c = 65535;
                break;
            case -1624396757:
                if (str.equals("saveWebArchive")) {
                    c = '1';
                    break;
                }
                c = 65535;
                break;
            case -1331417355:
                if (str.equals("getScrollX")) {
                    c = '8';
                    break;
                }
                c = 65535;
                break;
            case -1331417354:
                if (str.equals("getScrollY")) {
                    c = '9';
                    break;
                }
                c = 65535;
                break;
            case -1309347773:
                if (str.equals("canGoBackOrForward")) {
                    c = 20;
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
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1067273523:
                if (str.equals("canGoForward")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -995752566:
                if (str.equals("pageUp")) {
                    c = '0';
                    break;
                }
                c = 65535;
                break;
            case -948122918:
                if (str.equals("stopLoading")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case -934641255:
                if (str.equals("reload")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -934426579:
                if (str.equals("resume")) {
                    c = '%';
                    break;
                }
                c = 65535;
                break;
            case -759238347:
                if (str.equals("clearCache")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case -756050293:
                if (str.equals("clearFocus")) {
                    c = '4';
                    break;
                }
                c = 65535;
                break;
            case -696286326:
                if (str.equals("zoomBy")) {
                    c = '*';
                    break;
                }
                c = 65535;
                break;
            case -696286120:
                if (str.equals("zoomIn")) {
                    c = '2';
                    break;
                }
                c = 65535;
                break;
            case -679382964:
                if (str.equals("findNext")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case -678975813:
                if (str.equals("printCurrentPage")) {
                    c = '(';
                    break;
                }
                c = 65535;
                break;
            case -543453324:
                if (str.equals("isHidden")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case -402165756:
                if (str.equals("scrollBy")) {
                    c = '#';
                    break;
                }
                c = 65535;
                break;
            case -402165208:
                if (str.equals("scrollTo")) {
                    c = '\"';
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
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -317054497:
                if (str.equals("canGoBack")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case -243128142:
                if (str.equals("isLoading")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -212614552:
                if (str.equals("getOptions")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case -127960866:
                if (str.equals("getSelectedText")) {
                    c = '-';
                    break;
                }
                c = 65535;
                break;
            case -110027141:
                if (str.equals("zoomOut")) {
                    c = '3';
                    break;
                }
                c = 65535;
                break;
            case -53272641:
                if (str.equals("injectCSSCode")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -32598479:
                if (str.equals("getCopyBackForwardList")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case -17750794:
                if (str.equals("startSafeBrowsing")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 3202370:
                if (str.equals("hide")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 3529469:
                if (str.equals("show")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 94756344:
                if (str.equals("close")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c = '$';
                    break;
                }
                c = 65535;
                break;
            case 194959693:
                if (str.equals("takeScreenshot")) {
                    c = 24;
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
                    c = FilenameUtils.EXTENSION_SEPARATOR;
                    break;
                }
                c = 65535;
                break;
            case 740366903:
                if (str.equals("injectCSSFileFromUrl")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 817048102:
                if (str.equals("clearMatches")) {
                    c = '!';
                    break;
                }
                c = 65535;
                break;
            case 858987473:
                if (str.equals("pageDown")) {
                    c = IOUtils.DIR_SEPARATOR_UNIX;
                    break;
                }
                c = 65535;
                break;
            case 1042858233:
                if (str.equals("clearSslPreferences")) {
                    c = 30;
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
                    c = '+';
                    break;
                }
                c = 65535;
                break;
            case 1246613238:
                if (str.equals("requestFocusNodeHref")) {
                    c = '6';
                    break;
                }
                c = 65535;
                break;
            case 1312131169:
                if (str.equals("getCertificate")) {
                    c = ':';
                    break;
                }
                c = 65535;
                break;
            case 1520566363:
                if (str.equals("resumeTimers")) {
                    c = '\'';
                    break;
                }
                c = 65535;
                break;
            case 1570263432:
                if (str.equals("setCloseButton")) {
                    c = ';';
                    break;
                }
                c = 65535;
                break;
            case 1724190684:
                if (str.equals("setOptions")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 1729408231:
                if (str.equals("requestImageRef")) {
                    c = '7';
                    break;
                }
                c = 65535;
                break;
            case 1779894764:
                if (str.equals("setContextMenu")) {
                    c = '5';
                    break;
                }
                c = 65535;
                break;
            case 1810715187:
                if (str.equals("goBackOrForward")) {
                    c = 19;
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
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case 1925083019:
                if (str.equals("injectJavascriptFileFromUrl")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1937913574:
                if (str.equals("evaluateJavascript")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1965076372:
                if (str.equals("getScale")) {
                    c = ',';
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
        switch (c) {
            case 0:
                result.success(getUrl());
                return;
            case 1:
                result.success(getWebViewTitle());
                return;
            case 2:
                result.success(getProgress());
                return;
            case 3:
                String str2 = (String) methodCall.argument(ImagesContract.URL);
                Map<String, String> map = (Map) methodCall.argument("headers");
                if (map != null) {
                    loadUrl(str2, map, result);
                    return;
                } else {
                    loadUrl(str2, result);
                    return;
                }
            case 4:
                postUrl((String) methodCall.argument(ImagesContract.URL), (byte[]) methodCall.argument("postData"), result);
                return;
            case 5:
                loadData((String) methodCall.argument("data"), (String) methodCall.argument("mimeType"), (String) methodCall.argument("encoding"), (String) methodCall.argument("baseUrl"), (String) methodCall.argument("historyUrl"), result);
                return;
            case 6:
                String str3 = (String) methodCall.argument(ImagesContract.URL);
                Map<String, String> map2 = (Map) methodCall.argument("headers");
                if (map2 != null) {
                    loadFile(str3, map2, result);
                    return;
                } else {
                    loadFile(str3, result);
                    return;
                }
            case 7:
                close(result);
                return;
            case '\b':
                evaluateJavascript((String) methodCall.argument("source"), result);
                return;
            case '\t':
                injectJavascriptFileFromUrl((String) methodCall.argument("urlFile"));
                result.success(true);
                return;
            case '\n':
                injectCSSCode((String) methodCall.argument("source"));
                result.success(true);
                return;
            case 11:
                injectCSSFileFromUrl((String) methodCall.argument("urlFile"));
                result.success(true);
                return;
            case '\f':
                show();
                result.success(true);
                return;
            case '\r':
                hide();
                result.success(true);
                return;
            case 14:
                reload();
                result.success(true);
                return;
            case 15:
                goBack();
                result.success(true);
                return;
            case 16:
                result.success(Boolean.valueOf(canGoBack()));
                return;
            case 17:
                goForward();
                result.success(true);
                return;
            case 18:
                result.success(Boolean.valueOf(canGoForward()));
                return;
            case 19:
                goBackOrForward(((Integer) methodCall.argument("steps")).intValue());
                result.success(true);
                return;
            case 20:
                result.success(Boolean.valueOf(canGoBackOrForward(((Integer) methodCall.argument("steps")).intValue())));
                return;
            case 21:
                stopLoading();
                result.success(true);
                return;
            case 22:
                result.success(Boolean.valueOf(isLoading()));
                return;
            case 23:
                result.success(Boolean.valueOf(this.isHidden));
                return;
            case 24:
                takeScreenshot(result);
                return;
            case 25:
                String str4 = (String) methodCall.argument("optionsType");
                if (((str4.hashCode() == 739596306 && str4.equals(InAppBrowserOptions.LOG_TAG)) ? (char) 0 : 65535) != 0) {
                    result.error(LOG_TAG, "Options " + str4 + " not available.", null);
                } else {
                    InAppBrowserOptions inAppBrowserOptions = new InAppBrowserOptions();
                    HashMap<String, Object> hashMap = (HashMap) methodCall.argument(Constant.METHOD_OPTIONS);
                    inAppBrowserOptions.parse((Map<String, Object>) hashMap);
                    setOptions(inAppBrowserOptions, hashMap);
                }
                result.success(true);
                return;
            case 26:
                result.success(getOptions());
                return;
            case 27:
                result.success(getCopyBackForwardList());
                return;
            case 28:
                startSafeBrowsing(result);
                return;
            case 29:
                clearCache();
                result.success(true);
                return;
            case 30:
                clearSslPreferences();
                result.success(true);
                return;
            case 31:
                findAllAsync((String) methodCall.argument("find"));
                result.success(true);
                return;
            case ' ':
                findNext((Boolean) methodCall.argument("forward"), result);
                return;
            case '!':
                clearMatches(result);
                return;
            case '\"':
                scrollTo((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                result.success(true);
                return;
            case '#':
                scrollBy((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                result.success(true);
                return;
            case '$':
                onPauseWebView();
                result.success(true);
                return;
            case '%':
                onResumeWebView();
                result.success(true);
                return;
            case '&':
                pauseTimers();
                result.success(true);
                return;
            case '\'':
                resumeTimers();
                result.success(true);
                return;
            case '(':
                if (Build.VERSION.SDK_INT >= 21) {
                    printCurrentPage();
                }
                result.success(true);
                return;
            case ')':
                result.success(getContentHeight());
                return;
            case '*':
                if (Build.VERSION.SDK_INT >= 21) {
                    zoomBy((Float) methodCall.argument("zoomFactor"));
                }
                result.success(true);
                return;
            case '+':
                result.success(getOriginalUrl());
                return;
            case ',':
                result.success(getScale());
                return;
            case '-':
                if (Build.VERSION.SDK_INT >= 19) {
                    getSelectedText(result);
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case '.':
                result.success(getHitTestResult());
                return;
            case '/':
                result.success(Boolean.valueOf(pageDown(((Boolean) methodCall.argument("bottom")).booleanValue())));
                return;
            case '0':
                result.success(Boolean.valueOf(pageUp(((Boolean) methodCall.argument("top")).booleanValue())));
                return;
            case '1':
                saveWebArchive((String) methodCall.argument("basename"), ((Boolean) methodCall.argument("autoname")).booleanValue(), result);
                return;
            case '2':
                result.success(Boolean.valueOf(zoomIn()));
                return;
            case '3':
                result.success(Boolean.valueOf(zoomOut()));
                return;
            case '4':
                clearFocus();
                result.success(true);
                return;
            case '5':
                setContextMenu((Map) methodCall.argument("contextMenu"));
                result.success(true);
                return;
            case '6':
                result.success(requestFocusNodeHref());
                return;
            case '7':
                result.success(requestImageRef());
                return;
            case '8':
                result.success(getScrollX());
                return;
            case '9':
                result.success(getScrollY());
                return;
            case ':':
                result.success(getCertificate());
                return;
            case ';':
                this.closeButtonOptions = (Map) methodCall.arguments;
                updateCloseButton();
                result.success(true);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    private void updateCloseButton() {
        String str;
        String str2;
        String str3;
        String str4;
        Map<String, String> map = this.closeButtonOptions;
        if (map != null && !map.isEmpty()) {
            String str5 = this.closeButtonOptions.get("title");
            String str6 = this.closeButtonOptions.get("text");
            String str7 = this.closeButtonOptions.get("confirmText");
            String str8 = this.closeButtonOptions.get("cancleText");
            String str9 = this.closeButtonOptions.get("isRotationRight");
            this.ll_close = (LinearLayout) findViewById(R.id.ll_close);
            this.ll_close.setVisibility(0);
            this.ll_close.setOnClickListener(new View.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InAppBrowserActivity.this.finish();
                }
            });
            if (str9 == "1") {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.ll_close.getLayoutParams();
                layoutParams.alignWithParent = true;
                layoutParams.removeRule(21);
                layoutParams.addRule(20);
                layoutParams.addRule(13);
                layoutParams.leftMargin = 10;
                this.ll_close.setLayoutParams(layoutParams);
            }
            DragViewUtil.drag(this.ll_close);
            if (str5 == null) {
                str = "提示";
            } else {
                str = str5.toString();
            }
            this._dialog_title = str;
            if (str6 == null) {
                str2 = "您是否关闭窗口？";
            } else {
                str2 = str6.toString();
            }
            this._dialog_text = str2;
            if (str7 == null) {
                str3 = "确认";
            } else {
                str3 = str7.toString();
            }
            this._dialog_confirmText = str3;
            if (str8 == null) {
                str4 = "取消";
            } else {
                str4 = str8.toString();
            }
            this._dialog_cancleText = str4;
            Dialog dialog = this.sweetAlertDialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (this._dialog_title == null) {
            super.finish();
            return;
        }
        this.sweetAlertDialog = new SweetAlertDialog(this, 0).setTitleText(this._dialog_title).setContentText(this._dialog_text).setConfirmText(this._dialog_confirmText).setCancelText(this._dialog_cancleText).setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.3
            @Override // cn.pedant.SweetAlert.SweetAlertDialog.OnSweetClickListener
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                InAppBrowserActivity.this.close(null);
                sweetAlertDialog.dismiss();
                InAppBrowserActivity.super.finish();
            }
        }).setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.2
            @Override // cn.pedant.SweetAlert.SweetAlertDialog.OnSweetClickListener
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                sweetAlertDialog.dismissWithAnimation();
            }
        });
        this.sweetAlertDialog.show();
    }

    private void prepareView() {
        forceOrientation(this.options.faceOrientation);
        this.webView.prepare();
        if (this.options.hidden.booleanValue()) {
            hide();
        } else {
            show();
        }
        this.progressBar = (ProgressBar) findViewById(R.id.progressBar);
        if (!this.options.progressBar.booleanValue()) {
            this.progressBar.setMax(0);
        } else {
            this.progressBar.setMax(100);
        }
        this.actionBar.setDisplayShowTitleEnabled(!this.options.hideTitleBar.booleanValue());
        this.actionBar.setDisplayHomeAsUpEnabled(!this.options.hideTitleBar.booleanValue());
        if (!this.options.toolbarTop.booleanValue()) {
            this.actionBar.hide();
        }
        if (this.options.toolbarTopBackgroundColor != null && !this.options.toolbarTopBackgroundColor.isEmpty()) {
            this.actionBar.setBackgroundDrawable(new ColorDrawable(Color.parseColor(this.options.toolbarTopBackgroundColor)));
        }
        if (this.options.toolbarTopFixedTitle != null && !this.options.toolbarTopFixedTitle.isEmpty()) {
            this.actionBar.setTitle(this.options.toolbarTopFixedTitle);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return false;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.menu = menu;
        getMenuInflater().inflate(R.menu.menu_main, this.menu);
        this.searchView = (SearchView) this.menu.findItem(R.id.menu_search).getActionView();
        this.searchView.setFocusable(true);
        if (this.options.hideUrlBar.booleanValue()) {
            this.menu.findItem(R.id.menu_search).setVisible(false);
        }
        this.searchView.setQuery(this.webView.getUrl(), false);
        if (this.options.toolbarTopFixedTitle.isEmpty()) {
            this.actionBar.setTitle(this.webView.getTitle());
        }
        this.searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.4
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return false;
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (str.isEmpty()) {
                    return false;
                }
                InAppBrowserActivity.this.webView.loadUrl(str);
                InAppBrowserActivity.this.searchView.setQuery("", false);
                InAppBrowserActivity.this.searchView.setIconified(true);
                return true;
            }
        });
        this.searchView.setOnCloseListener(new SearchView.OnCloseListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.5
            @Override // android.widget.SearchView.OnCloseListener
            public boolean onClose() {
                if (InAppBrowserActivity.this.searchView.getQuery().toString().isEmpty()) {
                    InAppBrowserActivity.this.searchView.setQuery(InAppBrowserActivity.this.webView.getUrl(), false);
                }
                return false;
            }
        });
        this.searchView.setOnQueryTextFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    InAppBrowserActivity.this.searchView.setQuery("", false);
                    InAppBrowserActivity.this.searchView.setIconified(true);
                }
            }
        });
        return true;
    }

    public String getUrl() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getUrl();
        }
        return null;
    }

    public String getWebViewTitle() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getTitle();
        }
        return null;
    }

    public Integer getProgress() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getProgress());
        }
        return null;
    }

    public void loadUrl(String str, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadUrl(str, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    public void loadUrl(String str, Map<String, String> map, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadUrl(str, map, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    public void postUrl(String str, byte[] bArr, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.postUrl(str, bArr, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    public void loadData(String str, String str2, String str3, String str4, String str5, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadData(str, str2, str3, str4, str5, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    public void loadFile(String str, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadFile(str, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    public void loadFile(String str, Map<String, String> map, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadFile(str, map, result);
        } else {
            result.error(LOG_TAG, "webView is null", null);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (canGoBack()) {
            goBack();
            return true;
        } else if (!this.options.closeOnCannotGoBack.booleanValue()) {
            return true;
        } else {
            close(null);
            return true;
        }
    }

    public void close(MethodChannel.Result result) {
        this.channel.invokeMethod("onExit", new HashMap());
        dispose();
        if (result != null) {
            result.success(true);
        }
    }

    public void reload() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.reload();
        }
    }

    public void goBack() {
        if (this.webView != null && canGoBack()) {
            this.webView.goBack();
        }
    }

    public boolean canGoBack() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoBack();
        }
        return false;
    }

    public void goForward() {
        if (this.webView != null && canGoForward()) {
            this.webView.goForward();
        }
    }

    public boolean canGoForward() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoForward();
        }
        return false;
    }

    public void goBackOrForward(int i) {
        if (this.webView != null && canGoBackOrForward(i)) {
            this.webView.goBackOrForward(i);
        }
    }

    public boolean canGoBackOrForward(int i) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoBackOrForward(i);
        }
        return false;
    }

    public void hide() {
        try {
            this.isHidden = true;
            Intent intent = new Intent(this, Class.forName(this.fromActivity));
            intent.setFlags(131072);
            startActivityIfNeeded(intent, 0);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            Log.d(LOG_TAG, e.getMessage());
        }
    }

    public void show() {
        this.isHidden = false;
        Intent intent = new Intent(this, InAppBrowserActivity.class);
        intent.setFlags(131072);
        startActivityIfNeeded(intent, 0);
    }

    public void stopLoading() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.stopLoading();
        }
    }

    public boolean isLoading() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.isLoading;
        }
        return false;
    }

    public void goBackButtonClicked(MenuItem menuItem) {
        goBack();
    }

    public void goForwardButtonClicked(MenuItem menuItem) {
        goForward();
    }

    public void shareButtonClicked(MenuItem menuItem) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", this.webView.getUrl());
        startActivity(Intent.createChooser(intent, "Share"));
    }

    public void reloadButtonClicked(MenuItem menuItem) {
        reload();
    }

    public void closeButtonClicked(MenuItem menuItem) {
        close(null);
    }

    public void takeScreenshot(MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.takeScreenshot(result);
        } else {
            result.success(null);
        }
    }

    public void setOptions(InAppBrowserOptions inAppBrowserOptions, HashMap<String, Object> hashMap) {
        InAppWebViewOptions inAppWebViewOptions = new InAppWebViewOptions();
        inAppWebViewOptions.parse((Map<String, Object>) hashMap);
        this.webView.setOptions(inAppWebViewOptions, hashMap);
        if (!(hashMap.get("hidden") == null || this.options.hidden == inAppBrowserOptions.hidden)) {
            if (inAppBrowserOptions.hidden.booleanValue()) {
                hide();
            } else {
                show();
            }
        }
        if (!(hashMap.get("progressBar") == null || this.options.progressBar == inAppBrowserOptions.progressBar || this.progressBar == null)) {
            if (inAppBrowserOptions.progressBar.booleanValue()) {
                this.progressBar.setMax(0);
            } else {
                this.progressBar.setMax(100);
            }
        }
        if (!(hashMap.get("hideTitleBar") == null || this.options.hideTitleBar == inAppBrowserOptions.hideTitleBar)) {
            this.actionBar.setDisplayShowTitleEnabled(!inAppBrowserOptions.hideTitleBar.booleanValue());
        }
        if (!(hashMap.get("toolbarTop") == null || this.options.toolbarTop == inAppBrowserOptions.toolbarTop)) {
            if (!inAppBrowserOptions.toolbarTop.booleanValue()) {
                this.actionBar.hide();
            } else {
                this.actionBar.show();
            }
        }
        if (!(hashMap.get("toolbarTopBackgroundColor") == null || this.options.toolbarTopBackgroundColor == inAppBrowserOptions.toolbarTopBackgroundColor || inAppBrowserOptions.toolbarTopBackgroundColor.isEmpty())) {
            this.actionBar.setBackgroundDrawable(new ColorDrawable(Color.parseColor(inAppBrowserOptions.toolbarTopBackgroundColor)));
        }
        if (!(hashMap.get("toolbarTopFixedTitle") == null || this.options.toolbarTopFixedTitle == inAppBrowserOptions.toolbarTopFixedTitle || inAppBrowserOptions.toolbarTopFixedTitle.isEmpty())) {
            this.actionBar.setTitle(inAppBrowserOptions.toolbarTopFixedTitle);
        }
        if (!(hashMap.get("hideUrlBar") == null || this.options.hideUrlBar == inAppBrowserOptions.hideUrlBar)) {
            if (inAppBrowserOptions.hideUrlBar.booleanValue()) {
                this.menu.findItem(R.id.menu_search).setVisible(false);
            } else {
                this.menu.findItem(R.id.menu_search).setVisible(true);
            }
        }
        this.options = inAppBrowserOptions;
    }

    public Map<String, Object> getOptions() {
        Map<String, Object> options = this.webView.getOptions();
        InAppBrowserOptions inAppBrowserOptions = this.options;
        if (inAppBrowserOptions == null || options == null) {
            return null;
        }
        Map<String, Object> realOptions = inAppBrowserOptions.getRealOptions(this);
        realOptions.putAll(options);
        return realOptions;
    }

    public void evaluateJavascript(String str, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.evaluateJavascript(str, result);
        } else {
            result.success("");
        }
    }

    public void injectJavascriptFileFromUrl(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectJavascriptFileFromUrl(str);
        }
    }

    public void injectCSSCode(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectCSSCode(str);
        }
    }

    public void injectCSSFileFromUrl(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectCSSFileFromUrl(str);
        }
    }

    public HashMap<String, Object> getCopyBackForwardList() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getCopyBackForwardList();
        }
        return null;
    }

    public void startSafeBrowsing(final MethodChannel.Result result) {
        if (this.webView == null || Build.VERSION.SDK_INT < 27 || !WebViewFeature.isFeatureSupported("START_SAFE_BROWSING")) {
            result.success(false);
        } else {
            WebViewCompat.startSafeBrowsing(this.webView.getContext(), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.7
                public void onReceiveValue(Boolean bool) {
                    result.success(bool);
                }
            });
        }
    }

    public void clearCache() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearAllCache();
        }
    }

    public void clearSslPreferences() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearSslPreferences();
        }
    }

    public void findAllAsync(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.findAllAsync(str);
        }
    }

    public void findNext(Boolean bool, MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.findNext(bool.booleanValue());
            result.success(true);
            return;
        }
        result.success(false);
    }

    public void clearMatches(MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearMatches();
            result.success(true);
            return;
        }
        result.success(false);
    }

    public void scrollTo(Integer num, Integer num2, Boolean bool) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.scrollTo(num, num2, bool);
        }
    }

    public void scrollBy(Integer num, Integer num2, Boolean bool) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.scrollBy(num, num2, bool);
        }
    }

    public void onPauseWebView() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.onPause();
        }
    }

    public void onResumeWebView() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.onResume();
        }
    }

    public void pauseTimers() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.pauseTimers();
        }
    }

    public void resumeTimers() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.resumeTimers();
        }
    }

    public void printCurrentPage() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.printCurrentPage();
        }
    }

    public Integer getContentHeight() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getContentHeight());
        }
        return null;
    }

    public void zoomBy(Float f) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.zoomBy(f.floatValue());
        }
    }

    public String getOriginalUrl() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getOriginalUrl();
        }
        return null;
    }

    public Float getScale() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getUpdatedScale();
        }
        return null;
    }

    public void getSelectedText(MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.getSelectedText(result);
        } else {
            result.success(null);
        }
    }

    public Map<String, Object> getHitTestResult() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView == null) {
            return null;
        }
        WebView.HitTestResult hitTestResult = inAppWebView.getHitTestResult();
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
        hashMap.put("extra", hitTestResult.getExtra());
        return hashMap;
    }

    public boolean pageDown(boolean z) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.pageDown(z);
        }
        return false;
    }

    public boolean pageUp(boolean z) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.pageUp(z);
        }
        return false;
    }

    public void saveWebArchive(String str, boolean z, final MethodChannel.Result result) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.saveWebArchive(str, z, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.8
                public void onReceiveValue(String str2) {
                    result.success(str2);
                }
            });
        } else {
            result.success(null);
        }
    }

    public boolean zoomIn() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.zoomIn();
        }
        return false;
    }

    public boolean zoomOut() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.zoomOut();
        }
        return false;
    }

    public void clearFocus() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearFocus();
        }
    }

    public void setContextMenu(Map<String, Object> map) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.contextMenu = map;
        }
    }

    public Map<String, Object> requestFocusNodeHref() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.requestFocusNodeHref();
        }
        return null;
    }

    public Map<String, Object> requestImageRef() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.requestImageRef();
        }
        return null;
    }

    public Integer getScrollX() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getScrollX());
        }
        return null;
    }

    public Integer getScrollY() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getScrollY());
        }
        return null;
    }

    public Map<String, Object> getCertificate() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getCertificateMap();
        }
        return null;
    }

    private void forceOrientation(String str) {
        if (str.equals("PortraitUp")) {
            setRequestedOrientation(1);
        } else if (str.equals("PortraitDown")) {
            setRequestedOrientation(9);
        } else if (str.equals("LandscapeLeft")) {
            setRequestedOrientation(8);
        } else if (str.equals("LandscapeRight")) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(-1);
        }
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
        this.activityResultListeners.clear();
        if (this.webView != null) {
            if (Shared.activityPluginBinding != null) {
                Shared.activityPluginBinding.removeActivityResultListener(this.webView.inAppWebViewChromeClient);
            }
            ViewGroup viewGroup = (ViewGroup) this.webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.webView);
            } else {
                Log.w("InAppWebview", "dispose: webView.getParent() 为空");
            }
            this.webView.setWebChromeClient(new WebChromeClient());
            this.webView.setWebViewClient(new WebViewClient() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity.9
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    InAppBrowserActivity.this.webView.dispose();
                    InAppBrowserActivity.this.webView.destroy();
                    InAppBrowserActivity.this.webView = null;
                }
            });
            this.webView.loadUrl("about:blank");
            super.finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        for (ActivityResultListener activityResultListener : this.activityResultListeners) {
            if (activityResultListener.onActivityResult(i, i2, intent)) {
                return;
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Dialog dialog = this.sweetAlertDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        dispose();
        super.onDestroy();
    }
}
