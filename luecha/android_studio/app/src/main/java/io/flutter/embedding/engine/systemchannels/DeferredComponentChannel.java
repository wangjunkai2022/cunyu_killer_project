package io.flutter.embedding.engine.systemchannels;

import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class DeferredComponentChannel {
    private static final String TAG = "DeferredComponentChannel";
    private final MethodChannel channel;
    final MethodChannel.MethodCallHandler parsingMethodHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.DeferredComponentChannel.1
        @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
        public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
            if (DeferredComponentChannel.this.deferredComponentManager != null) {
                String str = methodCall.method;
                Map map = (Map) methodCall.arguments();
                Log.v("DeferredComponentChannel", "Received '" + str + "' message.");
                int intValue = ((Integer) map.get("loadingUnitId")).intValue();
                String str2 = (String) map.get("componentName");
                char c = 65535;
                int hashCode = str.hashCode();
                if (hashCode != -1004447972) {
                    if (hashCode != 399701758) {
                        if (hashCode == 520962947 && str.equals("installDeferredComponent")) {
                            c = 0;
                        }
                    } else if (str.equals("getDeferredComponentInstallState")) {
                        c = 1;
                    }
                } else if (str.equals("uninstallDeferredComponent")) {
                    c = 2;
                }
                if (c == 0) {
                    DeferredComponentChannel.this.deferredComponentManager.installDeferredComponent(intValue, str2);
                    if (!DeferredComponentChannel.this.componentNameToResults.containsKey(str2)) {
                        DeferredComponentChannel.this.componentNameToResults.put(str2, new ArrayList());
                    }
                    ((List) DeferredComponentChannel.this.componentNameToResults.get(str2)).add(result);
                } else if (c == 1) {
                    result.success(DeferredComponentChannel.this.deferredComponentManager.getDeferredComponentInstallState(intValue, str2));
                } else if (c != 2) {
                    result.notImplemented();
                } else {
                    DeferredComponentChannel.this.deferredComponentManager.uninstallDeferredComponent(intValue, str2);
                    result.success(null);
                }
            }
        }
    };
    private DeferredComponentManager deferredComponentManager = FlutterInjector.instance().deferredComponentManager();
    private Map<String, List<MethodChannel.Result>> componentNameToResults = new HashMap();

    public DeferredComponentChannel(DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/deferredcomponent", StandardMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodHandler);
    }

    public void setDeferredComponentManager(DeferredComponentManager deferredComponentManager) {
        this.deferredComponentManager = deferredComponentManager;
    }

    public void completeInstallSuccess(String str) {
        if (this.componentNameToResults.containsKey(str)) {
            for (MethodChannel.Result result : this.componentNameToResults.get(str)) {
                result.success(null);
            }
            this.componentNameToResults.get(str).clear();
        }
    }

    public void completeInstallError(String str, String str2) {
        if (this.componentNameToResults.containsKey(str)) {
            for (MethodChannel.Result result : this.componentNameToResults.get(str)) {
                result.error("DeferredComponent Install failure", str2, null);
            }
            this.componentNameToResults.get(str).clear();
        }
    }
}
