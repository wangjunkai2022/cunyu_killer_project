package com.github.florent37.assets_audio_player.stopwhencall;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeadsetManager.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\n\u0010\u0015\u001a\u00020\u0007*\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;", "", c.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "onHeadsetPluggedListener", "Lkotlin/Function1;", "", "", "getOnHeadsetPluggedListener", "()Lkotlin/jvm/functions/Function1;", "setOnHeadsetPluggedListener", "(Lkotlin/jvm/functions/Function1;)V", "profileListener", "Landroid/bluetooth/BluetoothProfile$ServiceListener;", "getProfileListener", "()Landroid/bluetooth/BluetoothProfile$ServiceListener;", "receiver", "Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;", TtmlNode.START, NotificationAction.ACTION_STOP, "hasPermissionBluetooth", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HeadsetManager {
    private final Context context;
    private Function1<? super Boolean, Unit> onHeadsetPluggedListener;
    private final BluetoothProfile.ServiceListener profileListener = new BluetoothProfile.ServiceListener() { // from class: com.github.florent37.assets_audio_player.stopwhencall.HeadsetManager$profileListener$1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            Function1<Boolean, Unit> onHeadsetPluggedListener;
            Intrinsics.checkNotNullParameter(bluetoothProfile, "proxy");
            if (i == 1 && (onHeadsetPluggedListener = HeadsetManager.this.getOnHeadsetPluggedListener()) != null) {
                onHeadsetPluggedListener.invoke(true);
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i) {
            Function1<Boolean, Unit> onHeadsetPluggedListener;
            if (i == 1 && (onHeadsetPluggedListener = HeadsetManager.this.getOnHeadsetPluggedListener()) != null) {
                onHeadsetPluggedListener.invoke(false);
            }
        }
    };
    private final MusicIntentReceiver receiver;

    public HeadsetManager(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        this.context = context;
        MusicIntentReceiver musicIntentReceiver = new MusicIntentReceiver();
        musicIntentReceiver.setPluggedListener(new Function1<Boolean, Unit>() { // from class: com.github.florent37.assets_audio_player.stopwhencall.HeadsetManager$receiver$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                Function1<Boolean, Unit> onHeadsetPluggedListener = HeadsetManager.this.getOnHeadsetPluggedListener();
                if (onHeadsetPluggedListener != null) {
                    onHeadsetPluggedListener.invoke(Boolean.valueOf(z));
                }
            }
        });
        this.receiver = musicIntentReceiver;
    }

    public final Function1<Boolean, Unit> getOnHeadsetPluggedListener() {
        return this.onHeadsetPluggedListener;
    }

    public final void setOnHeadsetPluggedListener(Function1<? super Boolean, Unit> function1) {
        this.onHeadsetPluggedListener = function1;
    }

    public final BluetoothProfile.ServiceListener getProfileListener() {
        return this.profileListener;
    }

    public final void start() {
        BluetoothAdapter defaultAdapter;
        int i = Build.VERSION.SDK_INT;
        this.context.registerReceiver(this.receiver, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        this.context.registerReceiver(this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
        try {
            if (hasPermissionBluetooth(this.context) && (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) != null) {
                defaultAdapter.getProfileProxy(this.context, this.profileListener, 1);
            }
        } catch (Throwable unused) {
        }
    }

    public final void stop() {
        this.context.unregisterReceiver(this.receiver);
    }

    public final boolean hasPermissionBluetooth(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            Intrinsics.checkNotNullExpressionValue(strArr, "packageInfo.requestedPermissions");
            return ArraysKt.contains(strArr, "android.permission.BLUETOOTH");
        } catch (Throwable unused) {
            return false;
        }
    }
}
