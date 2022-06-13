package com.github.florent37.assets_audio_player.notification;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NotificationSettings.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¨\u0006\u0004"}, d2 = {"fetchNotificationSettings", "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", "from", "", "assets_audio_player_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NotificationSettingsKt {
    public static final NotificationSettings fetchNotificationSettings(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "from");
        Object obj = map.get("notif.settings.nextEnabled");
        String str = null;
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        boolean z = true;
        boolean booleanValue = bool == null ? true : bool.booleanValue();
        Object obj2 = map.get("notif.settings.stopEnabled");
        Boolean bool2 = obj2 instanceof Boolean ? (Boolean) obj2 : null;
        boolean booleanValue2 = bool2 == null ? true : bool2.booleanValue();
        Object obj3 = map.get("notif.settings.playPauseEnabled");
        Boolean bool3 = obj3 instanceof Boolean ? (Boolean) obj3 : null;
        boolean booleanValue3 = bool3 == null ? true : bool3.booleanValue();
        Object obj4 = map.get("notif.settings.prevEnabled");
        Boolean bool4 = obj4 instanceof Boolean ? (Boolean) obj4 : null;
        boolean booleanValue4 = bool4 == null ? true : bool4.booleanValue();
        Object obj5 = map.get("notif.settings.seekBarEnabled");
        Boolean bool5 = obj5 instanceof Boolean ? (Boolean) obj5 : null;
        if (bool5 != null) {
            z = bool5.booleanValue();
        }
        Object obj6 = map.get("notif.settings.previousIcon");
        String str2 = obj6 instanceof String ? (String) obj6 : null;
        Object obj7 = map.get("notif.settings.nextIcon");
        String str3 = obj7 instanceof String ? (String) obj7 : null;
        Object obj8 = map.get("notif.settings.pauseIcon");
        String str4 = obj8 instanceof String ? (String) obj8 : null;
        Object obj9 = map.get("notif.settings.playIcon");
        String str5 = obj9 instanceof String ? (String) obj9 : null;
        Object obj10 = map.get("notif.settings.stopIcon");
        if (obj10 instanceof String) {
            str = (String) obj10;
        }
        return new NotificationSettings(booleanValue, booleanValue3, booleanValue4, z, booleanValue2, str2, str, str5, str3, str4);
    }
}
