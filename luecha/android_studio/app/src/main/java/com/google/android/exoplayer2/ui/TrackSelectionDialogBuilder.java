package com.google.android.exoplayer2.ui;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public final class TrackSelectionDialogBuilder {
    private boolean allowAdaptiveSelections;
    private boolean allowMultipleOverrides;
    private final DialogCallback callback;
    private final Context context;
    private boolean isDisabled;
    private final MappingTrackSelector.MappedTrackInfo mappedTrackInfo;
    private List<DefaultTrackSelector.SelectionOverride> overrides;
    private final int rendererIndex;
    private boolean showDisableOption;
    private int themeResId;
    private final CharSequence title;
    private Comparator<Format> trackFormatComparator;
    private TrackNameProvider trackNameProvider;

    /* loaded from: classes2.dex */
    public interface DialogCallback {
        void onTracksSelected(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int i, DialogCallback dialogCallback) {
        this.context = context;
        this.title = charSequence;
        this.mappedTrackInfo = mappedTrackInfo;
        this.rendererIndex = i;
        this.callback = dialogCallback;
        this.overrides = Collections.emptyList();
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, DefaultTrackSelector defaultTrackSelector, int i) {
        this.context = context;
        this.title = charSequence;
        this.mappedTrackInfo = (MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(defaultTrackSelector.getCurrentMappedTrackInfo());
        this.rendererIndex = i;
        TrackGroupArray trackGroups = this.mappedTrackInfo.getTrackGroups(i);
        DefaultTrackSelector.Parameters parameters = defaultTrackSelector.getParameters();
        this.isDisabled = parameters.getRendererDisabled(i);
        DefaultTrackSelector.SelectionOverride selectionOverride = parameters.getSelectionOverride(i, trackGroups);
        this.overrides = selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride);
        this.callback = new DialogCallback(parameters, i, trackGroups) { // from class: com.google.android.exoplayer2.ui.-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk
            private final /* synthetic */ DefaultTrackSelector.Parameters f$1;
            private final /* synthetic */ int f$2;
            private final /* synthetic */ TrackGroupArray f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            @Override // com.google.android.exoplayer2.ui.TrackSelectionDialogBuilder.DialogCallback
            public final void onTracksSelected(boolean z, List list) {
                DefaultTrackSelector.this.setParameters(TrackSelectionUtil.updateParametersWithOverride(this.f$1, this.f$2, this.f$3, z, r6.isEmpty() ? null : (DefaultTrackSelector.SelectionOverride) list.get(0)));
            }
        };
    }

    public TrackSelectionDialogBuilder setTheme(int i) {
        this.themeResId = i;
        return this;
    }

    public TrackSelectionDialogBuilder setIsDisabled(boolean z) {
        this.isDisabled = z;
        return this;
    }

    public TrackSelectionDialogBuilder setOverride(DefaultTrackSelector.SelectionOverride selectionOverride) {
        return setOverrides(selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride));
    }

    public TrackSelectionDialogBuilder setOverrides(List<DefaultTrackSelector.SelectionOverride> list) {
        this.overrides = list;
        return this;
    }

    public TrackSelectionDialogBuilder setAllowAdaptiveSelections(boolean z) {
        this.allowAdaptiveSelections = z;
        return this;
    }

    public TrackSelectionDialogBuilder setAllowMultipleOverrides(boolean z) {
        this.allowMultipleOverrides = z;
        return this;
    }

    public TrackSelectionDialogBuilder setShowDisableOption(boolean z) {
        this.showDisableOption = z;
        return this;
    }

    public void setTrackFormatComparator(Comparator<Format> comparator) {
        this.trackFormatComparator = comparator;
    }

    public TrackSelectionDialogBuilder setTrackNameProvider(TrackNameProvider trackNameProvider) {
        this.trackNameProvider = trackNameProvider;
        return this;
    }

    public Dialog build() {
        Dialog buildForAndroidX = buildForAndroidX();
        return buildForAndroidX == null ? buildForPlatform() : buildForAndroidX;
    }

    private Dialog buildForPlatform() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context, this.themeResId);
        View inflate = LayoutInflater.from(builder.getContext()).inflate(R.layout.exo_track_selection_dialog, (ViewGroup) null);
        return builder.setTitle(this.title).setView(inflate).setPositiveButton(17039370, setUpDialogView(inflate)).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
    }

    private Dialog buildForAndroidX() {
        try {
            Class<?> cls = Class.forName("androidx.appcompat.app.AlertDialog$Builder");
            Object newInstance = cls.getConstructor(Context.class, Integer.TYPE).newInstance(this.context, Integer.valueOf(this.themeResId));
            View inflate = LayoutInflater.from((Context) cls.getMethod("getContext", new Class[0]).invoke(newInstance, new Object[0])).inflate(R.layout.exo_track_selection_dialog, (ViewGroup) null);
            DialogInterface.OnClickListener upDialogView = setUpDialogView(inflate);
            cls.getMethod("setTitle", CharSequence.class).invoke(newInstance, this.title);
            cls.getMethod("setView", View.class).invoke(newInstance, inflate);
            cls.getMethod("setPositiveButton", Integer.TYPE, DialogInterface.OnClickListener.class).invoke(newInstance, 17039370, upDialogView);
            cls.getMethod("setNegativeButton", Integer.TYPE, DialogInterface.OnClickListener.class).invoke(newInstance, 17039360, null);
            return (Dialog) cls.getMethod("create", new Class[0]).invoke(newInstance, new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private DialogInterface.OnClickListener setUpDialogView(View view) {
        TrackSelectionView trackSelectionView = (TrackSelectionView) view.findViewById(R.id.exo_track_selection_view);
        trackSelectionView.setAllowMultipleOverrides(this.allowMultipleOverrides);
        trackSelectionView.setAllowAdaptiveSelections(this.allowAdaptiveSelections);
        trackSelectionView.setShowDisableOption(this.showDisableOption);
        TrackNameProvider trackNameProvider = this.trackNameProvider;
        if (trackNameProvider != null) {
            trackSelectionView.setTrackNameProvider(trackNameProvider);
        }
        trackSelectionView.init(this.mappedTrackInfo, this.rendererIndex, this.isDisabled, this.overrides, this.trackFormatComparator, null);
        return new DialogInterface.OnClickListener(trackSelectionView) { // from class: com.google.android.exoplayer2.ui.-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY
            private final /* synthetic */ TrackSelectionView f$1;

            {
                this.f$1 = r2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                TrackSelectionDialogBuilder.this.lambda$setUpDialogView$1$TrackSelectionDialogBuilder(this.f$1, dialogInterface, i);
            }
        };
    }

    public /* synthetic */ void lambda$setUpDialogView$1$TrackSelectionDialogBuilder(TrackSelectionView trackSelectionView, DialogInterface dialogInterface, int i) {
        this.callback.onTracksSelected(trackSelectionView.getIsDisabled(), trackSelectionView.getOverrides());
    }
}
