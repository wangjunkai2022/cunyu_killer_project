package flutter.plugins.vibrate;

import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class VibrateMethodCallHandler implements MethodChannel.MethodCallHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final boolean hasVibrator;
    private final boolean legacyVibrator;
    private final Vibrator vibrator;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VibrateMethodCallHandler(Vibrator vibrator) {
        this.vibrator = vibrator;
        this.hasVibrator = vibrator.hasVibrator();
        this.legacyVibrator = Build.VERSION.SDK_INT < 26;
    }

    private void vibrate(int i) {
        if (!this.hasVibrator) {
            return;
        }
        if (this.legacyVibrator) {
            this.vibrator.vibrate((long) i);
        } else {
            this.vibrator.vibrate(VibrationEffect.createOneShot((long) i, -1));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1867169789:
                if (str.equals("success")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1715965556:
                if (str.equals("selection")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1184809658:
                if (str.equals("impact")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1078030475:
                if (str.equals("medium")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -952818817:
                if (str.equals("canVibrate")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 99152071:
                if (str.equals("heavy")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 102970646:
                if (str.equals("light")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 451310959:
                if (str.equals("vibrate")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1124446108:
                if (str.equals("warning")) {
                    c = 5;
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
                result.success(Boolean.valueOf(this.hasVibrator));
                return;
            case 1:
                vibrate(((Integer) methodCall.argument("duration")).intValue());
                result.success(null);
                return;
            case 2:
                vibrate(1);
                result.success(null);
                return;
            case 3:
                vibrate(3);
                result.success(null);
                return;
            case 4:
                vibrate(50);
                result.success(null);
                return;
            case 5:
                vibrate(250);
                result.success(null);
                return;
            case 6:
                vibrate(500);
                result.success(null);
                return;
            case 7:
                vibrate(100);
                result.success(null);
                return;
            case '\b':
                vibrate(40);
                result.success(null);
                return;
            case '\t':
                vibrate(10);
                result.success(null);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
