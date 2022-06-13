package io.flutter.embedding.engine.systemchannels;

import android.os.Bundle;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.editing.TextEditingDelta;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class TextInputChannel {
    private static final String TAG = "TextInputChannel";
    public final MethodChannel channel;
    final MethodChannel.MethodCallHandler parsingMethodHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.TextInputChannel.1
        @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
        public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
            Bundle bundle;
            if (TextInputChannel.this.textInputMethodHandler != null) {
                String str = methodCall.method;
                Object obj = methodCall.arguments;
                Log.v("TextInputChannel", "Received '" + str + "' message.");
                char c = 65535;
                switch (str.hashCode()) {
                    case -1779068172:
                        if (str.equals("TextInput.setPlatformViewClient")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1015421462:
                        if (str.equals("TextInput.setEditingState")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -37561188:
                        if (str.equals("TextInput.setClient")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 270476819:
                        if (str.equals("TextInput.hide")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 270803918:
                        if (str.equals("TextInput.show")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 649192816:
                        if (str.equals("TextInput.sendAppPrivateCommand")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1204752139:
                        if (str.equals("TextInput.setEditableSizeAndTransform")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1727570905:
                        if (str.equals("TextInput.finishAutofillContext")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1904427655:
                        if (str.equals("TextInput.clearClient")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 2113369584:
                        if (str.equals("TextInput.requestAutofill")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        TextInputChannel.this.textInputMethodHandler.show();
                        result.success(null);
                        return;
                    case 1:
                        TextInputChannel.this.textInputMethodHandler.hide();
                        result.success(null);
                        return;
                    case 2:
                        try {
                            JSONArray jSONArray = (JSONArray) obj;
                            TextInputChannel.this.textInputMethodHandler.setClient(jSONArray.getInt(0), Configuration.fromJson(jSONArray.getJSONObject(1)));
                            result.success(null);
                            return;
                        } catch (NoSuchFieldException | JSONException e) {
                            result.error("error", e.getMessage(), null);
                            return;
                        }
                    case 3:
                        TextInputChannel.this.textInputMethodHandler.requestAutofill();
                        result.success(null);
                        return;
                    case 4:
                        try {
                            JSONObject jSONObject = (JSONObject) obj;
                            TextInputChannel.this.textInputMethodHandler.setPlatformViewClient(jSONObject.getInt("platformViewId"), jSONObject.optBoolean("usesVirtualDisplay", false));
                            result.success(null);
                            return;
                        } catch (JSONException e2) {
                            result.error("error", e2.getMessage(), null);
                            return;
                        }
                    case 5:
                        try {
                            TextInputChannel.this.textInputMethodHandler.setEditingState(TextEditState.fromJson((JSONObject) obj));
                            result.success(null);
                            return;
                        } catch (JSONException e3) {
                            result.error("error", e3.getMessage(), null);
                            return;
                        }
                    case 6:
                        try {
                            JSONObject jSONObject2 = (JSONObject) obj;
                            double d = jSONObject2.getDouble("width");
                            double d2 = jSONObject2.getDouble("height");
                            JSONArray jSONArray2 = jSONObject2.getJSONArray("transform");
                            double[] dArr = new double[16];
                            for (int i = 0; i < 16; i++) {
                                dArr[i] = jSONArray2.getDouble(i);
                            }
                            TextInputChannel.this.textInputMethodHandler.setEditableSizeAndTransform(d, d2, dArr);
                            result.success(null);
                            return;
                        } catch (JSONException e4) {
                            result.error("error", e4.getMessage(), null);
                            return;
                        }
                    case 7:
                        TextInputChannel.this.textInputMethodHandler.clearClient();
                        result.success(null);
                        return;
                    case '\b':
                        try {
                            JSONObject jSONObject3 = (JSONObject) obj;
                            String string = jSONObject3.getString("action");
                            String string2 = jSONObject3.getString("data");
                            if (string2 == null || string2.isEmpty()) {
                                bundle = null;
                            } else {
                                bundle = new Bundle();
                                bundle.putString("data", string2);
                            }
                            TextInputChannel.this.textInputMethodHandler.sendAppPrivateCommand(string, bundle);
                            result.success(null);
                            return;
                        } catch (JSONException e5) {
                            result.error("error", e5.getMessage(), null);
                            return;
                        }
                    case '\t':
                        TextInputChannel.this.textInputMethodHandler.finishAutofillContext(((Boolean) obj).booleanValue());
                        result.success(null);
                        return;
                    default:
                        result.notImplemented();
                        return;
                }
            }
        }
    };
    private TextInputMethodHandler textInputMethodHandler;

    /* loaded from: classes5.dex */
    public interface TextInputMethodHandler {
        void clearClient();

        void finishAutofillContext(boolean z);

        void hide();

        void requestAutofill();

        void sendAppPrivateCommand(String str, Bundle bundle);

        void setClient(int i, Configuration configuration);

        void setEditableSizeAndTransform(double d, double d2, double[] dArr);

        void setEditingState(TextEditState textEditState);

        void setPlatformViewClient(int i, boolean z);

        void show();
    }

    public TextInputChannel(DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/textinput", JSONMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodHandler);
    }

    public void requestExistingInputState() {
        this.channel.invokeMethod("TextInputClient.requestExistingInputState", null);
    }

    private static HashMap<Object, Object> createEditingStateJSON(String str, int i, int i2, int i3, int i4) {
        HashMap<Object, Object> hashMap = new HashMap<>();
        hashMap.put("text", str);
        hashMap.put("selectionBase", Integer.valueOf(i));
        hashMap.put("selectionExtent", Integer.valueOf(i2));
        hashMap.put("composingBase", Integer.valueOf(i3));
        hashMap.put("composingExtent", Integer.valueOf(i4));
        return hashMap;
    }

    private static HashMap<Object, Object> createEditingDeltaJSON(ArrayList<TextEditingDelta> arrayList) {
        HashMap<Object, Object> hashMap = new HashMap<>();
        JSONArray jSONArray = new JSONArray();
        Iterator<TextEditingDelta> it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().toJSON());
        }
        hashMap.put("deltas", jSONArray);
        return hashMap;
    }

    public void updateEditingState(int i, String str, int i2, int i3, int i4, int i5) {
        Log.v("TextInputChannel", "Sending message to update editing state: \nText: " + str + "\nSelection start: " + i2 + "\nSelection end: " + i3 + "\nComposing start: " + i4 + "\nComposing end: " + i5);
        this.channel.invokeMethod("TextInputClient.updateEditingState", Arrays.asList(Integer.valueOf(i), createEditingStateJSON(str, i2, i3, i4, i5)));
    }

    public void updateEditingStateWithDeltas(int i, ArrayList<TextEditingDelta> arrayList) {
        Log.v("TextInputChannel", "Sending message to update editing state with deltas: \nNumber of deltas: " + arrayList.size());
        this.channel.invokeMethod("TextInputClient.updateEditingStateWithDeltas", Arrays.asList(Integer.valueOf(i), createEditingDeltaJSON(arrayList)));
    }

    public void updateEditingStateWithTag(int i, HashMap<String, TextEditState> hashMap) {
        Log.v("TextInputChannel", "Sending message to update editing state for " + String.valueOf(hashMap.size()) + " field(s).");
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<String, TextEditState> entry : hashMap.entrySet()) {
            TextEditState value = entry.getValue();
            hashMap2.put(entry.getKey(), createEditingStateJSON(value.text, value.selectionStart, value.selectionEnd, -1, -1));
        }
        this.channel.invokeMethod("TextInputClient.updateEditingStateWithTag", Arrays.asList(Integer.valueOf(i), hashMap2));
    }

    public void newline(int i) {
        Log.v("TextInputChannel", "Sending 'newline' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.newline"));
    }

    public void go(int i) {
        Log.v("TextInputChannel", "Sending 'go' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.go"));
    }

    public void search(int i) {
        Log.v("TextInputChannel", "Sending 'search' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.search"));
    }

    public void send(int i) {
        Log.v("TextInputChannel", "Sending 'send' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.send"));
    }

    public void done(int i) {
        Log.v("TextInputChannel", "Sending 'done' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.done"));
    }

    public void next(int i) {
        Log.v("TextInputChannel", "Sending 'next' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.next"));
    }

    public void previous(int i) {
        Log.v("TextInputChannel", "Sending 'previous' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.previous"));
    }

    public void unspecifiedAction(int i) {
        Log.v("TextInputChannel", "Sending 'unspecified' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.unspecified"));
    }

    public void performPrivateCommand(int i, String str, Bundle bundle) {
        HashMap hashMap = new HashMap();
        hashMap.put("action", str);
        if (bundle != null) {
            HashMap hashMap2 = new HashMap();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj instanceof byte[]) {
                    hashMap2.put(str2, bundle.getByteArray(str2));
                } else if (obj instanceof Byte) {
                    hashMap2.put(str2, Byte.valueOf(bundle.getByte(str2)));
                } else if (obj instanceof char[]) {
                    hashMap2.put(str2, bundle.getCharArray(str2));
                } else if (obj instanceof Character) {
                    hashMap2.put(str2, Character.valueOf(bundle.getChar(str2)));
                } else if (obj instanceof CharSequence[]) {
                    hashMap2.put(str2, bundle.getCharSequenceArray(str2));
                } else if (obj instanceof CharSequence) {
                    hashMap2.put(str2, bundle.getCharSequence(str2));
                } else if (obj instanceof float[]) {
                    hashMap2.put(str2, bundle.getFloatArray(str2));
                } else if (obj instanceof Float) {
                    hashMap2.put(str2, Float.valueOf(bundle.getFloat(str2)));
                }
            }
            hashMap.put("data", hashMap2);
        }
        this.channel.invokeMethod("TextInputClient.performPrivateCommand", Arrays.asList(Integer.valueOf(i), hashMap));
    }

    public void setTextInputMethodHandler(TextInputMethodHandler textInputMethodHandler) {
        this.textInputMethodHandler = textInputMethodHandler;
    }

    /* loaded from: classes5.dex */
    public static class Configuration {
        public final String actionLabel;
        public final boolean autocorrect;
        public final Autofill autofill;
        public final boolean enableDeltaModel;
        public final boolean enableIMEPersonalizedLearning;
        public final boolean enableSuggestions;
        public final Configuration[] fields;
        public final Integer inputAction;
        public final InputType inputType;
        public final boolean obscureText;
        public final TextCapitalization textCapitalization;

        public static Configuration fromJson(JSONObject jSONObject) throws JSONException, NoSuchFieldException {
            Configuration[] configurationArr;
            String string = jSONObject.getString("inputAction");
            if (string != null) {
                Autofill autofill = null;
                if (!jSONObject.isNull("fields")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("fields");
                    Configuration[] configurationArr2 = new Configuration[jSONArray.length()];
                    for (int i = 0; i < configurationArr2.length; i++) {
                        configurationArr2[i] = fromJson(jSONArray.getJSONObject(i));
                    }
                    configurationArr = configurationArr2;
                } else {
                    configurationArr = null;
                }
                Integer inputActionFromTextInputAction = inputActionFromTextInputAction(string);
                boolean optBoolean = jSONObject.optBoolean("obscureText");
                boolean optBoolean2 = jSONObject.optBoolean("autocorrect", true);
                boolean optBoolean3 = jSONObject.optBoolean("enableSuggestions");
                boolean optBoolean4 = jSONObject.optBoolean("enableIMEPersonalizedLearning");
                boolean optBoolean5 = jSONObject.optBoolean("enableDeltaModel");
                TextCapitalization fromValue = TextCapitalization.fromValue(jSONObject.getString("textCapitalization"));
                InputType fromJson = InputType.fromJson(jSONObject.getJSONObject("inputType"));
                String string2 = jSONObject.isNull("actionLabel") ? null : jSONObject.getString("actionLabel");
                if (!jSONObject.isNull("autofill")) {
                    autofill = Autofill.fromJson(jSONObject.getJSONObject("autofill"));
                }
                return new Configuration(optBoolean, optBoolean2, optBoolean3, optBoolean4, optBoolean5, fromValue, fromJson, inputActionFromTextInputAction, string2, autofill, configurationArr);
            }
            throw new JSONException("Configuration JSON missing 'inputAction' property.");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static Integer inputActionFromTextInputAction(String str) {
            char c;
            switch (str.hashCode()) {
                case -810971940:
                    if (str.equals("TextInputAction.unspecified")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -737377923:
                    if (str.equals("TextInputAction.done")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -737089298:
                    if (str.equals("TextInputAction.next")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -737080013:
                    if (str.equals("TextInputAction.none")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -736940669:
                    if (str.equals("TextInputAction.send")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 469250275:
                    if (str.equals("TextInputAction.search")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1241689507:
                    if (str.equals("TextInputAction.go")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1539450297:
                    if (str.equals("TextInputAction.newline")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 2110497650:
                    if (str.equals("TextInputAction.previous")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    return 1;
                case 2:
                    return 0;
                case 3:
                    return 6;
                case 4:
                    return 2;
                case 5:
                    return 3;
                case 6:
                    return 4;
                case 7:
                    return 5;
                case '\b':
                    return 7;
                default:
                    return 0;
            }
        }

        /* loaded from: classes5.dex */
        public static class Autofill {
            public final TextEditState editState;
            public final String hintText;
            public final String[] hints;
            public final String uniqueIdentifier;

            public static Autofill fromJson(JSONObject jSONObject) throws JSONException, NoSuchFieldException {
                String string = jSONObject.getString("uniqueIdentifier");
                JSONArray jSONArray = jSONObject.getJSONArray("hints");
                String string2 = jSONObject.isNull("hintText") ? null : jSONObject.getString("hintText");
                JSONObject jSONObject2 = jSONObject.getJSONObject("editingValue");
                String[] strArr = new String[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    strArr[i] = translateAutofillHint(jSONArray.getString(i));
                }
                return new Autofill(string, strArr, string2, TextEditState.fromJson(jSONObject2));
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0067, code lost:
                if (r16.equals("password") != false) goto L_0x01af;
             */
            /* Code decompiled incorrectly, please refer to instructions dump */
            private static java.lang.String translateAutofillHint(java.lang.String r16) {
                /*
                // Method dump skipped, instructions count: 740
                */
                throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.TextInputChannel.Configuration.Autofill.translateAutofillHint(java.lang.String):java.lang.String");
            }

            public Autofill(String str, String[] strArr, String str2, TextEditState textEditState) {
                this.uniqueIdentifier = str;
                this.hints = strArr;
                this.hintText = str2;
                this.editState = textEditState;
            }
        }

        public Configuration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, TextCapitalization textCapitalization, InputType inputType, Integer num, String str, Autofill autofill, Configuration[] configurationArr) {
            this.obscureText = z;
            this.autocorrect = z2;
            this.enableSuggestions = z3;
            this.enableIMEPersonalizedLearning = z4;
            this.enableDeltaModel = z5;
            this.textCapitalization = textCapitalization;
            this.inputType = inputType;
            this.inputAction = num;
            this.actionLabel = str;
            this.autofill = autofill;
            this.fields = configurationArr;
        }
    }

    /* loaded from: classes5.dex */
    public static class InputType {
        public final boolean isDecimal;
        public final boolean isSigned;
        public final TextInputType type;

        public static InputType fromJson(JSONObject jSONObject) throws JSONException, NoSuchFieldException {
            return new InputType(TextInputType.fromValue(jSONObject.getString("name")), jSONObject.optBoolean("signed", false), jSONObject.optBoolean("decimal", false));
        }

        public InputType(TextInputType textInputType, boolean z, boolean z2) {
            this.type = textInputType;
            this.isSigned = z;
            this.isDecimal = z2;
        }
    }

    /* loaded from: classes5.dex */
    public enum TextInputType {
        TEXT("TextInputType.text"),
        DATETIME("TextInputType.datetime"),
        NAME("TextInputType.name"),
        POSTAL_ADDRESS("TextInputType.address"),
        NUMBER("TextInputType.number"),
        PHONE("TextInputType.phone"),
        MULTILINE("TextInputType.multiline"),
        EMAIL_ADDRESS("TextInputType.emailAddress"),
        URL("TextInputType.url"),
        VISIBLE_PASSWORD("TextInputType.visiblePassword"),
        NONE("TextInputType.none");
        
        private final String encodedName;

        static TextInputType fromValue(String str) throws NoSuchFieldException {
            TextInputType[] values = values();
            for (TextInputType textInputType : values) {
                if (textInputType.encodedName.equals(str)) {
                    return textInputType;
                }
            }
            throw new NoSuchFieldException("No such TextInputType: " + str);
        }

        TextInputType(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes5.dex */
    public enum TextCapitalization {
        CHARACTERS("TextCapitalization.characters"),
        WORDS("TextCapitalization.words"),
        SENTENCES("TextCapitalization.sentences"),
        NONE("TextCapitalization.none");
        
        private final String encodedName;

        static TextCapitalization fromValue(String str) throws NoSuchFieldException {
            TextCapitalization[] values = values();
            for (TextCapitalization textCapitalization : values) {
                if (textCapitalization.encodedName.equals(str)) {
                    return textCapitalization;
                }
            }
            throw new NoSuchFieldException("No such TextCapitalization: " + str);
        }

        TextCapitalization(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes5.dex */
    public static class TextEditState {
        public final int composingEnd;
        public final int composingStart;
        public final int selectionEnd;
        public final int selectionStart;
        public final String text;

        public static TextEditState fromJson(JSONObject jSONObject) throws JSONException {
            return new TextEditState(jSONObject.getString("text"), jSONObject.getInt("selectionBase"), jSONObject.getInt("selectionExtent"), jSONObject.getInt("composingBase"), jSONObject.getInt("composingExtent"));
        }

        public TextEditState(String str, int i, int i2, int i3, int i4) throws IndexOutOfBoundsException {
            if (!(i == -1 && i2 == -1) && (i < 0 || i2 < 0)) {
                throw new IndexOutOfBoundsException("invalid selection: (" + String.valueOf(i) + ", " + String.valueOf(i2) + ")");
            } else if (!(i3 == -1 && i4 == -1) && (i3 < 0 || i3 > i4)) {
                throw new IndexOutOfBoundsException("invalid composing range: (" + String.valueOf(i3) + ", " + String.valueOf(i4) + ")");
            } else if (i4 > str.length()) {
                throw new IndexOutOfBoundsException("invalid composing start: " + String.valueOf(i3));
            } else if (i > str.length()) {
                throw new IndexOutOfBoundsException("invalid selection start: " + String.valueOf(i));
            } else if (i2 <= str.length()) {
                this.text = str;
                this.selectionStart = i;
                this.selectionEnd = i2;
                this.composingStart = i3;
                this.composingEnd = i4;
            } else {
                throw new IndexOutOfBoundsException("invalid selection end: " + String.valueOf(i2));
            }
        }

        public boolean hasSelection() {
            return this.selectionStart >= 0;
        }

        public boolean hasComposing() {
            int i = this.composingStart;
            return i >= 0 && this.composingEnd > i;
        }
    }
}
