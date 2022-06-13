package io.flutter.embedding.engine.systemchannels;

import androidx.webkit.internal.AssetHelper;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class PlatformChannel {
    private static final String TAG = "PlatformChannel";
    public final MethodChannel channel;
    final MethodChannel.MethodCallHandler parsingMethodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.PlatformChannel.1
        /* JADX WARN: Removed duplicated region for block: B:60:0x011f A[Catch: JSONException -> 0x0239, TryCatch #0 {JSONException -> 0x0239, blocks: (B:6:0x002c, B:7:0x0030, B:9:0x0035, B:12:0x0040, B:15:0x004b, B:18:0x0057, B:21:0x0062, B:24:0x006c, B:27:0x0077, B:30:0x0081, B:33:0x008b, B:36:0x0095, B:39:0x009f, B:42:0x00a9, B:45:0x00b4, B:50:0x00c3, B:51:0x00c8, B:52:0x00e1, B:53:0x00f5, B:55:0x00f9, B:56:0x00fe, B:58:0x0113, B:60:0x011f, B:61:0x012c, B:62:0x0131, B:65:0x0158, B:66:0x0161, B:67:0x016f, B:70:0x0196, B:73:0x01b8, B:76:0x01d8, B:79:0x01f9, B:80:0x0201, B:82:0x0215, B:83:0x021d, B:85:0x0231, B:74:0x01c1), top: B:89:0x002c, inners: #2, #3, #7, #11 }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x012c A[Catch: JSONException -> 0x0239, TryCatch #0 {JSONException -> 0x0239, blocks: (B:6:0x002c, B:7:0x0030, B:9:0x0035, B:12:0x0040, B:15:0x004b, B:18:0x0057, B:21:0x0062, B:24:0x006c, B:27:0x0077, B:30:0x0081, B:33:0x008b, B:36:0x0095, B:39:0x009f, B:42:0x00a9, B:45:0x00b4, B:50:0x00c3, B:51:0x00c8, B:52:0x00e1, B:53:0x00f5, B:55:0x00f9, B:56:0x00fe, B:58:0x0113, B:60:0x011f, B:61:0x012c, B:62:0x0131, B:65:0x0158, B:66:0x0161, B:67:0x016f, B:70:0x0196, B:73:0x01b8, B:76:0x01d8, B:79:0x01f9, B:80:0x0201, B:82:0x0215, B:83:0x021d, B:85:0x0231, B:74:0x01c1), top: B:89:0x002c, inners: #2, #3, #7, #11 }] */
        @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
        /* Code decompiled incorrectly, please refer to instructions dump */
        public void onMethodCall(io.flutter.plugin.common.MethodCall r6, io.flutter.plugin.common.MethodChannel.Result r7) {
            /*
            // Method dump skipped, instructions count: 680
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
        }
    };
    private PlatformMessageHandler platformMessageHandler;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface PlatformMessageHandler {
        boolean clipboardHasStrings();

        CharSequence getClipboardData(ClipboardContentFormat clipboardContentFormat);

        void playSystemSound(SoundType soundType);

        void popSystemNavigator();

        void restoreSystemUiOverlays();

        void setApplicationSwitcherDescription(AppSwitcherDescription appSwitcherDescription);

        void setClipboardData(String str);

        void setPreferredOrientations(int i);

        void setSystemUiChangeListener();

        void setSystemUiOverlayStyle(SystemChromeStyle systemChromeStyle);

        void showSystemOverlays(List<SystemUiOverlay> list);

        void showSystemUiMode(SystemUiMode systemUiMode);

        void vibrateHapticFeedback(HapticFeedbackType hapticFeedbackType);
    }

    public PlatformChannel(DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/platform", JSONMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodCallHandler);
    }

    public void setPlatformMessageHandler(PlatformMessageHandler platformMessageHandler) {
        this.platformMessageHandler = platformMessageHandler;
    }

    public void systemChromeChanged(boolean z) {
        Log.v("PlatformChannel", "Sending 'systemUIChange' message.");
        this.channel.invokeMethod("SystemChrome.systemUIChange", Arrays.asList(Boolean.valueOf(z)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int decodeOrientations(JSONArray jSONArray) throws JSONException, NoSuchFieldException {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < jSONArray.length(); i++) {
            int i2 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.fromValue(jSONArray.getString(i)).ordinal()];
            if (i2 == 1) {
                z |= true;
            } else if (i2 == 2) {
                z |= true;
            } else if (i2 == 3) {
                z |= true;
            } else if (i2 == 4) {
                z |= true;
            }
            if (!z2) {
                z2 = z;
            }
        }
        switch (z) {
            case false:
                return -1;
            case true:
                return 1;
            case true:
                return 0;
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                if (z2) {
                    return 1;
                }
                if (z2) {
                    return 0;
                }
                if (z2) {
                    return 9;
                }
                if (z2) {
                    return 8;
                }
                break;
            case true:
                return 9;
            case true:
                return 12;
            case true:
                return 8;
            case true:
                return 11;
            case true:
                return 2;
            case true:
                return 13;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppSwitcherDescription decodeAppSwitcherDescription(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt("primaryColor");
        if (i != 0) {
            i |= -16777216;
        }
        return new AppSwitcherDescription(i, jSONObject.getString("label"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<SystemUiOverlay> decodeSystemUiOverlays(JSONArray jSONArray) throws JSONException, NoSuchFieldException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            int i2 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.fromValue(jSONArray.getString(i)).ordinal()];
            if (i2 == 1) {
                arrayList.add(SystemUiOverlay.TOP_OVERLAYS);
            } else if (i2 == 2) {
                arrayList.add(SystemUiOverlay.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: io.flutter.embedding.engine.systemchannels.PlatformChannel$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode = new int[SystemUiMode.values().length];
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay;

        static {
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.LEAN_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE_STICKY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.EDGE_TO_EDGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = new int[SystemUiOverlay.values().length];
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation = new int[DeviceOrientation.values().length];
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemUiMode decodeSystemUiMode(String str) throws JSONException, NoSuchFieldException {
        int i = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.fromValue(str).ordinal()];
        if (i == 1) {
            return SystemUiMode.LEAN_BACK;
        }
        if (i == 2) {
            return SystemUiMode.IMMERSIVE;
        }
        if (i == 3) {
            return SystemUiMode.IMMERSIVE_STICKY;
        }
        if (i != 4) {
            return SystemUiMode.EDGE_TO_EDGE;
        }
        return SystemUiMode.EDGE_TO_EDGE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemChromeStyle decodeSystemChromeStyle(JSONObject jSONObject) throws JSONException, NoSuchFieldException {
        Boolean bool = null;
        Integer valueOf = !jSONObject.isNull("statusBarColor") ? Integer.valueOf(jSONObject.getInt("statusBarColor")) : null;
        Brightness fromValue = !jSONObject.isNull("statusBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("statusBarIconBrightness")) : null;
        Boolean valueOf2 = !jSONObject.isNull("systemStatusBarContrastEnforced") ? Boolean.valueOf(jSONObject.getBoolean("systemStatusBarContrastEnforced")) : null;
        Integer valueOf3 = !jSONObject.isNull("systemNavigationBarColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarColor")) : null;
        Brightness fromValue2 = !jSONObject.isNull("systemNavigationBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("systemNavigationBarIconBrightness")) : null;
        Integer valueOf4 = !jSONObject.isNull("systemNavigationBarDividerColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor")) : null;
        if (!jSONObject.isNull("systemNavigationBarContrastEnforced")) {
            bool = Boolean.valueOf(jSONObject.getBoolean("systemNavigationBarContrastEnforced"));
        }
        return new SystemChromeStyle(valueOf, fromValue, valueOf2, valueOf3, fromValue2, valueOf4, bool);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum SoundType {
        CLICK("SystemSoundType.click"),
        ALERT("SystemSoundType.alert");
        
        private final String encodedName;

        static SoundType fromValue(String str) throws NoSuchFieldException {
            SoundType[] values = values();
            for (SoundType soundType : values) {
                if (soundType.encodedName.equals(str)) {
                    return soundType;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }

        SoundType(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum HapticFeedbackType {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");
        
        private final String encodedName;

        static HapticFeedbackType fromValue(String str) throws NoSuchFieldException {
            String str2;
            HapticFeedbackType[] values = values();
            for (HapticFeedbackType hapticFeedbackType : values) {
                if ((hapticFeedbackType.encodedName == null && str == null) || ((str2 = hapticFeedbackType.encodedName) != null && str2.equals(str))) {
                    return hapticFeedbackType;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }

        HapticFeedbackType(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum DeviceOrientation {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");
        
        private String encodedName;

        static DeviceOrientation fromValue(String str) throws NoSuchFieldException {
            DeviceOrientation[] values = values();
            for (DeviceOrientation deviceOrientation : values) {
                if (deviceOrientation.encodedName.equals(str)) {
                    return deviceOrientation;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }

        DeviceOrientation(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum SystemUiOverlay {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");
        
        private String encodedName;

        static SystemUiOverlay fromValue(String str) throws NoSuchFieldException {
            SystemUiOverlay[] values = values();
            for (SystemUiOverlay systemUiOverlay : values) {
                if (systemUiOverlay.encodedName.equals(str)) {
                    return systemUiOverlay;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }

        SystemUiOverlay(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum SystemUiMode {
        LEAN_BACK("SystemUiMode.leanBack"),
        IMMERSIVE("SystemUiMode.immersive"),
        IMMERSIVE_STICKY("SystemUiMode.immersiveSticky"),
        EDGE_TO_EDGE("SystemUiMode.edgeToEdge");
        
        private String encodedName;

        static SystemUiMode fromValue(String str) throws NoSuchFieldException {
            SystemUiMode[] values = values();
            for (SystemUiMode systemUiMode : values) {
                if (systemUiMode.encodedName.equals(str)) {
                    return systemUiMode;
                }
            }
            throw new NoSuchFieldException("No such SystemUiMode: " + str);
        }

        SystemUiMode(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class AppSwitcherDescription {
        public final int color;
        public final String label;

        public AppSwitcherDescription(int i, String str) {
            this.color = i;
            this.label = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class SystemChromeStyle {
        public final Integer statusBarColor;
        public final Brightness statusBarIconBrightness;
        public final Integer systemNavigationBarColor;
        public final Boolean systemNavigationBarContrastEnforced;
        public final Integer systemNavigationBarDividerColor;
        public final Brightness systemNavigationBarIconBrightness;
        public final Boolean systemStatusBarContrastEnforced;

        public SystemChromeStyle(Integer num, Brightness brightness, Boolean bool, Integer num2, Brightness brightness2, Integer num3, Boolean bool2) {
            this.statusBarColor = num;
            this.statusBarIconBrightness = brightness;
            this.systemStatusBarContrastEnforced = bool;
            this.systemNavigationBarColor = num2;
            this.systemNavigationBarIconBrightness = brightness2;
            this.systemNavigationBarDividerColor = num3;
            this.systemNavigationBarContrastEnforced = bool2;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum Brightness {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");
        
        private String encodedName;

        static Brightness fromValue(String str) throws NoSuchFieldException {
            Brightness[] values = values();
            for (Brightness brightness : values) {
                if (brightness.encodedName.equals(str)) {
                    return brightness;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }

        Brightness(String str) {
            this.encodedName = str;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum ClipboardContentFormat {
        PLAIN_TEXT(AssetHelper.DEFAULT_MIME_TYPE);
        
        private String encodedName;

        static ClipboardContentFormat fromValue(String str) throws NoSuchFieldException {
            ClipboardContentFormat[] values = values();
            for (ClipboardContentFormat clipboardContentFormat : values) {
                if (clipboardContentFormat.encodedName.equals(str)) {
                    return clipboardContentFormat;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }

        ClipboardContentFormat(String str) {
            this.encodedName = str;
        }
    }
}
