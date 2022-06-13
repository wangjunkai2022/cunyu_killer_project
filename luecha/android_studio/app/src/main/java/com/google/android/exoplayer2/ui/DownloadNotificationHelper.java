package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;

/* loaded from: classes2.dex */
public final class DownloadNotificationHelper {
    private static final int NULL_STRING_ID = 0;
    private final NotificationCompat.Builder notificationBuilder;

    public DownloadNotificationHelper(Context context, String str) {
        this.notificationBuilder = new NotificationCompat.Builder(context.getApplicationContext(), str);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public android.app.Notification buildProgressNotification(android.content.Context r21, int r22, android.app.PendingIntent r23, java.lang.String r24, java.util.List<com.google.android.exoplayer2.offline.Download> r25) {
        /*
            r20 = this;
            r0 = 1
            r1 = 0
            r2 = 0
            r7 = r0
            r3 = r1
            r4 = r3
            r6 = r4
            r8 = r6
            r5 = r2
            r2 = r8
        L_0x000a:
            int r9 = r25.size()
            if (r2 >= r9) goto L_0x004b
            r9 = r25
            java.lang.Object r10 = r9.get(r2)
            com.google.android.exoplayer2.offline.Download r10 = (com.google.android.exoplayer2.offline.Download) r10
            int r11 = r10.state
            r12 = 5
            if (r11 != r12) goto L_0x001f
            r4 = r0
            goto L_0x0048
        L_0x001f:
            int r11 = r10.state
            r12 = 7
            if (r11 == r12) goto L_0x002a
            int r11 = r10.state
            r12 = 2
            if (r11 == r12) goto L_0x002a
            goto L_0x0048
        L_0x002a:
            float r3 = r10.getPercentDownloaded()
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r11 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r11 == 0) goto L_0x0036
            float r5 = r5 + r3
            r7 = r1
        L_0x0036:
            long r10 = r10.getBytesDownloaded()
            r12 = 0
            int r3 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r3 <= 0) goto L_0x0042
            r3 = r0
            goto L_0x0043
        L_0x0042:
            r3 = r1
        L_0x0043:
            r3 = r3 | r8
            int r6 = r6 + 1
            r8 = r3
            r3 = r0
        L_0x0048:
            int r2 = r2 + 1
            goto L_0x000a
        L_0x004b:
            if (r3 == 0) goto L_0x0051
            int r2 = com.google.android.exoplayer2.ui.R.string.exo_download_downloading
        L_0x004f:
            r14 = r2
            goto L_0x0057
        L_0x0051:
            if (r4 == 0) goto L_0x0056
            int r2 = com.google.android.exoplayer2.ui.R.string.exo_download_removing
            goto L_0x004f
        L_0x0056:
            r14 = r1
        L_0x0057:
            if (r3 == 0) goto L_0x0067
            float r2 = (float) r6
            float r5 = r5 / r2
            int r2 = (int) r5
            if (r7 == 0) goto L_0x0061
            if (r8 == 0) goto L_0x0061
            goto L_0x0062
        L_0x0061:
            r0 = r1
        L_0x0062:
            r17 = r0
            r16 = r2
            goto L_0x006b
        L_0x0067:
            r17 = r0
            r16 = r1
        L_0x006b:
            r15 = 100
            r18 = 1
            r19 = 0
            r9 = r20
            r10 = r21
            r11 = r22
            r12 = r23
            r13 = r24
            android.app.Notification r0 = r9.buildNotification(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DownloadNotificationHelper.buildProgressNotification(android.content.Context, int, android.app.PendingIntent, java.lang.String, java.util.List):android.app.Notification");
    }

    public Notification buildDownloadCompletedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, R.string.exo_download_completed);
    }

    public Notification buildDownloadFailedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, R.string.exo_download_failed);
    }

    private Notification buildEndStateNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2) {
        return buildNotification(context, i, pendingIntent, str, i2, 0, 0, false, false, true);
    }

    private Notification buildNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
        String str2;
        this.notificationBuilder.setSmallIcon(i);
        NotificationCompat.Builder builder = this.notificationBuilder;
        NotificationCompat.BigTextStyle bigTextStyle = null;
        if (i2 == 0) {
            str2 = null;
        } else {
            str2 = context.getResources().getString(i2);
        }
        builder.setContentTitle(str2);
        this.notificationBuilder.setContentIntent(pendingIntent);
        NotificationCompat.Builder builder2 = this.notificationBuilder;
        if (str != null) {
            bigTextStyle = new NotificationCompat.BigTextStyle().bigText(str);
        }
        builder2.setStyle(bigTextStyle);
        this.notificationBuilder.setProgress(i3, i4, z);
        this.notificationBuilder.setOngoing(z2);
        this.notificationBuilder.setShowWhen(z3);
        return this.notificationBuilder.build();
    }
}
