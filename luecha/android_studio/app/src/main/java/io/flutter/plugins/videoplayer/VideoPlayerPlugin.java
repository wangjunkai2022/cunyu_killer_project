package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.os.Build;
import android.util.LongSparseArray;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.videoplayer.Messages;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.TextureRegistry;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes5.dex */
public class VideoPlayerPlugin implements FlutterPlugin, Messages.VideoPlayerApi {
    private static final String TAG = "VideoPlayerPlugin";
    private FlutterState flutterState;
    private final LongSparseArray<VideoPlayer> videoPlayers = new LongSparseArray<>();
    private VideoPlayerOptions options = new VideoPlayerOptions();

    /* loaded from: classes5.dex */
    public interface KeyForAssetAndPackageName {
        String get(String str, String str2);
    }

    /* loaded from: classes5.dex */
    public interface KeyForAssetFn {
        String get(String str);
    }

    public VideoPlayerPlugin() {
    }

    private VideoPlayerPlugin(PluginRegistry.Registrar registrar) {
        Context context = registrar.context();
        BinaryMessenger messenger = registrar.messenger();
        Objects.requireNonNull(registrar);
        $$Lambda$EwJYtrzRQQxrdKhXt12brhygJE r4 = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                return PluginRegistry.Registrar.this.lookupKeyForAsset(str);
            }
        };
        Objects.requireNonNull(registrar);
        this.flutterState = new FlutterState(context, messenger, r4, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$5gVwJtQ_7gDi6WPyazOdmov17zQ
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                return PluginRegistry.Registrar.this.lookupKeyForAsset(str, str2);
            }
        }, registrar.textures());
        this.flutterState.startListening(this, registrar.messenger());
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        registrar.addViewDestroyListener(new PluginRegistry.ViewDestroyListener() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$VideoPlayerPlugin$W-nN4EDj3bf_Zgiih3xrq4EH41g
            @Override // io.flutter.plugin.common.PluginRegistry.ViewDestroyListener
            public final boolean onViewDestroy(FlutterNativeView flutterNativeView) {
                return VideoPlayerPlugin.this.onDestroy();
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (Build.VERSION.SDK_INT < 21) {
            try {
                HttpsURLConnection.setDefaultSSLSocketFactory(new CustomSSLSocketFactory());
            } catch (KeyManagementException | NoSuchAlgorithmException e) {
                Log.w("VideoPlayerPlugin", "Failed to enable TLSv1.1 and TLSv1.2 Protocols for API level 19 and below.\nFor more information about Socket Security, please consult the following link:\nhttps://developer.android.com/reference/javax/net/ssl/SSLSocket", e);
            }
        }
        FlutterInjector instance = FlutterInjector.instance();
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        FlutterLoader flutterLoader = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader);
        $$Lambda$8dGMholTy4jNNZa8ZEMagMWD34 r4 = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$8dGMholTy4-jNNZa8ZEMagMWD34
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                return FlutterLoader.this.getLookupKeyForAsset(str);
            }
        };
        FlutterLoader flutterLoader2 = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader2);
        this.flutterState = new FlutterState(applicationContext, binaryMessenger, r4, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                return FlutterLoader.this.getLookupKeyForAsset(str, str2);
            }
        }, flutterPluginBinding.getTextureRegistry());
        this.flutterState.startListening(this, flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.flutterState == null) {
            Log.wtf("VideoPlayerPlugin", "Detached from the engine before registering to it.");
        }
        this.flutterState.stopListening(flutterPluginBinding.getBinaryMessenger());
        this.flutterState = null;
        initialize();
    }

    private void disposeAllPlayers() {
        for (int i = 0; i < this.videoPlayers.size(); i++) {
            this.videoPlayers.valueAt(i).dispose();
        }
        this.videoPlayers.clear();
    }

    public void onDestroy() {
        disposeAllPlayers();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void initialize() {
        disposeAllPlayers();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public Messages.TextureMessage create(Messages.CreateMessage createMessage) {
        VideoPlayer videoPlayer;
        String str;
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = this.flutterState.textureRegistry.createSurfaceTexture();
        BinaryMessenger binaryMessenger = this.flutterState.binaryMessenger;
        EventChannel eventChannel = new EventChannel(binaryMessenger, "flutter.io/videoPlayer/videoEvents" + createSurfaceTexture.id());
        if (createMessage.getAsset() != null) {
            if (createMessage.getPackageName() != null) {
                str = this.flutterState.keyForAssetAndPackageName.get(createMessage.getAsset(), createMessage.getPackageName());
            } else {
                str = this.flutterState.keyForAsset.get(createMessage.getAsset());
            }
            Context context = this.flutterState.applicationContext;
            videoPlayer = new VideoPlayer(context, eventChannel, createSurfaceTexture, "asset:///" + str, null, null, this.options);
        } else {
            videoPlayer = new VideoPlayer(this.flutterState.applicationContext, eventChannel, createSurfaceTexture, createMessage.getUri(), createMessage.getFormatHint(), createMessage.getHttpHeaders(), this.options);
        }
        this.videoPlayers.put(createSurfaceTexture.id(), videoPlayer);
        Messages.TextureMessage textureMessage = new Messages.TextureMessage();
        textureMessage.setTextureId(Long.valueOf(createSurfaceTexture.id()));
        return textureMessage;
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void dispose(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).dispose();
        this.videoPlayers.remove(textureMessage.getTextureId().longValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void setLooping(Messages.LoopingMessage loopingMessage) {
        this.videoPlayers.get(loopingMessage.getTextureId().longValue()).setLooping(loopingMessage.getIsLooping().booleanValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void setVolume(Messages.VolumeMessage volumeMessage) {
        this.videoPlayers.get(volumeMessage.getTextureId().longValue()).setVolume(volumeMessage.getVolume().doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void setPlaybackSpeed(Messages.PlaybackSpeedMessage playbackSpeedMessage) {
        this.videoPlayers.get(playbackSpeedMessage.getTextureId().longValue()).setPlaybackSpeed(playbackSpeedMessage.getSpeed().doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void play(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).play();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public Messages.PositionMessage position(Messages.TextureMessage textureMessage) {
        VideoPlayer videoPlayer = this.videoPlayers.get(textureMessage.getTextureId().longValue());
        Messages.PositionMessage positionMessage = new Messages.PositionMessage();
        positionMessage.setPosition(Long.valueOf(videoPlayer.getPosition()));
        videoPlayer.sendBufferingUpdate();
        return positionMessage;
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void seekTo(Messages.PositionMessage positionMessage) {
        this.videoPlayers.get(positionMessage.getTextureId().longValue()).seekTo(positionMessage.getPosition().intValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void pause(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).pause();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.VideoPlayerApi
    public void setMixWithOthers(Messages.MixWithOthersMessage mixWithOthersMessage) {
        this.options.mixWithOthers = mixWithOthersMessage.getMixWithOthers().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class FlutterState {
        private final Context applicationContext;
        private final BinaryMessenger binaryMessenger;
        private final KeyForAssetFn keyForAsset;
        private final KeyForAssetAndPackageName keyForAssetAndPackageName;
        private final TextureRegistry textureRegistry;

        FlutterState(Context context, BinaryMessenger binaryMessenger, KeyForAssetFn keyForAssetFn, KeyForAssetAndPackageName keyForAssetAndPackageName, TextureRegistry textureRegistry) {
            this.applicationContext = context;
            this.binaryMessenger = binaryMessenger;
            this.keyForAsset = keyForAssetFn;
            this.keyForAssetAndPackageName = keyForAssetAndPackageName;
            this.textureRegistry = textureRegistry;
        }

        void startListening(VideoPlayerPlugin videoPlayerPlugin, BinaryMessenger binaryMessenger) {
            Messages.VideoPlayerApi.CC.setup(binaryMessenger, videoPlayerPlugin);
        }

        void stopListening(BinaryMessenger binaryMessenger) {
            Messages.VideoPlayerApi.CC.setup(binaryMessenger, null);
        }
    }
}
