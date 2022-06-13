package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.Credential;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialContract;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialDatabase;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpaceContract;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import com.pichillilorenzo.flutter_inappwebview.JavaScriptBridgeInterface;
import com.pichillilorenzo.flutter_inappwebview.Util;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import ren.yale.android.cachewebviewlib.WebViewCacheInterceptorInst;

/* loaded from: classes2.dex */
public class InAppWebViewClient extends WebViewClient {
    protected static final String LOG_TAG = "IAWebViewClient";
    static final String[] cache = {".js", ".ico", ".css", ".png", ".jpg", ".jpeg", ".gif", ".bmp", ".ttf", ".woff", ".woff2", ".otf", ".eot", ".svg", ".xml", ".txt", ".text", ".conf", ".webp", ".bin", ".data"};
    private static List<Credential> credentialsProposed = null;
    private static int previousAuthRequestFailureCount = 0;
    private static String userAgent = "";
    public MethodChannel channel;
    private FlutterWebView flutterWebView;
    private InAppBrowserActivity inAppBrowserActivity;

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
    }

    public InAppWebViewClient(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.inAppBrowserActivity = (InAppBrowserActivity) obj;
        } else if (obj instanceof FlutterWebView) {
            this.flutterWebView = (FlutterWebView) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        this.channel = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.flutterWebView.channel;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        if (!inAppWebView.options.useShouldOverrideUrlLoading.booleanValue()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            onShouldOverrideUrlLoading(inAppWebView, webResourceRequest.getUrl().toString(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders(), webResourceRequest.isForMainFrame(), webResourceRequest.hasGesture(), webResourceRequest.isRedirect());
        } else {
            onShouldOverrideUrlLoading(inAppWebView, webResourceRequest.getUrl().toString(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders(), webResourceRequest.isForMainFrame(), webResourceRequest.hasGesture(), false);
        }
        if (inAppWebView.regexToCancelSubFramesLoadingCompiled == null) {
            return webResourceRequest.isForMainFrame();
        }
        if (!webResourceRequest.isForMainFrame() && !inAppWebView.regexToCancelSubFramesLoadingCompiled.matcher(webResourceRequest.getUrl().toString()).matches()) {
            return false;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        if (!inAppWebView.options.useShouldOverrideUrlLoading.booleanValue()) {
            return false;
        }
        onShouldOverrideUrlLoading(inAppWebView, str, ShareTarget.METHOD_GET, null, true, false, false);
        return true;
    }

    public void onShouldOverrideUrlLoading(final InAppWebView inAppWebView, final String str, String str2, final Map<String, String> map, final boolean z, boolean z2, boolean z3) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_METHOD, str2);
        hashMap.put("headers", map);
        hashMap.put("isForMainFrame", Boolean.valueOf(z));
        hashMap.put("androidHasGesture", Boolean.valueOf(z2));
        hashMap.put("androidIsRedirect", Boolean.valueOf(z3));
        hashMap.put("iosWKNavigationType", null);
        this.channel.invokeMethod("shouldOverrideUrlLoading", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.1
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Integer num;
                if (obj != null && (num = (Integer) ((Map) obj).get("action")) != null && num.intValue() == 1 && z) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        inAppWebView.loadUrl(str, map);
                    } else {
                        inAppWebView.loadUrl(str);
                    }
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str3, String str4, Object obj) {
                Log.d(InAppWebViewClient.LOG_TAG, "ERROR: " + str3 + " " + str4);
            }
        });
    }

    private void loadCustomJavaScript(WebView webView) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        String str = "(function(console) {   var oldLogs = {       'log': console.log,       'debug': console.debug,       'error': console.error,       'info': console.info,       'warn': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = '';               for (var i in arguments) {                   if (message == '') {                       message += arguments[i];                   }                   else {                       message += ' ' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);".replaceAll("[\r\n]+", "") + JavaScriptBridgeInterface.flutterInAppBroserJSClass.replaceAll("[\r\n]+", "");
        if (inAppWebView.options.useShouldInterceptAjaxRequest.booleanValue()) {
            str = str + "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case 'arraybuffer':          callback(new Uint8Array(request.response));          return;        case 'blob':          const reader = new FileReader();          reader.addEventListener('loadend', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case 'document':          callback(request.response.documentElement.outerHTML);          return;        case 'json':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(': ');          var header = parts.shift();          var value = parts.join(': ');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,          responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler('onAjaxProgress', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(': ');                var header = parts.shift();                var value = parts.join(': ');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,                responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler('onAjaxReadyStateChange', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener('loadstart', handleEvent);      this.addEventListener('load', handleEvent);      this.addEventListener('loadend', handleEvent);      this.addEventListener('progress', handleEvent);      this.addEventListener('error', handleEvent);      this.addEventListener('abort', handleEvent);      this.addEventListener('timeout', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler('shouldInterceptAjaxRequest', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += ', ' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);".replaceAll("[\r\n]+", "");
        }
        if (inAppWebView.options.useShouldInterceptFetchRequest.booleanValue()) {
            str = str + "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = 'default';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === 'federated') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === 'password') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler('shouldInterceptFetchRequest', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);".replaceAll("[\r\n]+", "");
        }
        if (inAppWebView.options.useOnLoadResource.booleanValue()) {
            str = str + "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler('onLoadResource', entry);         }       });   });   observer.observe({entryTypes: ['resource']});})();".replaceAll("[\r\n]+", "");
        }
        String replaceAll = "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();".replace("$PLACEHOLDER_VALUE", (((str + "(function(){  document.addEventListener('keydown', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();".replaceAll("[\r\n]+", "")) + "(function(){  window.addEventListener('focus', function(e) {    window.flutter_inappwebview.callHandler('onWindowFocus');  });})();".replaceAll("[\r\n]+", "")) + "(function(){  window.addEventListener('blur', function(e) {    window.flutter_inappwebview.callHandler('onWindowBlur');  });})();".replaceAll("[\r\n]+", "")) + "window.print = function() {  window.flutter_inappwebview.callHandler('onPrint', window.location.href);};".replaceAll("[\r\n]+", "")).replaceAll("[\r\n]+", "");
        if (Build.VERSION.SDK_INT >= 19) {
            inAppWebView.evaluateJavascript(replaceAll, (ValueCallback) null);
            return;
        }
        inAppWebView.loadUrl("javascript:" + replaceAll);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        loadCustomJavaScript(inAppWebView);
        super.onPageStarted(webView, str, bitmap);
        inAppWebView.isLoading = true;
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (!(inAppBrowserActivity == null || inAppBrowserActivity.searchView == null || str.equals(this.inAppBrowserActivity.searchView.getQuery().toString()))) {
            this.inAppBrowserActivity.searchView.setQuery(str, false);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.inAppBrowserActivity;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        this.channel.invokeMethod("onLoadStart", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        loadCustomJavaScript(inAppWebView);
        super.onPageFinished(webView, str);
        inAppWebView.isLoading = false;
        previousAuthRequestFailureCount = 0;
        credentialsProposed = null;
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().flush();
        } else {
            CookieSyncManager.getInstance().sync();
        }
        String replaceAll = "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event('flutterInAppWebViewPlatformReady'));    window.flutter_inappwebview._platformReady = true;  }})();".replaceAll("[\r\n]+", "");
        if (Build.VERSION.SDK_INT >= 19) {
            inAppWebView.evaluateJavascript(replaceAll, (ValueCallback) null);
        } else {
            inAppWebView.loadUrl("javascript:" + replaceAll);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        this.channel.invokeMethod("onLoadStop", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put("androidIsReload", Boolean.valueOf(z));
        this.channel.invokeMethod("onUpdateVisitedHistory", hashMap);
        super.doUpdateVisitedHistory(webView, str, z);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        if (inAppWebView.options.disableDefaultErrorPage.booleanValue()) {
            inAppWebView.stopLoading();
            inAppWebView.loadUrl("about:blank");
        }
        inAppWebView.isLoading = false;
        previousAuthRequestFailureCount = 0;
        credentialsProposed = null;
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str2);
        hashMap.put(Constant.PARAM_ERROR_CODE, Integer.valueOf(i));
        hashMap.put(Constant.PARAM_ERROR_MESSAGE, str);
        this.channel.invokeMethod("onLoadError", hashMap);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.isForMainFrame()) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(ImagesContract.URL, webResourceRequest.getUrl().toString());
            hashMap.put("statusCode", Integer.valueOf(webResourceResponse.getStatusCode()));
            hashMap.put("description", webResourceResponse.getReasonPhrase());
            this.channel.invokeMethod("onLoadHttpError", hashMap);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(final WebView webView, final HttpAuthHandler httpAuthHandler, final String str, final String str2) {
        try {
            URL url = new URL(webView.getUrl());
            final String protocol = url.getProtocol();
            final int port = url.getPort();
            previousAuthRequestFailureCount++;
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, str);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, protocol);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, str2);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, Integer.valueOf(port));
            hashMap.put("previousFailureCount", Integer.valueOf(previousAuthRequestFailureCount));
            this.channel.invokeMethod("onReceivedHttpAuthRequest", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.2
                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void success(Object obj) {
                    if (obj != null) {
                        Map map = (Map) obj;
                        Integer num = (Integer) map.get("action");
                        if (num != null) {
                            int intValue = num.intValue();
                            if (intValue == 1) {
                                String str3 = (String) map.get(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME);
                                String str4 = (String) map.get(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD);
                                Boolean bool = (Boolean) map.get("permanentPersistence");
                                if (bool != null && bool.booleanValue() && Build.VERSION.SDK_INT >= 26) {
                                    CredentialDatabase.getInstance(webView.getContext()).setHttpAuthCredential(str, protocol, str2, Integer.valueOf(port), str3, str4);
                                }
                                httpAuthHandler.proceed(str3, str4);
                                return;
                            } else if (intValue != 2) {
                                List unused = InAppWebViewClient.credentialsProposed = null;
                                int unused2 = InAppWebViewClient.previousAuthRequestFailureCount = 0;
                                httpAuthHandler.cancel();
                                return;
                            } else {
                                if (InAppWebViewClient.credentialsProposed == null) {
                                    List unused3 = InAppWebViewClient.credentialsProposed = CredentialDatabase.getInstance(webView.getContext()).getHttpAuthCredentials(str, protocol, str2, Integer.valueOf(port));
                                }
                                if (InAppWebViewClient.credentialsProposed.size() > 0) {
                                    Credential credential = (Credential) InAppWebViewClient.credentialsProposed.remove(0);
                                    httpAuthHandler.proceed(credential.username, credential.password);
                                    return;
                                }
                                httpAuthHandler.cancel();
                                return;
                            }
                        }
                    }
                    InAppWebViewClient.super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void error(String str3, String str4, Object obj) {
                    Log.e(InAppWebViewClient.LOG_TAG, str3 + ", " + str4);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void notImplemented() {
                    InAppWebViewClient.super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                }
            });
        } catch (MalformedURLException e) {
            e.printStackTrace();
            credentialsProposed = null;
            previousAuthRequestFailureCount = 0;
            httpAuthHandler.cancel();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(final WebView webView, final SslErrorHandler sslErrorHandler, final SslError sslError) {
        try {
            URL url = new URL(sslError.getUrl());
            String host = url.getHost();
            String protocol = url.getProtocol();
            int port = url.getPort();
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, host);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, protocol);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, null);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, Integer.valueOf(port));
            hashMap.put("androidError", Integer.valueOf(sslError.getPrimaryError()));
            hashMap.put("iosError", null);
            hashMap.put("sslCertificate", InAppWebView.getCertificateMap(sslError.getCertificate()));
            int primaryError = sslError.getPrimaryError();
            hashMap.put(Constant.PARAM_ERROR_MESSAGE, primaryError != 0 ? primaryError != 1 ? primaryError != 2 ? primaryError != 3 ? primaryError != 4 ? "A generic error occurred" : "The date of the certificate is invalid" : "The certificate authority is not trusted" : "Hostname mismatch" : "The certificate has expired" : "The certificate is not yet valid");
            this.channel.invokeMethod("onReceivedServerTrustAuthRequest", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.3
                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void success(Object obj) {
                    Integer num;
                    if (obj == null || (num = (Integer) ((Map) obj).get("action")) == null) {
                        InAppWebViewClient.super.onReceivedSslError(webView, sslErrorHandler, sslError);
                    } else if (num.intValue() != 1) {
                        sslErrorHandler.cancel();
                    } else {
                        sslErrorHandler.proceed();
                    }
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void error(String str, String str2, Object obj) {
                    Log.e(InAppWebViewClient.LOG_TAG, str + ", " + str2);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void notImplemented() {
                    InAppWebViewClient.super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }
            });
        } catch (MalformedURLException e) {
            e.printStackTrace();
            sslErrorHandler.cancel();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedClientCertRequest(final WebView webView, final ClientCertRequest clientCertRequest) {
        try {
            String protocol = new URL(webView.getUrl()).getProtocol();
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, clientCertRequest.getHost());
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL, protocol);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, null);
            hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, Integer.valueOf(clientCertRequest.getPort()));
            this.channel.invokeMethod("onReceivedClientCertRequest", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.4
                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void success(Object obj) {
                    if (obj != null) {
                        Map map = (Map) obj;
                        Integer num = (Integer) map.get("action");
                        if (num != null) {
                            int intValue = num.intValue();
                            if (intValue == 1) {
                                InAppWebView inAppWebView = (InAppWebView) webView;
                                Util.PrivateKeyAndCertificates loadPrivateKeyAndCertificate = Util.loadPrivateKeyAndCertificate((String) map.get("certificatePath"), (String) map.get("certificatePassword"), (String) map.get("androidKeyStoreType"));
                                clientCertRequest.proceed(loadPrivateKeyAndCertificate.privateKey, loadPrivateKeyAndCertificate.certificates);
                                return;
                            } else if (intValue != 2) {
                                clientCertRequest.cancel();
                                return;
                            } else {
                                clientCertRequest.ignore();
                                return;
                            }
                        }
                    }
                    InAppWebViewClient.super.onReceivedClientCertRequest(webView, clientCertRequest);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void error(String str, String str2, Object obj) {
                    Log.e(InAppWebViewClient.LOG_TAG, str + ", " + str2);
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void notImplemented() {
                    InAppWebViewClient.super.onReceivedClientCertRequest(webView, clientCertRequest);
                }
            });
        } catch (MalformedURLException e) {
            e.printStackTrace();
            clientCertRequest.cancel();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f, float f2) {
        super.onScaleChanged(webView, f, f2);
        ((InAppWebView) webView).scale = f2;
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("oldScale", Float.valueOf(f));
        hashMap.put("newScale", Float.valueOf(f2));
        this.channel.invokeMethod("onScaleChanged", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public void onSafeBrowsingHit(final WebView webView, final WebResourceRequest webResourceRequest, final int i, final SafeBrowsingResponse safeBrowsingResponse) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, webResourceRequest.getUrl().toString());
        hashMap.put("threatType", Integer.valueOf(i));
        this.channel.invokeMethod("onSafeBrowsingHit", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.5
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                if (obj != null) {
                    Map map = (Map) obj;
                    Boolean bool = (Boolean) map.get("report");
                    Integer num = (Integer) map.get("action");
                    Boolean valueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : true);
                    if (num != null) {
                        int intValue = num.intValue();
                        if (intValue == 0) {
                            safeBrowsingResponse.backToSafety(valueOf.booleanValue());
                            return;
                        } else if (intValue != 1) {
                            safeBrowsingResponse.showInterstitial(valueOf.booleanValue());
                            return;
                        } else {
                            safeBrowsingResponse.proceed(valueOf.booleanValue());
                            return;
                        }
                    }
                }
                InAppWebViewClient.super.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                Log.e(InAppWebViewClient.LOG_TAG, str + ", " + str2);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewClient.super.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getUserAgent(Context context) {
        if (!userAgent.isEmpty()) {
            return userAgent;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                userAgent = WebSettings.getDefaultUserAgent(context);
            } catch (Exception unused) {
                userAgent = System.getProperty("http.agent");
            }
        } else {
            userAgent = System.getProperty("http.agent");
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = userAgent.length();
        for (int i = 0; i < length; i++) {
            char charAt = userAgent.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                stringBuffer.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                stringBuffer.append(charAt);
            }
        }
        userAgent = stringBuffer.toString();
        return userAgent;
    }

    static boolean matchCacheRule(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            int i = 0;
            while (true) {
                String[] strArr = cache;
                if (i >= strArr.length) {
                    break;
                } else if (lowerCase.contains(strArr[i])) {
                    return true;
                } else {
                    i++;
                }
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, final String str) {
        URI uri;
        WebResourceResponse onShouldInterceptRequest;
        WebResourceResponse interceptRequest;
        final InAppWebView inAppWebView = (InAppWebView) webView;
        WebResourceResponse webResourceResponse = null;
        try {
            uri = new URI(str);
        } catch (URISyntaxException unused) {
            String str2 = str.split(":")[0];
            try {
                URL url = new URL(str.replace(str2, "https"));
                uri = new URI(str2, url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        if (inAppWebView.options.cacheEnabled.booleanValue() && matchCacheRule(uri.getPath()) && (interceptRequest = WebViewCacheInterceptorInst.getInstance().interceptRequest(new WebResourceRequest() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.6
            @Override // android.webkit.WebResourceRequest
            public String getMethod() {
                return null;
            }

            @Override // android.webkit.WebResourceRequest
            public boolean hasGesture() {
                return false;
            }

            @Override // android.webkit.WebResourceRequest
            public boolean isForMainFrame() {
                return false;
            }

            @Override // android.webkit.WebResourceRequest
            public boolean isRedirect() {
                return false;
            }

            @Override // android.webkit.WebResourceRequest
            public Uri getUrl() {
                return Uri.parse(str);
            }

            @Override // android.webkit.WebResourceRequest
            public Map<String, String> getRequestHeaders() {
                HashMap hashMap = new HashMap();
                hashMap.put("User-Agent", InAppWebViewClient.getUserAgent(inAppWebView.getContext()));
                return hashMap;
            }
        })) != null) {
            return interceptRequest;
        }
        if (inAppWebView.options.useShouldInterceptRequest.booleanValue() && (onShouldInterceptRequest = onShouldInterceptRequest(str)) != null) {
            return onShouldInterceptRequest;
        }
        String scheme = uri.getScheme();
        if (inAppWebView.options.resourceCustomSchemes != null && inAppWebView.options.resourceCustomSchemes.contains(scheme)) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(ImagesContract.URL, str);
            hashMap.put("scheme", scheme);
            try {
                Util.WaitFlutterResult invokeMethodAndWait = Util.invokeMethodAndWait(this.channel, "onLoadResourceCustomScheme", hashMap);
                if (invokeMethodAndWait.error != null) {
                    Log.e(LOG_TAG, invokeMethodAndWait.error);
                } else if (invokeMethodAndWait.result != null) {
                    Map map = (Map) invokeMethodAndWait.result;
                    try {
                        webResourceResponse = inAppWebView.contentBlockerHandler.checkUrl(inAppWebView, str, map.get("content-type").toString());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (webResourceResponse != null) {
                        return webResourceResponse;
                    }
                    return new WebResourceResponse(map.get("content-type").toString(), map.get("content-encoding").toString(), new ByteArrayInputStream((byte[]) map.get("data")));
                }
            } catch (InterruptedException e3) {
                e3.printStackTrace();
                return null;
            }
        }
        if (inAppWebView.contentBlockerHandler.getRuleList().size() <= 0) {
            return null;
        }
        try {
            return inAppWebView.contentBlockerHandler.checkUrl(inAppWebView, str);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebResourceResponse onShouldInterceptRequest;
        String uri = webResourceRequest.getUrl().toString();
        if (!((InAppWebView) webView).options.useShouldInterceptRequest.booleanValue() || (onShouldInterceptRequest = onShouldInterceptRequest(webResourceRequest)) == null) {
            return shouldInterceptRequest(webView, uri);
        }
        return onShouldInterceptRequest;
    }

    public WebResourceResponse onShouldInterceptRequest(Object obj) {
        Boolean bool;
        Boolean bool2;
        Map<String, String> map;
        ByteArrayInputStream byteArrayInputStream = null;
        String str = obj instanceof String ? (String) obj : null;
        boolean z = false;
        if (Build.VERSION.SDK_INT < 21 || !(obj instanceof WebResourceRequest)) {
            bool = true;
            bool2 = false;
            map = null;
        } else {
            WebResourceRequest webResourceRequest = (WebResourceRequest) obj;
            str = webResourceRequest.getUrl().toString();
            map = webResourceRequest.getRequestHeaders();
            bool2 = Boolean.valueOf(webResourceRequest.hasGesture());
            bool = Boolean.valueOf(webResourceRequest.isForMainFrame());
            if (Build.VERSION.SDK_INT >= 24) {
                z = Boolean.valueOf(webResourceRequest.isRedirect());
            }
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put(Constant.PARAM_METHOD, ShareTarget.METHOD_GET);
        hashMap.put("headers", map);
        hashMap.put("isForMainFrame", bool);
        hashMap.put("hasGesture", bool2);
        hashMap.put("isRedirect", z);
        try {
            Util.WaitFlutterResult invokeMethodAndWait = Util.invokeMethodAndWait(this.channel, "shouldInterceptRequest", hashMap);
            if (invokeMethodAndWait.error != null) {
                Log.e(LOG_TAG, invokeMethodAndWait.error);
            } else if (invokeMethodAndWait.result != null) {
                Map map2 = (Map) invokeMethodAndWait.result;
                String str2 = (String) map2.get("contentType");
                String str3 = (String) map2.get("contentEncoding");
                byte[] bArr = (byte[]) map2.get("data");
                Map map3 = (Map) map2.get("headers");
                Integer num = (Integer) map2.get("statusCode");
                String str4 = (String) map2.get("reasonPhrase");
                if (bArr != null) {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                }
                if ((map3 != null || num != null || str4 != null) && Build.VERSION.SDK_INT >= 21) {
                    return new WebResourceResponse(str2, str3, num.intValue(), str4, map3, byteArrayInputStream);
                }
                return new WebResourceResponse(str2, str3, byteArrayInputStream);
            }
            return null;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(final WebView webView, final Message message, final Message message2) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, webView.getUrl());
        this.channel.invokeMethod("onFormResubmission", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewClient.7
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Integer num;
                if (obj == null || (num = (Integer) ((Map) obj).get("action")) == null) {
                    InAppWebViewClient.super.onFormResubmission(webView, message, message2);
                } else if (num.intValue() != 0) {
                    message.sendToTarget();
                } else {
                    message2.sendToTarget();
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                Log.d(InAppWebViewClient.LOG_TAG, "ERROR: " + str + " " + str2);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                InAppWebViewClient.super.onFormResubmission(webView, message, message2);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(WebView webView, String str) {
        super.onPageCommitVisible(webView, str);
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        this.channel.invokeMethod("onPageCommitVisible", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (!((InAppWebView) webView).options.useOnRenderProcessGone.booleanValue()) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        Boolean valueOf = Boolean.valueOf(renderProcessGoneDetail.didCrash());
        Integer valueOf2 = Integer.valueOf(renderProcessGoneDetail.rendererPriorityAtExit());
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("didCrash", valueOf);
        hashMap.put("rendererPriorityAtExit", valueOf2);
        this.channel.invokeMethod("onRenderProcessGone", hashMap);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, str);
        hashMap.put("account", str2);
        hashMap.put("args", str3);
        this.channel.invokeMethod("onReceivedLoginRequest", hashMap);
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
        if (this.inAppBrowserActivity != null) {
            this.inAppBrowserActivity = null;
        }
        if (this.flutterWebView != null) {
            this.flutterWebView = null;
        }
    }
}
