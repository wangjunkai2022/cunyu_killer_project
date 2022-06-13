.class public final Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;
.super Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;
.source "InAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$DownloadStartListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "InAppWebView"

.field static final checkContextMenuShouldBeHiddenJS:Ljava/lang/String; = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : \'\';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == \'textarea\' || (nodeName == \'input\' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : \'text\')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === \'on\';  return txt === \'\' && !isActiveElementEditable;})();"

.field static final checkGlobalKeyDownEventToHideContextMenuJS:Ljava/lang/String; = "(function(){  document.addEventListener(\'keydown\', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();"

.field static final consoleLogJS:Ljava/lang/String; = "(function(console) {   var oldLogs = {       \'log\': console.log,       \'debug\': console.debug,       \'error\': console.error,       \'info\': console.info,       \'warn\': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = \'\';               for (var i in arguments) {                   if (message == \'\') {                       message += arguments[i];                   }                   else {                       message += \' \' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);"

.field static final enableVariableForOnLoadResourceJS:Ljava/lang/String; = "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;"

.field static final enableVariableForShouldInterceptAjaxRequestJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;"

.field static final enableVariableForShouldInterceptFetchRequestsJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;"

.field static final getSelectedTextJS:Ljava/lang/String; = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();"

.field static final interceptAjaxRequestsJS:Ljava/lang/String; = "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case \'arraybuffer\':          callback(new Uint8Array(request.response));          return;        case \'blob\':          const reader = new FileReader();          reader.addEventListener(\'loadend\', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case \'document\':          callback(request.response.documentElement.outerHTML);          return;        case \'json\':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(\': \');          var header = parts.shift();          var value = parts.join(\': \');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,          responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler(\'onAjaxProgress\', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(\': \');                var header = parts.shift();                var value = parts.join(\': \');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,                responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler(\'onAjaxReadyStateChange\', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener(\'loadstart\', handleEvent);      this.addEventListener(\'load\', handleEvent);      this.addEventListener(\'loadend\', handleEvent);      this.addEventListener(\'progress\', handleEvent);      this.addEventListener(\'error\', handleEvent);      this.addEventListener(\'abort\', handleEvent);      this.addEventListener(\'timeout\', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler(\'shouldInterceptAjaxRequest\', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += \', \' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);"

.field static final interceptFetchRequestsJS:Ljava/lang/String; = "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = \'default\';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === \'federated\') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === \'password\') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler(\'shouldInterceptFetchRequest\', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);"

.field static final isActiveElementInputEditableJS:Ljava/lang/String; = "var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : \'\';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == \'textarea\' || (nodeName == \'input\' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : \'text\')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === \'on\';"

.field static mHandler:Landroid/os/Handler; = null

.field static final onWindowBlurEventJS:Ljava/lang/String; = "(function(){  window.addEventListener(\'blur\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowBlur\');  });})();"

.field static final onWindowFocusEventJS:Ljava/lang/String; = "(function(){  window.addEventListener(\'focus\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowFocus\');  });})();"

.field static final platformReadyJS:Ljava/lang/String; = "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event(\'flutterInAppWebViewPlatformReady\'));    window.flutter_inappwebview._platformReady = true;  }})();"

.field static final printJS:Ljava/lang/String; = "window.print = function() {  window.flutter_inappwebview.callHandler(\'onPrint\', window.location.href);};"

.field static final resourceObserverJS:Ljava/lang/String; = "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler(\'onLoadResource\', entry);         }       });   });   observer.observe({entryTypes: [\'resource\']});})();"

.field static final scriptsWrapperJS:Ljava/lang/String; = "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();"

.field static final variableForOnLoadResourceJS:Ljava/lang/String; = "window._flutter_inappwebview_useOnLoadResource"

.field static final variableForShouldInterceptAjaxRequestJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptAjaxRequest"

.field static final variableForShouldInterceptFetchRequestsJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptFetchRequest"


# instance fields
.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field public checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

.field public checkScrollStoppedTask:Ljava/lang/Runnable;

.field public contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

.field public contextMenu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private contextMenuPoint:Landroid/graphics/Point;

.field public floatingContextMenu:Landroid/widget/LinearLayout;

.field public flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public headlessHandler:Landroid/os/Handler;

