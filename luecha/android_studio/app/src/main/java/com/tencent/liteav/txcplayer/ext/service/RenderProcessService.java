package com.tencent.liteav.txcplayer.ext.service;

import android.content.Context;
import android.view.Surface;
import com.tencent.liteav.basic.license.LicenceCheck;
import com.tencent.liteav.basic.license.e;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.ext.host.HostEngine;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class RenderProcessService {
    private static final String TAG = "HostEngine-RenderProcessService";
    private static RenderProcessService mInstance;
    private boolean mEnableRenderProcess = true;

    private RenderProcessService() {
    }

    public static RenderProcessService getInstance() {
        if (mInstance == null) {
            synchronized (RenderProcessService.class) {
                if (mInstance == null) {
                    mInstance = new RenderProcessService();
                }
            }
        }
        return mInstance;
    }

    public void checkInit(Context context) {
        HostEngine.getInstance().init(context);
    }

    public int getVodLicenseFeature() {
        Context appContext = HostEngine.getInstance().getAppContext();
        if (appContext == null) {
            TXCLog.e("HostEngine-RenderProcessService", "Host engine not init!!");
            return 0;
        }
        int a = LicenceCheck.a().a(new e(), appContext);
        TXCLog.d("HostEngine-RenderProcessService", "checkVodLicense, checkErrCode = " + a);
        if (a == 0) {
            return LicenceCheck.a().b();
        }
        return 0;
    }

    public boolean canRenderProcessWork() {
        if (!isEnableRenderProcess()) {
            TXCLog.i("HostEngine-RenderProcessService", "[canRenderProcessWork],isEnableRenderProcess == false !!!");
            return false;
        } else if (!HostEngine.getInstance().checkAndLoadPlugin(2)) {
            TXCLog.i("HostEngine-RenderProcessService", "[canRenderProcessWork],isEnableRenderProcess == false !!!");
            return false;
        } else {
            HashMap hashMap = new HashMap();
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 104, null, hashMap);
            Object obj = hashMap.get("KEY_RET_PARAM1");
            if (!((obj == null || !(obj instanceof Boolean)) ? false : ((Boolean) obj).booleanValue())) {
                TXCLog.i("HostEngine-RenderProcessService", "[canRenderProcessWork],IS_SUPPORT_RESOLUTION == false !!!");
                return false;
            }
            TXCLog.i("HostEngine-RenderProcessService", "[canRenderProcessWork], finally return true");
            return true;
        }
    }

    public boolean connectPlayer(ITXVCubePlayer iTXVCubePlayer, Surface surface) {
        if (iTXVCubePlayer == null || surface == null) {
            TXCLog.e("HostEngine-RenderProcessService", "connectPlayer invalid param player or surface is null !!!");
            return false;
        } else if (!canRenderProcessWork()) {
            TXCLog.e("HostEngine-RenderProcessService", "connectPlayer，postProcessService can not work!!");
            return false;
        } else {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap.put("KEY_PARAM1", iTXVCubePlayer);
            hashMap.put("KEY_PARAM2", surface);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 100, hashMap, hashMap2);
            Boolean bool = Boolean.FALSE;
            Object obj = hashMap2.get("KEY_RET_PARAM1");
            if (obj != null && (obj instanceof Boolean)) {
                bool = (Boolean) obj;
            }
            return bool.booleanValue();
        }
    }

    public boolean setSurfaceBufferSize(ITXVCubePlayer iTXVCubePlayer) {
        if (iTXVCubePlayer == null) {
            TXCLog.e("HostEngine-RenderProcessService", "setSurfaceBufferSize invalid param player is null !!!");
            return false;
        } else if (!canRenderProcessWork()) {
            TXCLog.e("HostEngine-RenderProcessService", "setSurfaceBufferSize，postProcessService can not work!!");
            return false;
        } else {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap.put("KEY_PARAM1", iTXVCubePlayer);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 101, hashMap, hashMap2);
            Boolean bool = Boolean.FALSE;
            Object obj = hashMap2.get("KEY_RET_PARAM1");
            if (obj != null && (obj instanceof Boolean)) {
                bool = (Boolean) obj;
            }
            return bool.booleanValue();
        }
    }

    public void stopRenderProcess(ITXVCubePlayer iTXVCubePlayer) {
        if (canRenderProcessWork()) {
            if (iTXVCubePlayer == null) {
                TXCLog.e("HostEngine-RenderProcessService", "stopRenderProcess invalid param player is null !!!");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("KEY_PARAM1", iTXVCubePlayer);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 103, hashMap, null);
        }
    }

    public void updateRenderProcessMode(ITXVCubePlayer iTXVCubePlayer, int i) {
        if (!canRenderProcessWork()) {
            TXCLog.e("HostEngine-RenderProcessService", "updatePostProcessMode，postProcessService can not work!!");
        } else if (iTXVCubePlayer == null) {
            TXCLog.e("HostEngine-RenderProcessService", "updatePostProcessMode invalid param player is null !!!");
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put("KEY_PARAM1", iTXVCubePlayer);
            hashMap.put("KEY_PARAM2", Integer.valueOf(i));
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 102, hashMap, null);
        }
    }

    public boolean isEnableRenderProcess() {
        return this.mEnableRenderProcess;
    }

    public void setEnableRenderProcess(boolean z) {
        TXCLog.d("HostEngine-RenderProcessService", "setEnableRenderProcess: " + z);
        this.mEnableRenderProcess = z;
    }
}
