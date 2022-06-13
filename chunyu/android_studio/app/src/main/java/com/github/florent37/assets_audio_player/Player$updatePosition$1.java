package com.github.florent37.assets_audio_player;

import kotlin.Metadata;

/* compiled from: Player.kt */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/github/florent37/assets_audio_player/Player$updatePosition$1", "Ljava/lang/Runnable;", "run", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Player$updatePosition$1 implements Runnable {
    final /* synthetic */ Player this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Player$updatePosition$1(Player player) {
        this.this$0 = player;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r0.longValue() != r2) goto L_0x002f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
        if (r4.intValue() != r0) goto L_0x005f;
     */
    @Override // java.lang.Runnable
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void run() {
        /*
            r8 = this;
            com.github.florent37.assets_audio_player.Player r0 = r8.this$0
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplem r0 = com.github.florent37.assets_audio_player.Player.access$getMediaPlayer$p(r0)
            if (r0 != 0) goto L_0x000a
            goto L_0x009c
        L_0x000a:
            com.github.florent37.assets_audio_player.Player r1 = r8.this$0
            boolean r2 = r0.isPlaying()     // Catch: Exception -> 0x0096
            if (r2 != 0) goto L_0x001c
            android.os.Handler r2 = com.github.florent37.assets_audio_player.Player.access$getHandler$p(r1)     // Catch: Exception -> 0x0096
            r3 = r8
            java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: Exception -> 0x0096
            r2.removeCallbacks(r3)     // Catch: Exception -> 0x0096
        L_0x001c:
            long r2 = r0.getCurrentPositionMs()     // Catch: Exception -> 0x0096
            java.lang.Long r0 = com.github.florent37.assets_audio_player.Player.access$get_lastPositionMs$p(r1)     // Catch: Exception -> 0x0096
            if (r0 != 0) goto L_0x0027
            goto L_0x002f
        L_0x0027:
            long r4 = r0.longValue()     // Catch: Exception -> 0x0096
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto L_0x0044
        L_0x002f:
            kotlin.jvm.functions.Function1 r0 = r1.getOnPositionMSChanged()     // Catch: Exception -> 0x0096
            if (r0 != 0) goto L_0x0036
            goto L_0x003d
        L_0x0036:
            java.lang.Long r4 = java.lang.Long.valueOf(r2)     // Catch: Exception -> 0x0096
            r0.invoke(r4)     // Catch: Exception -> 0x0096
        L_0x003d:
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: Exception -> 0x0096
            com.github.florent37.assets_audio_player.Player.access$set_lastPositionMs$p(r1, r0)     // Catch: Exception -> 0x0096
        L_0x0044:
            boolean r0 = com.github.florent37.assets_audio_player.Player.access$getRespectSilentMode$p(r1)     // Catch: Exception -> 0x0096
            if (r0 == 0) goto L_0x006d
            android.media.AudioManager r0 = com.github.florent37.assets_audio_player.Player.access$getAm$p(r1)     // Catch: Exception -> 0x0096
            int r0 = r0.getRingerMode()     // Catch: Exception -> 0x0096
            java.lang.Integer r4 = com.github.florent37.assets_audio_player.Player.access$getLastRingerMode$p(r1)     // Catch: Exception -> 0x0096
            if (r4 != 0) goto L_0x0059
            goto L_0x005f
        L_0x0059:
            int r4 = r4.intValue()     // Catch: Exception -> 0x0096
            if (r4 == r0) goto L_0x006d
        L_0x005f:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: Exception -> 0x0096
            com.github.florent37.assets_audio_player.Player.access$setLastRingerMode$p(r1, r0)     // Catch: Exception -> 0x0096
            double r4 = com.github.florent37.assets_audio_player.Player.access$getVolume$p(r1)     // Catch: Exception -> 0x0096
            r1.setVolume(r4)     // Catch: Exception -> 0x0096
        L_0x006d:
            long r4 = com.github.florent37.assets_audio_player.Player.access$get_durationMs$p(r1)     // Catch: Exception -> 0x0096
            r6 = 0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 == 0) goto L_0x007f
            long r4 = com.github.florent37.assets_audio_player.Player.access$get_durationMs$p(r1)     // Catch: Exception -> 0x0096
            long r2 = java.lang.Math.min(r2, r4)     // Catch: Exception -> 0x0096
        L_0x007f:
            com.github.florent37.assets_audio_player.Player.access$set_positionMs$p(r1, r2)     // Catch: Exception -> 0x0096
            com.github.florent37.assets_audio_player.Player.access$updateNotifPosition(r1)     // Catch: Exception -> 0x0096
            android.os.Handler r0 = com.github.florent37.assets_audio_player.Player.access$getHandler$p(r1)     // Catch: Exception -> 0x0096
            r1 = r8
            java.lang.Runnable r1 = (java.lang.Runnable) r1     // Catch: Exception -> 0x0096
            r2 = 300(0x12c, double:1.48E-321)
            boolean r0 = r0.postDelayed(r1, r2)     // Catch: Exception -> 0x0096
            java.lang.Boolean.valueOf(r0)     // Catch: Exception -> 0x0096
            goto L_0x009c
        L_0x0096:
            r0 = move-exception
            r0.printStackTrace()
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
        L_0x009c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.Player$updatePosition$1.run():void");
    }
}
