package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.webkit.ValueCallback;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.FlutterWebViewFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.view.FlutterView;
import java.io.File;
import ren.yale.android.cachewebviewlib.CacheType;
import ren.yale.android.cachewebviewlib.WebViewCacheInterceptor;
import ren.yale.android.cachewebviewlib.WebViewCacheInterceptorInst;
import ren.yale.android.cachewebviewlib.config.CacheExtensionConfig;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class InAppWebViewFlutterPlugin implements FlutterPlugin, ActivityAware {
    protected static final String LOG_TAG = "InAppWebViewFlutterPL";
    public static ChromeSafariBrowserManager chromeSafariBrowserManager;
    public static CredentialDatabaseHandler credentialDatabaseHandler;
    public static ValueCallback<Uri[]> filePathCallback;
    public static ValueCallback<Uri> filePathCallbackLegacy;
    public static HeadlessInAppWebViewManager headlessInAppWebViewManager;
    public static InAppBrowserManager inAppBrowserManager;
    public static InAppWebViewStatic inAppWebViewStatic;
    public static MyCookieManager myCookieManager;
    public static MyWebStorage myWebStorage;

    public static void registerWith(PluginRegistry.Registrar registrar) {
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = new InAppWebViewFlutterPlugin();
        Shared.registrar = registrar;
        inAppWebViewFlutterPlugin.onAttachedToEngine(registrar.context(), registrar.messenger(), registrar.activity(), registrar.platformViewRegistry(), registrar.view());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Shared.flutterAssets = flutterPluginBinding.getFlutterAssets();
        onAttachedToEngine(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger(), Shared.activity, flutterPluginBinding.getPlatformViewRegistry(), null);
    }

    private void initLocalCache(Context context) {
        CacheExtensionConfig cacheExtensionConfig = new CacheExtensionConfig();
        for (String str : new String[]{"js", "ico", "css", "png", "jpg", "jpeg", "gif", "bmp", "ttf", "woff", "woff2", "otf", "eot", "svg", "xml", "txt", "text", "conf", "webp", "bin", "data"}) {
            cacheExtensionConfig.addExtension(str);
        }
        WebViewCacheInterceptor.Builder builder = new WebViewCacheInterceptor.Builder(context);
        builder.setCacheExtensionConfig(cacheExtensionConfig);
        builder.setCachePath(new File(context.getFilesDir(), "InAppWebViewLocalAssets")).setCacheSize(536870912).setConnectTimeoutSecond(20).setReadTimeoutSecond(20).setCacheType(CacheType.FORCE);
        WebViewCacheInterceptorInst.getInstance().init(builder);
    }

    private void onAttachedToEngine(Context context, BinaryMessenger binaryMessenger, Activity activity, PlatformViewRegistry platformViewRegistry, FlutterView flutterView) {
        initLocalCache(context);
        Shared.applicationContext = context;
        Shared.activity = activity;
        Shared.messenger = binaryMessenger;
        inAppBrowserManager = new InAppBrowserManager(binaryMessenger);
        headlessInAppWebViewManager = new HeadlessInAppWebViewManager(binaryMessenger);
        chromeSafariBrowserManager = new ChromeSafariBrowserManager(binaryMessenger);
        platformViewRegistry.registerViewFactory("com.pichillilorenzo/flutter_inappwebview", new FlutterWebViewFactory(binaryMessenger, flutterView));
        inAppWebViewStatic = new InAppWebViewStatic(binaryMessenger);
        myCookieManager = new MyCookieManager(binaryMessenger);
        myWebStorage = new MyWebStorage(binaryMessenger);
        if (Build.VERSION.SDK_INT >= 26) {
            credentialDatabaseHandler = new CredentialDatabaseHandler(binaryMessenger);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        InAppBrowserManager inAppBrowserManager2 = inAppBrowserManager;
        if (inAppBrowserManager2 != null) {
            inAppBrowserManager2.dispose();
            inAppBrowserManager = null;
        }
        HeadlessInAppWebViewManager headlessInAppWebViewManager2 = headlessInAppWebViewManager;
        if (headlessInAppWebViewManager2 != null) {
            headlessInAppWebViewManager2.dispose();
            headlessInAppWebViewManager = null;
        }
        ChromeSafariBrowserManager chromeSafariBrowserManager2 = chromeSafariBrowserManager;
        if (chromeSafariBrowserManager2 != null) {
            chromeSafariBrowserManager2.dispose();
            chromeSafariBrowserManager = null;
        }
        MyCookieManager myCookieManager2 = myCookieManager;
        if (myCookieManager2 != null) {
            myCookieManager2.dispose();
            myCookieManager = null;
        }
        MyWebStorage myWebStorage2 = myWebStorage;
        if (myWebStorage2 != null) {
            myWebStorage2.dispose();
            myWebStorage = null;
        }
        if (credentialDatabaseHandler != null && Build.VERSION.SDK_INT >= 26) {
            credentialDatabaseHandler.dispose();
            credentialDatabaseHandler = null;
        }
        InAppWebViewStatic inAppWebViewStatic2 = inAppWebViewStatic;
        if (inAppWebViewStatic2 != null) {
            inAppWebViewStatic2.dispose();
            inAppWebViewStatic = null;
        }
        filePathCallbackLegacy = null;
        filePathCallback = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Shared.activityPluginBinding = activityPluginBinding;
        Shared.activity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Shared.activityPluginBinding = null;
        Shared.activity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Shared.activityPluginBinding = activityPluginBinding;
        Shared.activity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Shared.activityPluginBinding = null;
        Shared.activity = null;
    }
}
