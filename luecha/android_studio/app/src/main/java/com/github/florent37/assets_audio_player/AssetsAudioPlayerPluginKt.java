package com.github.florent37.assets_audio_player;

import kotlin.Metadata;

/* compiled from: AssetsAudioPlayerPlugin.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001f\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0003\"\u0014\u0010\b\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0003\"\u0014\u0010\n\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0003\"\u0014\u0010\f\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0003\"\u0014\u0010\u000e\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0003\"\u0014\u0010\u0010\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0003\"\u0014\u0010\u0012\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0003\"\u0014\u0010\u0014\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0003\"\u0014\u0010\u0016\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0003\"\u0014\u0010\u0018\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0003\"\u0014\u0010\u001a\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0003\"\u0014\u0010\u001c\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0003\"\u0014\u0010\u001e\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0003¨\u0006 "}, d2 = {"METHOD_AUDIO_SESSION_ID", "", "getMETHOD_AUDIO_SESSION_ID", "()Ljava/lang/String;", "METHOD_CURRENT", "getMETHOD_CURRENT", "METHOD_ERROR", "getMETHOD_ERROR", "METHOD_FINISHED", "getMETHOD_FINISHED", "METHOD_FORWARD_REWIND_SPEED", "getMETHOD_FORWARD_REWIND_SPEED", "METHOD_IS_BUFFERING", "getMETHOD_IS_BUFFERING", "METHOD_IS_PLAYING", "getMETHOD_IS_PLAYING", "METHOD_NEXT", "getMETHOD_NEXT", "METHOD_NOTIFICATION_STOP", "getMETHOD_NOTIFICATION_STOP", "METHOD_PITCH", "getMETHOD_PITCH", "METHOD_PLAY_OR_PAUSE", "getMETHOD_PLAY_OR_PAUSE", "METHOD_PLAY_SPEED", "getMETHOD_PLAY_SPEED", "METHOD_POSITION", "getMETHOD_POSITION", "METHOD_PREV", "getMETHOD_PREV", "METHOD_VOLUME", "getMETHOD_VOLUME", "assets_audio_player_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AssetsAudioPlayerPluginKt {
    private static final String METHOD_AUDIO_SESSION_ID = "player.audioSessionId";
    private static final String METHOD_CURRENT = "player.current";
    private static final String METHOD_ERROR = "player.error";
    private static final String METHOD_FINISHED = "player.finished";
    private static final String METHOD_FORWARD_REWIND_SPEED = "player.forwardRewind";
    private static final String METHOD_IS_BUFFERING = "player.isBuffering";
    private static final String METHOD_IS_PLAYING = "player.isPlaying";
    private static final String METHOD_NEXT = "player.next";
    private static final String METHOD_NOTIFICATION_STOP = "player.stop";
    private static final String METHOD_PITCH = "player.pitch";
    private static final String METHOD_PLAY_OR_PAUSE = "player.playOrPause";
    private static final String METHOD_PLAY_SPEED = "player.playSpeed";
    private static final String METHOD_POSITION = "player.position";
    private static final String METHOD_PREV = "player.prev";
    private static final String METHOD_VOLUME = "player.volume";

    public static final String getMETHOD_POSITION() {
        return METHOD_POSITION;
    }

    public static final String getMETHOD_VOLUME() {
        return METHOD_VOLUME;
    }

    public static final String getMETHOD_FORWARD_REWIND_SPEED() {
        return METHOD_FORWARD_REWIND_SPEED;
    }

    public static final String getMETHOD_PLAY_SPEED() {
        return METHOD_PLAY_SPEED;
    }

    public static final String getMETHOD_PITCH() {
        return METHOD_PITCH;
    }

    public static final String getMETHOD_FINISHED() {
        return METHOD_FINISHED;
    }

    public static final String getMETHOD_IS_PLAYING() {
        return METHOD_IS_PLAYING;
    }

    public static final String getMETHOD_IS_BUFFERING() {
        return METHOD_IS_BUFFERING;
    }

    public static final String getMETHOD_CURRENT() {
        return METHOD_CURRENT;
    }

    public static final String getMETHOD_AUDIO_SESSION_ID() {
        return METHOD_AUDIO_SESSION_ID;
    }

    public static final String getMETHOD_NEXT() {
        return METHOD_NEXT;
    }

    public static final String getMETHOD_PREV() {
        return METHOD_PREV;
    }

    public static final String getMETHOD_PLAY_OR_PAUSE() {
        return METHOD_PLAY_OR_PAUSE;
    }

    public static final String getMETHOD_NOTIFICATION_STOP() {
        return METHOD_NOTIFICATION_STOP;
    }

    public static final String getMETHOD_ERROR() {
        return METHOD_ERROR;
    }
}
