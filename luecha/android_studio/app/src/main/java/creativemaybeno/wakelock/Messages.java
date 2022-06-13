package creativemaybeno.wakelock;

import creativemaybeno.wakelock.Messages;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class Messages {

    /* loaded from: classes5.dex */
    public static class ToggleMessage {
        private Boolean enable;

        public Boolean getEnable() {
            return this.enable;
        }

        public void setEnable(Boolean bool) {
            this.enable = bool;
        }

        Map<String, Object> toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("enable", this.enable);
            return hashMap;
        }

        static ToggleMessage fromMap(Map<String, Object> map) {
            ToggleMessage toggleMessage = new ToggleMessage();
            toggleMessage.enable = (Boolean) map.get("enable");
            return toggleMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class IsEnabledMessage {
        private Boolean enabled;

        public Boolean getEnabled() {
            return this.enabled;
        }

        public void setEnabled(Boolean bool) {
            this.enabled = bool;
        }

        Map<String, Object> toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("enabled", this.enabled);
            return hashMap;
        }

        static IsEnabledMessage fromMap(Map<String, Object> map) {
            IsEnabledMessage isEnabledMessage = new IsEnabledMessage();
            isEnabledMessage.enabled = (Boolean) map.get("enabled");
            return isEnabledMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class WakelockApiCodec extends StandardMessageCodec {
        public static final WakelockApiCodec INSTANCE = new WakelockApiCodec();

        private WakelockApiCodec() {
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b, ByteBuffer byteBuffer) {
            if (b == Byte.MIN_VALUE) {
                return IsEnabledMessage.fromMap((Map) readValue(byteBuffer));
            }
            if (b != -127) {
                return super.readValueOfType(b, byteBuffer);
            }
            return ToggleMessage.fromMap((Map) readValue(byteBuffer));
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof IsEnabledMessage) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, ((IsEnabledMessage) obj).toMap());
            } else if (obj instanceof ToggleMessage) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((ToggleMessage) obj).toMap());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface WakelockApi {
        IsEnabledMessage isEnabled();

        void toggle(ToggleMessage toggleMessage);

        /* renamed from: creativemaybeno.wakelock.Messages$WakelockApi$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static MessageCodec<Object> getCodec() {
                return WakelockApiCodec.INSTANCE;
            }

            public static void setup(BinaryMessenger binaryMessenger, WakelockApi wakelockApi) {
                BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.WakelockApi.toggle", getCodec());
                if (wakelockApi != null) {
                    basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: creativemaybeno.wakelock.-$$Lambda$Messages$WakelockApi$l2ut_Mtqx6GKV-3yVfO1vw97DRo
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.WakelockApi.CC.lambda$setup$0(Messages.WakelockApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.WakelockApi.isEnabled", getCodec());
                if (wakelockApi != null) {
                    basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: creativemaybeno.wakelock.-$$Lambda$Messages$WakelockApi$P444eQYI3VaE7t9yVvSI5xzJ_lU
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.WakelockApi.CC.lambda$setup$1(Messages.WakelockApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel2.setMessageHandler(null);
                }
            }

            public static /* synthetic */ void lambda$setup$0(WakelockApi wakelockApi, Object obj, BasicMessageChannel.Reply reply) {
                ToggleMessage toggleMessage;
                HashMap hashMap = new HashMap();
                try {
                    toggleMessage = (ToggleMessage) ((ArrayList) obj).get(0);
                } catch (Error | RuntimeException e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                if (toggleMessage != null) {
                    wakelockApi.toggle(toggleMessage);
                    hashMap.put("result", null);
                    reply.reply(hashMap);
                    return;
                }
                throw new NullPointerException("msgArg unexpectedly null.");
            }

            public static /* synthetic */ void lambda$setup$1(WakelockApi wakelockApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    hashMap.put("result", wakelockApi.isEnabled());
                } catch (Error | RuntimeException e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }
        }
    }

    public static Map<String, Object> wrapError(Throwable th) {
        HashMap hashMap = new HashMap();
        hashMap.put("message", th.toString());
        hashMap.put("code", th.getClass().getSimpleName());
        hashMap.put("details", null);
        return hashMap;
    }
}
