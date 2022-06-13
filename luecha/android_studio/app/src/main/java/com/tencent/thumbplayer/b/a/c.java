package com.tencent.thumbplayer.b.a;

import com.tencent.thumbplayer.api.TPNativeException;
import com.tencent.thumbplayer.api.capability.TPCapability;
import com.tencent.thumbplayer.api.capability.TPVCodecCapabilityForGet;
import com.tencent.thumbplayer.b.a.d;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.l;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c {
    private void a(d.a aVar, a aVar2) {
        TPVCodecCapabilityForGet b = b();
        if (b != null) {
            aVar.a = b.getMaxProfile();
            aVar.b = b.getMaxLevel();
        }
        aVar.a(aVar2);
    }

    private void a(d.b bVar, a aVar) {
        bVar.c = TPSystemInfo.SDK_INT;
        bVar.a = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        bVar.b = TPPlayerConfig.getPlatform();
        bVar.d = String.format("Android %s", TPSystemInfo.getOsVersion());
        bVar.e = String.format("%s_%s", TPSystemInfo.getDeviceManufacturer(), TPSystemInfo.getDeviceName());
        bVar.g = TPSystemInfo.getCpuHarewareName();
        bVar.a(aVar);
    }

    private void a(d.c cVar, a aVar) {
        TPVCodecCapabilityForGet d = d();
        if (d != null) {
            cVar.a = d.getMaxProfile();
            cVar.b = d.getMaxLevel();
        }
        cVar.a(aVar);
    }

    private void a(d.C0039d dVar, a aVar) {
        TPVCodecCapabilityForGet c = c();
        if (c != null) {
            dVar.a = c.getMaxProfile();
            dVar.b = c.getMaxLevel();
        }
        dVar.a(aVar);
    }

    private static TPVCodecCapabilityForGet b() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(1029, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet c() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(166, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet d() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(172, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private void e() {
        d dVar = new d();
        l lVar = new l();
        a(dVar.a(), lVar);
        a(dVar.b(), lVar);
        a(dVar.c(), lVar);
        a(dVar.d(), lVar);
        TPLogUtil.i("TPDeviceCapabilityReportManager", "device capability report:" + lVar.toString());
        b.a("tp_common_device_cap", lVar);
    }

    public void a() {
        e();
    }
}
