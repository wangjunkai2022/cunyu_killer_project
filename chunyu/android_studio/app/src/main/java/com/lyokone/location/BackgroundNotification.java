package com.lyokone.location;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.tekartik.sqflite.Constant;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FlutterLocationService.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0016\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0018R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/lyokone/location/BackgroundNotification;", "", c.R, "Landroid/content/Context;", "channelId", "", "notificationId", "", "(Landroid/content/Context;Ljava/lang/String;I)V", "builder", "Landroidx/core/app/NotificationCompat$Builder;", Constant.METHOD_OPTIONS, "Lcom/lyokone/location/NotificationOptions;", "build", "Landroid/app/Notification;", "buildBringToFrontIntent", "Landroid/app/PendingIntent;", "getDrawableId", "iconName", "updateChannel", "", "channelName", "updateNotification", "notify", "", "updateOptions", "isVisible", "location_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BackgroundNotification {
    private NotificationCompat.Builder builder;
    private final String channelId;
    private final Context context;
    private final int notificationId;
    private NotificationOptions options = new NotificationOptions(null, null, null, null, null, null, false, 127, null);

    public BackgroundNotification(Context context, String str, int i) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(str, "channelId");
        this.context = context;
        this.channelId = str;
        this.notificationId = i;
        NotificationCompat.Builder priority = new NotificationCompat.Builder(this.context, this.channelId).setPriority(1);
        Intrinsics.checkNotNullExpressionValue(priority, "Builder(context, channel…tionCompat.PRIORITY_HIGH)");
        this.builder = priority;
        updateNotification(this.options, false);
    }

    private final int getDrawableId(String str) {
        return this.context.getResources().getIdentifier(str, "drawable", this.context.getPackageName());
    }

    private final PendingIntent buildBringToFrontIntent() {
        Intent intent;
        Intent intent2;
        Intent launchIntentForPackage = this.context.getPackageManager().getLaunchIntentForPackage(this.context.getPackageName());
        if (launchIntentForPackage == null || (intent2 = launchIntentForPackage.setPackage(null)) == null) {
            intent = null;
        } else {
            intent = intent2.setFlags(270532608);
        }
        if (intent != null) {
            return PendingIntent.getActivity(this.context, 0, intent, 0);
        }
        return null;
    }

    private final void updateChannel(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManagerCompat from = NotificationManagerCompat.from(this.context);
            Intrinsics.checkNotNullExpressionValue(from, "from(context)");
            NotificationChannel notificationChannel = new NotificationChannel(this.channelId, str, 0);
            notificationChannel.setLockscreenVisibility(0);
            from.createNotificationChannel(notificationChannel);
        }
    }

    private final void updateNotification(NotificationOptions notificationOptions, boolean z) {
        NotificationCompat.Builder builder;
        NotificationCompat.Builder builder2;
        int drawableId = getDrawableId(notificationOptions.getIconName());
        if (drawableId == 0) {
            drawableId = getDrawableId(FlutterLocationServiceKt.kDefaultNotificationIconName);
        }
        NotificationCompat.Builder subText = this.builder.setContentTitle(notificationOptions.getTitle()).setSmallIcon(drawableId).setContentText(notificationOptions.getSubtitle()).setSubText(notificationOptions.getDescription());
        Intrinsics.checkNotNullExpressionValue(subText, "builder\n                …Text(options.description)");
        this.builder = subText;
        if (notificationOptions.getColor() != null) {
            builder = this.builder.setColor(notificationOptions.getColor().intValue()).setColorized(true);
            Intrinsics.checkNotNullExpressionValue(builder, "{\n            builder.se…Colorized(true)\n        }");
        } else {
            builder = this.builder.setColor(0).setColorized(false);
            Intrinsics.checkNotNullExpressionValue(builder, "{\n            builder.se…olorized(false)\n        }");
        }
        this.builder = builder;
        if (notificationOptions.getOnTapBringToFront()) {
            builder2 = this.builder.setContentIntent(buildBringToFrontIntent());
            Intrinsics.checkNotNullExpressionValue(builder2, "{\n            builder.se…oFrontIntent())\n        }");
        } else {
            builder2 = this.builder.setContentIntent(null);
            Intrinsics.checkNotNullExpressionValue(builder2, "{\n            builder.se…entIntent(null)\n        }");
        }
        this.builder = builder2;
        if (z) {
            NotificationManagerCompat from = NotificationManagerCompat.from(this.context);
            Intrinsics.checkNotNullExpressionValue(from, "from(context)");
            from.notify(this.notificationId, this.builder.build());
        }
    }

    public final void updateOptions(NotificationOptions notificationOptions, boolean z) {
        Intrinsics.checkNotNullParameter(notificationOptions, Constant.METHOD_OPTIONS);
        if (!Intrinsics.areEqual(notificationOptions.getChannelName(), this.options.getChannelName())) {
            updateChannel(notificationOptions.getChannelName());
        }
        updateNotification(notificationOptions, z);
        this.options = notificationOptions;
    }

    public final Notification build() {
        updateChannel(this.options.getChannelName());
        Notification build = this.builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }
}
