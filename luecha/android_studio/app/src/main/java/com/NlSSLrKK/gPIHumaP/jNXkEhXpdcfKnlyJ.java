package com.NlSSLrKK.gPIHumaP;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ChromeCustomTabsOptions;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.CustomTabActivityHelper;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.CustomTabsHelper;
import com.pichillilorenzo.flutter_inappwebview.R;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ChromeCustomTabsActivity.java */
/* loaded from: classes5.dex */
public class jNXkEhXpdcfKnlyJ extends Activity implements MethodChannel.MethodCallHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final String LOG_TAG = "CustomTabsActivity";
    public CustomTabsIntent.Builder builder;
    public MethodChannel channel;
    public CustomTabActivityHelper customTabActivityHelper;
    public CustomTabsSession customTabsSession;
    public ChromeCustomTabsOptions options;
    public String uuid;
    protected final int CHROME_CUSTOM_TAB_REQUEST_CODE = 100;
    protected boolean onChromeSafariBrowserOpened = false;
    protected boolean onChromeSafariBrowserCompletedInitialLoad = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.chrome_custom_tabs_layout);
        Bundle extras = getIntent().getExtras();
        this.uuid = extras.getString("uuid");
        BinaryMessenger binaryMessenger = Shared.messenger;
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_chromesafaribrowser_" + this.uuid);
        this.channel.setMethodCallHandler(this);
        final String string = extras.getString(ImagesContract.URL);
        this.options = new ChromeCustomTabsOptions();
        this.options.parse((Map<String, Object>) ((HashMap) extras.getSerializable("options")));
        final List list = (List) extras.getSerializable("menuItemList");
        this.customTabActivityHelper = new CustomTabActivityHelper();
        this.customTabActivityHelper.setConnectionCallback(new CustomTabActivityHelper.ConnectionCallback() { // from class: com.NlSSLrKK.gPIHumaP.jNXkEhXpdcfKnlyJ.1
            @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.CustomTabActivityHelper.ConnectionCallback
            public void onCustomTabsConnected() {
                jNXkEhXpdcfKnlyJ jnxkehxpdcfknlyj = jNXkEhXpdcfKnlyJ.this;
                jnxkehxpdcfknlyj.customTabsSession = jnxkehxpdcfknlyj.customTabActivityHelper.getSession();
                Uri parse = Uri.parse(string);
                jNXkEhXpdcfKnlyJ.this.customTabActivityHelper.mayLaunchUrl(parse, null, null);
                jNXkEhXpdcfKnlyJ jnxkehxpdcfknlyj2 = jNXkEhXpdcfKnlyJ.this;
                jnxkehxpdcfknlyj2.builder = new CustomTabsIntent.Builder(jnxkehxpdcfknlyj2.customTabsSession);
                jNXkEhXpdcfKnlyJ.this.prepareCustomTabs(list);
                CustomTabsIntent build = jNXkEhXpdcfKnlyJ.this.builder.build();
                jNXkEhXpdcfKnlyJ.this.prepareCustomTabsIntent(build);
                CustomTabActivityHelper.openCustomTab(this, build, parse, 100);
            }

            @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.CustomTabActivityHelper.ConnectionCallback
            public void onCustomTabsDisconnected() {
                this.close();
            }
        });
        this.customTabActivityHelper.setCustomTabsCallback(new CustomTabsCallback() { // from class: com.NlSSLrKK.gPIHumaP.jNXkEhXpdcfKnlyJ.2
            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void extraCallback(String str, Bundle bundle2) {
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onMessageChannelReady(Bundle bundle2) {
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onPostMessage(String str, Bundle bundle2) {
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle2) {
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onNavigationEvent(int i, Bundle bundle2) {
                if (i == 5 && !jNXkEhXpdcfKnlyJ.this.onChromeSafariBrowserOpened) {
                    jNXkEhXpdcfKnlyJ.this.onChromeSafariBrowserOpened = true;
                    HashMap hashMap = new HashMap();
                    hashMap.put("uuid", jNXkEhXpdcfKnlyJ.this.uuid);
                    jNXkEhXpdcfKnlyJ.this.channel.invokeMethod("onChromeSafariBrowserOpened", hashMap);
                }
                if (i == 2 && !jNXkEhXpdcfKnlyJ.this.onChromeSafariBrowserCompletedInitialLoad) {
                    jNXkEhXpdcfKnlyJ.this.onChromeSafariBrowserCompletedInitialLoad = true;
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("uuid", jNXkEhXpdcfKnlyJ.this.uuid);
                    jNXkEhXpdcfKnlyJ.this.channel.invokeMethod("onChromeSafariBrowserCompletedInitialLoad", hashMap2);
                }
            }
        });
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        if (((str.hashCode() == 94756344 && str.equals("close")) ? (char) 0 : 65535) != 0) {
            result.notImplemented();
            return;
        }
        onStop();
        onDestroy();
        close();
        Intent intent = new Intent(Shared.activity, Shared.activity.getClass());
        intent.addFlags(67108864);
        intent.addFlags(536870912);
        Shared.activity.startActivity(intent);
        result.success(true);
    }

    public void prepareCustomTabs(List<HashMap<String, Object>> list) {
        if (this.options.addDefaultShareMenuItem.booleanValue()) {
            this.builder.addDefaultShareMenuItem();
        }
        if (!this.options.toolbarBackgroundColor.isEmpty()) {
            this.builder.setToolbarColor(Color.parseColor(this.options.toolbarBackgroundColor));
        }
        this.builder.setShowTitle(this.options.showTitle.booleanValue());
        if (this.options.enableUrlBarHiding.booleanValue()) {
            this.builder.enableUrlBarHiding();
        }
        this.builder.setInstantAppsEnabled(this.options.instantAppsEnabled.booleanValue());
        for (HashMap<String, Object> hashMap : list) {
            int intValue = ((Integer) hashMap.get("id")).intValue();
            this.builder.addMenuItem((String) hashMap.get("label"), createPendingIntent(intValue));
        }
    }

    public void prepareCustomTabsIntent(CustomTabsIntent customTabsIntent) {
        if (this.options.packageName != null) {
            customTabsIntent.intent.setPackage(this.options.packageName);
        } else {
            customTabsIntent.intent.setPackage(CustomTabsHelper.getPackageNameToUse(this));
        }
        if (this.options.keepAliveEnabled.booleanValue()) {
            CustomTabsHelper.addKeepAliveExtra(this, customTabsIntent.intent);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.customTabActivityHelper.bindCustomTabsService(this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.customTabActivityHelper.unbindCustomTabsService(this);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100) {
            close();
        }
    }

    public void close() {
        this.customTabsSession = null;
        finish();
        HashMap hashMap = new HashMap();
        hashMap.put("uuid", this.uuid);
        this.channel.invokeMethod("onChromeSafariBrowserClosed", hashMap);
    }

    private PendingIntent createPendingIntent(int i) {
        Intent intent = new Intent(this, SrawkuYXXZxvNdSf.class);
        Bundle bundle = new Bundle();
        bundle.putInt("com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_ID", i);
        bundle.putString("com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_UUID", this.uuid);
        intent.putExtras(bundle);
        return PendingIntent.getBroadcast(this, i, intent, 0);
    }
}
