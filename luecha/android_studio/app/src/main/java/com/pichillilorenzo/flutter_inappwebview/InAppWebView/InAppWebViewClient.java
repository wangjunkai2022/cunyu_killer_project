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
import com.NlSSLrKK.gPIHumaP.GvTFQjxVwkecXbjr;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.Credential;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialDatabase;
import com.pichillilorenzo.flutter_inappwebview.Util;
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

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class InAppWebViewClient extends WebViewClient {
    protected static final String LOG_TAG = "IAWebViewClient";
    static final String[] cache = {".js", ".ico", ".css", ".png", ".jpg", ".jpeg", ".gif", ".bmp", ".ttf", ".woff", ".woff2", ".otf", ".eot", ".svg", ".xml", ".txt", ".text", ".conf", ".webp", ".bin", ".data"};
    private static List<Credential> credentialsProposed = null;
    private static int previousAuthRequestFailureCount = 0;
    private static String userAgent = "";
    public MethodChannel channel;
    private FlutterWebView flutterWebView;
    private GvTFQjxVwkecXbjr inAppBrowserActivity;

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
    }

    public InAppWebViewClient(Object obj) {
        if (obj instanceof GvTFQjxVwkecXbjr) {
            this.inAppBrowserActivity = (GvTFQjxVwkecXbjr) obj;
        } else if (obj instanceof FlutterWebView) {
            this.flutterWebView = (FlutterWebView) obj;
        }
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        this.channel = gvTFQjxVwkecXbjr != null ? gvTFQjxVwkecXbjr.channel : this.flutterWebView.channel;
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put("method", str2);
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
                Log.d("IAWebViewClient", "ERROR: " + str3 + " " + str4);
            }
        });
    }

    private void loadCustomJavaScript(WebView webView) {
        InAppWebView inAppWebView = (InAppWebView) webView;
        String str = "(function(console) {   var oldLogs = {       'log': console.log,       'debug': console.debug,       'error': console.error,       'info': console.info,       'warn': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = '';               for (var i in arguments) {                   if (message == '') {                       message += arguments[i];                   }                   else {                       message += ' ' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);".replaceAll("[\r\n]+", "") + "if (window.Promise == null) {  !function(t,e){\"object\"==typeof exports&&\"undefined\"!=typeof module?e(exports):\"function\"==typeof define&&define.amd?define([\"exports\"],e):e(t.RSVP={})}(this,function(t){\"use strict\";function e(t){var e=t._promiseCallbacks;return e||(e=t._promiseCallbacks={}),e}var r={mixin:function(t){return t.on=this.on,t.off=this.off,t.trigger=this.trigger,t._promiseCallbacks=void 0,t},on:function(t,r){if(\"function\"!=typeof r)throw new TypeError(\"Callback must be a function\");var n=e(this),o=n[t];o||(o=n[t]=[]),-1===o.indexOf(r)&&o.push(r)},off:function(t,r){var n=e(this);if(r){var o=n[t],i=o.indexOf(r);-1!==i&&o.splice(i,1)}else n[t]=[]},trigger:function(t,r,n){var o=e(this)[t];if(o)for(var i=0;i<o.length;i++)(0,o[i])(r,n)}},n={instrument:!1};function o(t,e){if(2!==arguments.length)return n[t];n[t]=e}r.mixin(n);var i=[];function s(t,e,r){1===i.push({name:t,payload:{key:e._guidKey,id:e._id,eventName:t,detail:e._result,childId:r&&r._id,label:e._label,timeStamp:Date.now(),error:n[\"instrument-with-stack\"]?new Error(e._label):null}})&&setTimeout(function(){for(var t=0;t<i.length;t++){var e=i[t],r=e.payload;r.guid=r.key+r.id,r.childGuid=r.key+r.childId,r.error&&(r.stack=r.error.stack),n.trigger(e.name,e.payload)}i.length=0},50)}function u(t,e){if(t&&\"object\"==typeof t&&t.constructor===this)return t;var r=new this(c,e);return m(r,t),r}function c(){}var a=void 0,f=1,l=2,h={error:null};function p(t){try{return t.then}catch(t){return h.error=t,h}}var y=void 0;function _(){try{var t=y;return y=null,t.apply(this,arguments)}catch(t){return h.error=t,h}}function v(t){return y=t,_}function d(t,e,r){if(e.constructor===t.constructor&&r===A&&t.constructor.resolve===u)!function(t,e){e._state===f?b(t,e._result):e._state===l?(e._onError=null,g(t,e._result)):j(e,void 0,function(r){e===r?b(t,r):m(t,r)},function(e){return g(t,e)})}(t,e);else if(r===h){var o=h.error;h.error=null,g(t,o)}else\"function\"==typeof r?function(t,e,r){n.async(function(t){var n=!1,o=v(r).call(e,function(r){n||(n=!0,e===r?b(t,r):m(t,r))},function(e){n||(n=!0,g(t,e))},\"Settle: \"+(t._label||\" unknown promise\"));if(!n&&o===h){n=!0;var i=h.error;h.error=null,g(t,i)}},t)}(t,e,r):b(t,e)}function m(t,e){var r,n;t===e?b(t,e):(n=typeof(r=e),null===r||\"object\"!==n&&\"function\"!==n?b(t,e):d(t,e,p(e)))}function w(t){t._onError&&t._onError(t._result),O(t)}function b(t,e){t._state===a&&(t._result=e,t._state=f,0===t._subscribers.length?n.instrument&&s(\"fulfilled\",t):n.async(O,t))}function g(t,e){t._state===a&&(t._state=l,t._result=e,n.async(w,t))}function j(t,e,r,o){var i=t._subscribers,s=i.length;t._onError=null,i[s]=e,i[s+f]=r,i[s+l]=o,0===s&&t._state&&n.async(O,t)}function O(t){var e=t._subscribers,r=t._state;if(n.instrument&&s(r===f?\"fulfilled\":\"rejected\",t),0!==e.length){for(var o=void 0,i=void 0,u=t._result,c=0;c<e.length;c+=3)o=e[c],i=e[c+r],o?E(r,o,i,u):i(u);t._subscribers.length=0}}function E(t,e,r,n){var o=\"function\"==typeof r,i=void 0;if(i=o?v(r)(n):n,e._state!==a);else if(i===e)g(e,new TypeError(\"A promises callback cannot return that same promise.\"));else if(i===h){var s=h.error;h.error=null,g(e,s)}else o?m(e,i):t===f?b(e,i):t===l&&g(e,i)}function A(t,e,r){var o=this._state;if(o===f&&!t||o===l&&!e)return n.instrument&&s(\"chained\",this,this),this;this._onError=null;var i=new this.constructor(c,r),u=this._result;if(n.instrument&&s(\"chained\",this,i),o===a)j(this,i,t,e);else{var h=o===f?t:e;n.async(function(){return E(o,i,h,u)})}return i}var T=function(){function t(t,e,r,n){this._instanceConstructor=t,this.promise=new t(c,n),this._abortOnReject=r,this._isUsingOwnPromise=t===k,this._isUsingOwnResolve=t.resolve===u,this._init.apply(this,arguments)}return t.prototype._init=function(t,e){var r=e.length||0;this.length=r,this._remaining=r,this._result=new Array(r),this._enumerate(e)},t.prototype._enumerate=function(t){for(var e=this.length,r=this.promise,n=0;r._state===a&&n<e;n++)this._eachEntry(t[n],n,!0);this._checkFullfillment()},t.prototype._checkFullfillment=function(){if(0===this._remaining){var t=this._result;b(this.promise,t),this._result=null}},t.prototype._settleMaybeThenable=function(t,e,r){var n=this._instanceConstructor;if(this._isUsingOwnResolve){var o=p(t);if(o===A&&t._state!==a)t._onError=null,this._settledAt(t._state,e,t._result,r);else if(\"function\"!=typeof o)this._settledAt(f,e,t,r);else if(this._isUsingOwnPromise){var i=new n(c);d(i,t,o),this._willSettleAt(i,e,r)}else this._willSettleAt(new n(function(e){return e(t)}),e,r)}else this._willSettleAt(n.resolve(t),e,r)},t.prototype._eachEntry=function(t,e,r){null!==t&&\"object\"==typeof t?this._settleMaybeThenable(t,e,r):this._setResultAt(f,e,t,r)},t.prototype._settledAt=function(t,e,r,n){var o=this.promise;o._state===a&&(this._abortOnReject&&t===l?g(o,r):(this._setResultAt(t,e,r,n),this._checkFullfillment()))},t.prototype._setResultAt=function(t,e,r,n){this._remaining--,this._result[e]=r},t.prototype._willSettleAt=function(t,e,r){var n=this;j(t,void 0,function(t){return n._settledAt(f,e,t,r)},function(t){return n._settledAt(l,e,t,r)})},t}();function P(t,e,r){this._remaining--,this._result[e]=t===f?{state:\"fulfilled\",value:r}:{state:\"rejected\",reason:r}}var S=\"rsvp_\"+Date.now()+\"-\",R=0;var k=function(){function t(e,r){this._id=R++,this._label=r,this._state=void 0,this._result=void 0,this._subscribers=[],n.instrument&&s(\"created\",this),c!==e&&(\"function\"!=typeof e&&function(){throw new TypeError(\"You must pass a resolver function as the first argument to the promise constructor\")}(),this instanceof t?function(t,e){var r=!1;try{e(function(e){r||(r=!0,m(t,e))},function(e){r||(r=!0,g(t,e))})}catch(e){g(t,e)}}(this,e):function(){throw new TypeError(\"Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.\")}())}return t.prototype._onError=function(t){var e=this;n.after(function(){e._onError&&n.trigger(\"error\",t,e._label)})},t.prototype.catch=function(t,e){return this.then(void 0,t,e)},t.prototype.finally=function(t,e){var r=this.constructor;return\"function\"==typeof t?this.then(function(e){return r.resolve(t()).then(function(){return e})},function(e){return r.resolve(t()).then(function(){throw e})}):this.then(t,t)},t}();function x(t,e){return{then:function(r,n){return t.call(e,r,n)}}}function M(t,e){var r=function(){for(var r=arguments.length,n=new Array(r+1),o=!1,i=0;i<r;++i){var s=arguments[i];if(!o){if((o=F(s))===h){var u=h.error;h.error=null;var a=new k(c);return g(a,u),a}o&&!0!==o&&(s=x(o,s))}n[i]=s}var f=new k(c);return n[r]=function(t,r){t?g(f,t):void 0===e?m(f,r):!0===e?m(f,function(t){for(var e=t.length,r=new Array(e-1),n=1;n<e;n++)r[n-1]=t[n];return r}(arguments)):Array.isArray(e)?m(f,function(t,e){for(var r={},n=t.length,o=new Array(n),i=0;i<n;i++)o[i]=t[i];for(var s=0;s<e.length;s++)r[e[s]]=o[s+1];return r}(arguments,e)):m(f,r)},o?function(t,e,r,n){return k.all(e).then(function(e){return C(t,e,r,n)})}(f,n,t,this):C(f,n,t,this)};return r.__proto__=t,r}function C(t,e,r,n){if(v(r).apply(n,e)===h){var o=h.error;h.error=null,g(t,o)}return t}function F(t){return null!==t&&\"object\"==typeof t&&(t.constructor===k||p(t))}function I(t,e){return k.all(t,e)}k.cast=u,k.all=function(t,e){return Array.isArray(t)?new T(this,t,!0,e).promise:this.reject(new TypeError(\"Promise.all must be called with an array\"),e)},k.race=function(t,e){var r=new this(c,e);if(!Array.isArray(t))return g(r,new TypeError(\"Promise.race must be called with an array\")),r;for(var n=0;r._state===a&&n<t.length;n++)j(this.resolve(t[n]),void 0,function(t){return m(r,t)},function(t){return g(r,t)});return r},k.resolve=u,k.reject=function(t,e){var r=new this(c,e);return g(r,t),r},k.prototype._guidKey=S,k.prototype.then=A;var N=function(t){function e(e,r,n){return function(t,e){if(!t)throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!1,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e}(T);function U(t,e){return Array.isArray(t)?new N(k,t,e).promise:k.reject(new TypeError(\"Promise.allSettled must be called with an array\"),e)}function D(t,e){return k.race(t,e)}N.prototype._setResultAt=P;var K=function(t){function e(e,r){var n=!(arguments.length>2&&void 0!==arguments[2])||arguments[2],o=arguments[3];return function(t,e){if(!t)throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,n,o))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._init=function(t,e){this._result={},this._enumerate(e)},e.prototype._enumerate=function(t){var e=Object.keys(t),r=e.length,n=this.promise;this._remaining=r;for(var o=void 0,i=void 0,s=0;n._state===a&&s<r;s++)i=t[o=e[s]],this._eachEntry(i,o,!0);this._checkFullfillment()},e}(T);function q(t,e){return k.resolve(t,e).then(function(t){if(null===t||\"object\"!=typeof t)throw new TypeError(\"Promise.hash must be called with an object\");return new K(k,t,e).promise})}var G=function(t){function e(e,r,n){return function(t,e){if(!t)throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!1,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e}(K);function L(t,e){return k.resolve(t,e).then(function(t){if(null===t||\"object\"!=typeof t)throw new TypeError(\"hashSettled must be called with an object\");return new G(k,t,!1,e).promise})}function V(t){throw setTimeout(function(){throw t}),t}function W(t){var e={resolve:void 0,reject:void 0};return e.promise=new k(function(t,r){e.resolve=t,e.reject=r},t),e}G.prototype._setResultAt=P;var Y=function(t){function e(e,r,n,o){return function(t,e){if(!t)throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.call(this,e,r,!0,o,n))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._init=function(t,e,r,n,o){var i=e.length||0;this.length=i,this._remaining=i,this._result=new Array(i),this._mapFn=o,this._enumerate(e)},e.prototype._setResultAt=function(t,e,r,n){if(n){var o=v(this._mapFn)(r,e);o===h?this._settledAt(l,e,o.error,!1):this._eachEntry(o,e,!1)}else this._remaining--,this._result[e]=r},e}(T);function $(t,e,r){return\"function\"!=typeof e?k.reject(new TypeError(\"map expects a function as a second argument\"),r):k.resolve(t,r).then(function(t){if(!Array.isArray(t))throw new TypeError(\"map must be called with an array\");return new Y(k,t,e,r).promise})}function z(t,e){return k.resolve(t,e)}function B(t,e){return k.reject(t,e)}var H={},J=function(t){function e(){return function(t,e){if(!t)throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\");return!e||\"object\"!=typeof e&&\"function\"!=typeof e?t:e}(this,t.apply(this,arguments))}return function(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype._checkFullfillment=function(){if(0===this._remaining&&null!==this._result){var t=this._result.filter(function(t){return t!==H});b(this.promise,t),this._result=null}},e.prototype._setResultAt=function(t,e,r,n){if(n){this._result[e]=r;var o=v(this._mapFn)(r,e);o===h?this._settledAt(l,e,o.error,!1):this._eachEntry(o,e,!1)}else this._remaining--,r||(this._result[e]=H)},e}(Y);function Q(t,e,r){return\"function\"!=typeof e?k.reject(new TypeError(\"filter expects function as a second argument\"),r):k.resolve(t,r).then(function(t){if(!Array.isArray(t))throw new TypeError(\"filter must be called with an array\");return new J(k,t,e,r).promise})}var X=0,Z=void 0;function tt(t,e){ut[X]=t,ut[X+1]=e,2===(X+=2)&&_t()}var et=\"undefined\"!=typeof window?window:void 0,rt=et||{},nt=rt.MutationObserver||rt.WebKitMutationObserver,ot=\"undefined\"==typeof self&&\"undefined\"!=typeof process&&\"[object process]\"==={}.toString.call(process),it=\"undefined\"!=typeof Uint8ClampedArray&&\"undefined\"!=typeof importScripts&&\"undefined\"!=typeof MessageChannel;function st(){return function(){return setTimeout(ct,1)}}var ut=new Array(1e3);function ct(){for(var t=0;t<X;t+=2){(0,ut[t])(ut[t+1]),ut[t]=void 0,ut[t+1]=void 0}X=0}var at,ft,lt,ht,pt,yt,_t=void 0;ot?(pt=process.nextTick,yt=process.versions.node.match(/^(?:(\\\\d+)\\\\.)?(?:(\\\\d+)\\\\.)?(\\\\*|\\\\d+)$/),Array.isArray(yt)&&\"0\"===yt[1]&&\"10\"===yt[2]&&(pt=setImmediate),_t=function(){return pt(ct)}):nt?(ft=0,lt=new nt(ct),ht=document.createTextNode(\"\"),lt.observe(ht,{characterData:!0}),_t=function(){return ht.data=ft=++ft%2}):it?((at=new MessageChannel).port1.onmessage=ct,_t=function(){return at.port2.postMessage(0)}):_t=void 0===et&&\"function\"==typeof require?function(){try{var t=Function(\"return this\")().require(\"vertx\");return void 0!==(Z=t.runOnLoop||t.runOnContext)?function(){Z(ct)}:st()}catch(t){return st()}}():st(),n.async=tt,n.after=function(t){return setTimeout(t,0)};var vt=z,dt=function(t,e){return n.async(t,e)};function mt(){n.on.apply(n,arguments)}function wt(){n.off.apply(n,arguments)}if(\"undefined\"!=typeof window&&\"object\"==typeof window.__PROMISE_INSTRUMENTATION__){var bt=window.__PROMISE_INSTRUMENTATION__;for(var gt in o(\"instrument\",!0),bt)bt.hasOwnProperty(gt)&&mt(gt,bt[gt])}var jt={asap:tt,cast:vt,Promise:k,EventTarget:r,all:I,allSettled:U,race:D,hash:q,hashSettled:L,rethrow:V,defer:W,denodeify:M,configure:o,on:mt,off:wt,resolve:z,reject:B,map:$,async:dt,filter:Q};t.default=jt,t.asap=tt,t.cast=vt,t.Promise=k,t.EventTarget=r,t.all=I,t.allSettled=U,t.race=D,t.hash=q,t.hashSettled=L,t.rethrow=V,t.defer=W,t.denodeify=M,t.configure=o,t.on=mt,t.off=wt,t.resolve=z,t.reject=B,t.map=$,t.async=dt,t.filter=Q,Object.defineProperty(t,\"__esModule\",{value:!0})});} window.flutter_inappwebview.callHandler = function() {var _callHandlerID = setTimeout(function(){});window.flutter_inappwebview._callHandler(arguments[0], _callHandlerID, JSON.stringify(Array.prototype.slice.call(arguments, 1)));return new Promise(function(resolve, reject) {  window.flutter_inappwebview[_callHandlerID] = resolve;});};".replaceAll("[\r\n]+", "");
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (!(gvTFQjxVwkecXbjr == null || gvTFQjxVwkecXbjr.searchView == null || str.equals(this.inAppBrowserActivity.searchView.getQuery().toString()))) {
            this.inAppBrowserActivity.searchView.setQuery(str, false);
        }
        HashMap hashMap = new HashMap();
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr2 = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr2 != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr2.uuid);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        this.channel.invokeMethod("onLoadStop", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        HashMap hashMap = new HashMap();
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put(ImagesContract.URL, str2);
        hashMap.put("code", Integer.valueOf(i));
        hashMap.put("message", str);
        this.channel.invokeMethod("onLoadError", hashMap);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.isForMainFrame()) {
            HashMap hashMap = new HashMap();
            GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
            if (gvTFQjxVwkecXbjr != null) {
                hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
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
            GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
            if (gvTFQjxVwkecXbjr != null) {
                hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
            }
            hashMap.put("host", str);
            hashMap.put("protocol", protocol);
            hashMap.put("realm", str2);
            hashMap.put("port", Integer.valueOf(port));
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
                                String str3 = (String) map.get("username");
                                String str4 = (String) map.get("password");
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
                    Log.e("IAWebViewClient", str3 + ", " + str4);
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
            GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
            if (gvTFQjxVwkecXbjr != null) {
                hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
            }
            hashMap.put("host", host);
            hashMap.put("protocol", protocol);
            hashMap.put("realm", null);
            hashMap.put("port", Integer.valueOf(port));
            hashMap.put("androidError", Integer.valueOf(sslError.getPrimaryError()));
            hashMap.put("iosError", null);
            hashMap.put("sslCertificate", InAppWebView.getCertificateMap(sslError.getCertificate()));
            int primaryError = sslError.getPrimaryError();
            hashMap.put("message", primaryError != 0 ? primaryError != 1 ? primaryError != 2 ? primaryError != 3 ? primaryError != 4 ? "A generic error occurred" : "The date of the certificate is invalid" : "The certificate authority is not trusted" : "Hostname mismatch" : "The certificate has expired" : "The certificate is not yet valid");
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
                    Log.e("IAWebViewClient", str + ", " + str2);
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
            GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
            if (gvTFQjxVwkecXbjr != null) {
                hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
            }
            hashMap.put("host", clientCertRequest.getHost());
            hashMap.put("protocol", protocol);
            hashMap.put("realm", null);
            hashMap.put("port", Integer.valueOf(clientCertRequest.getPort()));
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
                    Log.e("IAWebViewClient", str + ", " + str2);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put("oldScale", Float.valueOf(f));
        hashMap.put("newScale", Float.valueOf(f2));
        this.channel.invokeMethod("onScaleChanged", hashMap);
    }

    @Override // android.webkit.WebViewClient
    public void onSafeBrowsingHit(final WebView webView, final WebResourceRequest webResourceRequest, final int i, final SafeBrowsingResponse safeBrowsingResponse) {
        HashMap hashMap = new HashMap();
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
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
                Log.e("IAWebViewClient", str + ", " + str2);
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
            GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
            if (gvTFQjxVwkecXbjr != null) {
                hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
            }
            hashMap.put(ImagesContract.URL, str);
            hashMap.put("scheme", scheme);
            try {
                Util.WaitFlutterResult invokeMethodAndWait = Util.invokeMethodAndWait(this.channel, "onLoadResourceCustomScheme", hashMap);
                if (invokeMethodAndWait.error != null) {
                    Log.e("IAWebViewClient", invokeMethodAndWait.error);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put(ImagesContract.URL, str);
        hashMap.put("method", ShareTarget.METHOD_GET);
        hashMap.put("headers", map);
        hashMap.put("isForMainFrame", bool);
        hashMap.put("hasGesture", bool2);
        hashMap.put("isRedirect", z);
        try {
            Util.WaitFlutterResult invokeMethodAndWait = Util.invokeMethodAndWait(this.channel, "shouldInterceptRequest", hashMap);
            if (invokeMethodAndWait.error != null) {
                Log.e("IAWebViewClient", invokeMethodAndWait.error);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
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
                Log.d("IAWebViewClient", "ERROR: " + str + " " + str2);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
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
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put("didCrash", valueOf);
        hashMap.put("rendererPriorityAtExit", valueOf2);
        this.channel.invokeMethod("onRenderProcessGone", hashMap);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        GvTFQjxVwkecXbjr gvTFQjxVwkecXbjr = this.inAppBrowserActivity;
        if (gvTFQjxVwkecXbjr != null) {
            hashMap.put("uuid", gvTFQjxVwkecXbjr.uuid);
        }
        hashMap.put("realm", str);
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
