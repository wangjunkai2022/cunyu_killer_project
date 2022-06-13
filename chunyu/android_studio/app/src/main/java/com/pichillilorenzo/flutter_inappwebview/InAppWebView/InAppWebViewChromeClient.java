package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Message;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.MimeTypeMap;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.google.android.gms.common.internal.ImagesContract;
import com.o7f6ce52e9da.x03152b4c22z.R;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import com.pichillilorenzo.flutter_inappwebview.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class InAppWebViewChromeClient extends WebChromeClient implements PluginRegistry.ActivityResultListener, InAppBrowserActivity.ActivityResultListener {
    protected static final int FULLSCREEN_SYSTEM_UI_VISIBILITY = 1798;
    protected static final int FULLSCREEN_SYSTEM_UI_VISIBILITY_KITKAT = 7942;
    protected static final String LOG_TAG = "IABWebChromeClient";
    private static final int PICKER = 1;
    private static final int PICKER_LEGACY = 3;
    private static final String fileProviderAuthorityExtension = "flutter_inappwebview.fileprovider";
    private static Uri outputFileUri;
    final String DEFAULT_MIME_TYPES = "*/*";
    boolean _firstChoose = true;
    public MethodChannel channel;
    private FlutterWebView flutterWebView;
    private InAppBrowserActivity inAppBrowserActivity;
    ViewGroup ll_close_parent;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private int mOriginalOrientation;
    private int mOriginalSystemUiVisibility;
    public static Map<Integer, Message> windowWebViewMessages = new HashMap();
    private static int windowAutoincrementId = 0;
    protected static final FrameLayout.LayoutParams FULLSCREEN_LAYOUT_PARAMS = new FrameLayout.LayoutParams(-1, -1, 17);

    public InAppWebViewChromeClient(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.inAppBrowserActivity = (InAppBrowserActivity) obj;
            this.inAppBrowserActivity.activityResultListeners.add(this);
        } else if (obj instanceof FlutterWebView) {
            this.flutterWebView = (FlutterWebView) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        this.channel = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.flutterWebView.channel;
        if (Shared.registrar != null) {
            Shared.registrar.addActivityResultListener(this);
        } else {
            Shared.activityPluginBinding.addActivityResultListener(this);
        }
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        if (this.mCustomView == null) {
            return null;
        }
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        return BitmapFactory.decodeResource(activity.getApplicationContext().getResources(), R.animator.WnpxfTcUB);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(final WebView webView, String str, final String str2, final JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str2);
        hashMap.put("iosIsMainFrame", null);
        this.channel.invokeMethod("onJsAlert", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.1
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                String str3;
                String str4;
                if (obj != null) {
                    Map map = (Map) obj;
                    String str5 = (String) map.get(Constant.PARAM_ERROR_MESSAGE);
                    String str6 = (String) map.get("confirmButtonTitle");
                    Boolean bool = (Boolean) map.get("handledByClient");
                    if (bool == null || !bool.booleanValue()) {
                        str4 = str5;
                        str3 = str6;
                    } else {
                        Integer num = (Integer) map.get("action");
                        if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return;
                        } else {
                            jsResult.confirm();
                            return;
                        }
                    }
                } else {
                    str4 = null;
                    str3 = null;
                }
                InAppWebViewChromeClient.this.createAlertDialog(webView, str2, jsResult, str4, str3);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str3, String str4, Object obj) {
                Log.e(InAppWebViewChromeClient.LOG_TAG, str3 + ", " + str4);
                jsResult.cancel();
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewChromeClient.this.createAlertDialog(webView, str2, jsResult, null, null);
            }
        });
        return true;
    }

    public void createAlertDialog(WebView webView, String str, final JsResult jsResult, String str2, String str3) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        AnonymousClass2 r3 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
                dialogInterface.dismiss();
            }
        };
        Context context = this.inAppBrowserActivity;
        if (context == null) {
            context = Shared.activity;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, com.pichillilorenzo.flutter_inappwebview.R.style.Theme_AppCompat_Dialog_Alert);
        builder.setMessage(str);
        if (str3 == null || str3.isEmpty()) {
            builder.setPositiveButton(17039370, r3);
        } else {
            builder.setPositiveButton(str3, r3);
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(final WebView webView, String str, final String str2, final JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str2);
        hashMap.put("iosIsMainFrame", null);
        this.channel.invokeMethod("onJsConfirm", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.4
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                String str3;
                String str4;
                String str5;
                if (obj != null) {
                    Map map = (Map) obj;
                    String str6 = (String) map.get(Constant.PARAM_ERROR_MESSAGE);
                    String str7 = (String) map.get("confirmButtonTitle");
                    String str8 = (String) map.get("cancelButtonTitle");
                    Boolean bool = (Boolean) map.get("handledByClient");
                    if (bool == null || !bool.booleanValue()) {
                        str5 = str6;
                        str4 = str7;
                        str3 = str8;
                    } else {
                        Integer num = (Integer) map.get("action");
                        if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return;
                        } else {
                            jsResult.confirm();
                            return;
                        }
                    }
                } else {
                    str5 = null;
                    str4 = null;
                    str3 = null;
                }
                InAppWebViewChromeClient.this.createConfirmDialog(webView, str2, jsResult, str5, str4, str3);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str3, String str4, Object obj) {
                Log.e(InAppWebViewChromeClient.LOG_TAG, str3 + ", " + str4);
                jsResult.cancel();
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewChromeClient.this.createConfirmDialog(webView, str2, jsResult, null, null, null);
            }
        });
        return true;
    }

    public void createConfirmDialog(WebView webView, String str, final JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        AnonymousClass5 r4 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
                dialogInterface.dismiss();
            }
        };
        AnonymousClass6 r7 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
                dialogInterface.dismiss();
            }
        };
        Context context = this.inAppBrowserActivity;
        if (context == null) {
            context = Shared.activity;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, com.pichillilorenzo.flutter_inappwebview.R.style.Theme_AppCompat_Dialog_Alert);
        builder.setMessage(str);
        if (str3 == null || str3.isEmpty()) {
            builder.setPositiveButton(17039370, r4);
        } else {
            builder.setPositiveButton(str3, r4);
        }
        if (str4 == null || str4.isEmpty()) {
            builder.setNegativeButton(17039360, r7);
        } else {
            builder.setNegativeButton(str4, r7);
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(final WebView webView, String str, final String str2, final String str3, final JsPromptResult jsPromptResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str2);
        hashMap.put("defaultValue", str3);
        hashMap.put("iosIsMainFrame", null);
        this.channel.invokeMethod("onJsPrompt", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.8
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                String str4;
                String str5;
                String str6;
                String str7;
                String str8;
                if (obj != null) {
                    Map map = (Map) obj;
                    String str9 = (String) map.get(Constant.PARAM_ERROR_MESSAGE);
                    String str10 = (String) map.get("defaultValue");
                    String str11 = (String) map.get("confirmButtonTitle");
                    String str12 = (String) map.get("cancelButtonTitle");
                    String str13 = (String) map.get("value");
                    Boolean bool = (Boolean) map.get("handledByClient");
                    if (bool == null || !bool.booleanValue()) {
                        str8 = str9;
                        str7 = str10;
                        str4 = str11;
                        str5 = str12;
                        str6 = str13;
                    } else {
                        Integer num = (Integer) map.get("action");
                        if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                            jsPromptResult.cancel();
                            return;
                        } else {
                            jsPromptResult.confirm(str13);
                            return;
                        }
                    }
                } else {
                    str8 = null;
                    str7 = null;
                    str6 = null;
                    str5 = null;
                    str4 = null;
                }
                InAppWebViewChromeClient.this.createPromptDialog(webView, str2, str3, jsPromptResult, str8, str7, str6, str5, str4);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str4, String str5, Object obj) {
                Log.e(InAppWebViewChromeClient.LOG_TAG, str4 + ", " + str5);
                jsPromptResult.cancel();
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewChromeClient.this.createPromptDialog(webView, str2, str3, jsPromptResult, null, null, null, null, null);
            }
        });
        return true;
    }

    public void createPromptDialog(WebView webView, String str, String str2, final JsPromptResult jsPromptResult, String str3, String str4, final String str5, String str6, String str7) {
        FrameLayout frameLayout = new FrameLayout(webView.getContext());
        final EditText editText = new EditText(webView.getContext());
        editText.setMaxLines(1);
        if (str4 != null && !str4.isEmpty()) {
            str2 = str4;
        }
        editText.setText(str2);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        frameLayout.setPaddingRelative(45, 15, 45, 0);
        frameLayout.addView(editText);
        if (str3 != null && !str3.isEmpty()) {
            str = str3;
        }
        AnonymousClass9 r3 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String obj = editText.getText().toString();
                JsPromptResult jsPromptResult2 = jsPromptResult;
                String str8 = str5;
                if (str8 != null) {
                    obj = str8;
                }
                jsPromptResult2.confirm(obj);
                dialogInterface.dismiss();
            }
        };
        AnonymousClass10 r5 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.cancel();
                dialogInterface.dismiss();
            }
        };
        Context context = this.inAppBrowserActivity;
        if (context == null) {
            context = Shared.activity;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, com.pichillilorenzo.flutter_inappwebview.R.style.Theme_AppCompat_Dialog_Alert);
        builder.setMessage(str);
        if (str7 == null || str7.isEmpty()) {
            builder.setPositiveButton(17039370, r3);
        } else {
            builder.setPositiveButton(str7, r3);
        }
        if (str6 == null || str6.isEmpty()) {
            builder.setNegativeButton(17039360, r5);
        } else {
            builder.setNegativeButton(str6, r5);
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.11
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsPromptResult.cancel();
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        create.setView(frameLayout);
        create.show();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(final WebView webView, String str, final String str2, final JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str2);
        hashMap.put("iosIsMainFrame", null);
        this.channel.invokeMethod("onJsBeforeUnload", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.12
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                String str3;
                String str4;
                String str5;
                if (obj != null) {
                    Map map = (Map) obj;
                    String str6 = (String) map.get(Constant.PARAM_ERROR_MESSAGE);
                    String str7 = (String) map.get("confirmButtonTitle");
                    String str8 = (String) map.get("cancelButtonTitle");
                    Boolean bool = (Boolean) map.get("handledByClient");
                    if (bool == null || !bool.booleanValue()) {
                        str5 = str6;
                        str4 = str7;
                        str3 = str8;
                    } else {
                        Integer num = (Integer) map.get("action");
                        if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return;
                        } else {
                            jsResult.confirm();
                            return;
                        }
                    }
                } else {
                    str5 = null;
                    str4 = null;
                    str3 = null;
                }
                InAppWebViewChromeClient.this.createBeforeUnloadDialog(webView, str2, jsResult, str5, str4, str3);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str3, String str4, Object obj) {
                Log.e(InAppWebViewChromeClient.LOG_TAG, str3 + ", " + str4);
                jsResult.cancel();
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewChromeClient.this.createConfirmDialog(webView, str2, jsResult, null, null, null);
            }
        });
        return true;
    }

    public void createBeforeUnloadDialog(WebView webView, String str, final JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        AnonymousClass13 r4 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
                dialogInterface.dismiss();
            }
        };
        AnonymousClass14 r7 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
                dialogInterface.dismiss();
            }
        };
        Context context = this.inAppBrowserActivity;
        if (context == null) {
            context = Shared.activity;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, com.pichillilorenzo.flutter_inappwebview.R.style.Theme_AppCompat_Dialog_Alert);
        builder.setMessage(str);
        if (str3 == null || str3.isEmpty()) {
            builder.setPositiveButton(17039370, r4);
        } else {
            builder.setPositiveButton(str3, r4);
        }
        if (str4 == null || str4.isEmpty()) {
            builder.setNegativeButton(17039360, r7);
        } else {
            builder.setNegativeButton(str4, r7);
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.15
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        windowAutoincrementId++;
        final int i = windowAutoincrementId;
        String extra = webView.getHitTestResult().getExtra();
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, extra);
        hashMap.put("windowId", Integer.valueOf(i));
        hashMap.put("androidIsDialog", Boolean.valueOf(z));
        hashMap.put("androidIsUserGesture", Boolean.valueOf(z2));
        hashMap.put("iosWKNavigationType", null);
        hashMap.put("iosIsForMainFrame", null);
        windowWebViewMessages.put(Integer.valueOf(i), message);
        this.channel.invokeMethod("onCreateWindow", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.16
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                if (!(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false) && InAppWebViewChromeClient.windowWebViewMessages.containsKey(Integer.valueOf(i))) {
                    InAppWebViewChromeClient.windowWebViewMessages.remove(Integer.valueOf(i));
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                if (InAppWebViewChromeClient.windowWebViewMessages.containsKey(Integer.valueOf(i))) {
                    InAppWebViewChromeClient.windowWebViewMessages.remove(Integer.valueOf(i));
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                if (InAppWebViewChromeClient.windowWebViewMessages.containsKey(Integer.valueOf(i))) {
                    InAppWebViewChromeClient.windowWebViewMessages.remove(Integer.valueOf(i));
                }
            }
        });
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.channel.invokeMethod("onCloseWindow", hashMap);
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.channel.invokeMethod("onRequestFocus", hashMap);
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("origin", str);
        this.channel.invokeMethod("onGeolocationPermissionsShowPrompt", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.17
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Map map = (Map) obj;
                if (map != null) {
                    callback.invoke((String) map.get("origin"), ((Boolean) map.get("allow")).booleanValue(), ((Boolean) map.get("retain")).booleanValue());
                } else {
                    callback.invoke(str, false, false);
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str2, String str3, Object obj) {
                callback.invoke(str, false, false);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                callback.invoke(str, false, false);
            }
        });
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.channel.invokeMethod("onGeolocationPermissionsHidePrompt", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, consoleMessage.message());
        hashMap.put("messageLevel", Integer.valueOf(consoleMessage.messageLevel().ordinal()));
        this.channel.invokeMethod("onConsoleMessage", hashMap);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (!(inAppBrowserActivity == null || inAppBrowserActivity.progressBar == null)) {
            this.inAppBrowserActivity.progressBar.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 24) {
                this.inAppBrowserActivity.progressBar.setProgress(i, true);
            } else {
                this.inAppBrowserActivity.progressBar.setProgress(i);
            }
            if (i == 100) {
                this.inAppBrowserActivity.progressBar.setVisibility(8);
            }
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.inAppBrowserActivity;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put("progress", Integer.valueOf(i));
        this.channel.invokeMethod("onProgressChanged", hashMap);
        super.onProgressChanged(webView, i);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (!(inAppBrowserActivity == null || inAppBrowserActivity.actionBar == null || !this.inAppBrowserActivity.options.toolbarTopFixedTitle.isEmpty())) {
            this.inAppBrowserActivity.actionBar.setTitle(str);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.inAppBrowserActivity;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put("title", str);
        this.channel.invokeMethod("onTitleChanged", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        super.onReceivedIcon(webView, bitmap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
            String message = e.getMessage();
            if (message != null) {
                Log.e(LOG_TAG, message);
            }
        }
        bitmap.recycle();
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("icon", byteArrayOutputStream.toByteArray());
        this.channel.invokeMethod("onReceivedIcon", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        super.onReceivedTouchIconUrl(webView, str, z);
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put("precomposed", Boolean.valueOf(z));
        this.channel.invokeMethod("onReceivedTouchIconUrl", hashMap);
    }

    protected ViewGroup getRootView() {
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        return (ViewGroup) activity.findViewById(16908290);
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        startPhotoPickerIntent(valueCallback, str);
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback) {
        startPhotoPickerIntent(valueCallback, "");
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        startPhotoPickerIntent(valueCallback, str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        String[] acceptTypes = fileChooserParams.getAcceptTypes();
        boolean z = true;
        if (fileChooserParams.getMode() != 1) {
            z = false;
        }
        return startPhotoPickerIntent(valueCallback, fileChooserParams.createIntent(), acceptTypes, z);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (InAppWebViewFlutterPlugin.filePathCallback == null && InAppWebViewFlutterPlugin.filePathCallbackLegacy == null) {
            return true;
        }
        if (i != 1) {
            if (i == 3) {
                InAppWebViewFlutterPlugin.filePathCallbackLegacy.onReceiveValue(i2 != -1 ? null : intent == null ? outputFileUri : intent.getData());
            }
        } else if (i2 == -1) {
            Uri[] selectedFiles = getSelectedFiles(intent, i2);
            if (selectedFiles != null) {
                InAppWebViewFlutterPlugin.filePathCallback.onReceiveValue(selectedFiles);
            } else {
                InAppWebViewFlutterPlugin.filePathCallback.onReceiveValue(new Uri[]{outputFileUri});
            }
        } else if (InAppWebViewFlutterPlugin.filePathCallback != null) {
            InAppWebViewFlutterPlugin.filePathCallback.onReceiveValue(null);
        }
        InAppWebViewFlutterPlugin.filePathCallback = null;
        InAppWebViewFlutterPlugin.filePathCallbackLegacy = null;
        outputFileUri = null;
        return true;
    }

    private Uri[] getSelectedFiles(Intent intent, int i) {
        Uri[] uriArr = null;
        if (intent == null) {
            return null;
        }
        if (intent.getData() == null) {
            if (intent.getClipData() != null) {
                int itemCount = intent.getClipData().getItemCount();
                uriArr = new Uri[itemCount];
                for (int i2 = 0; i2 < itemCount; i2++) {
                    uriArr[i2] = intent.getClipData().getItemAt(i2).getUri();
                }
            }
            return uriArr;
        } else if (i != -1 || Build.VERSION.SDK_INT < 21) {
            return null;
        } else {
            return WebChromeClient.FileChooserParams.parseResult(i, intent);
        }
    }

    public void startPhotoPickerIntent(ValueCallback<Uri> valueCallback, String str) {
        InAppWebViewFlutterPlugin.filePathCallbackLegacy = valueCallback;
        Intent createChooser = Intent.createChooser(getFileChooserIntent(str), "");
        ArrayList arrayList = new ArrayList();
        if (acceptsImages(str).booleanValue()) {
            arrayList.add(getPhotoIntent());
        }
        if (acceptsVideo(str).booleanValue()) {
            arrayList.add(getVideoIntent());
        }
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        if (createChooser.resolveActivity(activity.getPackageManager()) != null) {
            activity.startActivityForResult(createChooser, 3);
        } else {
            Log.d(LOG_TAG, "there is no Activity to handle this Intent");
        }
    }

    public boolean startPhotoPickerIntent(ValueCallback<Uri[]> valueCallback, Intent intent, String[] strArr, boolean z) {
        InAppWebViewFlutterPlugin.filePathCallback = valueCallback;
        ArrayList arrayList = new ArrayList();
        if (!needsCameraPermission()) {
            if (acceptsImages(strArr).booleanValue()) {
                arrayList.add(getPhotoIntent());
            }
            if (acceptsVideo(strArr).booleanValue()) {
                arrayList.add(getVideoIntent());
            }
        }
        if (!this._firstChoose || arrayList.size() != 0) {
            Intent fileChooserIntent = getFileChooserIntent(strArr, z);
            Intent intent2 = new Intent("android.intent.action.CHOOSER");
            intent2.putExtra("android.intent.extra.INTENT", fileChooserIntent);
            intent2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
            Activity activity = this.inAppBrowserActivity;
            if (activity == null) {
                activity = Shared.activity;
            }
            if (intent2.resolveActivity(activity.getPackageManager()) != null) {
                activity.startActivityForResult(intent2, 1);
            } else {
                Log.d(LOG_TAG, "there is no Activity to handle this Intent");
            }
            return true;
        }
        this._firstChoose = false;
        Activity activity2 = this.inAppBrowserActivity;
        if (activity2 == null) {
            activity2 = Shared.activity;
        }
        ActivityCompat.requestPermissions(activity2, new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        return false;
    }

    protected boolean needsCameraPermission() {
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        try {
            if (Arrays.asList(activity.getPackageManager().getPackageInfo(activity.getApplicationContext().getPackageName(), 4096).requestedPermissions).contains("android.permission.CAMERA")) {
                if (ContextCompat.checkSelfPermission(activity, "android.permission.CAMERA") != 0) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    private Intent getPhotoIntent() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        outputFileUri = getOutputUri("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", outputFileUri);
        return intent;
    }

    private Intent getVideoIntent() {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        outputFileUri = getOutputUri("android.media.action.VIDEO_CAPTURE");
        intent.putExtra("output", outputFileUri);
        return intent;
    }

    private Intent getFileChooserIntent(String str) {
        String str2 = str.isEmpty() ? "*/*" : str;
        if (str.matches("\\.\\w+")) {
            str2 = getMimeTypeFromExtension(str.replace(".", ""));
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType(str2);
        return intent;
    }

    private Intent getFileChooserIntent(String[] strArr, boolean z) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", getAcceptedMimeType(strArr));
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
        return intent;
    }

    private Boolean acceptsImages(String str) {
        if (str.matches("\\.\\w+")) {
            str = getMimeTypeFromExtension(str.replace(".", ""));
        }
        return Boolean.valueOf(str.isEmpty() || str.toLowerCase().contains("image"));
    }

    private Boolean acceptsImages(String[] strArr) {
        String[] acceptedMimeType = getAcceptedMimeType(strArr);
        return Boolean.valueOf(isArrayEmpty(acceptedMimeType).booleanValue() || arrayContainsString(acceptedMimeType, "image").booleanValue());
    }

    private Boolean acceptsVideo(String str) {
        if (str.matches("\\.\\w+")) {
            str = getMimeTypeFromExtension(str.replace(".", ""));
        }
        return Boolean.valueOf(str.isEmpty() || str.toLowerCase().contains("video"));
    }

    private Boolean acceptsVideo(String[] strArr) {
        String[] acceptedMimeType = getAcceptedMimeType(strArr);
        return Boolean.valueOf(isArrayEmpty(acceptedMimeType).booleanValue() || arrayContainsString(acceptedMimeType, "video").booleanValue());
    }

    private Boolean arrayContainsString(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.contains(str)) {
                return true;
            }
        }
        return false;
    }

    private String[] getAcceptedMimeType(String[] strArr) {
        if (isArrayEmpty(strArr).booleanValue()) {
            return new String[]{"*/*"};
        }
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str.matches("\\.\\w+")) {
                strArr2[i] = getMimeTypeFromExtension(str.replace(".", ""));
            } else {
                strArr2[i] = str;
            }
        }
        return strArr2;
    }

    private String getMimeTypeFromExtension(String str) {
        if (str != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        }
        return null;
    }

    private Uri getOutputUri(String str) {
        File file;
        try {
            file = getCapturedFile(str);
        } catch (IOException e) {
            Log.e(LOG_TAG, "Error occurred while creating the File", e);
            e.printStackTrace();
            file = null;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return Uri.fromFile(file);
        }
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        String packageName = activity.getApplicationContext().getPackageName();
        Context applicationContext = activity.getApplicationContext();
        return FileProvider.getUriForFile(applicationContext, packageName + "." + fileProviderAuthorityExtension, file);
    }

    private File getCapturedFile(String str) throws IOException {
        String str2;
        String str3;
        String str4 = "";
        if (str.equals("android.media.action.IMAGE_CAPTURE")) {
            str4 = Environment.DIRECTORY_PICTURES;
            str2 = "image-";
            str3 = ".jpg";
        } else if (str.equals("android.media.action.VIDEO_CAPTURE")) {
            str4 = Environment.DIRECTORY_MOVIES;
            str2 = "video-";
            str3 = ".mp4";
        } else {
            str2 = str4;
            str3 = str2;
        }
        String str5 = str2 + String.valueOf(System.currentTimeMillis()) + str3;
        if (Build.VERSION.SDK_INT < 23) {
            return new File(Environment.getExternalStoragePublicDirectory(str4), str5);
        }
        Activity activity = this.inAppBrowserActivity;
        if (activity == null) {
            activity = Shared.activity;
        }
        return File.createTempFile(str5, str3, activity.getApplicationContext().getExternalFilesDir(null));
    }

    private Boolean isArrayEmpty(String[] strArr) {
        boolean z = false;
        if (strArr.length == 0 || (strArr.length == 1 && strArr[0].length() == 0)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(final PermissionRequest permissionRequest) {
        if (Build.VERSION.SDK_INT >= 23) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put("origin", permissionRequest.getOrigin().toString());
            hashMap.put("resources", Arrays.asList(permissionRequest.getResources()));
            this.channel.invokeMethod("onPermissionRequest", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewChromeClient.18
                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void success(Object obj) {
                    if (obj != null) {
                        Map map = (Map) obj;
                        Integer num = (Integer) map.get("action");
                        List list = (List) map.get("resources");
                        if (list == null) {
                            list = new ArrayList();
                        }
                        String[] strArr = (String[]) list.toArray(new String[list.size()]);
                        if (num != null) {
                            if (num.intValue() != 1) {
                                permissionRequest.deny();
                                return;
                            } else {
                                permissionRequest.grant(strArr);
                                return;
                            }
                        }
                    }
                    permissionRequest.deny();
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void error(String str, String str2, Object obj) {
                    Log.e(InAppWebViewChromeClient.LOG_TAG, str + ", " + str2);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void notImplemented() {
                    permissionRequest.deny();
                }
            });
        }
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
        if (Shared.activityPluginBinding != null) {
            Shared.activityPluginBinding.removeActivityResultListener(this);
        }
        if (this.inAppBrowserActivity != null) {
            this.inAppBrowserActivity = null;
        }
        if (this.flutterWebView != null) {
            this.flutterWebView = null;
        }
    }
}
