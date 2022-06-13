package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.JSONMessageCodec;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class SettingsChannel {
    private static final String ALWAYS_USE_24_HOUR_FORMAT = "alwaysUse24HourFormat";
    public static final String CHANNEL_NAME = "flutter/settings";
    private static final String PLATFORM_BRIGHTNESS = "platformBrightness";
    private static final String TAG = "SettingsChannel";
    private static final String TEXT_SCALE_FACTOR = "textScaleFactor";
    public final BasicMessageChannel<Object> channel;

    public SettingsChannel(DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, "flutter/settings", JSONMessageCodec.INSTANCE);
    }

    public MessageBuilder startMessage() {
        return new MessageBuilder(this.channel);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class MessageBuilder {
        private final BasicMessageChannel<Object> channel;
        private Map<String, Object> message = new HashMap();

        MessageBuilder(BasicMessageChannel<Object> basicMessageChannel) {
            this.channel = basicMessageChannel;
        }

        public MessageBuilder setTextScaleFactor(float f) {
            this.message.put("textScaleFactor", Float.valueOf(f));
            return this;
        }

        public MessageBuilder setUse24HourFormat(boolean z) {
            this.message.put("alwaysUse24HourFormat", Boolean.valueOf(z));
            return this;
        }

        public MessageBuilder setPlatformBrightness(PlatformBrightness platformBrightness) {
            this.message.put("platformBrightness", platformBrightness.name);
            return this;
        }

        public void send() {
            Log.v("SettingsChannel", "Sending message: \ntextScaleFactor: " + this.message.get("textScaleFactor") + "\nalwaysUse24HourFormat: " + this.message.get("alwaysUse24HourFormat") + "\nplatformBrightness: " + this.message.get("platformBrightness"));
            this.channel.send(this.message);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum PlatformBrightness {
        light("light"),
        dark("dark");
        
        public String name;

        PlatformBrightness(String str) {
            this.name = str;
        }
    }
}
