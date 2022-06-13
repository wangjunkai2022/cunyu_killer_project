package io.flutter.plugins;

import com.baseflow.permissionhandler.PermissionHandlerPlugin;
import com.crazecoder.openfile.OpenFilePlugin;
import com.example.citypickers.CityPickersPlugin;
import com.example.flutter_yun_ceng_kiwi.FlutterYunCengKiwiPlugin;
import com.example.flutterimagecompress.FlutterImageCompressPlugin;
import com.example.imagegallerysaver.ImageGallerySaverPlugin;
import com.example.plugin_yidun.PluginYidunPlugin;
import com.example.super_network_kit.SuperNetworkKitPlugin;
import com.example.super_player_kit.SuperPlayerKitPlugin;
import com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin;
import com.github.florent37.assets_audio_player_web.AssetsAudioPlayerWebPlugin;
import com.jrai.flutter_keyboard_visibility.FlutterKeyboardVisibilityPlugin;
import com.lyokone.location.LocationPlugin;
import com.netease.nis.captcha_plugin_flutter.CaptchaPluginFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview.InAppWebViewFlutterPlugin;
import com.samoy.image_save.ImageSavePlugin;
import com.tekartik.sqflite.SqflitePlugin;
import com.wx.gesture_recognition.GestureRecognitionPlugin;
import com.zaihui.installplugin.InstallPlugin;
import creativemaybeno.wakelock.WakelockPlugin;
import dev.fluttercommunity.plus.connectivity.ConnectivityPlugin;
import dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin;
import flutter.plugins.vibrate.VibratePlugin;
import io.adaptant.labs.flutter_windowmanager.FlutterWindowManagerPlugin;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.deviceinfo.DeviceInfoPlugin;
import io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin;
import io.flutter.plugins.imagepicker.ImagePickerPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;
import io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin;
import top.kikt.flutter_image_editor.FlutterImageEditorPlugin;
import xyz.ipig.native_dialog.NativeDialogPlugin;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class GeneratedPluginRegistrant {
    private static final String TAG = "GeneratedPluginRegistrant";

    public static void registerWith(FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(new AssetsAudioPlayerPlugin());
        } catch (Exception e) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin assets_audio_player, com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin", e);
        }
        try {
            flutterEngine.getPlugins().add(new AssetsAudioPlayerWebPlugin());
        } catch (Exception e2) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin assets_audio_player_web, com.github.florent37.assets_audio_player_web.AssetsAudioPlayerWebPlugin", e2);
        }
        try {
            flutterEngine.getPlugins().add(new CaptchaPluginFlutterPlugin());
        } catch (Exception e3) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin captcha_plugin_flutter, com.netease.nis.captcha_plugin_flutter.CaptchaPluginFlutterPlugin", e3);
        }
        try {
            flutterEngine.getPlugins().add(new CityPickersPlugin());
        } catch (Exception e4) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin city_pickers, com.example.citypickers.CityPickersPlugin", e4);
        }
        try {
            flutterEngine.getPlugins().add(new ConnectivityPlugin());
        } catch (Exception e5) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin connectivity_plus, dev.fluttercommunity.plus.connectivity.ConnectivityPlugin", e5);
        }
        try {
            flutterEngine.getPlugins().add(new DeviceInfoPlugin());
        } catch (Exception e6) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin device_info, io.flutter.plugins.deviceinfo.DeviceInfoPlugin", e6);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterImageCompressPlugin());
        } catch (Exception e7) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_image_compress, com.example.flutterimagecompress.FlutterImageCompressPlugin", e7);
        }
        try {
            flutterEngine.getPlugins().add(new InAppWebViewFlutterPlugin());
        } catch (Exception e8) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_inappwebview, com.pichillilorenzo.flutter_inappwebview.InAppWebViewFlutterPlugin", e8);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterKeyboardVisibilityPlugin());
        } catch (Exception e9) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_keyboard_visibility, com.jrai.flutter_keyboard_visibility.FlutterKeyboardVisibilityPlugin", e9);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterAndroidLifecyclePlugin());
        } catch (Exception e10) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e10);
        }
        try {
            flutterEngine.getPlugins().add(new VibratePlugin());
        } catch (Exception e11) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_vibrate, flutter.plugins.vibrate.VibratePlugin", e11);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterWindowManagerPlugin());
        } catch (Exception e12) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_windowmanager, io.adaptant.labs.flutter_windowmanager.FlutterWindowManagerPlugin", e12);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterYunCengKiwiPlugin());
        } catch (Exception e13) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin flutter_yun_ceng_kiwi, com.example.flutter_yun_ceng_kiwi.FlutterYunCengKiwiPlugin", e13);
        }
        try {
            flutterEngine.getPlugins().add(new GestureRecognitionPlugin());
        } catch (Exception e14) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin gesture_recognition, com.wx.gesture_recognition.GestureRecognitionPlugin", e14);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterImageEditorPlugin());
        } catch (Exception e15) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin image_editor, top.kikt.flutter_image_editor.FlutterImageEditorPlugin", e15);
        }
        try {
            flutterEngine.getPlugins().add(new ImageGallerySaverPlugin());
        } catch (Exception e16) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin image_gallery_saver, com.example.imagegallerysaver.ImageGallerySaverPlugin", e16);
        }
        try {
            flutterEngine.getPlugins().add(new ImagePickerPlugin());
        } catch (Exception e17) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin image_picker_android, io.flutter.plugins.imagepicker.ImagePickerPlugin", e17);
        }
        try {
            flutterEngine.getPlugins().add(new ImageSavePlugin());
        } catch (Exception e18) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin image_save, com.samoy.image_save.ImageSavePlugin", e18);
        }
        try {
            flutterEngine.getPlugins().add(new InstallPlugin());
        } catch (Exception e19) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin install_plugin, com.zaihui.installplugin.InstallPlugin", e19);
        }
        try {
            flutterEngine.getPlugins().add(new LocationPlugin());
        } catch (Exception e20) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin location, com.lyokone.location.LocationPlugin", e20);
        }
        try {
            flutterEngine.getPlugins().add(new NativeDialogPlugin());
        } catch (Exception e21) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin native_dialog, xyz.ipig.native_dialog.NativeDialogPlugin", e21);
        }
        try {
            flutterEngine.getPlugins().add(new OpenFilePlugin());
        } catch (Exception e22) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin open_file, com.crazecoder.openfile.OpenFilePlugin", e22);
        }
        try {
            flutterEngine.getPlugins().add(new OpeninstallFlutterPlugin());
        } catch (Exception e23) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin openinstall_flutter_plugin, io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin", e23);
        }
        try {
            flutterEngine.getPlugins().add(new PackageInfoPlugin());
        } catch (Exception e24) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e24);
        }
        try {
            flutterEngine.getPlugins().add(new PathProviderPlugin());
        } catch (Exception e25) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e25);
        }
        try {
            flutterEngine.getPlugins().add(new PermissionHandlerPlugin());
        } catch (Exception e26) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin permission_handler_android, com.baseflow.permissionhandler.PermissionHandlerPlugin", e26);
        }
        try {
            flutterEngine.getPlugins().add(new PluginYidunPlugin());
        } catch (Exception e27) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin plugin_yidun, com.example.plugin_yidun.PluginYidunPlugin", e27);
        }
        try {
            flutterEngine.getPlugins().add(new SharedPreferencesPlugin());
        } catch (Exception e28) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e28);
        }
        try {
            flutterEngine.getPlugins().add(new SqflitePlugin());
        } catch (Exception e29) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin sqflite, com.tekartik.sqflite.SqflitePlugin", e29);
        }
        try {
            flutterEngine.getPlugins().add(new SuperNetworkKitPlugin());
        } catch (Exception e30) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin super_network_kit, com.example.super_network_kit.SuperNetworkKitPlugin", e30);
        }
        try {
            flutterEngine.getPlugins().add(new SuperPlayerKitPlugin());
        } catch (Exception e31) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin super_player_kit, com.example.super_player_kit.SuperPlayerKitPlugin", e31);
        }
        try {
            flutterEngine.getPlugins().add(new UrlLauncherPlugin());
        } catch (Exception e32) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin", e32);
        }
        try {
            flutterEngine.getPlugins().add(new VideoPlayerPlugin());
        } catch (Exception e33) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin video_player, io.flutter.plugins.videoplayer.VideoPlayerPlugin", e33);
        }
        try {
            flutterEngine.getPlugins().add(new WakelockPlugin());
        } catch (Exception e34) {
            Log.e("GeneratedPluginRegistrant", "Error registering plugin wakelock, creativemaybeno.wakelock.WakelockPlugin", e34);
        }
    }
}