.field public httpClient:Lokhttp3/OkHttpClient;

.field public id:Ljava/lang/Object;

.field public inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

.field public inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

.field public inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

.field public inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

.field public initialPositionScrollStoppedTask:I

.field public isLoading:Z

.field public javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

.field private lastMotionEvent:Landroid/view/MotionEvent;

.field private lastTouch:Landroid/graphics/Point;

.field public newCheckContextMenuShouldBeClosedTaskTask:I

.field public newCheckScrollStoppedTask:I

.field okHttpClientCacheSize:I

.field public options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

.field public regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

.field public scale:F

.field public windowId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 624
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 98
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 v0, 0xa00000

    .line 99
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 100
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 104
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    .line 110
    iput v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 113
    iput v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 938
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 1623
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 1624
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 98
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p2, 0xa00000

    .line 99
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 100
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    const/4 p2, 0x0

    .line 102
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 104
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 110
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 113
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 938
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 1623
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 1624
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 632
    invoke-direct {p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 98
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p2, 0xa00000

    .line 99
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 100
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    const/4 p2, 0x0

    .line 102
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 104
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 105
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 p3, 0x64

    .line 110
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 113
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 938
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 1623
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 1624
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;Ljava/util/Map;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 636
    invoke-direct {p0, p1, p7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 98
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p7

    iget p7, p7, Landroid/util/DisplayMetrics;->density:F

    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p7, 0xa00000

    .line 99
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 100
    new-instance p7, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-direct {p7}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    const/4 p7, 0x0

    .line 102
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 103
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 104
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 110
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 113
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 938
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 1623
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 1624
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    .line 637
    instance-of p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_0

    .line 638
    check-cast p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_0

    .line 639
    :cond_0
    instance-of p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    if-eqz p1, :cond_1

    .line 640
    check-cast p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    .line 641
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lio/flutter/plugin/common/MethodChannel;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 642
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->id:Ljava/lang/Object;

    .line 643
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 644
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 645
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 646
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Landroid/graphics/Point;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method private clearCookies()V
    .locals 2

    .line 1057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1058
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$7;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$7;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method public static getCertificateMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslCertificate;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1933
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 1934
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1935
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CName"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DName"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OName"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 1941
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1942
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    .line 1951
    :try_start_0
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1953
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1956
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1960
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getX509CertFromSslCertHack(Landroid/net/http/SslCertificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1962
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 1966
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "issuedBy"

    .line 1967
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "issuedTo"

    .line 1968
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "validNotAfterDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "validNotBeforeDate"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "x509Certificate"

    .line 1971
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    return-object v0
.end method

.method private sendOnCreateContextMenuEvent()V
    .locals 4

    .line 1611
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1612
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1613
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1617
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v2, :cond_0

    .line 1618
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v3, "uuid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "hitTestResult"

    .line 1619
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onCreateContextMenu"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public adjustFloatingContextMenuPosition()V
    .locals 2

    .line 1850
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$15;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$15;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    const-string v1, "(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement) {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();"

    invoke-virtual {p0, v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public clearAllCache()V
    .locals 1

    const/4 v0, 0x1

    .line 1070
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearCache(Z)V

    .line 1071
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearCookies()V

    .line 1072
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearFormData()V

    .line 1073
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1997
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->destroy()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1634
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 1981
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->windowWebViewMessages:Ljava/util/Map;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->windowWebViewMessages:Ljava/util/Map;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1985
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "flutter_inappwebview"

    .line 1986
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->removeAllViews()V

    .line 1988
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1989
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1991
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1992
    :cond_2
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->dispose()V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0, p1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getCertificateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1928
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCopyBackForwardList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1482
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    .line 1484
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    .line 1486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 1489
    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    .line 1490
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1492
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "originalUrl"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v7, "url"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1499
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "history"

    .line 1501
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->getRealOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectedText(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1884
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$16;

    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$16;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Landroid/webkit/ValueCallback;)V

    const-string p1, "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();"

    invoke-virtual {p0, p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getSelectedText(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1895
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$17;

    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$17;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getUpdatedScale()Ljava/lang/Float;
    .locals 1

    .line 1601
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hideContextMenu()V
    .locals 1

    .line 1830
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1831
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 1832
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onHideContextMenu()V

    return-void
.end method

.method public injectCSSCode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1473
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public injectCSSFileFromUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1478
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1434
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1435
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1436
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1438
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1441
    :cond_0
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;

    invoke-direct {v0, p0, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public injectJavascriptFileFromUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1468
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1053
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 1014
    invoke-virtual/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1015
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p6, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public loadFile(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "InAppWebView"

    .line 1020
    :try_start_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getUrlAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1032
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "url is empty"

    .line 1029
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " asset file cannot be found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadFile(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    const-string v0, "InAppWebView"

    .line 1037
    :try_start_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getUrlAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 1049
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "url is empty"

    .line 1046
    invoke-interface {p3, v0, p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p2

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " asset file cannot be found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 990
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppWebView"

    const-string v1, "url is empty"

    .line 987
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 994
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 1000
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppWebView"

    const-string v0, "url is empty"

    .line 997
    invoke-interface {p3, p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .line 1606
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1607
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->sendOnCreateContextMenuEvent()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1639
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->containerView:Landroid/view/View;

    .line 1644
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$10;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$10;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    const-wide/16 v2, 0x80

    .line 1645
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p1
.end method

.method public onFloatingActionGlobalLayout(II)V
    .locals 4

    .line 1797
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getWidth()I

    move-result v0

    .line 1798
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getHeight()I

    .line 1799
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 1800
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 1801
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int v3, p1, v1

    if-le v3, v0, :cond_1

    sub-int p1, v0, v1

    :cond_1
    :goto_0
    int-to-float v0, p2

    int-to-float v1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    add-int/2addr p2, v2

    int-to-float v0, p2

    .line 1813
    :cond_2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    float-to-int v0, v0

    .line 1815
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1813
    invoke-virtual {p0, p2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1818
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$14;

    invoke-direct {p2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$14;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHideContextMenu()V
    .locals 3

    .line 1836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1837
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 1838
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onHideContextMenu"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1512
    invoke-super {p0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->onScrollChanged(IIII)V

    int-to-float p1, p1

    .line 1514
    iget p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    div-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 1517
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 1518
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1519
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1522
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1523
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p4, :cond_1

    .line 1524
    iget-object p4, p4, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v0, "uuid"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "x"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "y"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p2, "onScrollChanged"

    invoke-virtual {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onScrollStopped()V
    .locals 2

    .line 1843
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->adjustFloatingContextMenuPosition()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1628
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    .line 1629
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public postUrl(Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->postUrl(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    .line 1010
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppWebView"

    const-string v0, "url is empty"

    .line 1007
    invoke-interface {p3, p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public prepare()V
    .locals 9

    .line 656
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 658
    :goto_0
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->httpClient:Lokhttp3/OkHttpClient;

    .line 660
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    :goto_1
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    .line 661
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    const-string v4, "flutter_inappwebview"

    invoke-virtual {p0, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    :goto_2
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    .line 664
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 666
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    :goto_3
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    .line 667
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 669
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5

    const-string v3, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    invoke-static {v3}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    :goto_4
    invoke-direct {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

    .line 671
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

    invoke-static {p0, v0}, Landroidx/webkit/WebViewCompat;->setWebViewRenderProcessClient(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcessClient;)V

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 675
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$DownloadStartListener;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$DownloadStartListener;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 677
    :cond_6
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 679
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 680
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_7

    .line 681
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 683
    :cond_7
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 684
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 685
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 686
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 688
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_8

    .line 689
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 691
    :cond_8
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 693
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 694
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 696
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    const/16 v7, 0x11

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 697
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_5

    .line 698
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_a

    .line 699
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 701
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 702
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_c

    .line 703
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 704
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 709
    :cond_c
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearCache:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 710
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    goto :goto_7

    .line 711
    :cond_d
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearSessionCache:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 712
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 714
    :cond_e
    :goto_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_f

    .line 715
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v8, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v8, v8, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, p0, v8}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 717
    :cond_f
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 718
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 719
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 720
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 722
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_8

    :cond_10
    move v3, v1

    :goto_8
    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setVerticalScrollBarEnabled(Z)V

    .line 723
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_9

    :cond_11
    move v3, v1

    :goto_9
    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 725
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 726
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setBackgroundColor(I)V

    .line 728
    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_13

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 729
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 731
    :cond_13
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 732
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 733
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 734
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 735
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setCacheEnabled(Z)V

    .line 736
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 737
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 738
    :cond_14
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 739
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 740
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 741
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 742
    :cond_15
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 744
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 745
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 746
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_16

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 747
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    .line 748
    :cond_16
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 750
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_17

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 751
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 752
    :cond_17
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 753
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eqz v1, :cond_19

    .line 754
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_18

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings$LayoutAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 755
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_a

    .line 757
    :cond_18
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 760
    :cond_19
    :goto_a
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 761
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 762
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 763
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setInitialScale(I)V

    .line 764
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 765
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1a

    .line 766
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 767
    :cond_1a
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    .line 771
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->toValue()I

    move-result v3

    if-ne v1, v3, :cond_1b

    .line 772
    invoke-virtual {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    .line 774
    :cond_1b
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 775
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 776
    invoke-virtual {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setIncognito(Z)V

    .line 777
    :cond_1c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    .line 778
    invoke-virtual {p0, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b

    .line 780
    :cond_1d
    invoke-virtual {p0, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 781
    :goto_b
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 782
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 784
    :cond_1e
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarStyle(I)V

    .line 785
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 786
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarDefaultDelayBeforeFade(I)V

    goto :goto_c

    .line 788
    :cond_1f
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 790
    :goto_c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollbarFadingEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 792
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarFadeDuration(I)V

    goto :goto_d

    .line 794
    :cond_20
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollBarFadeDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 796
    :goto_d
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setVerticalScrollbarPosition(I)V

    .line 797
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOverScrollMode(I)V

    .line 798
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 799
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setNetworkAvailable(Z)V

    .line 801
    :cond_21
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    const-string v1, "waivedWhenNotVisible"

    const-string v2, "rendererRequestedPriority"

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_22

    .line 802
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 803
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 804
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 802
    invoke-virtual {p0, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setRendererPriorityPolicy(IZ)V

    goto :goto_e

    .line 805
    :cond_22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_24

    .line 807
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getRendererRequestedPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_24
    :goto_e
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 812
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "trigger"

    .line 814
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;

    move-result-object v2

    const-string v3, "action"

    .line 815
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

    move-result-object v1

    .line 816
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;

    invoke-direct {v4, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 819
    :cond_25
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$1;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 832
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;

    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 842
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$3;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    .line 856
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_26

    .line 857
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    .line 878
    :cond_26
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$5;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$5;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 920
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$6;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$6;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public printCurrentPage()V
    .locals 4

    .line 1584
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    if-eqz v0, :cond_0

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Document"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1590
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v2

    .line 1593
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 1594
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 1593
    invoke-virtual {v0, v1, v2, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_0

    :cond_0
    const-string v0, "InAppWebView"

    const-string v1, "No PrintManager available"

    .line 1596
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 16

    move-object/from16 v7, p0

    .line 1679
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1687
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 1688
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableContextMenu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1689
    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    return-object p1

    .line 1693
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/R$layout;->floating_action_mode:I

    .line 1694
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 1695
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 1696
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;-><init>()V

    .line 1700
    iget-object v2, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    if-eqz v2, :cond_3

    const-string v0, "menuItems"

    .line 1701
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1702
    iget-object v2, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    const-string v3, "options"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1704
    invoke-virtual {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;

    :cond_3
    if-nez v0, :cond_4

    .line 1707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v12, v0

    .line 1709
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v13, v8

    .line 1710
    :goto_1
    invoke-interface {v10}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge v13, v0, :cond_7

    .line 1711
    invoke-interface {v10, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1712
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 1713
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/R$layout;->floating_action_mode_item:I

    .line 1715
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 1716
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    new-instance v15, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$11;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$11;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode;Landroid/view/MenuItem;ILjava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1732
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 1733
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1738
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "androidId"

    .line 1739
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "title"

    .line 1740
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/pichillilorenzo/flutter_inappwebview/R$layout;->floating_action_mode_item:I

    .line 1742
    invoke-virtual {v3, v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1743
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;

    invoke-direct {v4, v7, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 1759
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1764
    :cond_9
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_3

    :cond_a
    move v0, v8

    .line 1765
    :goto_3
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lastTouch:Landroid/graphics/Point;

    if-eqz v1, :cond_b

    iget v8, v1, Landroid/graphics/Point;->y:I

    .line 1766
    :cond_b
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 1768
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    .line 1769
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$13;

    invoke-direct {v2, v7, v0, v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$13;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1783
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3, v0, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v7, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v9, :cond_c

    .line 1785
    invoke-direct/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->sendOnCreateContextMenuEvent()V

    .line 1787
    :cond_c
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 1788
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1791
    :cond_d
    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    return-object p1
.end method

.method public reload()V
    .locals 0

    .line 651
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->reload()V

    return-void
.end method

.method public requestFocusNodeHref()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1904
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1905
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 1908
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "src"

    .line 1909
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    .line 1910
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    .line 1911
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public requestImageRef()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1917
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1918
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestImageRef(Landroid/os/Message;)V

    .line 1919
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 1921
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 1922
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 3

    .line 1542
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [I

    .line 1543
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    aput v1, v0, p1

    const-string v1, "scrollX"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p3, [I

    .line 1544
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollY()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr v2, p2

    aput v2, v1, p1

    const-string p2, "scrollY"

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, p1

    aput-object p2, v1, p3

    .line 1545
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 1546
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2

    .line 1531
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [I

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "scrollX"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, p3, [I

    .line 1533
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    const-string p2, "scrollY"

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v1

    aput-object p2, v0, p3

    .line 1534
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 1535
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1537
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 973
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 974
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x1

    .line 975
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 978
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x0

    .line 979
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 6

    .line 1564
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "diordnA"

    const-string v3, "Mobile"

    const-string v4, "eliboM"

    if-eqz p1, :cond_0

    .line 1568
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1571
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1576
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1577
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1578
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public setIncognito(Z)V
    .locals 3

    .line 941
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 943
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 944
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 946
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    const/4 p1, 0x2

    .line 950
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x0

    .line 951
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 952
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearHistory()V

    .line 953
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearCache(Z)V

    .line 956
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearFormData()V

    .line 957
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 958
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 961
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 962
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 963
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 964
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :goto_1
    return-void
.end method

.method public setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1131
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "javaScriptEnabled"

    .line 1133
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 1134
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    const-string v1, "debuggingEnabled"

    .line 1136
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 1137
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    const-string v1, "useShouldInterceptAjaxRequest"

    .line 1139
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "javascript:"

    const-string v4, "$PLACEHOLDER_VALUE"

    const-string v5, "true"

    const-string v6, "false"

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_4

    .line 1140
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v1, v6

    :goto_0
    const-string v8, "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;"

    .line 1141
    invoke-virtual {v8, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_3

    .line 1143
    move-object v8, v7

    check-cast v8, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v1, v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 1145
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v1, "useShouldInterceptFetchRequest"

    .line 1149
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_7

    .line 1150
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_2

    :cond_5
    move-object v1, v6

    :goto_2
    const-string v8, "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;"

    .line 1151
    invoke-virtual {v8, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_6

    .line 1153
    move-object v8, v7

    check-cast v8, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v1, v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_3

    .line 1155
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v1, "useOnLoadResource"

    .line 1159
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_a

    .line 1160
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v6

    :goto_4
    const-string v1, "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;"

    .line 1161
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_9

    .line 1163
    move-object v3, v7

    check-cast v3, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v1, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_5

    .line 1165
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v1, "javaScriptCanOpenWindowsAutomatically"

    .line 1169
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_b

    .line 1170
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    :cond_b
    const-string v1, "builtInZoomControls"

    .line 1172
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_c

    .line 1173
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_c
    const-string v1, "displayZoomControls"

    .line 1175
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_d

    .line 1176
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_d
    const-string v1, "safeBrowsingEnabled"

    .line 1178
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_e

    .line 1179
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    :cond_e
    const-string v1, "mediaPlaybackRequiresUserGesture"

    .line 1181
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_f

    .line 1182
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_f
    const-string v1, "databaseEnabled"

    .line 1184
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_10

    .line 1185
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    :cond_10
    const-string v1, "domStorageEnabled"

    .line 1187
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_11

    .line 1188
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_11
    const-string v1, "userAgent"

    .line 1190
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1191
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_12
    const-string v1, "applicationNameForUserAgent"

    .line 1193
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_14

    .line 1195
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    goto :goto_6

    :cond_13
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_14
    const-string v1, "clearCache"

    .line 1201
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearCache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1202
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    goto :goto_7

    :cond_15
    const-string v1, "clearSessionCache"

    .line 1203
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearSessionCache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1204
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :cond_16
    :goto_7
    const-string v1, "thirdPartyCookiesEnabled"

    .line 1206
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x15

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_17

    .line 1207
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, p0, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_17
    const-string v1, "useWideViewPort"

    .line 1209
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_18

    .line 1210
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    :cond_18
    const-string v1, "supportZoom"

    .line 1212
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_19

    .line 1213
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    :cond_19
    const-string v1, "textZoom"

    .line 1215
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1216
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_1a
    const-string v1, "verticalScrollBarEnabled"

    .line 1218
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_1b

    .line 1219
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setVerticalScrollBarEnabled(Z)V

    :cond_1b
    const-string v1, "horizontalScrollBarEnabled"

    .line 1221
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_1c

    .line 1222
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setHorizontalScrollBarEnabled(Z)V

    :cond_1c
    const-string v1, "transparentBackground"

    .line 1224
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_1e

    .line 1225
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1226
    invoke-virtual {p0, v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setBackgroundColor(I)V

    goto :goto_8

    :cond_1d
    const-string v1, "#FFFFFF"

    .line 1228
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setBackgroundColor(I)V

    .line 1232
    :cond_1e
    :goto_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_20

    const-string v1, "mixedContentMode"

    .line 1233
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1234
    :cond_1f
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_20
    const-string v1, "supportMultipleWindows"

    .line 1236
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_21

    .line 1237
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    :cond_21
    const-string v1, "useOnDownloadStart"

    .line 1239
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_23

    .line 1240
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1241
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$DownloadStartListener;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$DownloadStartListener;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_9

    .line 1243
    :cond_22
    invoke-virtual {p0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_23
    :goto_9
    const-string v1, "allowContentAccess"

    .line 1247
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_24

    .line 1248
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_24
    const-string v1, "allowFileAccess"

    .line 1250
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_25

    .line 1251
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :cond_25
    const-string v1, "allowFileAccessFromFileURLs"

    .line 1253
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_26

    .line 1254
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_26
    const-string v1, "allowUniversalAccessFromFileURLs"

    .line 1256
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_27

    .line 1257
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_27
    const-string v1, "cacheEnabled"

    .line 1259
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_28

    .line 1260
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setCacheEnabled(Z)V

    :cond_28
    const-string v1, "appCachePath"

    .line 1262
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1263
    :cond_29
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_2a
    const-string v1, "blockNetworkImage"

    .line 1265
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_2b

    .line 1266
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    :cond_2b
    const-string v1, "blockNetworkLoads"

    .line 1268
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_2c

    .line 1269
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    :cond_2c
    const-string v1, "cacheMode"

    .line 1271
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1272
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_2d
    const-string v1, "cursiveFontFamily"

    .line 1274
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1275
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    :cond_2e
    const-string v1, "defaultFixedFontSize"

    .line 1277
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1278
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    :cond_2f
    const-string v1, "defaultFontSize"

    .line 1280
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1281
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    :cond_30
    const-string v1, "defaultTextEncodingName"

    .line 1283
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1284
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1286
    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_33

    const-string v1, "disabledActionModeMenuItems"

    .line 1287
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 1288
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1289
    :cond_32
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    :cond_33
    const-string v1, "fantasyFontFamily"

    .line 1291
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1292
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    :cond_34
    const-string v1, "fixedFontFamily"

    .line 1294
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1295
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    :cond_35
    const-string v1, "forceDark"

    .line 1297
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1298
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_36

    .line 1299
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    :cond_36
    const-string v1, "geolocationEnabled"

    .line 1301
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_37

    .line 1302
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    :cond_37
    const-string v1, "layoutAlgorithm"

    .line 1304
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v1, v4, :cond_39

    .line 1305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_38

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1306
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_a

    .line 1308
    :cond_38
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :cond_39
    :goto_a
    const-string v1, "loadWithOverviewMode"

    .line 1312
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3a

    .line 1313
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_3a
    const-string v1, "loadsImagesAutomatically"

    .line 1315
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3b

    .line 1316
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_3b
    const-string v1, "minimumFontSize"

    .line 1318
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1319
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    :cond_3c
    const-string v1, "minimumLogicalFontSize"

    .line 1321
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1322
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    :cond_3d
    const-string v1, "initialScale"

    .line 1324
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1325
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setInitialScale(I)V

    :cond_3e
    const-string v1, "needInitialFocus"

    .line 1327
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3f

    .line 1328
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    :cond_3f
    const-string v1, "offscreenPreRaster"

    .line 1330
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_40

    .line 1331
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_40

    .line 1332
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_40
    const-string v1, "sansSerifFontFamily"

    .line 1334
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1335
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    :cond_41
    const-string v1, "serifFontFamily"

    .line 1337
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1338
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    :cond_42
    const-string v1, "standardFontFamily"

    .line 1340
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1341
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    :cond_43
    const-string v1, "preferredContentMode"

    .line 1343
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1344
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->fromValue(I)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v4, :cond_45

    if-eq v1, v2, :cond_44

    const/4 v6, 0x3

    if-eq v1, v6, :cond_44

    goto :goto_b

    .line 1350
    :cond_44
    invoke-virtual {p0, v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    goto :goto_b

    .line 1346
    :cond_45
    invoke-virtual {p0, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    :cond_46
    :goto_b
    const-string v1, "saveFormData"

    .line 1355
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_47

    .line 1356
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :cond_47
    const-string v0, "incognito"

    .line 1358
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_48

    .line 1359
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setIncognito(Z)V

    :cond_48
    const-string v0, "hardwareAcceleration"

    .line 1361
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_4a

    .line 1362
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1363
    invoke-virtual {p0, v2, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_c

    .line 1365
    :cond_49
    invoke-virtual {p0, v4, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4a
    :goto_c
    const-string v0, "regexToCancelSubFramesLoading"

    .line 1368
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1370
    :cond_4b
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 1371
    iput-object v7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    goto :goto_d

    .line 1373
    :cond_4c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 1376
    :cond_4d
    :goto_d
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    if-eqz v0, :cond_4e

    .line 1377
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1378
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "trigger"

    .line 1380
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;

    move-result-object v2

    const-string v6, "action"

    .line 1381
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

    move-result-object v1

    .line 1382
    iget-object v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;

    invoke-direct {v7, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4e
    const-string v0, "scrollBarStyle"

    .line 1386
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1387
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarStyle(I)V

    :cond_4f
    const-string v0, "scrollBarDefaultDelayBeforeFade"

    .line 1389
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1390
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1391
    :cond_50
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarDefaultDelayBeforeFade(I)V

    :cond_51
    const-string v0, "scrollbarFadingEnabled"

    .line 1393
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1394
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollbarFadingEnabled(Z)V

    :cond_52
    const-string v0, "scrollBarFadeDuration"

    .line 1396
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1397
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1398
    :cond_53
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setScrollBarFadeDuration(I)V

    :cond_54
    const-string v0, "verticalScrollbarPosition"

    .line 1400
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1401
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setVerticalScrollbarPosition(I)V

    :cond_55
    const-string v0, "disableVerticalScroll"

    .line 1403
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_57

    .line 1404
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v4

    goto :goto_f

    :cond_56
    move v0, v5

    :goto_f
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setVerticalScrollBarEnabled(Z)V

    :cond_57
    const-string v0, "disableHorizontalScroll"

    .line 1406
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_59

    .line 1407
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_10

    :cond_58
    move v4, v5

    :goto_10
    invoke-virtual {p0, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setHorizontalScrollBarEnabled(Z)V

    :cond_59
    const-string v0, "overScrollMode"

    .line 1409
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1410
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOverScrollMode(I)V

    :cond_5a
    const-string v0, "networkAvailable"

    .line 1412
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_5b

    .line 1413
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setNetworkAvailable(Z)V

    :cond_5b
    const-string v0, "rendererPriorityPolicy"

    .line 1415
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5d

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    const-string v0, "rendererRequestedPriority"

    .line 1416
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "waivedWhenNotVisible"

    if-ne p2, v1, :cond_5c

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1417
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_5d

    :cond_5c
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_5d

    .line 1419
    iget-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1420
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1421
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1419
    invoke-virtual {p0, p2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setRendererPriorityPolicy(IZ)V

    .line 1424
    :cond_5d
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1665
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 1671
    invoke-super {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public takeScreenshot(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$8;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$8;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
