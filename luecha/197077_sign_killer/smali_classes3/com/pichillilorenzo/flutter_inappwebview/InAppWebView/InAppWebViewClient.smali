.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InAppWebViewClient.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "IAWebViewClient"

.field static final cache:[Ljava/lang/String;

.field private static credentialsProposed:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;",
            ">;"
        }
    .end annotation
.end field

.field private static previousAuthRequestFailureCount:I = 0x0

.field private static userAgent:Ljava/lang/String; = ""


# instance fields
.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field private flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

.field private inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, ".js"

    const-string v1, ".ico"

    const-string v2, ".css"

    const-string v3, ".png"

    const-string v4, ".jpg"

    const-string v5, ".jpeg"

    const-string v6, ".gif"

    const-string v7, ".bmp"

    const-string v8, ".ttf"

    const-string v9, ".woff"

    const-string v10, ".woff2"

    const-string v11, ".otf"

    const-string v12, ".eot"

    const-string v13, ".svg"

    const-string v14, ".xml"

    const-string v15, ".txt"

    const-string v16, ".text"

    const-string v17, ".conf"

    const-string v18, ".webp"

    const-string v19, ".bin"

    const-string v20, ".data"

    .line 638
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->cache:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 59
    instance-of v0, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 48
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->credentialsProposed:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 48
    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->credentialsProposed:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 48
    sput p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    return p0
.end method

