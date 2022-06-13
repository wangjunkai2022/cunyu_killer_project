package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.TimeBar;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.android.exoplayer2.video.VideoSize;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class StyledPlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    private static final int MAX_UPDATE_INTERVAL_MS = 1000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private static final int SETTINGS_AUDIO_TRACK_SELECTION_POSITION = 1;
    private static final int SETTINGS_PLAYBACK_SPEED_POSITION = 0;
    private long[] adGroupTimesMs;
    private View audioTrackButton;
    private TrackSelectionAdapter audioTrackSelectionAdapter;
    private final float buttonAlphaDisabled;
    private final float buttonAlphaEnabled;
    private final ComponentListener componentListener;
    private ControlDispatcher controlDispatcher;
    private StyledPlayerControlViewLayoutManager controlViewLayoutManager;
    private long currentWindowOffset;
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;
    private final View fastForwardButton;
    private final TextView fastForwardButtonTextView;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private ImageView fullScreenButton;
    private final String fullScreenEnterContentDescription;
    private final Drawable fullScreenEnterDrawable;
    private final String fullScreenExitContentDescription;
    private final Drawable fullScreenExitDrawable;
    private boolean isAttachedToWindow;
    private boolean isFullScreen;
    private ImageView minimalFullScreenButton;
    private boolean multiWindowTimeBar;
    private boolean needToHideBars;
    private final View nextButton;
    private OnFullScreenModeChangedListener onFullScreenModeChangedListener;
    private final Timeline.Period period;
    private final View playPauseButton;
    private PlaybackSpeedAdapter playbackSpeedAdapter;
    private View playbackSpeedButton;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final View previousButton;
    private ProgressUpdateListener progressUpdateListener;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private Resources resources;
    private final View rewindButton;
    private final TextView rewindButtonTextView;
    private boolean scrubbing;
    private SettingsAdapter settingsAdapter;
    private View settingsButton;
    private RecyclerView settingsView;
    private PopupWindow settingsWindow;
    private int settingsWindowMargin;
    private boolean showMultiWindowTimeBar;
    private int showTimeoutMs;
    private final ImageView shuffleButton;
    private final Drawable shuffleOffButtonDrawable;
    private final String shuffleOffContentDescription;
    private final Drawable shuffleOnButtonDrawable;
    private final String shuffleOnContentDescription;
    private ImageView subtitleButton;
    private final Drawable subtitleOffButtonDrawable;
    private final String subtitleOffContentDescription;
    private final Drawable subtitleOnButtonDrawable;
    private final String subtitleOnContentDescription;
    private TrackSelectionAdapter textTrackSelectionAdapter;
    private final TimeBar timeBar;
    private int timeBarMinUpdateIntervalMs;
    private TrackNameProvider trackNameProvider;
    private DefaultTrackSelector trackSelector;
    private final Runnable updateProgressAction;
    private final CopyOnWriteArrayList<VisibilityListener> visibilityListeners;
    private final View vrButton;
    private final Timeline.Window window;

    /* loaded from: classes2.dex */
    public interface OnFullScreenModeChangedListener {
        void onFullScreenModeChanged(boolean z);
    }

    /* loaded from: classes2.dex */
    public interface ProgressUpdateListener {
        void onProgressUpdate(long j, long j2);
    }

    /* loaded from: classes2.dex */
    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    private static boolean isHandledMediaKey(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.google.android.exoplayer2.ui.StyledPlayerControlView$1, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public StyledPlayerControlView(android.content.Context r22, android.util.AttributeSet r23, int r24, android.util.AttributeSet r25) {
        /*
        // Method dump skipped, instructions count: 1157
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerControlView.<init>(android.content.Context, android.util.AttributeSet, int, android.util.AttributeSet):void");
    }

    public Player getPlayer() {
        return this.player;
    }

    public void setPlayer(Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (!(player == null || player.getApplicationLooper() == Looper.getMainLooper())) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.player;
        if (player2 != player) {
            if (player2 != null) {
                player2.removeListener((Player.Listener) this.componentListener);
            }
            this.player = player;
            if (player != null) {
                player.addListener((Player.Listener) this.componentListener);
            }
            if (player instanceof ExoPlayer) {
                TrackSelector trackSelector = ((ExoPlayer) player).getTrackSelector();
                if (trackSelector instanceof DefaultTrackSelector) {
                    this.trackSelector = (DefaultTrackSelector) trackSelector;
                }
            } else {
                this.trackSelector = null;
            }
            updateAll();
        }
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.showMultiWindowTimeBar = z;
        updateTimeline();
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.extraAdGroupTimesMs = new long[0];
            this.extraPlayedAdGroups = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) Assertions.checkNotNull(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            Assertions.checkArgument(z);
            this.extraAdGroupTimesMs = jArr;
            this.extraPlayedAdGroups = zArr2;
        }
        updateTimeline();
    }

    public void addVisibilityListener(VisibilityListener visibilityListener) {
        Assertions.checkNotNull(visibilityListener);
        this.visibilityListeners.add(visibilityListener);
    }

    public void removeVisibilityListener(VisibilityListener visibilityListener) {
        this.visibilityListeners.remove(visibilityListener);
    }

    public void setProgressUpdateListener(ProgressUpdateListener progressUpdateListener) {
        this.progressUpdateListener = progressUpdateListener;
    }

    @Deprecated
    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (this.controlDispatcher != controlDispatcher) {
            this.controlDispatcher = controlDispatcher;
            updateNavigation();
        }
    }

    public void setShowRewindButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.rewindButton, z);
        updateNavigation();
    }

    public void setShowFastForwardButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.fastForwardButton, z);
        updateNavigation();
    }

    public void setShowPreviousButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.previousButton, z);
        updateNavigation();
    }

    public void setShowNextButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.nextButton, z);
        updateNavigation();
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void setShowTimeoutMs(int i) {
        this.showTimeoutMs = i;
        if (isFullyVisible()) {
            this.controlViewLayoutManager.resetHideCallbacks();
        }
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public void setRepeatToggleModes(int i) {
        this.repeatToggleModes = i;
        Player player = this.player;
        boolean z = false;
        if (player != null) {
            int repeatMode = player.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 0);
            } else if (i == 1 && repeatMode == 2) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 1);
            } else if (i == 2 && repeatMode == 1) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 2);
            }
        }
        StyledPlayerControlViewLayoutManager styledPlayerControlViewLayoutManager = this.controlViewLayoutManager;
        ImageView imageView = this.repeatToggleButton;
        if (i != 0) {
            z = true;
        }
        styledPlayerControlViewLayoutManager.setShowButton(imageView, z);
        updateRepeatModeButton();
    }

    public boolean getShowShuffleButton() {
        return this.controlViewLayoutManager.getShowButton(this.shuffleButton);
    }

    public void setShowShuffleButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.shuffleButton, z);
        updateShuffleButton();
    }

    public boolean getShowSubtitleButton() {
        return this.controlViewLayoutManager.getShowButton(this.subtitleButton);
    }

    public void setShowSubtitleButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.subtitleButton, z);
    }

    public boolean getShowVrButton() {
        return this.controlViewLayoutManager.getShowButton(this.vrButton);
    }

    public void setShowVrButton(boolean z) {
        this.controlViewLayoutManager.setShowButton(this.vrButton, z);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.vrButton;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            updateButton(onClickListener != null, this.vrButton);
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.controlViewLayoutManager.setAnimationEnabled(z);
    }

    public boolean isAnimationEnabled() {
        return this.controlViewLayoutManager.isAnimationEnabled();
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.timeBarMinUpdateIntervalMs = Util.constrainValue(i, 16, 1000);
    }

    public void setOnFullScreenModeChangedListener(OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        this.onFullScreenModeChangedListener = onFullScreenModeChangedListener;
        boolean z = true;
        updateFullScreenButtonVisibility(this.fullScreenButton, onFullScreenModeChangedListener != null);
        ImageView imageView = this.minimalFullScreenButton;
        if (onFullScreenModeChangedListener == null) {
            z = false;
        }
        updateFullScreenButtonVisibility(imageView, z);
    }

    public void show() {
        this.controlViewLayoutManager.show();
    }

    public void hide() {
        this.controlViewLayoutManager.hide();
    }

    public void hideImmediately() {
        this.controlViewLayoutManager.hideImmediately();
    }

    public boolean isFullyVisible() {
        return this.controlViewLayoutManager.isFullyVisible();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    public void notifyOnVisibilityChange() {
        Iterator<VisibilityListener> it = this.visibilityListeners.iterator();
        while (it.hasNext()) {
            it.next().onVisibilityChange(getVisibility());
        }
    }

    public void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateShuffleButton();
        updateTrackLists();
        updatePlaybackSpeedList();
        updateTimeline();
    }

    public void updatePlayPauseButton() {
        if (isVisible() && this.isAttachedToWindow && this.playPauseButton != null) {
            if (shouldShowPauseButton()) {
                ((ImageView) this.playPauseButton).setImageDrawable(this.resources.getDrawable(R.drawable.exo_styled_controls_pause));
                this.playPauseButton.setContentDescription(this.resources.getString(R.string.exo_controls_pause_description));
                return;
            }
            ((ImageView) this.playPauseButton).setImageDrawable(this.resources.getDrawable(R.drawable.exo_styled_controls_play));
            this.playPauseButton.setContentDescription(this.resources.getString(R.string.exo_controls_play_description));
        }
    }

    public void updateNavigation() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (isVisible() && this.isAttachedToWindow) {
            Player player = this.player;
            boolean z5 = false;
            if (player != null) {
                boolean isCommandAvailable = player.isCommandAvailable(4);
                z2 = player.isCommandAvailable(6);
                boolean z6 = player.isCommandAvailable(10) && this.controlDispatcher.isRewindEnabled();
                if (player.isCommandAvailable(11) && this.controlDispatcher.isFastForwardEnabled()) {
                    z5 = true;
                }
                z3 = player.isCommandAvailable(8);
                z4 = z5;
                z5 = z6;
                z = isCommandAvailable;
            } else {
                z4 = false;
                z3 = false;
                z2 = false;
                z = false;
            }
            if (z5) {
                updateRewindButton();
            }
            if (z4) {
                updateFastForwardButton();
            }
            updateButton(z2, this.previousButton);
            updateButton(z5, this.rewindButton);
            updateButton(z4, this.fastForwardButton);
            updateButton(z3, this.nextButton);
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setEnabled(z);
            }
        }
    }

    private void updateRewindButton() {
        Player player;
        ControlDispatcher controlDispatcher = this.controlDispatcher;
        int rewindIncrementMs = (int) (((!(controlDispatcher instanceof DefaultControlDispatcher) || (player = this.player) == null) ? 5000 : ((DefaultControlDispatcher) controlDispatcher).getRewindIncrementMs(player)) / 1000);
        TextView textView = this.rewindButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(rewindIncrementMs));
        }
        View view = this.rewindButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, rewindIncrementMs, Integer.valueOf(rewindIncrementMs)));
        }
    }

    private void updateFastForwardButton() {
        Player player;
        ControlDispatcher controlDispatcher = this.controlDispatcher;
        int fastForwardIncrementMs = (int) (((!(controlDispatcher instanceof DefaultControlDispatcher) || (player = this.player) == null) ? C.DEFAULT_SEEK_FORWARD_INCREMENT_MS : ((DefaultControlDispatcher) controlDispatcher).getFastForwardIncrementMs(player)) / 1000);
        TextView textView = this.fastForwardButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(fastForwardIncrementMs));
        }
        View view = this.fastForwardButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, fastForwardIncrementMs, Integer.valueOf(fastForwardIncrementMs)));
        }
    }

    public void updateRepeatModeButton() {
        ImageView imageView;
        if (isVisible() && this.isAttachedToWindow && (imageView = this.repeatToggleButton) != null) {
            if (this.repeatToggleModes == 0) {
                updateButton(false, imageView);
                return;
            }
            Player player = this.player;
            if (player == null) {
                updateButton(false, imageView);
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                return;
            }
            updateButton(true, imageView);
            int repeatMode = player.getRepeatMode();
            if (repeatMode == 0) {
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
            } else if (repeatMode == 1) {
                this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
            } else if (repeatMode == 2) {
                this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
            }
        }
    }

    public void updateShuffleButton() {
        ImageView imageView;
        String str;
        if (isVisible() && this.isAttachedToWindow && (imageView = this.shuffleButton) != null) {
            Player player = this.player;
            if (!this.controlViewLayoutManager.getShowButton(imageView)) {
                updateButton(false, this.shuffleButton);
            } else if (player == null) {
                updateButton(false, this.shuffleButton);
                this.shuffleButton.setImageDrawable(this.shuffleOffButtonDrawable);
                this.shuffleButton.setContentDescription(this.shuffleOffContentDescription);
            } else {
                updateButton(true, this.shuffleButton);
                this.shuffleButton.setImageDrawable(player.getShuffleModeEnabled() ? this.shuffleOnButtonDrawable : this.shuffleOffButtonDrawable);
                ImageView imageView2 = this.shuffleButton;
                if (player.getShuffleModeEnabled()) {
                    str = this.shuffleOnContentDescription;
                } else {
                    str = this.shuffleOffContentDescription;
                }
                imageView2.setContentDescription(str);
            }
        }
    }

    public void updateTrackLists() {
        initTrackSelectionAdapter();
        updateButton(this.textTrackSelectionAdapter.getItemCount() > 0, this.subtitleButton);
    }

    private void initTrackSelectionAdapter() {
        DefaultTrackSelector defaultTrackSelector;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo;
        this.textTrackSelectionAdapter.clear();
        this.audioTrackSelectionAdapter.clear();
        if (!(this.player == null || (defaultTrackSelector = this.trackSelector) == null || (currentMappedTrackInfo = defaultTrackSelector.getCurrentMappedTrackInfo()) == null)) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (int i = 0; i < currentMappedTrackInfo.getRendererCount(); i++) {
                if (currentMappedTrackInfo.getRendererType(i) == 3 && this.controlViewLayoutManager.getShowButton(this.subtitleButton)) {
                    gatherTrackInfosForAdapter(currentMappedTrackInfo, i, arrayList);
                    arrayList3.add(Integer.valueOf(i));
                } else if (currentMappedTrackInfo.getRendererType(i) == 1) {
                    gatherTrackInfosForAdapter(currentMappedTrackInfo, i, arrayList2);
                    arrayList4.add(Integer.valueOf(i));
                }
            }
            this.textTrackSelectionAdapter.init(arrayList3, arrayList, currentMappedTrackInfo);
            this.audioTrackSelectionAdapter.init(arrayList4, arrayList2, currentMappedTrackInfo);
        }
    }

    private void gatherTrackInfosForAdapter(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int i, List<TrackInfo> list) {
        TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
        TrackSelection trackSelection = ((Player) Assertions.checkNotNull(this.player)).getCurrentTrackSelections().get(i);
        for (int i2 = 0; i2 < trackGroups.length; i2++) {
            TrackGroup trackGroup = trackGroups.get(i2);
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                Format format = trackGroup.getFormat(i3);
                if (mappedTrackInfo.getTrackSupport(i, i2, i3) == 4) {
                    list.add(new TrackInfo(i, i2, i3, this.trackNameProvider.getTrackName(format), (trackSelection == null || trackSelection.indexOf(format) == -1) ? false : true));
                }
            }
        }
    }

    public void updateTimeline() {
        long j;
        int i;
        Player player = this.player;
        if (player != null) {
            boolean z = true;
            this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player.getCurrentTimeline(), this.window);
            this.currentWindowOffset = 0;
            Timeline currentTimeline = player.getCurrentTimeline();
            if (!currentTimeline.isEmpty()) {
                int currentWindowIndex = player.getCurrentWindowIndex();
                int i2 = this.multiWindowTimeBar ? 0 : currentWindowIndex;
                int windowCount = this.multiWindowTimeBar ? currentTimeline.getWindowCount() - 1 : currentWindowIndex;
                long j2 = 0;
                i = 0;
                while (true) {
                    if (i2 > windowCount) {
                        break;
                    }
                    if (i2 == currentWindowIndex) {
                        this.currentWindowOffset = C.usToMs(j2);
                    }
                    currentTimeline.getWindow(i2, this.window);
                    if (this.window.durationUs == C.TIME_UNSET) {
                        Assertions.checkState(this.multiWindowTimeBar ^ z);
                        break;
                    }
                    for (int i3 = this.window.firstPeriodIndex; i3 <= this.window.lastPeriodIndex; i3++) {
                        currentTimeline.getPeriod(i3, this.period);
                        int adGroupCount = this.period.getAdGroupCount();
                        for (int removedAdGroupCount = this.period.getRemovedAdGroupCount(); removedAdGroupCount < adGroupCount; removedAdGroupCount++) {
                            long adGroupTimeUs = this.period.getAdGroupTimeUs(removedAdGroupCount);
                            if (adGroupTimeUs == Long.MIN_VALUE) {
                                if (this.period.durationUs != C.TIME_UNSET) {
                                    adGroupTimeUs = this.period.durationUs;
                                }
                            }
                            long positionInWindowUs = adGroupTimeUs + this.period.getPositionInWindowUs();
                            if (positionInWindowUs >= 0) {
                                long[] jArr = this.adGroupTimesMs;
                                if (i == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, length);
                                    this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                }
                                this.adGroupTimesMs[i] = C.usToMs(j2 + positionInWindowUs);
                                this.playedAdGroups[i] = this.period.hasPlayedAdGroup(removedAdGroupCount);
                                i++;
                            }
                        }
                    }
                    j2 += this.window.durationUs;
                    i2++;
                    z = true;
                }
                j = j2;
            } else {
                i = 0;
                j = 0;
            }
            long usToMs = C.usToMs(j);
            TextView textView = this.durationView;
            if (textView != null) {
                textView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, usToMs));
            }
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setDuration(usToMs);
                int length2 = this.extraAdGroupTimesMs.length;
                int i4 = i + length2;
                long[] jArr2 = this.adGroupTimesMs;
                if (i4 > jArr2.length) {
                    this.adGroupTimesMs = Arrays.copyOf(jArr2, i4);
                    this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i4);
                }
                System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i, length2);
                System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i, length2);
                this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i4);
            }
            updateProgress();
        }
    }

    public void updateProgress() {
        long j;
        int i;
        if (isVisible() && this.isAttachedToWindow) {
            Player player = this.player;
            long j2 = 0;
            if (player != null) {
                j2 = this.currentWindowOffset + player.getContentPosition();
                j = this.currentWindowOffset + player.getContentBufferedPosition();
            } else {
                j = 0;
            }
            TextView textView = this.positionView;
            if (textView != null && !this.scrubbing) {
                textView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, j2));
            }
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setPosition(j2);
                this.timeBar.setBufferedPosition(j);
            }
            ProgressUpdateListener progressUpdateListener = this.progressUpdateListener;
            if (progressUpdateListener != null) {
                progressUpdateListener.onProgressUpdate(j2, j);
            }
            removeCallbacks(this.updateProgressAction);
            if (player == null) {
                i = 1;
            } else {
                i = player.getPlaybackState();
            }
            long j3 = 1000;
            if (player != null && player.isPlaying()) {
                TimeBar timeBar2 = this.timeBar;
                long min = Math.min(timeBar2 != null ? timeBar2.getPreferredUpdateDelay() : 1000, 1000 - (j2 % 1000));
                float f = player.getPlaybackParameters().speed;
                if (f > 0.0f) {
                    j3 = (long) (((float) min) / f);
                }
                postDelayed(this.updateProgressAction, Util.constrainValue(j3, (long) this.timeBarMinUpdateIntervalMs, 1000));
            } else if (i != 4 && i != 1) {
                postDelayed(this.updateProgressAction, 1000);
            }
        }
    }

    public void updatePlaybackSpeedList() {
        Player player = this.player;
        if (player != null) {
            this.playbackSpeedAdapter.updateSelectedIndex(player.getPlaybackParameters().speed);
            this.settingsAdapter.setSubTextAtPosition(0, this.playbackSpeedAdapter.getSelectedText());
        }
    }

    private void updateSettingsWindowSize() {
        this.settingsView.measure(0, 0);
        this.settingsWindow.setWidth(Math.min(this.settingsView.getMeasuredWidth(), getWidth() - (this.settingsWindowMargin * 2)));
        this.settingsWindow.setHeight(Math.min(getHeight() - (this.settingsWindowMargin * 2), this.settingsView.getMeasuredHeight()));
    }

    public void displaySettingsWindow(RecyclerView.Adapter<?> adapter) {
        this.settingsView.setAdapter(adapter);
        updateSettingsWindowSize();
        this.needToHideBars = false;
        this.settingsWindow.dismiss();
        this.needToHideBars = true;
        this.settingsWindow.showAsDropDown(this, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin);
    }

    public void setPlaybackSpeed(float f) {
        Player player = this.player;
        if (player != null) {
            this.controlDispatcher.dispatchSetPlaybackParameters(player, player.getPlaybackParameters().withSpeed(f));
        }
    }

    public void requestPlayPauseFocus() {
        View view = this.playPauseButton;
        if (view != null) {
            view.requestFocus();
        }
    }

    private void updateButton(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            view.setAlpha(z ? this.buttonAlphaEnabled : this.buttonAlphaDisabled);
        }
    }

    public void seekToTimeBarPosition(Player player, long j) {
        int i;
        Timeline currentTimeline = player.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            i = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(i, this.window).getDurationMs();
                if (j < durationMs) {
                    break;
                } else if (i == windowCount - 1) {
                    j = durationMs;
                    break;
                } else {
                    j -= durationMs;
                    i++;
                }
            }
        } else {
            i = player.getCurrentWindowIndex();
        }
        seekTo(player, i, j);
        updateProgress();
    }

    private boolean seekTo(Player player, int i, long j) {
        return this.controlDispatcher.dispatchSeekTo(player, i, j);
    }

    public void onFullScreenButtonClicked(View view) {
        if (this.onFullScreenModeChangedListener != null) {
            this.isFullScreen = !this.isFullScreen;
            updateFullScreenButtonForState(this.fullScreenButton, this.isFullScreen);
            updateFullScreenButtonForState(this.minimalFullScreenButton, this.isFullScreen);
            OnFullScreenModeChangedListener onFullScreenModeChangedListener = this.onFullScreenModeChangedListener;
            if (onFullScreenModeChangedListener != null) {
                onFullScreenModeChangedListener.onFullScreenModeChanged(this.isFullScreen);
            }
        }
    }

    private void updateFullScreenButtonForState(ImageView imageView, boolean z) {
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(this.fullScreenExitDrawable);
                imageView.setContentDescription(this.fullScreenExitContentDescription);
                return;
            }
            imageView.setImageDrawable(this.fullScreenEnterDrawable);
            imageView.setContentDescription(this.fullScreenEnterContentDescription);
        }
    }

    public void onSettingViewClicked(int i) {
        if (i == 0) {
            displaySettingsWindow(this.playbackSpeedAdapter);
        } else if (i == 1) {
            displaySettingsWindow(this.audioTrackSelectionAdapter);
        } else {
            this.settingsWindow.dismiss();
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.controlViewLayoutManager.onAttachedToWindow();
        this.isAttachedToWindow = true;
        if (isFullyVisible()) {
            this.controlViewLayoutManager.resetHideCallbacks();
        }
        updateAll();
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.controlViewLayoutManager.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        this.controlViewLayoutManager.removeHideCallbacks();
    }

    @Override // android.view.View, android.view.ViewGroup
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.player;
        if (player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (player.getPlaybackState() == 4) {
                return true;
            }
            this.controlDispatcher.dispatchFastForward(player);
            return true;
        } else if (keyCode == 89) {
            this.controlDispatcher.dispatchRewind(player);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 79 || keyCode == 85) {
                dispatchPlayPause(player);
                return true;
            } else if (keyCode == 87) {
                this.controlDispatcher.dispatchNext(player);
                return true;
            } else if (keyCode == 88) {
                this.controlDispatcher.dispatchPrevious(player);
                return true;
            } else if (keyCode == 126) {
                dispatchPlay(player);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                dispatchPause(player);
                return true;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View, android.view.ViewGroup
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.controlViewLayoutManager.onLayout(z, i, i2, i3, i4);
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        int i10 = i8 - i6;
        if (!(i3 - i == i7 - i5 && i9 == i10) && this.settingsWindow.isShowing()) {
            updateSettingsWindowSize();
            this.settingsWindow.update(view, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin, -1, -1);
        }
    }

    private boolean shouldShowPauseButton() {
        Player player = this.player;
        if (player == null || player.getPlaybackState() == 4 || this.player.getPlaybackState() == 1 || !this.player.getPlayWhenReady()) {
            return false;
        }
        return true;
    }

    public void dispatchPlayPause(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !player.getPlayWhenReady()) {
            dispatchPlay(player);
        } else {
            dispatchPause(player);
        }
    }

    private void dispatchPlay(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1) {
            this.controlDispatcher.dispatchPrepare(player);
        } else if (playbackState == 4) {
            seekTo(player, player.getCurrentWindowIndex(), C.TIME_UNSET);
        }
        this.controlDispatcher.dispatchSetPlayWhenReady(player, true);
    }

    private void dispatchPause(Player player) {
        this.controlDispatcher.dispatchSetPlayWhenReady(player, false);
    }

    private static boolean canShowMultiWindowTimeBar(Timeline timeline, Timeline.Window window) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window).durationUs == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private static void initializeFullScreenButton(View view, View.OnClickListener onClickListener) {
        if (view != null) {
            view.setVisibility(8);
            view.setOnClickListener(onClickListener);
        }
    }

    private static void updateFullScreenButtonVisibility(View view, boolean z) {
        if (view != null) {
            if (z) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
    }

    private static int getRepeatToggleModes(TypedArray typedArray, int i) {
        return typedArray.getInt(R.styleable.StyledPlayerControlView_repeat_toggle_modes, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onAudioSessionIdChanged(int i) {
            Player.Listener.CC.$default$onAudioSessionIdChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.text.TextOutput
        public /* synthetic */ void onCues(List<Cue> list) {
            Player.Listener.CC.$default$onCues(this, list);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.device.DeviceListener
        public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.device.DeviceListener
        public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
            Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onIsLoadingChanged(boolean z) {
            Player.Listener.CC.$default$onIsLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onIsPlayingChanged(boolean z) {
            Player.Listener.CC.$default$onIsPlayingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @Deprecated
        public /* synthetic */ void onLoadingChanged(boolean z) {
            Player.EventListener.CC.$default$onLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMaxSeekToPreviousPositionChanged(int i) {
            Player.EventListener.CC.$default$onMaxSeekToPreviousPositionChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
            Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.metadata.MetadataOutput
        public /* synthetic */ void onMetadata(Metadata metadata) {
            Player.Listener.CC.$default$onMetadata(this, metadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
            Player.Listener.CC.$default$onPlayWhenReadyChanged(this, z, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            Player.Listener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackStateChanged(int i) {
            Player.Listener.CC.$default$onPlaybackStateChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            Player.Listener.CC.$default$onPlayerError(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @Deprecated
        public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
            Player.EventListener.CC.$default$onPlayerStateChanged(this, z, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            Player.Listener.CC.$default$onPlaylistMetadataChanged(this, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @Deprecated
        public /* synthetic */ void onPositionDiscontinuity(int i) {
            Player.EventListener.CC.$default$onPositionDiscontinuity(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            Player.Listener.CC.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onRenderedFirstFrame() {
            Player.Listener.CC.$default$onRenderedFirstFrame(this);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onRepeatModeChanged(int i) {
            Player.Listener.CC.$default$onRepeatModeChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekBackIncrementChanged(long j) {
            Player.Listener.CC.$default$onSeekBackIncrementChanged(this, j);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
            Player.Listener.CC.$default$onSeekForwardIncrementChanged(this, j);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @Deprecated
        public /* synthetic */ void onSeekProcessed() {
            Player.EventListener.CC.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            Player.Listener.CC.$default$onShuffleModeEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
            Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @Deprecated
        public /* synthetic */ void onStaticMetadataChanged(List<Metadata> list) {
            Player.EventListener.CC.$default$onStaticMetadataChanged(this, list);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
            Player.Listener.CC.$default$onSurfaceSizeChanged(this, i, i2);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
            Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            Player.Listener.CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        @Deprecated
        public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
            VideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onVolumeChanged(float f) {
            Player.Listener.CC.$default$onVolumeChanged(this, f);
        }

        private ComponentListener() {
            StyledPlayerControlView.this = r1;
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(5, 6)) {
                StyledPlayerControlView.this.updatePlayPauseButton();
            }
            if (events.containsAny(5, 6, 8)) {
                StyledPlayerControlView.this.updateProgress();
            }
            if (events.contains(9)) {
                StyledPlayerControlView.this.updateRepeatModeButton();
            }
            if (events.contains(10)) {
                StyledPlayerControlView.this.updateShuffleButton();
            }
            if (events.containsAny(9, 10, 12, 0, 17, 18)) {
                StyledPlayerControlView.this.updateNavigation();
            }
            if (events.containsAny(12, 0)) {
                StyledPlayerControlView.this.updateTimeline();
            }
            if (events.contains(13)) {
                StyledPlayerControlView.this.updatePlaybackSpeedList();
            }
            if (events.contains(2)) {
                StyledPlayerControlView.this.updateTrackLists();
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j) {
            StyledPlayerControlView.this.scrubbing = true;
            if (StyledPlayerControlView.this.positionView != null) {
                StyledPlayerControlView.this.positionView.setText(Util.getStringForTime(StyledPlayerControlView.this.formatBuilder, StyledPlayerControlView.this.formatter, j));
            }
            StyledPlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j) {
            if (StyledPlayerControlView.this.positionView != null) {
                StyledPlayerControlView.this.positionView.setText(Util.getStringForTime(StyledPlayerControlView.this.formatBuilder, StyledPlayerControlView.this.formatter, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j, boolean z) {
            StyledPlayerControlView.this.scrubbing = false;
            if (!z && StyledPlayerControlView.this.player != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.seekToTimeBarPosition(styledPlayerControlView.player, j);
            }
            StyledPlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.needToHideBars) {
                StyledPlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Player player = StyledPlayerControlView.this.player;
            if (player != null) {
                StyledPlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
                if (StyledPlayerControlView.this.nextButton == view) {
                    StyledPlayerControlView.this.controlDispatcher.dispatchNext(player);
                } else if (StyledPlayerControlView.this.previousButton == view) {
                    StyledPlayerControlView.this.controlDispatcher.dispatchPrevious(player);
                } else if (StyledPlayerControlView.this.fastForwardButton == view) {
                    if (player.getPlaybackState() != 4) {
                        StyledPlayerControlView.this.controlDispatcher.dispatchFastForward(player);
                    }
                } else if (StyledPlayerControlView.this.rewindButton == view) {
                    StyledPlayerControlView.this.controlDispatcher.dispatchRewind(player);
                } else if (StyledPlayerControlView.this.playPauseButton == view) {
                    StyledPlayerControlView.this.dispatchPlayPause(player);
                } else if (StyledPlayerControlView.this.repeatToggleButton == view) {
                    StyledPlayerControlView.this.controlDispatcher.dispatchSetRepeatMode(player, RepeatModeUtil.getNextRepeatMode(player.getRepeatMode(), StyledPlayerControlView.this.repeatToggleModes));
                } else if (StyledPlayerControlView.this.shuffleButton == view) {
                    StyledPlayerControlView.this.controlDispatcher.dispatchSetShuffleModeEnabled(player, !player.getShuffleModeEnabled());
                } else if (StyledPlayerControlView.this.settingsButton == view) {
                    StyledPlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
                    StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                    styledPlayerControlView.displaySettingsWindow(styledPlayerControlView.settingsAdapter);
                } else if (StyledPlayerControlView.this.playbackSpeedButton == view) {
                    StyledPlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
                    StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                    styledPlayerControlView2.displaySettingsWindow(styledPlayerControlView2.playbackSpeedAdapter);
                } else if (StyledPlayerControlView.this.audioTrackButton == view) {
                    StyledPlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
                    StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                    styledPlayerControlView3.displaySettingsWindow(styledPlayerControlView3.audioTrackSelectionAdapter);
                } else if (StyledPlayerControlView.this.subtitleButton == view) {
                    StyledPlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
                    StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                    styledPlayerControlView4.displaySettingsWindow(styledPlayerControlView4.textTrackSelectionAdapter);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class SettingsAdapter extends RecyclerView.Adapter<SettingViewHolder> {
        private final Drawable[] iconIds;
        private final String[] mainTexts;
        private final String[] subTexts;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return (long) i;
        }

        public SettingsAdapter(String[] strArr, Drawable[] drawableArr) {
            StyledPlayerControlView.this = r1;
            this.mainTexts = strArr;
            this.subTexts = new String[strArr.length];
            this.iconIds = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new SettingViewHolder(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R.layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void onBindViewHolder(SettingViewHolder settingViewHolder, int i) {
            settingViewHolder.mainTextView.setText(this.mainTexts[i]);
            if (this.subTexts[i] == null) {
                settingViewHolder.subTextView.setVisibility(8);
            } else {
                settingViewHolder.subTextView.setText(this.subTexts[i]);
            }
            if (this.iconIds[i] == null) {
                settingViewHolder.iconView.setVisibility(8);
            } else {
                settingViewHolder.iconView.setImageDrawable(this.iconIds[i]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mainTexts.length;
        }

        public void setSubTextAtPosition(int i, String str) {
            this.subTexts[i] = str;
        }
    }

    /* loaded from: classes2.dex */
    public final class SettingViewHolder extends RecyclerView.ViewHolder {
        private final ImageView iconView;
        private final TextView mainTextView;
        private final TextView subTextView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SettingViewHolder(View view) {
            super(view);
            StyledPlayerControlView.this = r2;
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.mainTextView = (TextView) view.findViewById(R.id.exo_main_text);
            this.subTextView = (TextView) view.findViewById(R.id.exo_sub_text);
            this.iconView = (ImageView) view.findViewById(R.id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.-$$Lambda$StyledPlayerControlView$SettingViewHolder$QG0HWBZp7AbXaQL4toH_6bB9s6o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.SettingViewHolder.this.lambda$new$0$StyledPlayerControlView$SettingViewHolder(view2);
                }
            });
        }

        public /* synthetic */ void lambda$new$0$StyledPlayerControlView$SettingViewHolder(View view) {
            StyledPlayerControlView.this.onSettingViewClicked(getAdapterPosition());
        }
    }

    /* loaded from: classes2.dex */
    public final class PlaybackSpeedAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        private final String[] playbackSpeedTexts;
        private final int[] playbackSpeedsMultBy100;
        private int selectedIndex;

        public PlaybackSpeedAdapter(String[] strArr, int[] iArr) {
            StyledPlayerControlView.this = r1;
            this.playbackSpeedTexts = strArr;
            this.playbackSpeedsMultBy100 = iArr;
        }

        public void updateSelectedIndex(float f) {
            int round = Math.round(f * 100.0f);
            int i = 0;
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            while (true) {
                int[] iArr = this.playbackSpeedsMultBy100;
                if (i < iArr.length) {
                    int abs = Math.abs(round - iArr[i]);
                    if (abs < i2) {
                        i3 = i;
                        i2 = abs;
                    }
                    i++;
                } else {
                    this.selectedIndex = i3;
                    return;
                }
            }
        }

        public String getSelectedText() {
            return this.playbackSpeedTexts[this.selectedIndex];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SubSettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new SubSettingViewHolder(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i) {
            if (i < this.playbackSpeedTexts.length) {
                subSettingViewHolder.textView.setText(this.playbackSpeedTexts[i]);
            }
            subSettingViewHolder.checkView.setVisibility(i == this.selectedIndex ? 0 : 4);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener(i) { // from class: com.google.android.exoplayer2.ui.-$$Lambda$StyledPlayerControlView$PlaybackSpeedAdapter$mEGmGMMlAI__CipqsxEmK1AQlD4
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.PlaybackSpeedAdapter.this.lambda$onBindViewHolder$0$StyledPlayerControlView$PlaybackSpeedAdapter(this.f$1, view);
                }
            });
        }

        public /* synthetic */ void lambda$onBindViewHolder$0$StyledPlayerControlView$PlaybackSpeedAdapter(int i, View view) {
            if (i != this.selectedIndex) {
                StyledPlayerControlView.this.setPlaybackSpeed(((float) this.playbackSpeedsMultBy100[i]) / 100.0f);
            }
            StyledPlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.playbackSpeedTexts.length;
        }
    }

    /* loaded from: classes2.dex */
    public static final class TrackInfo {
        public final int groupIndex;
        public final int rendererIndex;
        public final boolean selected;
        public final int trackIndex;
        public final String trackName;

        public TrackInfo(int i, int i2, int i3, String str, boolean z) {
            this.rendererIndex = i;
            this.groupIndex = i2;
            this.trackIndex = i3;
            this.trackName = str;
            this.selected = z;
        }
    }

    /* loaded from: classes2.dex */
    public final class TextTrackSelectionAdapter extends TrackSelectionAdapter {
        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void onTrackSelection(String str) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private TextTrackSelectionAdapter() {
            super();
            StyledPlayerControlView.this = r1;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void init(List<Integer> list, List<TrackInfo> list2, MappingTrackSelector.MappedTrackInfo mappedTrackInfo) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= list2.size()) {
                    break;
                } else if (list2.get(i).selected) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (StyledPlayerControlView.this.subtitleButton != null) {
                ImageView imageView = StyledPlayerControlView.this.subtitleButton;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z ? styledPlayerControlView.subtitleOnButtonDrawable : styledPlayerControlView.subtitleOffButtonDrawable);
                StyledPlayerControlView.this.subtitleButton.setContentDescription(z ? StyledPlayerControlView.this.subtitleOnContentDescription : StyledPlayerControlView.this.subtitleOffContentDescription);
            }
            this.rendererIndices = list;
            this.tracks = list2;
            this.mappedTrackInfo = mappedTrackInfo;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void onBindViewHolderAtZeroPosition(SubSettingViewHolder subSettingViewHolder) {
            boolean z;
            subSettingViewHolder.textView.setText(R.string.exo_track_selection_none);
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.tracks.size()) {
                    z = true;
                    break;
                } else if (((TrackInfo) this.tracks.get(i2)).selected) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            View view = subSettingViewHolder.checkView;
            if (!z) {
                i = 4;
            }
            view.setVisibility(i);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.-$$Lambda$StyledPlayerControlView$TextTrackSelectionAdapter$T0d3G57M_lGcyhOvHI6rvuBqAzc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.TextTrackSelectionAdapter.this.lambda$onBindViewHolderAtZeroPosition$0$StyledPlayerControlView$TextTrackSelectionAdapter(view2);
                }
            });
        }

        public /* synthetic */ void lambda$onBindViewHolderAtZeroPosition$0$StyledPlayerControlView$TextTrackSelectionAdapter(View view) {
            if (StyledPlayerControlView.this.trackSelector != null) {
                DefaultTrackSelector.ParametersBuilder buildUpon = StyledPlayerControlView.this.trackSelector.getParameters().buildUpon();
                for (int i = 0; i < this.rendererIndices.size(); i++) {
                    int intValue = ((Integer) this.rendererIndices.get(i)).intValue();
                    buildUpon = buildUpon.clearSelectionOverrides(intValue).setRendererDisabled(intValue, true);
                }
                ((DefaultTrackSelector) Assertions.checkNotNull(StyledPlayerControlView.this.trackSelector)).setParameters(buildUpon);
                StyledPlayerControlView.this.settingsWindow.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i) {
            super.onBindViewHolder(subSettingViewHolder, i);
            if (i > 0) {
                subSettingViewHolder.checkView.setVisibility(((TrackInfo) this.tracks.get(i + -1)).selected ? 0 : 4);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class AudioTrackSelectionAdapter extends TrackSelectionAdapter {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private AudioTrackSelectionAdapter() {
            super();
            StyledPlayerControlView.this = r1;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void onBindViewHolderAtZeroPosition(SubSettingViewHolder subSettingViewHolder) {
            boolean z;
            subSettingViewHolder.textView.setText(R.string.exo_track_selection_auto);
            DefaultTrackSelector.Parameters parameters = ((DefaultTrackSelector) Assertions.checkNotNull(StyledPlayerControlView.this.trackSelector)).getParameters();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.rendererIndices.size()) {
                    z = false;
                    break;
                }
                int intValue = ((Integer) this.rendererIndices.get(i2)).intValue();
                if (parameters.hasSelectionOverride(intValue, ((MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(this.mappedTrackInfo)).getTrackGroups(intValue))) {
                    z = true;
                    break;
                }
                i2++;
            }
            View view = subSettingViewHolder.checkView;
            if (z) {
                i = 4;
            }
            view.setVisibility(i);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.-$$Lambda$StyledPlayerControlView$AudioTrackSelectionAdapter$hrRy8Jfn1OBeXfostW2eNouUobI
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.AudioTrackSelectionAdapter.this.lambda$onBindViewHolderAtZeroPosition$0$StyledPlayerControlView$AudioTrackSelectionAdapter(view2);
                }
            });
        }

        public /* synthetic */ void lambda$onBindViewHolderAtZeroPosition$0$StyledPlayerControlView$AudioTrackSelectionAdapter(View view) {
            if (StyledPlayerControlView.this.trackSelector != null) {
                DefaultTrackSelector.ParametersBuilder buildUpon = StyledPlayerControlView.this.trackSelector.getParameters().buildUpon();
                for (int i = 0; i < this.rendererIndices.size(); i++) {
                    buildUpon = buildUpon.clearSelectionOverrides(((Integer) this.rendererIndices.get(i)).intValue());
                }
                ((DefaultTrackSelector) Assertions.checkNotNull(StyledPlayerControlView.this.trackSelector)).setParameters(buildUpon);
            }
            StyledPlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, StyledPlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
            StyledPlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void onTrackSelection(String str) {
            StyledPlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, str);
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.TrackSelectionAdapter
        public void init(List<Integer> list, List<TrackInfo> list2, MappingTrackSelector.MappedTrackInfo mappedTrackInfo) {
            boolean z;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    z = false;
                    break;
                }
                int intValue = list.get(i2).intValue();
                TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(intValue);
                if (StyledPlayerControlView.this.trackSelector != null && StyledPlayerControlView.this.trackSelector.getParameters().hasSelectionOverride(intValue, trackGroups)) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (!list2.isEmpty()) {
                if (z) {
                    while (true) {
                        if (i >= list2.size()) {
                            break;
                        }
                        TrackInfo trackInfo = list2.get(i);
                        if (trackInfo.selected) {
                            StyledPlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, trackInfo.trackName);
                            break;
                        }
                        i++;
                    }
                } else {
                    StyledPlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, StyledPlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
                }
            } else {
                StyledPlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, StyledPlayerControlView.this.getResources().getString(R.string.exo_track_selection_none));
            }
            this.rendererIndices = list;
            this.tracks = list2;
            this.mappedTrackInfo = mappedTrackInfo;
        }
    }

    /* loaded from: classes2.dex */
    public abstract class TrackSelectionAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        protected List<Integer> rendererIndices = new ArrayList();
        protected List<TrackInfo> tracks = new ArrayList();
        protected MappingTrackSelector.MappedTrackInfo mappedTrackInfo = null;

        public abstract void init(List<Integer> list, List<TrackInfo> list2, MappingTrackSelector.MappedTrackInfo mappedTrackInfo);

        public abstract void onBindViewHolderAtZeroPosition(SubSettingViewHolder subSettingViewHolder);

        public abstract void onTrackSelection(String str);

        public TrackSelectionAdapter() {
            StyledPlayerControlView.this = r1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SubSettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new SubSettingViewHolder(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i) {
            if (StyledPlayerControlView.this.trackSelector != null && this.mappedTrackInfo != null) {
                if (i == 0) {
                    onBindViewHolderAtZeroPosition(subSettingViewHolder);
                    return;
                }
                boolean z = true;
                TrackInfo trackInfo = this.tracks.get(i - 1);
                int i2 = 0;
                if (!((DefaultTrackSelector) Assertions.checkNotNull(StyledPlayerControlView.this.trackSelector)).getParameters().hasSelectionOverride(trackInfo.rendererIndex, this.mappedTrackInfo.getTrackGroups(trackInfo.rendererIndex)) || !trackInfo.selected) {
                    z = false;
                }
                subSettingViewHolder.textView.setText(trackInfo.trackName);
                View view = subSettingViewHolder.checkView;
                if (!z) {
                    i2 = 4;
                }
                view.setVisibility(i2);
                subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener(trackInfo) { // from class: com.google.android.exoplayer2.ui.-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k
                    private final /* synthetic */ StyledPlayerControlView.TrackInfo f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        StyledPlayerControlView.TrackSelectionAdapter.this.lambda$onBindViewHolder$0$StyledPlayerControlView$TrackSelectionAdapter(this.f$1, view2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onBindViewHolder$0$StyledPlayerControlView$TrackSelectionAdapter(TrackInfo trackInfo, View view) {
            if (!(this.mappedTrackInfo == null || StyledPlayerControlView.this.trackSelector == null)) {
                DefaultTrackSelector.ParametersBuilder buildUpon = StyledPlayerControlView.this.trackSelector.getParameters().buildUpon();
                for (int i = 0; i < this.rendererIndices.size(); i++) {
                    int intValue = this.rendererIndices.get(i).intValue();
                    if (intValue == trackInfo.rendererIndex) {
                        buildUpon = buildUpon.setSelectionOverride(intValue, ((MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(this.mappedTrackInfo)).getTrackGroups(intValue), new DefaultTrackSelector.SelectionOverride(trackInfo.groupIndex, trackInfo.trackIndex)).setRendererDisabled(intValue, false);
                    } else {
                        buildUpon = buildUpon.clearSelectionOverrides(intValue).setRendererDisabled(intValue, true);
                    }
                }
                ((DefaultTrackSelector) Assertions.checkNotNull(StyledPlayerControlView.this.trackSelector)).setParameters(buildUpon);
                onTrackSelection(trackInfo.trackName);
                StyledPlayerControlView.this.settingsWindow.dismiss();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.tracks.isEmpty()) {
                return 0;
            }
            return this.tracks.size() + 1;
        }

        public void clear() {
            this.tracks = Collections.emptyList();
            this.mappedTrackInfo = null;
        }
    }

    /* loaded from: classes2.dex */
    public static class SubSettingViewHolder extends RecyclerView.ViewHolder {
        public final View checkView;
        public final TextView textView;

        public SubSettingViewHolder(View view) {
            super(view);
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.textView = (TextView) view.findViewById(R.id.exo_text);
            this.checkView = view.findViewById(R.id.exo_check);
        }
    }
}
