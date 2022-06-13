package io.flutter.plugins.videoplayer;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.videoplayer.Messages;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class Messages {

    /* loaded from: classes5.dex */
    public static class TextureMessage {
        private Long textureId;

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l) {
            this.textureId = l;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", this.textureId);
            return hashMap;
        }

        static TextureMessage fromMap(HashMap hashMap) {
            Long l;
            TextureMessage textureMessage = new TextureMessage();
            Object obj = hashMap.get("textureId");
            if (obj == null) {
                l = null;
            } else {
                l = Long.valueOf(obj instanceof Integer ? (long) ((Integer) obj).intValue() : ((Long) obj).longValue());
            }
            textureMessage.textureId = l;
            return textureMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class CreateMessage {
        private String asset;
        private String formatHint;
        private HashMap httpHeaders;
        private String packageName;
        private String uri;

        public String getAsset() {
            return this.asset;
        }

        public void setAsset(String str) {
            this.asset = str;
        }

        public String getUri() {
            return this.uri;
        }

        public void setUri(String str) {
            this.uri = str;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public String getFormatHint() {
            return this.formatHint;
        }

        public void setFormatHint(String str) {
            this.formatHint = str;
        }

        public HashMap getHttpHeaders() {
            return this.httpHeaders;
        }

        public void setHttpHeaders(HashMap hashMap) {
            this.httpHeaders = hashMap;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("asset", this.asset);
            hashMap.put("uri", this.uri);
            hashMap.put("packageName", this.packageName);
            hashMap.put("formatHint", this.formatHint);
            hashMap.put("httpHeaders", this.httpHeaders);
            return hashMap;
        }

        static CreateMessage fromMap(HashMap hashMap) {
            CreateMessage createMessage = new CreateMessage();
            createMessage.asset = (String) hashMap.get("asset");
            createMessage.uri = (String) hashMap.get("uri");
            createMessage.packageName = (String) hashMap.get("packageName");
            createMessage.formatHint = (String) hashMap.get("formatHint");
            createMessage.httpHeaders = (HashMap) hashMap.get("httpHeaders");
            return createMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class LoopingMessage {
        private Boolean isLooping;
        private Long textureId;

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l) {
            this.textureId = l;
        }

        public Boolean getIsLooping() {
            return this.isLooping;
        }

        public void setIsLooping(Boolean bool) {
            this.isLooping = bool;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", this.textureId);
            hashMap.put("isLooping", this.isLooping);
            return hashMap;
        }

        static LoopingMessage fromMap(HashMap hashMap) {
            Long l;
            LoopingMessage loopingMessage = new LoopingMessage();
            Object obj = hashMap.get("textureId");
            if (obj == null) {
                l = null;
            } else {
                l = Long.valueOf(obj instanceof Integer ? (long) ((Integer) obj).intValue() : ((Long) obj).longValue());
            }
            loopingMessage.textureId = l;
            loopingMessage.isLooping = (Boolean) hashMap.get("isLooping");
            return loopingMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class VolumeMessage {
        private Long textureId;
        private Double volume;

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l) {
            this.textureId = l;
        }

        public Double getVolume() {
            return this.volume;
        }

        public void setVolume(Double d) {
            this.volume = d;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", this.textureId);
            hashMap.put("volume", this.volume);
            return hashMap;
        }

        static VolumeMessage fromMap(HashMap hashMap) {
            Long l;
            VolumeMessage volumeMessage = new VolumeMessage();
            Object obj = hashMap.get("textureId");
            if (obj == null) {
                l = null;
            } else {
                l = Long.valueOf(obj instanceof Integer ? (long) ((Integer) obj).intValue() : ((Long) obj).longValue());
            }
            volumeMessage.textureId = l;
            volumeMessage.volume = (Double) hashMap.get("volume");
            return volumeMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class PlaybackSpeedMessage {
        private Double speed;
        private Long textureId;

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l) {
            this.textureId = l;
        }

        public Double getSpeed() {
            return this.speed;
        }

        public void setSpeed(Double d) {
            this.speed = d;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", this.textureId);
            hashMap.put("speed", this.speed);
            return hashMap;
        }

        static PlaybackSpeedMessage fromMap(HashMap hashMap) {
            Long l;
            PlaybackSpeedMessage playbackSpeedMessage = new PlaybackSpeedMessage();
            Object obj = hashMap.get("textureId");
            if (obj == null) {
                l = null;
            } else {
                l = Long.valueOf(obj instanceof Integer ? (long) ((Integer) obj).intValue() : ((Long) obj).longValue());
            }
            playbackSpeedMessage.textureId = l;
            playbackSpeedMessage.speed = (Double) hashMap.get("speed");
            return playbackSpeedMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class PositionMessage {
        private Long position;
        private Long textureId;

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l) {
            this.textureId = l;
        }

        public Long getPosition() {
            return this.position;
        }

        public void setPosition(Long l) {
            this.position = l;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", this.textureId);
            hashMap.put("position", this.position);
            return hashMap;
        }

        static PositionMessage fromMap(HashMap hashMap) {
            Long l;
            PositionMessage positionMessage = new PositionMessage();
            Object obj = hashMap.get("textureId");
            Long l2 = null;
            if (obj == null) {
                l = null;
            } else {
                l = Long.valueOf(obj instanceof Integer ? (long) ((Integer) obj).intValue() : ((Long) obj).longValue());
            }
            positionMessage.textureId = l;
            Object obj2 = hashMap.get("position");
            if (obj2 != null) {
                l2 = Long.valueOf(obj2 instanceof Integer ? (long) ((Integer) obj2).intValue() : ((Long) obj2).longValue());
            }
            positionMessage.position = l2;
            return positionMessage;
        }
    }

    /* loaded from: classes5.dex */
    public static class MixWithOthersMessage {
        private Boolean mixWithOthers;

        public Boolean getMixWithOthers() {
            return this.mixWithOthers;
        }

        public void setMixWithOthers(Boolean bool) {
            this.mixWithOthers = bool;
        }

        HashMap toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("mixWithOthers", this.mixWithOthers);
            return hashMap;
        }

        static MixWithOthersMessage fromMap(HashMap hashMap) {
            MixWithOthersMessage mixWithOthersMessage = new MixWithOthersMessage();
            mixWithOthersMessage.mixWithOthers = (Boolean) hashMap.get("mixWithOthers");
            return mixWithOthersMessage;
        }
    }

    /* loaded from: classes5.dex */
    public interface VideoPlayerApi {
        TextureMessage create(CreateMessage createMessage);

        void dispose(TextureMessage textureMessage);

        void initialize();

        void pause(TextureMessage textureMessage);

        void play(TextureMessage textureMessage);

        PositionMessage position(TextureMessage textureMessage);

        void seekTo(PositionMessage positionMessage);

        void setLooping(LoopingMessage loopingMessage);

        void setMixWithOthers(MixWithOthersMessage mixWithOthersMessage);

        void setPlaybackSpeed(PlaybackSpeedMessage playbackSpeedMessage);

        void setVolume(VolumeMessage volumeMessage);

        /* renamed from: io.flutter.plugins.videoplayer.Messages$VideoPlayerApi$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static void setup(BinaryMessenger binaryMessenger, VideoPlayerApi videoPlayerApi) {
                BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.initialize", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$SMZHXDFxrH2MGjdkGEgW1D9JKtQ
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$0(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.create", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$S5QkjE-sAPUEJf0DNlrYNZpRFMY
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$1(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel2.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.dispose", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$NxPd8Ej6aH_Ii0jeHPdu0DjsqTk
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$2(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel3.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.setLooping", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$yTZGCiWTkR3Imon20L5erE2n9o8
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$3(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel4.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.setVolume", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$wKxw3gth52K9ctjxJbs8GRHLuDI
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$4(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel5.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$kKVK649-BdsUS6RfEEnbNfvbzU4
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$5(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel6.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.play", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$NmItGhtdJ4cDwORMuvLSZqJTFug
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$6(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel7.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.position", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$PYfvdNt_vvT1yTcz_teigwkeGhs
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$7(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel8.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.seekTo", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$w7wB_XQPhFUyF8KPeQqrvUaycEI
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$8(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel9.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.pause", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$RQ6F4SL8J8NDjINVoobuRm9LBhI
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$9(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel10.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers", new StandardMessageCodec());
                if (videoPlayerApi != null) {
                    basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$Messages$VideoPlayerApi$JLVSgEmQtWE3OyTJRNfwnGw6sO8
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.VideoPlayerApi.CC.lambda$setup$10(Messages.VideoPlayerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel11.setMessageHandler(null);
                }
            }

            public static /* synthetic */ void lambda$setup$0(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.initialize();
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$1(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    hashMap.put("result", videoPlayerApi.create(CreateMessage.fromMap((HashMap) obj)).toMap());
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$2(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.dispose(TextureMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$3(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.setLooping(LoopingMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$4(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.setVolume(VolumeMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$5(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.setPlaybackSpeed(PlaybackSpeedMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$6(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.play(TextureMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$7(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    hashMap.put("result", videoPlayerApi.position(TextureMessage.fromMap((HashMap) obj)).toMap());
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$8(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.seekTo(PositionMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$9(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.pause(TextureMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }

            public static /* synthetic */ void lambda$setup$10(VideoPlayerApi videoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
                HashMap hashMap = new HashMap();
                try {
                    videoPlayerApi.setMixWithOthers(MixWithOthersMessage.fromMap((HashMap) obj));
                    hashMap.put("result", null);
                } catch (Exception e) {
                    hashMap.put("error", Messages.wrapError(e));
                }
                reply.reply(hashMap);
            }
        }
    }

    public static HashMap wrapError(Exception exc) {
        HashMap hashMap = new HashMap();
        hashMap.put("message", exc.toString());
        hashMap.put("code", exc.getClass().getSimpleName());
        hashMap.put("details", null);
        return hashMap;
    }
}