.method static synthetic access$1101(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$201(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$501(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$601(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method static synthetic access$701(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method static synthetic access$801(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method static synthetic access$901(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 614
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    return-object p0

    .line 616
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const-string v2, "http.agent"

    if-lt v0, v1, :cond_1

    .line 618
    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_1
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    .line 625
    :goto_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 627
    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_3

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2

    goto :goto_2

    .line 631
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "\\u%04x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 634
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    .line 635
    sget-object p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method private loadCustomJavaScript(Landroid/webkit/WebView;)V
    .locals 5

    .line 170
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v0, ""

    const-string v1, "[\r\n]+"

    const-string v2, "(function(console) {   var oldLogs = {       \'log\': console.log,       \'debug\': console.debug,       \'error\': console.error,       \'info\': console.info,       \'warn\': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = \'\';               for (var i in arguments) {                   if (message == \'\') {                       message += arguments[i];                   }                   else {                       message += \' \' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);"

    .line 172
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if (window.Promise == null) {  !function(t,e){\"object\"==typeof exports&&\"undefined\"!=typeof module?e(exports):\"function\"==typeof define&&define.amd?define([\"exports\"],e):e(t.RSVP={})}(this,function(t){\"use strict\";function e(t){var e=t._promiseCallbacks;return e||(e=t._promiseCallbacks={}),e}var r={mixin:function(t){return t.on=this.on,t.off=this.off,t.trigger=this.trigger,t._promiseCallbacks=void 0,t},on:function(t,r){if(\"function\"!=typeof r)throw new TypeError(\"Callback must be a function\");var n=e(this),o=n[t];o||(o=n[t]=[]),-1===o.indexOf(r)&&o.push(r)},off:function(t,r){var n=e(this);if(r){var o=n[t],i=o.indexOf(r);-1!==i&&o.splice(i,1)}else n[t]=[]},trigger:function(t,r,n){var o=e(this)[t];if(o)for(var i=0;i<o.length;i++)(0,o[i])(r,n)}},n={instrument:!1};function o(t,e){if(2!==arguments.length)return n[t];n[t]=e}r.mixin(n);var i=[];function s(t,e,r){1===i.push({name:t,payload:{key:e._guidKey,id:e._id,eventName:t,detail:e._result,childId:r&&r._id,label:e._label,timeStamp:Date.now(),error:n[\"instrument-with-stack\"]?new Error(e._label):null}})&&setTimeout(function(){for(var t=0;t<i.length;t++){var e=i[t],r=e.payload;r.guid=r.key+r.id,r.childGuid=r.key+r.childId,r.error&&(r.stack=r.error.stack),n.trigger(e.name,e.payload)}i.length=0},50)}function u(t,e){if(t&&\"object\"==typeof t&&t.constructor===this)return t;var r=new this(c,e);return m(r,t),r}function c(){}var a=void 0,f=1,l=2,h={error:null};function p(t){try{return t.then}catch(t){return h.error=t,h}}var y=void 0;function _(){try{var t=y;return y=null,t.apply(this,arguments)}catch(t){return h.error=t,h}}function v(t){return y=t,_}function d(t,e,r){if(e.constructor===t.constructor&&r===A&&t.constructor.resolve===u)!function(t,e){e._state===f?b(t,e._result):e._state===l?(e._onError=null,g(t,e._result)):j(e,void 0,function(r){e===r?b(t,r):m(t,r)},function(e){return g(t,e)})}(t,e);else if(r===h){var o=h.error;h.error=null,g(t,o)}else\"function\"==typeof r?function(t,e,r){n.async(function(t){var n=!1,o=v(r).call(e,function(r){n||(n=!0,e===r?b(t,r):m(t,r))},function(e){n||(n=!0,g(t,e))},\"Settle: \"+(t._label||\" unknown promise\"));if(!n&&o===h){n=!0;var i=h.error;h.error=null,g(t,i)}},t)}(t,e,r):b(t,e)}function m(t,e){var r,n;t===e?b(t,e):(n=typeof(r=e),null===r||\"object\"!==n&&\"function\"!==n?b(t,e):d(t,e,p(e)))}function w(t){t._onError&&t._onError(t._result),O(t)}function b(t,e){t._state===a&&(t._result=e,t._state=f,0===t._subscribers.length?n.instrument&&s(\"fulfilled\",t):n.async(O,t))}function g(t,e){t._state===a&&(t._state=l,t._result=e,n.async(w,t))}function j(t,e,r,o){var i=t._subscribers,s=i.length;t._onError=null,i[s]=e,i[s+f]=r,i[s+l]=o,0===s&&t._state&&n.async(O,t)}function O(t){var e=t._subscribers,r=t._state;if(n.instrument&&s(r===f?\"fulfilled\":\"rejected\",t),0!==e.length){for(var o=void 0,i=void 0,u=t._result,c=0;c<e.length;c+=3)o=e[c],i=e[c+r],o?E(r,o,i,u):i(u);t._subscribers.length=0}}function E(t,e,r,n){var o=\"function\"==typeof r,i=void 0;if(i=o?v(r)(n):n,e._state!==a);else if(i===e)g(e,new TypeError(\"A promises callback cannot return that same promise.\"));else if(i===h){var s=h.error;h.error=null,g(e,s)}else o?m(e,i):t===f?b(e,i):t===l&&g(e,i)}function A(t,e,r){var o=this._state;if(o===f&&!t||o===l&&!e)return n.instrument&&s(\"chained\",this,this),this;this._onError=null;var i=new this.constructor(c,r),u=this._result;if(n.instrument&&s(\"chained\",this,i),o===a)j(this,i,t,e);else{var h=o===f?t:e;n.async(function(){return E(o,i,h,u)})}return i}var T=function(){function t(t,e,r,n){this._instanceConstructor=t,this.promise=new t(c,n),this._abortOnReject=r,this._isUsingOwnPromise=t===k,this._isUsingOwnResolve=t.resolve===u,this._init.apply(this,arguments)}return t.prototype._init=function(t,e){var r=e.length||0;this.length=r,this._remaining=r,this._result=new Array(r),this._enumerate(e)},t.prototype._enumerate=function(t){for(var e=this.length,r=this.promise,n=0;r._state===a&&n<e;n++)this._eachEntry(t[n],n,!0);this._checkFullfillment()},t.prototype._checkFullfillment=function(){if(0===this._remaining){var t=this._result;b(this.promise,t),this._result=null}},t.prototype._settleMaybeThenable=function(t,e,r){var n=this._instanceConstructor;if(this._isUsingOwnResolve){var o=p(t);if(o===A&&t._state!==a)t._onError=null,this._settledAt(t._state,e,t._result,r);else if(\"function\"!=typeof o)this._settledAt(f,e,t,r);else if(this._isUsingOwnPromise){var i=new n(c);d(i,t,o),this._willSettleAt(i,e,r)}else this._willSettleAt(new n(function(e){return e(t)}),e,r)}else this._willSettleAt(n.resolve(t),e,r)},t.prototype._eachEntry=function(t,e,r){null!==t&&\"object\"==typeof t?this._settleMaybeThenable(t,e,r):this._setResultAt(f,e,t,r)},t.prototype._settledAt=function(t,e,r,n){var o=this.promise;o._state===a&&(this._abortOnReject&&t===l?g(o,r):(this._setResultAt(t,e,r,n),this._checkFullfillment()))},t.prototype._setResultAt=function(t,e,r,n){this._remaining--,this._result[e]=r},t.prototype._willSettleAt=function(t,e,r){var n=this;j(t,void 0,function(t){return n._settledAt(f,e,t,r)},function(t){return n._settledAt(l,e,t,r)})},t}();function P(t,e,r){this._remaining--,this._result[e]=t===f?{state:\"fulfilled\",value:r}:{state:\"rejected\",reason:r}}var S=\"rsvp_\"+Date.now()+\"-\",R=0;var k=function(){function t(e,r){this._id=R++,this._label=r,this._state=void 0,this._result=void 0,this._subscribers=[],n.instrument&&s(\"created\",this),c!==e&&(\"function\"!=typeof e&&function(){throw new TypeError(\"You must pass a resolver function as the first argument to the promise constructor\")}(),this instanceof t?function(t,e){var r=!1;try{e(function(e){r||(r=!0,m(t,e))},function(e){r||(r=!0,g(t,e))})}catch(e){g(t,e)}}(this,e):function(){throw new TypeError(\"Failed to construct \'Promise\': Please use the \'new\' operator, this object constructor cannot be called as a function.\")}())}return t.prototype._onError=function(t){var e=this;n.after(function(){e._onError&&n.trigger(\"error\",t,e._label)})},t.prototype.catch=function(t,e){return this.then(void 0,t,e)},t.prototype.finally=function(t,e){var r=this.constructor;return\"function\"==typeof t?this.then(function(e){return r.resolve(t()).then(function(){return e})},function(e){return r.resolve(t()).then(function(){throw e})}):this.then(t,t)},t}();function x(t,e){return{then:function(r,n){return t.call(e,r,n)}}}function M(t,e){var r=function(){for(var r=arguments.length,n=new Array(r+1),o=!1,i=0;i<r;++i){var s=arguments[i];if(!o){if((o=F(s))===h){var u=h.error;h.error=null;var a=new k(c);return g(a,u),a}o&&!0!==o&&(s=x(o,s))}n[i]=s}var f=new k(c);return n[r]=function(t,r){t?g(f,t):void 0===e?m(f,r):!0===e?m(f,function(t){for(var e=t.length,r=new Array(e-1),n=1;n<e;n++)r[n-1]=t[n];return r}(arguments)):Array.isArray(e)?m(f,function(t,e){for(var r={},n=t.length,o=new Array(n),i=0;i<n;i++)o[i]=t[i];for(var s=0;s<e.length;s++)r[e[s]]=o[s+1];return r}(arguments,e)):m(f,r)},o?function(t,e,r,n){return k.all(e).then(function(e){return C(t,e,r,n)})}(f,n,t,this):C(f,n,t,this)};return r.__proto__=t,r}function C(t,e,r,n){if(v(r).apply(n,e)===h){var o=h.error;h.error=null,g(t,o)}return t}function F(t){return null!==t&&\"object\"==typeof t&&(t.constructor===k||p(t))}function I(t,e){return k.all(t,e)}k.cast=u,k.all=function(t,e){return Array.isArray(t)?new T(this,t,!0,e).promise:this.reject(new TypeError(\"Promise.all must be called with an array\"),e)},k.race=function(t,e){var r=new this(c,e);if(!Array.isArray(t))return g(r,new TypeError(\"Promise.race must be called with an array\")),r;for(var n=0;r._state===a&&n<t.length;n++)j(this.resolve(t[n]),void 0,function(t){return m(r,t)},function(t){return g(r,t)});return r},k.resolve=u,k.reject=function(t,e){var r=new this(c,e);return g(r,t),r},k.prototype._guidKey=S,k.prototype.then=A;var N=function(t){function e(e,r,n){return function(t,e){if(!t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!1,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e}(T);function U(t,e){return Array.isArray(t)?new N(k,t,e).promise:k.reject(new TypeError(\"Promise.allSettled must be called with an array\"),e)}function D(t,e){return k.race(t,e)}N.prototype._setResultAt=P;var K=function(t){function e(e,r){var n=!(arguments.length>2&&void 0!==arguments[2])||arguments[2],o=arguments[3];return function(t,e){if(!t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,n,o))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._init=function(t,e){this._result={},this._enumerate(e)},e.prototype._enumerate=function(t){var e=Object.keys(t),r=e.length,n=this.promise;this._remaining=r;for(var o=void 0,i=void 0,s=0;n._state===a&&s<r;s++)i=t[o=e[s]],this._eachEntry(i,o,!0);this._checkFullfillment()},e}(T);function q(t,e){return k.resolve(t,e).then(function(t){if(null===t||\"object\"!=typeof t)throw new TypeError(\"Promise.hash must be called with an object\");return new K(k,t,e).promise})}var G=function(t){function e(e,r,n){return function(t,e){if(!t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!1,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e}(K);function L(t,e){return k.resolve(t,e).then(function(t){if(null===t||\"object\"!=typeof t)throw new TypeError(\"hashSettled must be called with an object\");return new G(k,t,!1,e).promise})}function V(t){throw setTimeout(function(){throw t}),t}function W(t){var e={resolve:void 0,reject:void 0};return e.promise=new k(function(t,r){e.resolve=t,e.reject=r},t),e}G.prototype._setResultAt=P;var Y=function(t){function e(e,r,n,o){return function(t,e){if(!t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!0,o,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._init=function(t,e,r,n,o){var i=e.length||0;this.length=i,this._remaining=i,this._result=new Array(i),this._mapFn=o,this._enumerate(e)},e.prototype._setResultAt=function(t,e,r,n){if(n){var o=v(this._mapFn)(r,e);o===h?this._settledAt(l,e,o.error,!1):this._eachEntry(o,e,!1)}else this._remaining--,this._result[e]=r},e}(T);function $(t,e,r){return\"function\"!=typeof e?k.reject(new TypeError(\"map expects a function as a second argument\"),r):k.resolve(t,r).then(function(t){if(!Array.isArray(t))throw new TypeError(\"map must be called with an array\");return new Y(k,t,e,r).promise})}function z(t,e){return k.resolve(t,e)}function B(t,e){return k.reject(t,e)}var H={},J=function(t){function e(){return function(t,e){if(!t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.apply(this,arguments))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._checkFullfillment=function(){if(0===this._remaining&&null!==this._result){var t=this._result.filter(function(t){return t!==H});b(this.promise,t),this._result=null}},e.prototype._setResultAt=function(t,e,r,n){if(n){this._result[e]=r;var o=v(this._mapFn)(r,e);o===h?this._settledAt(l,e,o.error,!1):this._eachEntry(o,e,!1)}else this._remaining--,r||(this._result[e]=H)},e}(Y);function Q(t,e,r){return\"function\"!=typeof e?k.reject(new TypeError(\"filter expects function as a second argument\"),r):k.resolve(t,r).then(function(t){if(!Array.isArray(t))throw new TypeError(\"filter must be called with an array\");return new J(k,t,e,r).promise})}var X=0,Z=void 0;function tt(t,e){ut[X]=t,ut[X+1]=e,2===(X+=2)&&_t()}var et=\"undefined\"!=typeof window?window:void 0,rt=et||{},nt=rt.MutationObserver||rt.WebKitMutationObserver,ot=\"undefined\"==typeof self&&\"undefined\"!=typeof process&&\"[object process]\"==={}.toString.call(process),it=\"undefined\"!=typeof Uint8ClampedArray&&\"undefined\"!=typeof importScripts&&\"undefined\"!=typeof MessageChannel;function st(){return function(){return setTimeout(ct,1)}}var ut=new Array(1e3);function ct(){for(var t=0;t<X;t+=2){(0,ut[t])(ut[t+1]),ut[t]=void 0,ut[t+1]=void 0}X=0}var at,ft,lt,ht,pt,yt,_t=void 0;ot?(pt=process.nextTick,yt=process.versions.node.match(/^(?:(\\\\d+)\\\\.)?(?:(\\\\d+)\\\\.)?(\\\\*|\\\\d+)$/),Array.isArray(yt)&&\"0\"===yt[1]&&\"10\"===yt[2]&&(pt=setImmediate),_t=function(){return pt(ct)}):nt?(ft=0,lt=new nt(ct),ht=document.createTextNode(\"\"),lt.observe(ht,{characterData:!0}),_t=function(){return ht.data=ft=++ft%2}):it?((at=new MessageChannel).port1.onmessage=ct,_t=function(){return at.port2.postMessage(0)}):_t=void 0===et&&\"function\"==typeof require?function(){try{var t=Function(\"return this\")().require(\"vertx\");return void 0!==(Z=t.runOnLoop||t.runOnContext)?function(){Z(ct)}:st()}catch(t){return st()}}():st(),n.async=tt,n.after=function(t){return setTimeout(t,0)};var vt=z,dt=function(t,e){return n.async(t,e)};function mt(){n.on.apply(n,arguments)}function wt(){n.off.apply(n,arguments)}if(\"undefined\"!=typeof window&&\"object\"==typeof window.__PROMISE_INSTRUMENTATION__){var bt=window.__PROMISE_INSTRUMENTATION__;for(var gt in o(\"instrument\",!0),bt)bt.hasOwnProperty(gt)&&mt(gt,bt[gt])}var jt={asap:tt,cast:vt,Promise:k,EventTarget:r,all:I,allSettled:U,race:D,hash:q,hashSettled:L,rethrow:V,defer:W,denodeify:M,configure:o,on:mt,off:wt,resolve:z,reject:B,map:$,async:dt,filter:Q};t.default=jt,t.asap=tt,t.cast=vt,t.Promise=k,t.EventTarget=r,t.all=I,t.allSettled=U,t.race=D,t.hash=q,t.hashSettled=L,t.rethrow=V,t.defer=W,t.denodeify=M,t.configure=o,t.on=mt,t.off=wt,t.resolve=z,t.reject=B,t.map=$,t.async=dt,t.filter=Q,Object.defineProperty(t,\"__esModule\",{value:!0})});} window.flutter_inappwebview.callHandler = function() {var _callHandlerID = setTimeout(function(){});window.flutter_inappwebview._callHandler(arguments[0], _callHandlerID, JSON.stringify(Array.prototype.slice.call(arguments, 1)));return new Promise(function(resolve, reject) {  window.flutter_inappwebview[_callHandlerID] = resolve;});};"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case \'arraybuffer\':          callback(new Uint8Array(request.response));          return;        case \'blob\':          const reader = new FileReader();          reader.addEventListener(\'loadend\', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case \'document\':          callback(request.response.documentElement.outerHTML);          return;        case \'json\':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(\': \');          var header = parts.shift();          var value = parts.join(\': \');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,          responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler(\'onAjaxProgress\', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(\': \');                var header = parts.shift();                var value = parts.join(\': \');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,                responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler(\'onAjaxReadyStateChange\', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener(\'loadstart\', handleEvent);      this.addEventListener(\'load\', handleEvent);      this.addEventListener(\'loadend\', handleEvent);      this.addEventListener(\'progress\', handleEvent);      this.addEventListener(\'error\', handleEvent);      this.addEventListener(\'abort\', handleEvent);      this.addEventListener(\'timeout\', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler(\'shouldInterceptAjaxRequest\', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += \', \' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    :cond_0
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = \'default\';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === \'federated\') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === \'password\') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler(\'shouldInterceptFetchRequest\', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_1
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler(\'onLoadResource\', entry);         }       });   });   observer.observe({entryTypes: [\'resource\']});})();"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(){  document.addEventListener(\'keydown\', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(){  window.addEventListener(\'focus\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowFocus\');  });})();"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(){  window.addEventListener(\'blur\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowBlur\');  });})();"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "window.print = function() {  window.flutter_inappwebview.callHandler(\'onPrint\', window.location.href);};"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();"

    const-string v4, "$PLACEHOLDER_VALUE"

    .line 189
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    .line 193
    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 195
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static matchCacheRule(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 650
    :goto_0
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->cache:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 651
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 944
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 945
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    if-eqz v0, :cond_1

    .line 948
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    :cond_1
    return-void
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 3

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 261
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "androidIsReload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onUpdateVisitedHistory"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    .line 852
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 853
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$7;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$7;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/os/Message;Landroid/os/Message;Landroid/webkit/WebView;)V

    const-string p1, "onFormResubmission"

    invoke-virtual {v1, p1, v0, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 894
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 895
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 896
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "url"

    .line 898
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "onPageCommitVisible"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 223
    move-object v0, p1

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 226
    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->loadCustomJavaScript(Landroid/webkit/WebView;)V

    .line 228
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 231
    sput p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    const/4 p1, 0x0

    .line 232
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->credentialsProposed:Ljava/util/List;

    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 236
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    const-string v1, "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event(\'flutterInAppWebViewPlatformReady\'));    window.flutter_inappwebview._platformReady = true;  }})();"

    const-string v2, "[\r\n]+"

    const-string v3, ""

    .line 241
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 244
    check-cast p1, Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    .line 249
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 250
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "url"

    .line 252
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "onLoadStop"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 202
    move-object v0, p1

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 204
    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->loadCustomJavaScript(Landroid/webkit/WebView;)V

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 209
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 213
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 214
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz p3, :cond_1

    .line 215
    iget-object p3, p3, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v0, "uuid"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p3, "url"

    .line 216
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "onLoadStart"

    invoke-virtual {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 5

    .line 486
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 496
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 497
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, v3, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v4, "uuid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "host"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "protocol"

    .line 500
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "realm"

    .line 501
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    const-string p1, "onReceivedClientCertRequest"

    invoke-virtual {v0, p1, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    :catch_0
    move-exception p1

    .line 488
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 489
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->cancel()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 271
    move-object v0, p1

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 273
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableDefaultErrorPage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->stopLoading()V

    const-string v1, "about:blank"

    .line 275
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 278
    iput-boolean v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 279
    sput v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    const/4 v0, 0x0

    .line 280
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->credentialsProposed:Ljava/util/List;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "url"

    .line 285
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    .line 287
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onLoadError"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 316
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v8

    .line 330
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "host"

    .line 335
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "protocol"

    .line 336
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "realm"

    .line 337
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "port"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "previousFailureCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v10, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/HttpAuthHandler;)V

    const-string p1, "onReceivedHttpAuthRequest"

    invoke-virtual {v1, p1, v0, v10}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 p1, 0x0

    .line 320
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->credentialsProposed:Ljava/util/List;

    const/4 p1, 0x0

    .line 321
    sput p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->previousAuthRequestFailureCount:I

    .line 323
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 297
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 299
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "url"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "statusCode"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "description"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "onLoadHttpError"

    invoke-virtual {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 927
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 928
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "realm"

    .line 930
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "account"

    .line 931
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "args"

    .line 932
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "onReceivedLoginRequest"

    invoke-virtual {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6

    .line 399
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 412
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v4, :cond_0

    .line 413
    iget-object v4, v4, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v5, "uuid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v4, "host"

    .line 414
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "protocol"

    .line 415
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "realm"

    .line 416
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "port"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "androidError"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "iosError"

    .line 419
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "sslCertificate"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "A generic error occurred"

    goto :goto_0

    :cond_1
    const-string v0, "The date of the certificate is invalid"

    goto :goto_0

    :cond_2
    const-string v0, "The certificate authority is not trusted"

    goto :goto_0

    :cond_3
    const-string v0, "Hostname mismatch"

    goto :goto_0

    :cond_4
    const-string v0, "The certificate has expired"

    goto :goto_0

    :cond_5
    const-string v0, "The certificate is not yet valid"

    :goto_0
    const-string v1, "message"

    .line 444
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    const-string p1, "onReceivedServerTrustAuthRequest"

    invoke-virtual {v0, p1, v3, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 402
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 905
    move-object v0, p1

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 907
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnRenderProcessGone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 909
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 912
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "didCrash"

    .line 914
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rendererPriorityAtExit"

    .line 915
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p2, "onRenderProcessGone"

    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 922
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 9

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "threatType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v8, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/SafeBrowsingResponse;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;I)V

    const-string p1, "onSafeBrowsingHit"

    invoke-virtual {v1, p1, v0, v8}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 551
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 552
    iput p3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    .line 554
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 555
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "oldScale"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "newScale"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "onScaleChanged"

    invoke-virtual {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShouldInterceptRequest(Ljava/lang/Object;)Landroid/webkit/WebResourceResponse;
    .locals 14

    .line 790
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 793
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    .line 794
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 795
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 797
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    instance-of v5, p1, Landroid/webkit/WebResourceRequest;

    if-eqz v5, :cond_1

    .line 798
    check-cast p1, Landroid/webkit/WebResourceRequest;

    .line 799
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    .line 801
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 802
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 803
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_2

    .line 804
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    .line 808
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 809
    iget-object v7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v7, :cond_3

    .line 810
    iget-object v7, v7, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v8, "uuid"

    invoke-interface {p1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v7, "url"

    .line 811
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GET"

    const-string v7, "method"

    .line 812
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "headers"

    .line 813
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isForMainFrame"

    .line 814
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hasGesture"

    .line 815
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isRedirect"

    .line 816
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v3, "shouldInterceptRequest"

    invoke-static {v2, v3, p1}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->invokeMethodAndWait(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;)Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 827
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->error:Ljava/lang/String;

    const-string v0, "IAWebViewClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 829
    :cond_4
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 830
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v2, "contentType"

    .line 831
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v2, "contentEncoding"

    .line 832
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "data"

    .line 833
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 834
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map;

    const-string v0, "statusCode"

    .line 835
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v3, "reasonPhrase"

    .line 836
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 838
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_5
    move-object v13, v1

    if-nez v12, :cond_6

    if-nez v0, :cond_6

    if-eqz v11, :cond_7

    .line 840
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v6, :cond_8

    .line 841
    :cond_7
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v8, v9, v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 843
    :cond_8
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_9
    :goto_2
    return-object v1

    :catch_0
    move-exception p1

    .line 822
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public onShouldOverrideUrlLoading(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 124
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "method"

    .line 125
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "headers"

    .line 126
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "isForMainFrame"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p6, "androidHasGesture"

    invoke-interface {v0, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p6, "androidIsRedirect"

    invoke-interface {v0, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p6, "iosWKNavigationType"

    .line 130
    invoke-interface {v0, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance p6, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$1;

    move-object v1, p6

    move-object v2, p0

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;ZLcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "shouldOverrideUrlLoading"

    invoke-virtual {p3, p1, v0, p6}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 775
    move-object v0, p1

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 777
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptRequest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onShouldInterceptRequest(Ljava/lang/Object;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 786
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 12

    const-string v0, "content-type"

    .line 660
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const/4 v1, 0x0

    .line 664
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, ":"

    .line 666
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 667
    aget-object v5, v2, v3

    .line 669
    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string v3, "https"

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 670
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v11

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 678
    :goto_0
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->matchCacheRule(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    invoke-static {}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v3

    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$6;

    invoke-direct {v4, p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$6;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {v3, v4}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;->interceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    .line 719
    :cond_0
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptRequest:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    invoke-virtual {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onShouldInterceptRequest(Ljava/lang/Object;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 726
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 728
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->resourceCustomSchemes:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->resourceCustomSchemes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 729
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 730
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v4, :cond_2

    .line 731
    iget-object v4, v4, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v5, "uuid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v4, "url"

    .line 732
    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scheme"

    .line 733
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :try_start_2
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v4, "onLoadResourceCustomScheme"

    invoke-static {v2, v4, v3}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->invokeMethodAndWait(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;)Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 743
    iget-object v3, v2, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->error:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 744
    iget-object v0, v2, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->error:Ljava/lang/String;

    const-string v2, "IAWebViewClient"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 746
    :cond_3
    iget-object v3, v2, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 747
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 750
    :try_start_3
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 752
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const-string p1, "data"

    .line 756
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 757
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content-encoding"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v0, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :catch_2
    move-exception p1

    .line 739
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1

    .line 762
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 764
    :try_start_4
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 766
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v1

    :catch_4
    move-exception p1

    .line 672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 9

    .line 69
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 70
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldOverrideUrlLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 74
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 77
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    .line 78
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v6

    .line 79
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    .line 72
    invoke-virtual/range {v0 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onShouldOverrideUrlLoading(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZ)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    .line 87
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onShouldOverrideUrlLoading(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZ)V

    .line 90
    :goto_0
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 94
    :cond_1
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v8

    .line 103
    :cond_3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    return p1

    :cond_4
    return v8
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 111
    move-object v1, p1

    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 112
    iget-object p1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldOverrideUrlLoading:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p2

    .line 113
    invoke-virtual/range {v0 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onShouldOverrideUrlLoading(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
