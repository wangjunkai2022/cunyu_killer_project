package com.google.android.exoplayer2.offline;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.exoplayer2.offline.DownloadManager;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.scheduler.Scheduler;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class DownloadService extends Service {
    public static final String ACTION_ADD_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD";
    public static final String ACTION_INIT = "com.google.android.exoplayer.downloadService.action.INIT";
    public static final String ACTION_PAUSE_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS";
    public static final String ACTION_REMOVE_ALL_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";
    public static final String ACTION_REMOVE_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD";
    private static final String ACTION_RESTART = "com.google.android.exoplayer.downloadService.action.RESTART";
    public static final String ACTION_RESUME_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS";
    public static final String ACTION_SET_REQUIREMENTS = "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS";
    public static final String ACTION_SET_STOP_REASON = "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON";
    public static final long DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL = 1000;
    public static final int FOREGROUND_NOTIFICATION_ID_NONE = 0;
    public static final String KEY_CONTENT_ID = "content_id";
    public static final String KEY_DOWNLOAD_REQUEST = "download_request";
    public static final String KEY_FOREGROUND = "foreground";
    public static final String KEY_REQUIREMENTS = "requirements";
    public static final String KEY_STOP_REASON = "stop_reason";
    private static final String TAG = "DownloadService";
    private static final HashMap<Class<? extends DownloadService>, DownloadManagerHelper> downloadManagerHelpers = new HashMap<>();
    private final int channelDescriptionResourceId;
    private final String channelId;
    private final int channelNameResourceId;
    private DownloadManager downloadManager;
    private final ForegroundNotificationUpdater foregroundNotificationUpdater;
    private boolean isDestroyed;
    private boolean isStopped;
    private int lastStartId;
    private boolean startedInForeground;
    private boolean taskRemoved;

    public static boolean needsStartedService(int i) {
        return i == 2 || i == 5 || i == 7;
    }

    protected abstract DownloadManager getDownloadManager();

    protected abstract Notification getForegroundNotification(List<Download> list);

    protected abstract Scheduler getScheduler();

    @Deprecated
    protected void onDownloadChanged(Download download) {
    }

    @Deprecated
    protected void onDownloadRemoved(Download download) {
    }

    protected DownloadService(int i) {
        this(i, 1000);
    }

    protected DownloadService(int i, long j) {
        this(i, j, null, 0, 0);
    }

    @Deprecated
    protected DownloadService(int i, long j, String str, int i2) {
        this(i, j, str, i2, 0);
    }

    protected DownloadService(int i, long j, String str, int i2, int i3) {
        if (i == 0) {
            this.foregroundNotificationUpdater = null;
            this.channelId = null;
            this.channelNameResourceId = 0;
            this.channelDescriptionResourceId = 0;
            return;
        }
        this.foregroundNotificationUpdater = new ForegroundNotificationUpdater(i, j);
        this.channelId = str;
        this.channelNameResourceId = i2;
        this.channelDescriptionResourceId = i3;
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        return buildAddDownloadIntent(context, cls, downloadRequest, 0, z);
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        return getIntent(context, cls, ACTION_ADD_DOWNLOAD, z).putExtra(KEY_DOWNLOAD_REQUEST, downloadRequest).putExtra(KEY_STOP_REASON, i);
    }

    public static Intent buildRemoveDownloadIntent(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_DOWNLOAD, z).putExtra(KEY_CONTENT_ID, str);
    }

    public static Intent buildRemoveAllDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_ALL_DOWNLOADS, z);
    }

    public static Intent buildResumeDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_RESUME_DOWNLOADS, z);
    }

    public static Intent buildPauseDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_PAUSE_DOWNLOADS, z);
    }

    public static Intent buildSetStopReasonIntent(Context context, Class<? extends DownloadService> cls, String str, int i, boolean z) {
        return getIntent(context, cls, ACTION_SET_STOP_REASON, z).putExtra(KEY_CONTENT_ID, str).putExtra(KEY_STOP_REASON, i);
    }

    public static Intent buildSetRequirementsIntent(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        return getIntent(context, cls, ACTION_SET_REQUIREMENTS, z).putExtra(KEY_REQUIREMENTS, requirements);
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, z), z);
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, i, z), z);
    }

    public static void sendRemoveDownload(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        startService(context, buildRemoveDownloadIntent(context, cls, str, z), z);
    }

    public static void sendRemoveAllDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildRemoveAllDownloadsIntent(context, cls, z), z);
    }

    public static void sendResumeDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildResumeDownloadsIntent(context, cls, z), z);
    }

    public static void sendPauseDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildPauseDownloadsIntent(context, cls, z), z);
    }

    public static void sendSetStopReason(Context context, Class<? extends DownloadService> cls, String str, int i, boolean z) {
        startService(context, buildSetStopReasonIntent(context, cls, str, i, z), z);
    }

    public static void sendSetRequirements(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        startService(context, buildSetRequirementsIntent(context, cls, requirements, z), z);
    }

    public static void start(Context context, Class<? extends DownloadService> cls) {
        context.startService(getIntent(context, cls, ACTION_INIT));
    }

    public static void startForeground(Context context, Class<? extends DownloadService> cls) {
        Util.startForegroundService(context, getIntent(context, cls, ACTION_INIT, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public void onCreate() {
        String str = this.channelId;
        if (str != null) {
            NotificationUtil.createNotificationChannel(this, str, this.channelNameResourceId, this.channelDescriptionResourceId, 2);
        }
        Class<?> cls = getClass();
        DownloadManagerHelper downloadManagerHelper = downloadManagerHelpers.get(cls);
        if (downloadManagerHelper == null) {
            boolean z = this.foregroundNotificationUpdater != null;
            Scheduler scheduler = z ? getScheduler() : null;
            this.downloadManager = getDownloadManager();
            this.downloadManager.resumeDownloads();
            downloadManagerHelper = new DownloadManagerHelper(getApplicationContext(), this.downloadManager, z, scheduler, cls);
            downloadManagerHelpers.put(cls, downloadManagerHelper);
        } else {
            this.downloadManager = downloadManagerHelper.downloadManager;
        }
        downloadManagerHelper.attachService(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        char c;
        ForegroundNotificationUpdater foregroundNotificationUpdater;
        String str2;
        this.lastStartId = i2;
        this.taskRemoved = false;
        String str3 = null;
        if (intent != null) {
            str3 = intent.getAction();
            str = intent.getStringExtra(KEY_CONTENT_ID);
            this.startedInForeground |= intent.getBooleanExtra(KEY_FOREGROUND, false) || ACTION_RESTART.equals(str3);
        } else {
            str = null;
        }
        if (str3 == null) {
            str3 = ACTION_INIT;
        }
        DownloadManager downloadManager = (DownloadManager) Assertions.checkNotNull(this.downloadManager);
        switch (str3.hashCode()) {
            case -1931239035:
                if (str3.equals(ACTION_ADD_DOWNLOAD)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -932047176:
                if (str3.equals(ACTION_RESUME_DOWNLOADS)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -871181424:
                if (str3.equals(ACTION_RESTART)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -650547439:
                if (str3.equals(ACTION_REMOVE_ALL_DOWNLOADS)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -119057172:
                if (str3.equals(ACTION_SET_REQUIREMENTS)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 191112771:
                if (str3.equals(ACTION_PAUSE_DOWNLOADS)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 671523141:
                if (str3.equals(ACTION_SET_STOP_REASON)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1015676687:
                if (str3.equals(ACTION_INIT)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1547520644:
                if (str3.equals(ACTION_REMOVE_DOWNLOAD)) {
                    c = 3;
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
            case 1:
                break;
            case 2:
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra(KEY_DOWNLOAD_REQUEST);
                if (downloadRequest != null) {
                    downloadManager.addDownload(downloadRequest, intent.getIntExtra(KEY_STOP_REASON, 0));
                    break;
                } else {
                    Log.e(TAG, "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
            case 3:
                if (str != null) {
                    downloadManager.removeDownload(str);
                    break;
                } else {
                    Log.e(TAG, "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
            case 4:
                downloadManager.removeAllDownloads();
                break;
            case 5:
                downloadManager.resumeDownloads();
                break;
            case 6:
                downloadManager.pauseDownloads();
                break;
            case 7:
                if (((Intent) Assertions.checkNotNull(intent)).hasExtra(KEY_STOP_REASON)) {
                    downloadManager.setStopReason(str, intent.getIntExtra(KEY_STOP_REASON, 0));
                    break;
                } else {
                    Log.e(TAG, "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                }
            case '\b':
                Requirements requirements = (Requirements) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra(KEY_REQUIREMENTS);
                if (requirements != null) {
                    Scheduler scheduler = getScheduler();
                    if (scheduler != null) {
                        Requirements supportedRequirements = scheduler.getSupportedRequirements(requirements);
                        if (!supportedRequirements.equals(requirements)) {
                            StringBuilder sb = new StringBuilder(65);
                            sb.append("Ignoring requirements not supported by the Scheduler: ");
                            sb.append(requirements.getRequirements() ^ supportedRequirements.getRequirements());
                            Log.w(TAG, sb.toString());
                            requirements = supportedRequirements;
                        }
                    }
                    downloadManager.setRequirements(requirements);
                    break;
                } else {
                    Log.e(TAG, "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
            default:
                String valueOf = String.valueOf(str3);
                if (valueOf.length() != 0) {
                    str2 = "Ignored unrecognized action: ".concat(valueOf);
                } else {
                    str2 = new String("Ignored unrecognized action: ");
                }
                Log.e(TAG, str2);
                break;
        }
        if (Util.SDK_INT >= 26 && this.startedInForeground && (foregroundNotificationUpdater = this.foregroundNotificationUpdater) != null) {
            foregroundNotificationUpdater.showNotificationIfNotAlready();
        }
        this.isStopped = false;
        if (downloadManager.isIdle()) {
            stop();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.taskRemoved = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.isDestroyed = true;
        ((DownloadManagerHelper) Assertions.checkNotNull(downloadManagerHelpers.get(getClass()))).detachService(this);
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    protected final void invalidateForegroundNotification() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null && !this.isDestroyed) {
            foregroundNotificationUpdater.invalidate();
        }
    }

    public void notifyDownloads(List<Download> list) {
        if (this.foregroundNotificationUpdater != null) {
            for (int i = 0; i < list.size(); i++) {
                if (needsStartedService(list.get(i).state)) {
                    this.foregroundNotificationUpdater.startPeriodicUpdates();
                    return;
                }
            }
        }
    }

    public void notifyDownloadChanged(Download download) {
        onDownloadChanged(download);
        if (this.foregroundNotificationUpdater == null) {
            return;
        }
        if (needsStartedService(download.state)) {
            this.foregroundNotificationUpdater.startPeriodicUpdates();
        } else {
            this.foregroundNotificationUpdater.invalidate();
        }
    }

    public void notifyDownloadRemoved(Download download) {
        onDownloadRemoved(download);
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.invalidate();
        }
    }

    public boolean isStopped() {
        return this.isStopped;
    }

    public void stop() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
        if (Util.SDK_INT >= 28 || !this.taskRemoved) {
            this.isStopped |= stopSelfResult(this.lastStartId);
            return;
        }
        stopSelf();
        this.isStopped = true;
    }

    private static Intent getIntent(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return getIntent(context, cls, str).putExtra(KEY_FOREGROUND, z);
    }

    public static Intent getIntent(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    private static void startService(Context context, Intent intent, boolean z) {
        if (z) {
            Util.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    /* loaded from: classes4.dex */
    public final class ForegroundNotificationUpdater {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private boolean notificationDisplayed;
        private final int notificationId;
        private boolean periodicUpdatesStarted;
        private final long updateInterval;

        /* renamed from: lambda$eUq1qNHKGaEQxl_qKPR-_tfIa8c */
        public static /* synthetic */ void m28lambda$eUq1qNHKGaEQxl_qKPR_tfIa8c(ForegroundNotificationUpdater foregroundNotificationUpdater) {
            foregroundNotificationUpdater.update();
        }

        public ForegroundNotificationUpdater(int i, long j) {
            DownloadService.this = r1;
            this.notificationId = i;
            this.updateInterval = j;
        }

        public void startPeriodicUpdates() {
            this.periodicUpdatesStarted = true;
            update();
        }

        public void stopPeriodicUpdates() {
            this.periodicUpdatesStarted = false;
            this.handler.removeCallbacksAndMessages(null);
        }

        public void showNotificationIfNotAlready() {
            if (!this.notificationDisplayed) {
                update();
            }
        }

        public void invalidate() {
            if (this.notificationDisplayed) {
                update();
            }
        }

        public void update() {
            List<Download> currentDownloads = ((DownloadManager) Assertions.checkNotNull(DownloadService.this.downloadManager)).getCurrentDownloads();
            DownloadService downloadService = DownloadService.this;
            downloadService.startForeground(this.notificationId, downloadService.getForegroundNotification(currentDownloads));
            this.notificationDisplayed = true;
            if (this.periodicUpdatesStarted) {
                this.handler.removeCallbacksAndMessages(null);
                this.handler.postDelayed(new Runnable() { // from class: com.google.android.exoplayer2.offline.-$$Lambda$DownloadService$ForegroundNotificationUpdater$eUq1qNHKGaEQxl_qKPR-_tfIa8c
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.ForegroundNotificationUpdater.m28lambda$eUq1qNHKGaEQxl_qKPR_tfIa8c(DownloadService.ForegroundNotificationUpdater.this);
                    }
                }, this.updateInterval);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class DownloadManagerHelper implements DownloadManager.Listener {
        private final Context context;
        private final DownloadManager downloadManager;
        private DownloadService downloadService;
        private final boolean foregroundAllowed;
        private final Scheduler scheduler;
        private final Class<? extends DownloadService> serviceClass;

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public /* synthetic */ void onDownloadsPausedChanged(DownloadManager downloadManager, boolean z) {
            DownloadManager.Listener.CC.$default$onDownloadsPausedChanged(this, downloadManager, z);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public /* synthetic */ void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
            DownloadManager.Listener.CC.$default$onRequirementsStateChanged(this, downloadManager, requirements, i);
        }

        private DownloadManagerHelper(Context context, DownloadManager downloadManager, boolean z, Scheduler scheduler, Class<? extends DownloadService> cls) {
            this.context = context;
            this.downloadManager = downloadManager;
            this.foregroundAllowed = z;
            this.scheduler = scheduler;
            this.serviceClass = cls;
            downloadManager.addListener(this);
            updateScheduler();
        }

        public void attachService(DownloadService downloadService) {
            Assertions.checkState(this.downloadService == null);
            this.downloadService = downloadService;
            if (this.downloadManager.isInitialized()) {
                Util.createHandlerForCurrentOrMainLooper().postAtFrontOfQueue(new Runnable(downloadService) { // from class: com.google.android.exoplayer2.offline.-$$Lambda$DownloadService$DownloadManagerHelper$Xq9wBYIDnVco2tFdAraQ883Ld78
                    private final /* synthetic */ DownloadService f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.DownloadManagerHelper.this.lambda$attachService$0$DownloadService$DownloadManagerHelper(this.f$1);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$attachService$0$DownloadService$DownloadManagerHelper(DownloadService downloadService) {
            downloadService.notifyDownloads(this.downloadManager.getCurrentDownloads());
        }

        public void detachService(DownloadService downloadService) {
            Assertions.checkState(this.downloadService == downloadService);
            this.downloadService = null;
            if (this.scheduler != null && !this.downloadManager.isWaitingForRequirements()) {
                this.scheduler.cancel();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onInitialized(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloads(downloadManager.getCurrentDownloads());
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadChanged(DownloadManager downloadManager, Download download, Exception exc) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadChanged(download);
            }
            if (serviceMayNeedRestart() && DownloadService.needsStartedService(download.state)) {
                Log.w(DownloadService.TAG, "DownloadService wasn't running. Restarting.");
                restartService();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadRemoved(DownloadManager downloadManager, Download download) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadRemoved(download);
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public final void onIdle(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.stop();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
            if (!z && !downloadManager.getDownloadsPaused() && serviceMayNeedRestart()) {
                List<Download> currentDownloads = downloadManager.getCurrentDownloads();
                int i = 0;
                while (true) {
                    if (i >= currentDownloads.size()) {
                        break;
                    } else if (currentDownloads.get(i).state == 0) {
                        restartService();
                        break;
                    } else {
                        i++;
                    }
                }
            }
            updateScheduler();
        }

        private boolean serviceMayNeedRestart() {
            DownloadService downloadService = this.downloadService;
            return downloadService == null || downloadService.isStopped();
        }

        private void restartService() {
            if (this.foregroundAllowed) {
                Util.startForegroundService(this.context, DownloadService.getIntent(this.context, this.serviceClass, DownloadService.ACTION_RESTART));
                return;
            }
            try {
                this.context.startService(DownloadService.getIntent(this.context, this.serviceClass, DownloadService.ACTION_INIT));
            } catch (IllegalStateException unused) {
                Log.w(DownloadService.TAG, "Failed to restart DownloadService (process is idle).");
            }
        }

        private void updateScheduler() {
            if (this.scheduler != null) {
                if (this.downloadManager.isWaitingForRequirements()) {
                    String packageName = this.context.getPackageName();
                    if (!this.scheduler.schedule(this.downloadManager.getRequirements(), packageName, DownloadService.ACTION_RESTART)) {
                        Log.e(DownloadService.TAG, "Scheduling downloads failed.");
                        return;
                    }
                    return;
                }
                this.scheduler.cancel();
            }
        }
    }
}
