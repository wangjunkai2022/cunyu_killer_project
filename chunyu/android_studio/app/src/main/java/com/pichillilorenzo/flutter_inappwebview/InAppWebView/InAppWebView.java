package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.net.http.SslCertificate;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.print.PrintAttributes;
import android.print.PrintManager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlocker;
import com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerAction;
import com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerHandler;
import com.pichillilorenzo.flutter_inappwebview.ContentBlocker.ContentBlockerTrigger;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import com.pichillilorenzo.flutter_inappwebview.JavaScriptBridgeInterface;
import com.pichillilorenzo.flutter_inappwebview.R;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import com.pichillilorenzo.flutter_inappwebview.Util;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class InAppWebView extends InputAwareWebView {
    static final String LOG_TAG = "InAppWebView";
    static final String checkContextMenuShouldBeHiddenJS = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : '';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == 'textarea' || (nodeName == 'input' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : 'text')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === 'on';  return txt === '' && !isActiveElementEditable;})();";
    static final String checkGlobalKeyDownEventToHideContextMenuJS = "(function(){  document.addEventListener('keydown', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();";
    static final String consoleLogJS = "(function(console) {   var oldLogs = {       'log': console.log,       'debug': console.debug,       'error': console.error,       'info': console.info,       'warn': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = '';               for (var i in arguments) {                   if (message == '') {                       message += arguments[i];                   }                   else {                       message += ' ' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);";
    static final String enableVariableForOnLoadResourceJS = "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;";
    static final String enableVariableForShouldInterceptAjaxRequestJS = "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;";
    static final String enableVariableForShouldInterceptFetchRequestsJS = "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;";
    static final String getSelectedTextJS = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();";
    static final String interceptAjaxRequestsJS = "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case 'arraybuffer':          callback(new Uint8Array(request.response));          return;        case 'blob':          const reader = new FileReader();          reader.addEventListener('loadend', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case 'document':          callback(request.response.documentElement.outerHTML);          return;        case 'json':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(': ');          var header = parts.shift();          var value = parts.join(': ');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,          responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler('onAjaxProgress', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(': ');                var header = parts.shift();                var value = parts.join(': ');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,                responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler('onAjaxReadyStateChange', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener('loadstart', handleEvent);      this.addEventListener('load', handleEvent);      this.addEventListener('loadend', handleEvent);      this.addEventListener('progress', handleEvent);      this.addEventListener('error', handleEvent);      this.addEventListener('abort', handleEvent);      this.addEventListener('timeout', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler('shouldInterceptAjaxRequest', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += ', ' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);";
    static final String interceptFetchRequestsJS = "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = 'default';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === 'federated') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === 'password') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler('shouldInterceptFetchRequest', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);";
    static final String isActiveElementInputEditableJS = "var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : '';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == 'textarea' || (nodeName == 'input' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : 'text')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === 'on';";
    static Handler mHandler = new Handler();
    static final String onWindowBlurEventJS = "(function(){  window.addEventListener('blur', function(e) {    window.flutter_inappwebview.callHandler('onWindowBlur');  });})();";
    static final String onWindowFocusEventJS = "(function(){  window.addEventListener('focus', function(e) {    window.flutter_inappwebview.callHandler('onWindowFocus');  });})();";
    static final String platformReadyJS = "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event('flutterInAppWebViewPlatformReady'));    window.flutter_inappwebview._platformReady = true;  }})();";
    static final String printJS = "window.print = function() {  window.flutter_inappwebview.callHandler('onPrint', window.location.href);};";
    static final String resourceObserverJS = "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler('onLoadResource', entry);         }       });   });   observer.observe({entryTypes: ['resource']});})();";
    static final String scriptsWrapperJS = "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();";
    static final String variableForOnLoadResourceJS = "window._flutter_inappwebview_useOnLoadResource";
    static final String variableForShouldInterceptAjaxRequestJS = "window._flutter_inappwebview_useShouldInterceptAjaxRequest";
    static final String variableForShouldInterceptFetchRequestsJS = "window._flutter_inappwebview_useShouldInterceptFetchRequest";
    public MethodChannel channel;
    public Runnable checkContextMenuShouldBeClosedTask;
    public Runnable checkScrollStoppedTask;
    public ContentBlockerHandler contentBlockerHandler;
    public Map<String, Object> contextMenu;
    private Point contextMenuPoint;
    public LinearLayout floatingContextMenu;
    public FlutterWebView flutterWebView;
    public GestureDetector gestureDetector;
    public Handler headlessHandler;
    public OkHttpClient httpClient;
    public Object id;
    public InAppBrowserActivity inAppBrowserActivity;
    public InAppWebViewChromeClient inAppWebViewChromeClient;
    public InAppWebViewClient inAppWebViewClient;
    public InAppWebViewRenderProcessClient inAppWebViewRenderProcessClient;
    public int initialPositionScrollStoppedTask;
    public boolean isLoading;
    public JavaScriptBridgeInterface javaScriptBridgeInterface;
    private MotionEvent lastMotionEvent;
    private Point lastTouch;
    public int newCheckContextMenuShouldBeClosedTaskTask;
    public int newCheckScrollStoppedTask;
    int okHttpClientCacheSize;
    public InAppWebViewOptions options;
    public Pattern regexToCancelSubFramesLoadingCompiled;
    public float scale;
    public Integer windowId;

    public InAppWebView(Context context) {
        super(context);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.lastMotionEvent = null;
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    public InAppWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.lastMotionEvent = null;
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    public InAppWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.lastMotionEvent = null;
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    public InAppWebView(Context context, Object obj, Object obj2, Integer num, InAppWebViewOptions inAppWebViewOptions, Map<String, Object> map, View view) {
        super(context, view);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.lastMotionEvent = null;
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
        if (obj instanceof InAppBrowserActivity) {
            this.inAppBrowserActivity = (InAppBrowserActivity) obj;
        } else if (obj instanceof FlutterWebView) {
            this.flutterWebView = (FlutterWebView) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        this.channel = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.flutterWebView.channel;
        this.id = obj2;
        this.windowId = num;
        this.options = inAppWebViewOptions;
        this.contextMenu = map;
        Shared.activity.registerForContextMenu(this);
    }

    @Override // android.webkit.WebView
    public void reload() {
        super.reload();
    }

    public void prepare() {
        boolean z = this.inAppBrowserActivity != null;
        this.httpClient = new OkHttpClient().newBuilder().build();
        this.javaScriptBridgeInterface = new JavaScriptBridgeInterface(z ? this.inAppBrowserActivity : this.flutterWebView);
        addJavascriptInterface(this.javaScriptBridgeInterface, JavaScriptBridgeInterface.name);
        this.inAppWebViewChromeClient = new InAppWebViewChromeClient(z ? this.inAppBrowserActivity : this.flutterWebView);
        setWebChromeClient(this.inAppWebViewChromeClient);
        this.inAppWebViewClient = new InAppWebViewClient(z ? this.inAppBrowserActivity : this.flutterWebView);
        setWebViewClient(this.inAppWebViewClient);
        if (Build.VERSION.SDK_INT >= 29 && WebViewFeature.isFeatureSupported("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE")) {
            this.inAppWebViewRenderProcessClient = new InAppWebViewRenderProcessClient(z ? this.inAppBrowserActivity : this.flutterWebView);
            WebViewCompat.setWebViewRenderProcessClient(this, this.inAppWebViewRenderProcessClient);
        }
        if (this.options.useOnDownloadStart.booleanValue()) {
            setDownloadListener(new DownloadStartListener());
        }
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(this.options.javaScriptEnabled.booleanValue());
        if (Build.VERSION.SDK_INT >= 19) {
            setWebContentsDebuggingEnabled(this.options.debuggingEnabled.booleanValue());
        }
        settings.setJavaScriptCanOpenWindowsAutomatically(this.options.javaScriptCanOpenWindowsAutomatically.booleanValue());
        settings.setBuiltInZoomControls(this.options.builtInZoomControls.booleanValue());
        settings.setDisplayZoomControls(this.options.displayZoomControls.booleanValue());
        settings.setSupportMultipleWindows(this.options.supportMultipleWindows.booleanValue());
        if (Build.VERSION.SDK_INT >= 26) {
            settings.setSafeBrowsingEnabled(this.options.safeBrowsingEnabled.booleanValue());
        }
        settings.setMediaPlaybackRequiresUserGesture(this.options.mediaPlaybackRequiresUserGesture.booleanValue());
        settings.setDatabaseEnabled(this.options.databaseEnabled.booleanValue());
        settings.setDomStorageEnabled(this.options.domStorageEnabled.booleanValue());
        if (this.options.userAgent != null && !this.options.userAgent.isEmpty()) {
            settings.setUserAgentString(this.options.userAgent);
        } else if (Build.VERSION.SDK_INT >= 17) {
            settings.setUserAgentString(WebSettings.getDefaultUserAgent(getContext()));
        }
        if (this.options.applicationNameForUserAgent != null && !this.options.applicationNameForUserAgent.isEmpty() && Build.VERSION.SDK_INT >= 17) {
            String defaultUserAgent = (this.options.userAgent == null || this.options.userAgent.isEmpty()) ? WebSettings.getDefaultUserAgent(getContext()) : this.options.userAgent;
            settings.setUserAgentString(defaultUserAgent + " " + this.options.applicationNameForUserAgent);
        }
        if (this.options.clearCache.booleanValue()) {
            clearAllCache();
        } else if (this.options.clearSessionCache.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, this.options.thirdPartyCookiesEnabled.booleanValue());
        }
        settings.setLoadWithOverviewMode(this.options.loadWithOverviewMode.booleanValue());
        settings.setUseWideViewPort(this.options.useWideViewPort.booleanValue());
        settings.setSupportZoom(this.options.supportZoom.booleanValue());
        settings.setTextZoom(this.options.textZoom.intValue());
        setVerticalScrollBarEnabled(!this.options.disableVerticalScroll.booleanValue() && this.options.verticalScrollBarEnabled.booleanValue());
        setHorizontalScrollBarEnabled(!this.options.disableHorizontalScroll.booleanValue() && this.options.horizontalScrollBarEnabled.booleanValue());
        if (this.options.transparentBackground.booleanValue()) {
            setBackgroundColor(0);
        }
        if (Build.VERSION.SDK_INT >= 21 && this.options.mixedContentMode != null) {
            settings.setMixedContentMode(this.options.mixedContentMode.intValue());
        }
        settings.setAllowContentAccess(this.options.allowContentAccess.booleanValue());
        settings.setAllowFileAccess(this.options.allowFileAccess.booleanValue());
        settings.setAllowFileAccessFromFileURLs(this.options.allowFileAccessFromFileURLs.booleanValue());
        settings.setAllowUniversalAccessFromFileURLs(this.options.allowUniversalAccessFromFileURLs.booleanValue());
        setCacheEnabled(this.options.cacheEnabled.booleanValue());
        if (this.options.appCachePath != null && !this.options.appCachePath.isEmpty() && this.options.cacheEnabled.booleanValue()) {
            settings.setAppCachePath(this.options.appCachePath);
        }
        settings.setBlockNetworkImage(this.options.blockNetworkImage.booleanValue());
        settings.setBlockNetworkLoads(this.options.blockNetworkLoads.booleanValue());
        if (this.options.cacheMode != null) {
            settings.setCacheMode(this.options.cacheMode.intValue());
        }
        settings.setCursiveFontFamily(this.options.cursiveFontFamily);
        settings.setDefaultFixedFontSize(this.options.defaultFixedFontSize.intValue());
        settings.setDefaultFontSize(this.options.defaultFontSize.intValue());
        settings.setDefaultTextEncodingName(this.options.defaultTextEncodingName);
        if (Build.VERSION.SDK_INT >= 24 && this.options.disabledActionModeMenuItems != null) {
            settings.setDisabledActionModeMenuItems(this.options.disabledActionModeMenuItems.intValue());
        }
        settings.setFantasyFontFamily(this.options.fantasyFontFamily);
        settings.setFixedFontFamily(this.options.fixedFontFamily);
        if (Build.VERSION.SDK_INT >= 29 && this.options.forceDark != null) {
            settings.setForceDark(this.options.forceDark.intValue());
        }
        settings.setGeolocationEnabled(this.options.geolocationEnabled.booleanValue());
        if (this.options.layoutAlgorithm != null) {
            if (Build.VERSION.SDK_INT < 19 || !this.options.layoutAlgorithm.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                settings.setLayoutAlgorithm(this.options.layoutAlgorithm);
            } else {
                settings.setLayoutAlgorithm(this.options.layoutAlgorithm);
            }
        }
        settings.setLoadsImagesAutomatically(this.options.loadsImagesAutomatically.booleanValue());
        settings.setMinimumFontSize(this.options.minimumFontSize.intValue());
        settings.setMinimumLogicalFontSize(this.options.minimumLogicalFontSize.intValue());
        setInitialScale(this.options.initialScale.intValue());
        settings.setNeedInitialFocus(this.options.needInitialFocus.booleanValue());
        if (Build.VERSION.SDK_INT >= 23) {
            settings.setOffscreenPreRaster(this.options.offscreenPreRaster.booleanValue());
        }
        settings.setSansSerifFontFamily(this.options.sansSerifFontFamily);
        settings.setSerifFontFamily(this.options.serifFontFamily);
        settings.setStandardFontFamily(this.options.standardFontFamily);
        if (this.options.preferredContentMode != null && this.options.preferredContentMode.intValue() == PreferredContentModeOptionType.DESKTOP.toValue()) {
            setDesktopMode(true);
        }
        settings.setSaveFormData(this.options.saveFormData.booleanValue());
        if (this.options.incognito.booleanValue()) {
            setIncognito(true);
        }
        if (this.options.hardwareAcceleration.booleanValue()) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
        if (this.options.regexToCancelSubFramesLoading != null) {
            this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(this.options.regexToCancelSubFramesLoading);
        }
        setScrollBarStyle(this.options.scrollBarStyle.intValue());
        if (this.options.scrollBarDefaultDelayBeforeFade != null) {
            setScrollBarDefaultDelayBeforeFade(this.options.scrollBarDefaultDelayBeforeFade.intValue());
        } else {
            this.options.scrollBarDefaultDelayBeforeFade = Integer.valueOf(getScrollBarDefaultDelayBeforeFade());
        }
        setScrollbarFadingEnabled(this.options.scrollbarFadingEnabled.booleanValue());
        if (this.options.scrollBarFadeDuration != null) {
            setScrollBarFadeDuration(this.options.scrollBarFadeDuration.intValue());
        } else {
            this.options.scrollBarFadeDuration = Integer.valueOf(getScrollBarFadeDuration());
        }
        setVerticalScrollbarPosition(this.options.verticalScrollbarPosition.intValue());
        setOverScrollMode(this.options.overScrollMode.intValue());
        if (this.options.networkAvailable != null) {
            setNetworkAvailable(this.options.networkAvailable.booleanValue());
        }
        if (this.options.rendererPriorityPolicy != null && !this.options.rendererPriorityPolicy.isEmpty() && Build.VERSION.SDK_INT >= 26) {
            setRendererPriorityPolicy(((Integer) this.options.rendererPriorityPolicy.get("rendererRequestedPriority")).intValue(), ((Boolean) this.options.rendererPriorityPolicy.get("waivedWhenNotVisible")).booleanValue());
        } else if ((this.options.rendererPriorityPolicy == null || (this.options.rendererPriorityPolicy != null && this.options.rendererPriorityPolicy.isEmpty())) && Build.VERSION.SDK_INT >= 26) {
            this.options.rendererPriorityPolicy.put("rendererRequestedPriority", Integer.valueOf(getRendererRequestedPriority()));
            this.options.rendererPriorityPolicy.put("waivedWhenNotVisible", Boolean.valueOf(getRendererPriorityWaivedWhenNotVisible()));
        }
        this.contentBlockerHandler.getRuleList().clear();
        for (Map<String, Map<String, Object>> map : this.options.contentBlockers) {
            this.contentBlockerHandler.getRuleList().add(new ContentBlocker(ContentBlockerTrigger.fromMap(map.get("trigger")), ContentBlockerAction.fromMap(map.get("action"))));
        }
        setFindListener(new WebView.FindListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.1
            @Override // android.webkit.WebView.FindListener
            public void onFindResultReceived(int i, int i2, boolean z2) {
                HashMap hashMap = new HashMap();
                if (InAppWebView.this.inAppBrowserActivity != null) {
                    hashMap.put("uuid", InAppWebView.this.inAppBrowserActivity.uuid);
                }
                hashMap.put("activeMatchOrdinal", Integer.valueOf(i));
                hashMap.put("numberOfMatches", Integer.valueOf(i2));
                hashMap.put("isDoneCounting", Boolean.valueOf(z2));
                InAppWebView.this.channel.invokeMethod("onFindResultReceived", hashMap);
            }
        });
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (InAppWebView.this.floatingContextMenu != null) {
                    InAppWebView.this.hideContextMenu();
                }
                return super.onSingleTapUp(motionEvent);
            }
        });
        this.checkScrollStoppedTask = new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.3
            @Override // java.lang.Runnable
            public void run() {
                if (InAppWebView.this.initialPositionScrollStoppedTask - InAppWebView.this.getScrollY() == 0) {
                    InAppWebView.this.onScrollStopped();
                    return;
                }
                InAppWebView inAppWebView = InAppWebView.this;
                inAppWebView.initialPositionScrollStoppedTask = inAppWebView.getScrollY();
                InAppWebView.this.headlessHandler.postDelayed(InAppWebView.this.checkScrollStoppedTask, (long) InAppWebView.this.newCheckScrollStoppedTask);
            }
        };
        if (Build.VERSION.SDK_INT >= 19) {
            this.checkContextMenuShouldBeClosedTask = new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    if (InAppWebView.this.floatingContextMenu != null) {
                        InAppWebView.this.evaluateJavascript(InAppWebView.checkContextMenuShouldBeHiddenJS, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.4.1
                            public void onReceiveValue(String str) {
                                if (str != null && !str.equals("true")) {
                                    InAppWebView.this.headlessHandler.postDelayed(InAppWebView.this.checkContextMenuShouldBeClosedTask, (long) InAppWebView.this.newCheckContextMenuShouldBeClosedTaskTask);
                                } else if (InAppWebView.this.floatingContextMenu != null) {
                                    InAppWebView.this.hideContextMenu();
                                }
                            }
                        });
                    }
                }
            };
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.5
            float m_downX;
            float m_downY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                InAppWebView.this.gestureDetector.onTouchEvent(motionEvent);
                if (motionEvent.getAction() == 1) {
                    InAppWebView.this.checkScrollStoppedTask.run();
                }
                if (!InAppWebView.this.options.disableHorizontalScroll.booleanValue() || !InAppWebView.this.options.disableVerticalScroll.booleanValue()) {
                    if (InAppWebView.this.options.disableHorizontalScroll.booleanValue() || InAppWebView.this.options.disableVerticalScroll.booleanValue()) {
                        int action = motionEvent.getAction();
                        if (action == 0) {
                            this.m_downX = motionEvent.getX();
                            this.m_downY = motionEvent.getY();
                        } else if (action == 1 || action == 2 || action == 3) {
                            if (InAppWebView.this.options.disableHorizontalScroll.booleanValue()) {
                                motionEvent.setLocation(this.m_downX, motionEvent.getY());
                            } else {
                                motionEvent.setLocation(motionEvent.getX(), this.m_downY);
                            }
                        }
                    }
                    return false;
                } else if (motionEvent.getAction() == 2) {
                    return true;
                } else {
                    return false;
                }
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.6
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                WebView.HitTestResult hitTestResult = InAppWebView.this.getHitTestResult();
                HashMap hashMap = new HashMap();
                hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
                hashMap.put("extra", hitTestResult.getExtra());
                HashMap hashMap2 = new HashMap();
                if (InAppWebView.this.inAppBrowserActivity != null) {
                    hashMap2.put("uuid", InAppWebView.this.inAppBrowserActivity.uuid);
                }
                hashMap2.put("hitTestResult", hashMap);
                InAppWebView.this.channel.invokeMethod("onLongPressHitTestResult", hashMap2);
                return false;
            }
        });
    }

    public void setIncognito(boolean z) {
        WebSettings settings = getSettings();
        if (z) {
            if (Build.VERSION.SDK_INT >= 21) {
                CookieManager.getInstance().removeAllCookies(null);
            } else {
                CookieManager.getInstance().removeAllCookie();
            }
            settings.setCacheMode(2);
            settings.setAppCacheEnabled(false);
            clearHistory();
            clearCache(true);
            clearFormData();
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            return;
        }
        settings.setCacheMode(-1);
        settings.setAppCacheEnabled(true);
        settings.setSavePassword(true);
        settings.setSaveFormData(true);
    }

    public void setCacheEnabled(boolean z) {
        WebSettings settings = getSettings();
        if (z) {
            Context context = getContext();
            if (context != null) {
                settings.setAppCachePath(context.getCacheDir().getAbsolutePath());
                settings.setCacheMode(-1);
                settings.setAppCacheEnabled(true);
                return;
            }
            return;
        }
        settings.setCacheMode(2);
        settings.setAppCacheEnabled(false);
    }

    public void loadUrl(String str, MethodChannel.Result result) {
        if (!str.isEmpty()) {
            loadUrl(str);
            result.success(true);
            return;
        }
        result.error(LOG_TAG, "url is empty", null);
    }

    public void loadUrl(String str, Map<String, String> map, MethodChannel.Result result) {
        if (!str.isEmpty()) {
            loadUrl(str, map);
            result.success(true);
            return;
        }
        result.error(LOG_TAG, "url is empty", null);
    }

    public void postUrl(String str, byte[] bArr, MethodChannel.Result result) {
        if (!str.isEmpty()) {
            postUrl(str, bArr);
            result.success(true);
            return;
        }
        result.error(LOG_TAG, "url is empty", null);
    }

    public void loadData(String str, String str2, String str3, String str4, String str5, MethodChannel.Result result) {
        loadDataWithBaseURL(str4, str, str2, str3, str5);
        result.success(true);
    }

    public void loadFile(String str, MethodChannel.Result result) {
        try {
            String urlAsset = Util.getUrlAsset(str);
            if (!urlAsset.isEmpty()) {
                loadUrl(urlAsset);
                result.success(true);
                return;
            }
            result.error(LOG_TAG, "url is empty", null);
        } catch (IOException e) {
            result.error(LOG_TAG, str + " asset file cannot be found!", e);
        }
    }

    public void loadFile(String str, Map<String, String> map, MethodChannel.Result result) {
        try {
            String urlAsset = Util.getUrlAsset(str);
            if (!urlAsset.isEmpty()) {
                loadUrl(urlAsset, map);
                result.success(true);
                return;
            }
            result.error(LOG_TAG, "url is empty", null);
        } catch (IOException e) {
            result.error(LOG_TAG, str + " asset file cannot be found!", e);
        }
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    private void clearCookies() {
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().removeAllCookies(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.7
                public void onReceiveValue(Boolean bool) {
                }
            });
        } else {
            CookieManager.getInstance().removeAllCookie();
        }
    }

    public void clearAllCache() {
        clearCache(true);
        clearCookies();
        clearFormData();
        WebStorage.getInstance().deleteAllData();
    }

    public void takeScreenshot(final MethodChannel.Result result) {
        this.headlessHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(InAppWebView.this.getWidth(), (int) (((double) (((float) InAppWebView.this.getContentHeight()) * InAppWebView.this.scale)) + 0.5d), Bitmap.Config.ARGB_8888);
                    InAppWebView.this.draw(new Canvas(createBitmap));
                    int scrollY = InAppWebView.this.getScrollY();
                    int measuredHeight = InAppWebView.this.getMeasuredHeight();
                    int height = createBitmap.getHeight();
                    if (scrollY + measuredHeight > height) {
                        scrollY = height - measuredHeight;
                    }
                    if (scrollY < 0) {
                        scrollY = 0;
                    }
                    Bitmap createBitmap2 = Bitmap.createBitmap(createBitmap, 0, scrollY, createBitmap.getWidth(), measuredHeight);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    createBitmap2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                        String message = e.getMessage();
                        if (message != null) {
                            Log.e(InAppWebView.LOG_TAG, message);
                        }
                    }
                    createBitmap2.recycle();
                    result.success(byteArrayOutputStream.toByteArray());
                } catch (IllegalArgumentException e2) {
                    String message2 = e2.getMessage();
                    if (message2 != null) {
                        Log.e(InAppWebView.LOG_TAG, message2);
                    }
                    result.success(null);
                }
            }
        });
    }

    public void setOptions(InAppWebViewOptions inAppWebViewOptions, HashMap<String, Object> hashMap) {
        String str;
        String str2;
        WebSettings settings = getSettings();
        if (!(hashMap.get("javaScriptEnabled") == null || this.options.javaScriptEnabled == inAppWebViewOptions.javaScriptEnabled)) {
            settings.setJavaScriptEnabled(inAppWebViewOptions.javaScriptEnabled.booleanValue());
        }
        if (!(hashMap.get("debuggingEnabled") == null || this.options.debuggingEnabled == inAppWebViewOptions.debuggingEnabled || Build.VERSION.SDK_INT < 19)) {
            setWebContentsDebuggingEnabled(inAppWebViewOptions.debuggingEnabled.booleanValue());
        }
        String str3 = "true";
        if (!(hashMap.get("useShouldInterceptAjaxRequest") == null || this.options.useShouldInterceptAjaxRequest == inAppWebViewOptions.useShouldInterceptAjaxRequest)) {
            if (inAppWebViewOptions.useShouldInterceptAjaxRequest.booleanValue()) {
                str2 = str3;
            } else {
                str2 = "false";
            }
            String replace = enableVariableForShouldInterceptAjaxRequestJS.replace("$PLACEHOLDER_VALUE", str2);
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(replace, (ValueCallback) null);
            } else {
                loadUrl("javascript:" + replace);
            }
        }
        if (!(hashMap.get("useShouldInterceptFetchRequest") == null || this.options.useShouldInterceptFetchRequest == inAppWebViewOptions.useShouldInterceptFetchRequest)) {
            if (inAppWebViewOptions.useShouldInterceptFetchRequest.booleanValue()) {
                str = str3;
            } else {
                str = "false";
            }
            String replace2 = enableVariableForShouldInterceptFetchRequestsJS.replace("$PLACEHOLDER_VALUE", str);
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(replace2, (ValueCallback) null);
            } else {
                loadUrl("javascript:" + replace2);
            }
        }
        if (!(hashMap.get("useOnLoadResource") == null || this.options.useOnLoadResource == inAppWebViewOptions.useOnLoadResource)) {
            if (!inAppWebViewOptions.useOnLoadResource.booleanValue()) {
                str3 = "false";
            }
            String replace3 = enableVariableForOnLoadResourceJS.replace("$PLACEHOLDER_VALUE", str3);
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(replace3, (ValueCallback) null);
            } else {
                loadUrl("javascript:" + replace3);
            }
        }
        if (!(hashMap.get("javaScriptCanOpenWindowsAutomatically") == null || this.options.javaScriptCanOpenWindowsAutomatically == inAppWebViewOptions.javaScriptCanOpenWindowsAutomatically)) {
            settings.setJavaScriptCanOpenWindowsAutomatically(inAppWebViewOptions.javaScriptCanOpenWindowsAutomatically.booleanValue());
        }
        if (!(hashMap.get("builtInZoomControls") == null || this.options.builtInZoomControls == inAppWebViewOptions.builtInZoomControls)) {
            settings.setBuiltInZoomControls(inAppWebViewOptions.builtInZoomControls.booleanValue());
        }
        if (!(hashMap.get("displayZoomControls") == null || this.options.displayZoomControls == inAppWebViewOptions.displayZoomControls)) {
            settings.setDisplayZoomControls(inAppWebViewOptions.displayZoomControls.booleanValue());
        }
        if (!(hashMap.get("safeBrowsingEnabled") == null || this.options.safeBrowsingEnabled == inAppWebViewOptions.safeBrowsingEnabled || Build.VERSION.SDK_INT < 26)) {
            settings.setSafeBrowsingEnabled(inAppWebViewOptions.safeBrowsingEnabled.booleanValue());
        }
        if (!(hashMap.get("mediaPlaybackRequiresUserGesture") == null || this.options.mediaPlaybackRequiresUserGesture == inAppWebViewOptions.mediaPlaybackRequiresUserGesture)) {
            settings.setMediaPlaybackRequiresUserGesture(inAppWebViewOptions.mediaPlaybackRequiresUserGesture.booleanValue());
        }
        if (!(hashMap.get("databaseEnabled") == null || this.options.databaseEnabled == inAppWebViewOptions.databaseEnabled)) {
            settings.setDatabaseEnabled(inAppWebViewOptions.databaseEnabled.booleanValue());
        }
        if (!(hashMap.get("domStorageEnabled") == null || this.options.domStorageEnabled == inAppWebViewOptions.domStorageEnabled)) {
            settings.setDomStorageEnabled(inAppWebViewOptions.domStorageEnabled.booleanValue());
        }
        if (hashMap.get("userAgent") != null && !this.options.userAgent.equals(inAppWebViewOptions.userAgent) && !inAppWebViewOptions.userAgent.isEmpty()) {
            settings.setUserAgentString(inAppWebViewOptions.userAgent);
        }
        if (hashMap.get("applicationNameForUserAgent") != null && !this.options.applicationNameForUserAgent.equals(inAppWebViewOptions.applicationNameForUserAgent) && !inAppWebViewOptions.applicationNameForUserAgent.isEmpty() && Build.VERSION.SDK_INT >= 17) {
            settings.setUserAgentString(((inAppWebViewOptions.userAgent == null || inAppWebViewOptions.userAgent.isEmpty()) ? WebSettings.getDefaultUserAgent(getContext()) : inAppWebViewOptions.userAgent) + " " + this.options.applicationNameForUserAgent);
        }
        if (hashMap.get("clearCache") != null && inAppWebViewOptions.clearCache.booleanValue()) {
            clearAllCache();
        } else if (hashMap.get("clearSessionCache") != null && inAppWebViewOptions.clearSessionCache.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        if (!(hashMap.get("thirdPartyCookiesEnabled") == null || this.options.thirdPartyCookiesEnabled == inAppWebViewOptions.thirdPartyCookiesEnabled || Build.VERSION.SDK_INT < 21)) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, inAppWebViewOptions.thirdPartyCookiesEnabled.booleanValue());
        }
        if (!(hashMap.get("useWideViewPort") == null || this.options.useWideViewPort == inAppWebViewOptions.useWideViewPort)) {
            settings.setUseWideViewPort(inAppWebViewOptions.useWideViewPort.booleanValue());
        }
        if (!(hashMap.get("supportZoom") == null || this.options.supportZoom == inAppWebViewOptions.supportZoom)) {
            settings.setSupportZoom(inAppWebViewOptions.supportZoom.booleanValue());
        }
        if (hashMap.get("textZoom") != null && !this.options.textZoom.equals(inAppWebViewOptions.textZoom)) {
            settings.setTextZoom(inAppWebViewOptions.textZoom.intValue());
        }
        if (!(hashMap.get("verticalScrollBarEnabled") == null || this.options.verticalScrollBarEnabled == inAppWebViewOptions.verticalScrollBarEnabled)) {
            setVerticalScrollBarEnabled(inAppWebViewOptions.verticalScrollBarEnabled.booleanValue());
        }
        if (!(hashMap.get("horizontalScrollBarEnabled") == null || this.options.horizontalScrollBarEnabled == inAppWebViewOptions.horizontalScrollBarEnabled)) {
            setHorizontalScrollBarEnabled(inAppWebViewOptions.horizontalScrollBarEnabled.booleanValue());
        }
        if (!(hashMap.get("transparentBackground") == null || this.options.transparentBackground == inAppWebViewOptions.transparentBackground)) {
            if (inAppWebViewOptions.transparentBackground.booleanValue()) {
                setBackgroundColor(0);
            } else {
                setBackgroundColor(Color.parseColor("#FFFFFF"));
            }
        }
        if (Build.VERSION.SDK_INT >= 21 && hashMap.get("mixedContentMode") != null && (this.options.mixedContentMode == null || !this.options.mixedContentMode.equals(inAppWebViewOptions.mixedContentMode))) {
            settings.setMixedContentMode(inAppWebViewOptions.mixedContentMode.intValue());
        }
        if (!(hashMap.get("supportMultipleWindows") == null || this.options.supportMultipleWindows == inAppWebViewOptions.supportMultipleWindows)) {
            settings.setSupportMultipleWindows(inAppWebViewOptions.supportMultipleWindows.booleanValue());
        }
        if (!(hashMap.get("useOnDownloadStart") == null || this.options.useOnDownloadStart == inAppWebViewOptions.useOnDownloadStart)) {
            if (inAppWebViewOptions.useOnDownloadStart.booleanValue()) {
                setDownloadListener(new DownloadStartListener());
            } else {
                setDownloadListener(null);
            }
        }
        if (!(hashMap.get("allowContentAccess") == null || this.options.allowContentAccess == inAppWebViewOptions.allowContentAccess)) {
            settings.setAllowContentAccess(inAppWebViewOptions.allowContentAccess.booleanValue());
        }
        if (!(hashMap.get("allowFileAccess") == null || this.options.allowFileAccess == inAppWebViewOptions.allowFileAccess)) {
            settings.setAllowFileAccess(inAppWebViewOptions.allowFileAccess.booleanValue());
        }
        if (!(hashMap.get("allowFileAccessFromFileURLs") == null || this.options.allowFileAccessFromFileURLs == inAppWebViewOptions.allowFileAccessFromFileURLs)) {
            settings.setAllowFileAccessFromFileURLs(inAppWebViewOptions.allowFileAccessFromFileURLs.booleanValue());
        }
        if (!(hashMap.get("allowUniversalAccessFromFileURLs") == null || this.options.allowUniversalAccessFromFileURLs == inAppWebViewOptions.allowUniversalAccessFromFileURLs)) {
            settings.setAllowUniversalAccessFromFileURLs(inAppWebViewOptions.allowUniversalAccessFromFileURLs.booleanValue());
        }
        if (!(hashMap.get("cacheEnabled") == null || this.options.cacheEnabled == inAppWebViewOptions.cacheEnabled)) {
            setCacheEnabled(inAppWebViewOptions.cacheEnabled.booleanValue());
        }
        if (hashMap.get("appCachePath") != null && (this.options.appCachePath == null || !this.options.appCachePath.equals(inAppWebViewOptions.appCachePath))) {
            settings.setAppCachePath(inAppWebViewOptions.appCachePath);
        }
        if (!(hashMap.get("blockNetworkImage") == null || this.options.blockNetworkImage == inAppWebViewOptions.blockNetworkImage)) {
            settings.setBlockNetworkImage(inAppWebViewOptions.blockNetworkImage.booleanValue());
        }
        if (!(hashMap.get("blockNetworkLoads") == null || this.options.blockNetworkLoads == inAppWebViewOptions.blockNetworkLoads)) {
            settings.setBlockNetworkLoads(inAppWebViewOptions.blockNetworkLoads.booleanValue());
        }
        if (hashMap.get("cacheMode") != null && !this.options.cacheMode.equals(inAppWebViewOptions.cacheMode)) {
            settings.setCacheMode(inAppWebViewOptions.cacheMode.intValue());
        }
        if (hashMap.get("cursiveFontFamily") != null && !this.options.cursiveFontFamily.equals(inAppWebViewOptions.cursiveFontFamily)) {
            settings.setCursiveFontFamily(inAppWebViewOptions.cursiveFontFamily);
        }
        if (hashMap.get("defaultFixedFontSize") != null && !this.options.defaultFixedFontSize.equals(inAppWebViewOptions.defaultFixedFontSize)) {
            settings.setDefaultFixedFontSize(inAppWebViewOptions.defaultFixedFontSize.intValue());
        }
        if (hashMap.get("defaultFontSize") != null && !this.options.defaultFontSize.equals(inAppWebViewOptions.defaultFontSize)) {
            settings.setDefaultFontSize(inAppWebViewOptions.defaultFontSize.intValue());
        }
        if (hashMap.get("defaultTextEncodingName") != null && !this.options.defaultTextEncodingName.equals(inAppWebViewOptions.defaultTextEncodingName)) {
            settings.setDefaultTextEncodingName(inAppWebViewOptions.defaultTextEncodingName);
        }
        if (Build.VERSION.SDK_INT >= 24 && hashMap.get("disabledActionModeMenuItems") != null && (this.options.disabledActionModeMenuItems == null || !this.options.disabledActionModeMenuItems.equals(inAppWebViewOptions.disabledActionModeMenuItems))) {
            settings.setDisabledActionModeMenuItems(inAppWebViewOptions.disabledActionModeMenuItems.intValue());
        }
        if (hashMap.get("fantasyFontFamily") != null && !this.options.fantasyFontFamily.equals(inAppWebViewOptions.fantasyFontFamily)) {
            settings.setFantasyFontFamily(inAppWebViewOptions.fantasyFontFamily);
        }
        if (hashMap.get("fixedFontFamily") != null && !this.options.fixedFontFamily.equals(inAppWebViewOptions.fixedFontFamily)) {
            settings.setFixedFontFamily(inAppWebViewOptions.fixedFontFamily);
        }
        if (hashMap.get("forceDark") != null && !this.options.forceDark.equals(inAppWebViewOptions.forceDark) && Build.VERSION.SDK_INT >= 29) {
            settings.setForceDark(inAppWebViewOptions.forceDark.intValue());
        }
        if (!(hashMap.get("geolocationEnabled") == null || this.options.geolocationEnabled == inAppWebViewOptions.geolocationEnabled)) {
            settings.setGeolocationEnabled(inAppWebViewOptions.geolocationEnabled.booleanValue());
        }
        if (!(hashMap.get("layoutAlgorithm") == null || this.options.layoutAlgorithm == inAppWebViewOptions.layoutAlgorithm)) {
            if (Build.VERSION.SDK_INT < 19 || !inAppWebViewOptions.layoutAlgorithm.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                settings.setLayoutAlgorithm(inAppWebViewOptions.layoutAlgorithm);
            } else {
                settings.setLayoutAlgorithm(inAppWebViewOptions.layoutAlgorithm);
            }
        }
        if (!(hashMap.get("loadWithOverviewMode") == null || this.options.loadWithOverviewMode == inAppWebViewOptions.loadWithOverviewMode)) {
            settings.setLoadWithOverviewMode(inAppWebViewOptions.loadWithOverviewMode.booleanValue());
        }
        if (!(hashMap.get("loadsImagesAutomatically") == null || this.options.loadsImagesAutomatically == inAppWebViewOptions.loadsImagesAutomatically)) {
            settings.setLoadsImagesAutomatically(inAppWebViewOptions.loadsImagesAutomatically.booleanValue());
        }
        if (hashMap.get("minimumFontSize") != null && !this.options.minimumFontSize.equals(inAppWebViewOptions.minimumFontSize)) {
            settings.setMinimumFontSize(inAppWebViewOptions.minimumFontSize.intValue());
        }
        if (hashMap.get("minimumLogicalFontSize") != null && !this.options.minimumLogicalFontSize.equals(inAppWebViewOptions.minimumLogicalFontSize)) {
            settings.setMinimumLogicalFontSize(inAppWebViewOptions.minimumLogicalFontSize.intValue());
        }
        if (hashMap.get("initialScale") != null && !this.options.initialScale.equals(inAppWebViewOptions.initialScale)) {
            setInitialScale(inAppWebViewOptions.initialScale.intValue());
        }
        if (!(hashMap.get("needInitialFocus") == null || this.options.needInitialFocus == inAppWebViewOptions.needInitialFocus)) {
            settings.setNeedInitialFocus(inAppWebViewOptions.needInitialFocus.booleanValue());
        }
        if (!(hashMap.get("offscreenPreRaster") == null || this.options.offscreenPreRaster == inAppWebViewOptions.offscreenPreRaster || Build.VERSION.SDK_INT < 23)) {
            settings.setOffscreenPreRaster(inAppWebViewOptions.offscreenPreRaster.booleanValue());
        }
        if (hashMap.get("sansSerifFontFamily") != null && !this.options.sansSerifFontFamily.equals(inAppWebViewOptions.sansSerifFontFamily)) {
            settings.setSansSerifFontFamily(inAppWebViewOptions.sansSerifFontFamily);
        }
        if (hashMap.get("serifFontFamily") != null && !this.options.serifFontFamily.equals(inAppWebViewOptions.serifFontFamily)) {
            settings.setSerifFontFamily(inAppWebViewOptions.serifFontFamily);
        }
        if (hashMap.get("standardFontFamily") != null && !this.options.standardFontFamily.equals(inAppWebViewOptions.standardFontFamily)) {
            settings.setStandardFontFamily(inAppWebViewOptions.standardFontFamily);
        }
        boolean z = true;
        if (hashMap.get("preferredContentMode") != null && !this.options.preferredContentMode.equals(inAppWebViewOptions.preferredContentMode)) {
            int i = AnonymousClass18.$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType[PreferredContentModeOptionType.fromValue(inAppWebViewOptions.preferredContentMode.intValue()).ordinal()];
            if (i == 1) {
                setDesktopMode(true);
            } else if (i == 2 || i == 3) {
                setDesktopMode(false);
            }
        }
        if (!(hashMap.get("saveFormData") == null || this.options.saveFormData == inAppWebViewOptions.saveFormData)) {
            settings.setSaveFormData(inAppWebViewOptions.saveFormData.booleanValue());
        }
        if (!(hashMap.get("incognito") == null || this.options.incognito == inAppWebViewOptions.incognito)) {
            setIncognito(inAppWebViewOptions.incognito.booleanValue());
        }
        if (!(hashMap.get("hardwareAcceleration") == null || this.options.hardwareAcceleration == inAppWebViewOptions.hardwareAcceleration)) {
            if (inAppWebViewOptions.hardwareAcceleration.booleanValue()) {
                setLayerType(2, null);
            } else {
                setLayerType(1, null);
            }
        }
        if (hashMap.get("regexToCancelSubFramesLoading") != null && (this.options.regexToCancelSubFramesLoading == null || !this.options.regexToCancelSubFramesLoading.equals(inAppWebViewOptions.regexToCancelSubFramesLoading))) {
            if (inAppWebViewOptions.regexToCancelSubFramesLoading == null) {
                this.regexToCancelSubFramesLoadingCompiled = null;
            } else {
                this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(this.options.regexToCancelSubFramesLoading);
            }
        }
        if (inAppWebViewOptions.contentBlockers != null) {
            this.contentBlockerHandler.getRuleList().clear();
            for (Map<String, Map<String, Object>> map : inAppWebViewOptions.contentBlockers) {
                this.contentBlockerHandler.getRuleList().add(new ContentBlocker(ContentBlockerTrigger.fromMap(map.get("trigger")), ContentBlockerAction.fromMap(map.get("action"))));
            }
        }
        if (hashMap.get("scrollBarStyle") != null && !this.options.scrollBarStyle.equals(inAppWebViewOptions.scrollBarStyle)) {
            setScrollBarStyle(inAppWebViewOptions.scrollBarStyle.intValue());
        }
        if (hashMap.get("scrollBarDefaultDelayBeforeFade") != null && (this.options.scrollBarDefaultDelayBeforeFade == null || !this.options.scrollBarDefaultDelayBeforeFade.equals(inAppWebViewOptions.scrollBarDefaultDelayBeforeFade))) {
            setScrollBarDefaultDelayBeforeFade(inAppWebViewOptions.scrollBarDefaultDelayBeforeFade.intValue());
        }
        if (hashMap.get("scrollbarFadingEnabled") != null && !this.options.scrollbarFadingEnabled.equals(inAppWebViewOptions.scrollbarFadingEnabled)) {
            setScrollbarFadingEnabled(inAppWebViewOptions.scrollbarFadingEnabled.booleanValue());
        }
        if (hashMap.get("scrollBarFadeDuration") != null && (this.options.scrollBarFadeDuration == null || !this.options.scrollBarFadeDuration.equals(inAppWebViewOptions.scrollBarFadeDuration))) {
            setScrollBarFadeDuration(inAppWebViewOptions.scrollBarFadeDuration.intValue());
        }
        if (hashMap.get("verticalScrollbarPosition") != null && !this.options.verticalScrollbarPosition.equals(inAppWebViewOptions.verticalScrollbarPosition)) {
            setVerticalScrollbarPosition(inAppWebViewOptions.verticalScrollbarPosition.intValue());
        }
        if (!(hashMap.get("disableVerticalScroll") == null || this.options.disableVerticalScroll == inAppWebViewOptions.disableVerticalScroll)) {
            setVerticalScrollBarEnabled(!inAppWebViewOptions.disableVerticalScroll.booleanValue() && inAppWebViewOptions.verticalScrollBarEnabled.booleanValue());
        }
        if (!(hashMap.get("disableHorizontalScroll") == null || this.options.disableHorizontalScroll == inAppWebViewOptions.disableHorizontalScroll)) {
            if (inAppWebViewOptions.disableHorizontalScroll.booleanValue() || !inAppWebViewOptions.horizontalScrollBarEnabled.booleanValue()) {
                z = false;
            }
            setHorizontalScrollBarEnabled(z);
        }
        if (hashMap.get("overScrollMode") != null && !this.options.overScrollMode.equals(inAppWebViewOptions.overScrollMode)) {
            setOverScrollMode(inAppWebViewOptions.overScrollMode.intValue());
        }
        if (!(hashMap.get("networkAvailable") == null || this.options.networkAvailable == inAppWebViewOptions.networkAvailable)) {
            setNetworkAvailable(inAppWebViewOptions.networkAvailable.booleanValue());
        }
        if (hashMap.get("rendererPriorityPolicy") != null && (!(this.options.rendererPriorityPolicy.get("rendererRequestedPriority") == inAppWebViewOptions.rendererPriorityPolicy.get("rendererRequestedPriority") && this.options.rendererPriorityPolicy.get("waivedWhenNotVisible") == inAppWebViewOptions.rendererPriorityPolicy.get("waivedWhenNotVisible")) && Build.VERSION.SDK_INT >= 26)) {
            setRendererPriorityPolicy(((Integer) inAppWebViewOptions.rendererPriorityPolicy.get("rendererRequestedPriority")).intValue(), ((Boolean) inAppWebViewOptions.rendererPriorityPolicy.get("waivedWhenNotVisible")).booleanValue());
        }
        this.options = inAppWebViewOptions;
    }

    /* renamed from: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView$18 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass18 {
        static final /* synthetic */ int[] $SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType = new int[PreferredContentModeOptionType.values().length];

        static {
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType[PreferredContentModeOptionType.DESKTOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType[PreferredContentModeOptionType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType[PreferredContentModeOptionType.RECOMMENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Map<String, Object> getOptions() {
        InAppWebViewOptions inAppWebViewOptions = this.options;
        if (inAppWebViewOptions != null) {
            return inAppWebViewOptions.getRealOptions(this);
        }
        return null;
    }

    public void injectDeferredObject(final String str, String str2, final MethodChannel.Result result) {
        if (str2 != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            String jSONArray2 = jSONArray.toString();
            str = String.format(str2, jSONArray2.substring(1, jSONArray2.length() - 1));
        }
        this.headlessHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.9
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT < 19) {
                    InAppWebView inAppWebView = InAppWebView.this;
                    inAppWebView.loadUrl("javascript:" + str);
                    result.success("");
                    return;
                }
                InAppWebView.this.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.9.1
                    public void onReceiveValue(String str3) {
                        if (result != null) {
                            result.success(str3);
                        }
                    }
                });
            }
        });
    }

    public void evaluateJavascript(String str, MethodChannel.Result result) {
        injectDeferredObject(str, null, result);
    }

    public void injectJavascriptFileFromUrl(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('script'); c.src = %s; d.body.appendChild(c); })(document);", null);
    }

    public void injectCSSCode(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('style'); c.innerHTML = %s; d.body.appendChild(c); })(document);", null);
    }

    public void injectCSSFileFromUrl(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('link'); c.rel='stylesheet'; c.type='text/css'; c.href = %s; d.head.appendChild(c); })(document);", null);
    }

    public HashMap<String, Object> getCopyBackForwardList() {
        WebBackForwardList copyBackForwardList = copyBackForwardList();
        int size = copyBackForwardList.getSize();
        int currentIndex = copyBackForwardList.getCurrentIndex();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            WebHistoryItem itemAtIndex = copyBackForwardList.getItemAtIndex(i);
            HashMap hashMap = new HashMap();
            hashMap.put("originalUrl", itemAtIndex.getOriginalUrl());
            hashMap.put("title", itemAtIndex.getTitle());
            hashMap.put(ImagesContract.URL, itemAtIndex.getUrl());
            arrayList.add(hashMap);
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("history", arrayList);
        hashMap2.put("currentIndex", Integer.valueOf(currentIndex));
        return hashMap2;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        float f = this.scale;
        int i5 = (int) (((float) i) / f);
        int i6 = (int) (((float) i2) / f);
        LinearLayout linearLayout = this.floatingContextMenu;
        if (linearLayout != null) {
            linearLayout.setAlpha(0.0f);
            this.floatingContextMenu.setVisibility(8);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("x", Integer.valueOf(i5));
        hashMap.put("y", Integer.valueOf(i6));
        this.channel.invokeMethod("onScrollChanged", hashMap);
    }

    public void scrollTo(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", num.intValue()), PropertyValuesHolder.ofInt("scrollY", num2.intValue())).setDuration(300L).start();
        } else {
            scrollTo(num.intValue(), num2.intValue());
        }
    }

    public void scrollBy(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", getScrollX() + num.intValue()), PropertyValuesHolder.ofInt("scrollY", getScrollY() + num2.intValue())).setDuration(300L).start();
        } else {
            scrollBy(num.intValue(), num2.intValue());
        }
    }

    /* loaded from: classes2.dex */
    public class DownloadStartListener implements DownloadListener {
        DownloadStartListener() {
            InAppWebView.this = r1;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            HashMap hashMap = new HashMap();
            if (InAppWebView.this.inAppBrowserActivity != null) {
                hashMap.put("uuid", InAppWebView.this.inAppBrowserActivity.uuid);
            }
            hashMap.put(ImagesContract.URL, str);
            InAppWebView.this.channel.invokeMethod("onDownloadStart", hashMap);
        }
    }

    public void setDesktopMode(boolean z) {
        String str;
        WebSettings settings = getSettings();
        if (z) {
            str = settings.getUserAgentString().replace("Mobile", "eliboM").replace("Android", "diordnA");
        } else {
            str = settings.getUserAgentString().replace("eliboM", "Mobile").replace("diordnA", "Android");
        }
        settings.setUserAgentString(str);
        settings.setUseWideViewPort(z);
        settings.setLoadWithOverviewMode(z);
        settings.setSupportZoom(z);
        settings.setBuiltInZoomControls(z);
    }

    public void printCurrentPage() {
        PrintManager printManager = (PrintManager) Shared.activity.getSystemService("print");
        if (printManager != null) {
            String str = getTitle() + " Document";
            printManager.print(str, createPrintDocumentAdapter(str), new PrintAttributes.Builder().build());
            return;
        }
        Log.e(LOG_TAG, "No PrintManager available");
    }

    public Float getUpdatedScale() {
        return Float.valueOf(this.scale);
    }

    @Override // android.view.View
    public void onCreateContextMenu(ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        sendOnCreateContextMenuEvent();
    }

    private void sendOnCreateContextMenuEvent() {
        WebView.HitTestResult hitTestResult = getHitTestResult();
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
        hashMap.put("extra", hitTestResult.getExtra());
        HashMap hashMap2 = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap2.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap2.put("hitTestResult", hashMap);
        this.channel.invokeMethod("onCreateContextMenu", hashMap2);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.lastTouch = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.ViewGroup
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection == null && this.containerView != null) {
            this.containerView.getHandler().postDelayed(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.10
                @Override // java.lang.Runnable
                public void run() {
                    InputMethodManager inputMethodManager = (InputMethodManager) InAppWebView.this.getContext().getSystemService("input_method");
                    if (inputMethodManager != null && !inputMethodManager.isAcceptingText()) {
                        inputMethodManager.hideSoftInputFromWindow(InAppWebView.this.containerView.getWindowToken(), 2);
                    }
                }
            }, 128);
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return rebuildActionMode(super.startActionMode(callback), callback);
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i) {
        return rebuildActionMode(super.startActionMode(callback, i), callback);
    }

    public ActionMode rebuildActionMode(final ActionMode actionMode, final ActionMode.Callback callback) {
        boolean z;
        final int i = 0;
        if (this.floatingContextMenu != null) {
            hideContextMenu();
            z = true;
        } else {
            z = false;
        }
        if (actionMode == null) {
            return null;
        }
        Menu menu = actionMode.getMenu();
        if (this.options.disableContextMenu.booleanValue()) {
            menu.clear();
            return actionMode;
        }
        this.floatingContextMenu = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode, (ViewGroup) this, false);
        LinearLayout linearLayout = (LinearLayout) ((HorizontalScrollView) this.floatingContextMenu.getChildAt(0)).getChildAt(0);
        List<Map> arrayList = new ArrayList();
        ContextMenuOptions contextMenuOptions = new ContextMenuOptions();
        Map<String, Object> map = this.contextMenu;
        if (map != null) {
            arrayList = (List) map.get("menuItems");
            Map<String, Object> map2 = (Map) this.contextMenu.get(Constant.METHOD_OPTIONS);
            if (map2 != null) {
                contextMenuOptions.parse(map2);
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (contextMenuOptions.hideDefaultSystemContextMenuItems == null || !contextMenuOptions.hideDefaultSystemContextMenuItems.booleanValue()) {
            for (int i2 = 0; i2 < menu.size(); i2++) {
                final MenuItem item = menu.getItem(i2);
                final int itemId = item.getItemId();
                final String charSequence = item.getTitle().toString();
                TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode_item, (ViewGroup) this, false);
                textView.setText(charSequence);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.11
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        InAppWebView.this.hideContextMenu();
                        callback.onActionItemClicked(actionMode, item);
                        HashMap hashMap = new HashMap();
                        if (InAppWebView.this.inAppBrowserActivity != null) {
                            hashMap.put("uuid", InAppWebView.this.inAppBrowserActivity.uuid);
                        }
                        hashMap.put("androidId", Integer.valueOf(itemId));
                        hashMap.put("iosId", null);
                        hashMap.put("title", charSequence);
                        InAppWebView.this.channel.invokeMethod("onContextMenuActionItemClicked", hashMap);
                    }
                });
                if (this.floatingContextMenu != null) {
                    linearLayout.addView(textView);
                }
            }
        }
        for (Map map3 : arrayList) {
            final int intValue = ((Integer) map3.get("androidId")).intValue();
            final String str = (String) map3.get("title");
            TextView textView2 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode_item, (ViewGroup) this, false);
            textView2.setText(str);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InAppWebView.this.hideContextMenu();
                    HashMap hashMap = new HashMap();
                    if (InAppWebView.this.inAppBrowserActivity != null) {
                        hashMap.put("uuid", InAppWebView.this.inAppBrowserActivity.uuid);
                    }
                    hashMap.put("androidId", Integer.valueOf(intValue));
                    hashMap.put("iosId", null);
                    hashMap.put("title", str);
                    InAppWebView.this.channel.invokeMethod("onContextMenuActionItemClicked", hashMap);
                }
            });
            if (this.floatingContextMenu != null) {
                linearLayout.addView(textView2);
            }
        }
        Point point = this.lastTouch;
        final int i3 = point != null ? point.x : 0;
        Point point2 = this.lastTouch;
        if (point2 != null) {
            i = point2.y;
        }
        this.contextMenuPoint = new Point(i3, i);
        LinearLayout linearLayout2 = this.floatingContextMenu;
        if (linearLayout2 != null) {
            linearLayout2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.13
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (InAppWebView.this.floatingContextMenu != null) {
                        InAppWebView.this.floatingContextMenu.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        if (InAppWebView.this.getSettings().getJavaScriptEnabled()) {
                            InAppWebView.this.onScrollStopped();
                        } else {
                            InAppWebView.this.onFloatingActionGlobalLayout(i3, i);
                        }
                    }
                }
            });
            addView(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i3, i));
            if (z) {
                sendOnCreateContextMenuEvent();
            }
            Runnable runnable = this.checkContextMenuShouldBeClosedTask;
            if (runnable != null) {
                runnable.run();
            }
        }
        menu.clear();
        return actionMode;
    }

    public void onFloatingActionGlobalLayout(int i, int i2) {
        int width = getWidth();
        getHeight();
        int width2 = this.floatingContextMenu.getWidth();
        int height = this.floatingContextMenu.getHeight();
        int i3 = i - (width2 / 2);
        if (i3 < 0) {
            i3 = 0;
        } else if (i3 + width2 > width) {
            i3 = width - width2;
        }
        float f = ((float) i2) - (((float) height) * 1.5f);
        if (f < 0.0f) {
            f = (float) (i2 + height);
        }
        updateViewLayout(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i3, ((int) f) + getScrollY()));
        this.headlessHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.14
            @Override // java.lang.Runnable
            public void run() {
                if (InAppWebView.this.floatingContextMenu != null) {
                    InAppWebView.this.floatingContextMenu.setVisibility(0);
                    InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100).setListener(null);
                }
            }
        });
    }

    public void hideContextMenu() {
        removeView(this.floatingContextMenu);
        this.floatingContextMenu = null;
        onHideContextMenu();
    }

    public void onHideContextMenu() {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.channel.invokeMethod("onHideContextMenu", hashMap);
    }

    public void onScrollStopped() {
        if (this.floatingContextMenu != null && Build.VERSION.SDK_INT >= 19) {
            adjustFloatingContextMenuPosition();
        }
    }

    public void adjustFloatingContextMenuPosition() {
        evaluateJavascript("(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement) {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();", new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.15
            public void onReceiveValue(String str) {
                if (InAppWebView.this.floatingContextMenu == null) {
                    return;
                }
                if (str != null) {
                    int i = InAppWebView.this.contextMenuPoint.x;
                    int parseFloat = (int) (((double) (Float.parseFloat(str) * InAppWebView.this.scale)) + (((double) InAppWebView.this.floatingContextMenu.getHeight()) / 3.5d));
                    InAppWebView.this.contextMenuPoint.y = parseFloat;
                    InAppWebView.this.onFloatingActionGlobalLayout(i, parseFloat);
                    return;
                }
                InAppWebView.this.floatingContextMenu.setVisibility(0);
                InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100).setListener(null);
            }
        });
    }

    public void getSelectedText(final ValueCallback<String> valueCallback) {
        evaluateJavascript(getSelectedTextJS, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.16
            public void onReceiveValue(String str) {
                valueCallback.onReceiveValue(str != null ? str.substring(1, str.length() - 1) : null);
            }
        });
    }

    public void getSelectedText(final MethodChannel.Result result) {
        getSelectedText(new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView.17
            public void onReceiveValue(String str) {
                result.success(str);
            }
        });
    }

    public Map<String, Object> requestFocusNodeHref() {
        Message obtainMessage = mHandler.obtainMessage();
        requestFocusNodeHref(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put("src", peekData.getString("src"));
        hashMap.put(ImagesContract.URL, peekData.getString(ImagesContract.URL));
        hashMap.put("title", peekData.getString("title"));
        return hashMap;
    }

    public Map<String, Object> requestImageRef() {
        Message obtainMessage = mHandler.obtainMessage();
        requestImageRef(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put(ImagesContract.URL, peekData.getString(ImagesContract.URL));
        return hashMap;
    }

    public Map<String, Object> getCertificateMap() {
        return getCertificateMap(getCertificate());
    }

    public static Map<String, Object> getCertificateMap(SslCertificate sslCertificate) {
        byte[] bArr = null;
        if (sslCertificate == null) {
            return null;
        }
        SslCertificate.DName issuedBy = sslCertificate.getIssuedBy();
        HashMap hashMap = new HashMap();
        hashMap.put("CName", issuedBy.getCName());
        hashMap.put("DName", issuedBy.getDName());
        hashMap.put("OName", issuedBy.getOName());
        hashMap.put("UName", issuedBy.getUName());
        SslCertificate.DName issuedTo = sslCertificate.getIssuedTo();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("CName", issuedTo.getCName());
        hashMap2.put("DName", issuedTo.getDName());
        hashMap2.put("OName", issuedTo.getOName());
        hashMap2.put("UName", issuedTo.getUName());
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                X509Certificate x509Certificate = sslCertificate.getX509Certificate();
                if (x509Certificate != null) {
                    bArr = x509Certificate.getEncoded();
                }
            } catch (CertificateEncodingException e) {
                e.printStackTrace();
            }
        } else {
            try {
                bArr = Util.getX509CertFromSslCertHack(sslCertificate).getEncoded();
            } catch (CertificateEncodingException e2) {
                e2.printStackTrace();
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("issuedBy", hashMap);
        hashMap3.put("issuedTo", hashMap2);
        hashMap3.put("validNotAfterDate", Long.valueOf(sslCertificate.getValidNotAfterDate().getTime()));
        hashMap3.put("validNotBeforeDate", Long.valueOf(sslCertificate.getValidNotBeforeDate().getTime()));
        hashMap3.put("x509Certificate", bArr);
        return hashMap3;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.InAppWebView.InputAwareWebView
    public void dispose() {
        if (this.windowId != null && InAppWebViewChromeClient.windowWebViewMessages.containsKey(this.windowId)) {
            InAppWebViewChromeClient.windowWebViewMessages.remove(this.windowId);
        }
        this.headlessHandler.removeCallbacksAndMessages(null);
        mHandler.removeCallbacksAndMessages(null);
        removeJavascriptInterface(JavaScriptBridgeInterface.name);
        removeAllViews();
        Runnable runnable = this.checkContextMenuShouldBeClosedTask;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.checkScrollStoppedTask;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        super.dispose();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
    }
}
