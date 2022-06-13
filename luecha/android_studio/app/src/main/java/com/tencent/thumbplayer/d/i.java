package com.tencent.thumbplayer.d;

import android.text.TextUtils;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static TPDownloadParam a(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        ArrayList<Map<String, String>> arrayList = null;
        if (tPDownloadParamData != null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            if (tPDownloadParamData.getUrlCdnidList() == null || tPDownloadParamData.getUrlCdnidList().isEmpty()) {
                if (TextUtils.isEmpty(str)) {
                    str = tPDownloadParamData.url;
                }
                arrayList2.add(str);
                String[] bakUrl = tPDownloadParamData.getBakUrl();
                if (bakUrl != null && bakUrl.length > 0) {
                    for (int i = 0; i < bakUrl.length; i++) {
                        if (!TextUtils.isEmpty(bakUrl[i])) {
                            arrayList2.add(bakUrl[i]);
                        }
                    }
                }
                if (map != null) {
                    arrayList = new ArrayList<>();
                    arrayList.add(map);
                }
            } else {
                arrayList2 = tPDownloadParamData.getUrlCdnidList();
                arrayList = tPDownloadParamData.getUrlCdnidHttpHeaderList();
            }
            HashMap hashMap = new HashMap();
            if (!TextUtils.isEmpty(tPDownloadParamData.getFlowId())) {
                TPLogUtil.i("TPProxyUtils", tPDownloadParamData.getFlowId());
                hashMap.put("dl_param_play_flowid", tPDownloadParamData.getFlowId());
            }
            if (tPDownloadParamData.getUrlExpireTime() > 0) {
                hashMap.put("dl_param_url_expire_time", Integer.valueOf(tPDownloadParamData.getUrlExpireTime()));
            }
            if (tPDownloadParamData.getFileSize() > 0) {
                hashMap.put("dl_param_file_size", Long.valueOf(tPDownloadParamData.getFileSize()));
            }
            if (tPDownloadParamData.getFileDuration() > 0) {
                hashMap.put("dl_param_file_duration", Long.valueOf(tPDownloadParamData.getFileDuration()));
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getDownloadFileID())) {
                hashMap.put("dl_param_play_keyid", tPDownloadParamData.getDownloadFileID());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getVid())) {
                hashMap.put("dl_param_vid", tPDownloadParamData.getVid());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getPlayDefinition())) {
                hashMap.put("dl_param_play_definition", tPDownloadParamData.getPlayDefinition());
                hashMap.put("dl_param_current_format", tPDownloadParamData.getPlayDefinition());
            }
            if (tPDownloadParamData.getCurrentFormatID() > 0) {
                hashMap.put("dl_param_current_formatid", Integer.valueOf(tPDownloadParamData.getCurrentFormatID()));
            }
            if (!b.a(tPDownloadParamData.getFormatInfo())) {
                hashMap.put("dl_param_format_info", tPDownloadParamData.getFormatInfo());
            }
            hashMap.put("dl_param_source_is_charge", Boolean.valueOf(tPDownloadParamData.isCharge()));
            hashMap.put("dl_param_cache_need_encrypt", Boolean.valueOf(tPDownloadParamData.isNeedEncryptCache()));
            hashMap.put("dl_param_is_offline", Boolean.valueOf(tPDownloadParamData.isOffline()));
            hashMap.put("dl_param_enable_expand_donwload_url", Boolean.valueOf(tPDownloadParamData.isExtraParam()));
            if (arrayList != null && !arrayList.isEmpty()) {
                hashMap.put("dl_param_url_header", arrayList);
            }
            if (tPDownloadParamData.getPreloadSize() > 0) {
                hashMap.put("dl_param_preload_size", Long.valueOf(tPDownloadParamData.getPreloadSize()));
            }
            if (tPDownloadParamData.getPreloadDuration() > 0) {
                hashMap.put("dl_param_preload_duration", Long.valueOf(tPDownloadParamData.getPreloadDuration()));
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getSavePath())) {
                hashMap.put("dl_param_save_path", tPDownloadParamData.getSavePath());
            }
            if (tPDownloadParamData.getStarTimeMS() > 0) {
                hashMap.put("dl_param_play_start_time", Integer.valueOf(tPDownloadParamData.getStarTimeMS()));
            }
            if (tPDownloadParamData.getEndTimeMS() > 0) {
                hashMap.put("dl_param_play_end_time", Integer.valueOf(tPDownloadParamData.getEndTimeMS()));
            }
            if (tPDownloadParamData.getClipCount() > 0) {
                hashMap.put("dl_param_play_clip_count", Integer.valueOf(tPDownloadParamData.getClipCount()));
            }
            if (tPDownloadParamData.getClipNo() > 0) {
                hashMap.put("dl_param_play_clip_no", Integer.valueOf(tPDownloadParamData.getClipNo()));
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getBase())) {
                hashMap.put("dl_param_vinfo_base", tPDownloadParamData.getBase());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getLinkVid())) {
                hashMap.put("dl_param_vinfo_link_vid", tPDownloadParamData.getLinkVid());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getFileMD5())) {
                hashMap.put("dl_param_file_md5", tPDownloadParamData.getFileMD5());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getM3u8())) {
                hashMap.put("dl_param_vinfo_m3u8", tPDownloadParamData.getM3u8());
            }
            if (tPDownloadParamData.getTm() > 0) {
                hashMap.put("dl_param_vinfo_tm", Long.valueOf(tPDownloadParamData.getTm()));
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getNonce())) {
                TPLogUtil.i("TPProxyUtils", "nonce:" + tPDownloadParamData.getNonce());
                hashMap.put("dl_param_nonce", tPDownloadParamData.getNonce());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getDecKey())) {
                TPLogUtil.i("TPProxyUtils", "encrypt stream key:" + tPDownloadParamData.getDecKey());
                hashMap.put("dl_param_encrypt_stream_key", tPDownloadParamData.getDecKey());
            }
            if (!TextUtils.isEmpty(tPDownloadParamData.getRandoms())) {
                TPLogUtil.i("TPProxyUtils", "encrypt randoms:" + tPDownloadParamData.getRandoms());
                hashMap.put("dl_param_encrypt_stream_randoms", tPDownloadParamData.getRandoms());
            }
            if (tPDownloadParamData.getFp2p() > 0) {
                hashMap.put("dl_param_vinfo_fp2p", Integer.valueOf(tPDownloadParamData.getFp2p()));
            }
            if (tPDownloadParamData.getTestid() > 0) {
                hashMap.put("dl_param_vinfo_testid", Integer.valueOf(tPDownloadParamData.getTestid()));
            }
            if (tPDownloadParamData.getExceptDelay() > 0) {
                hashMap.put("dl_param_expect_delay_time", Integer.valueOf(tPDownloadParamData.getExceptDelay()));
            }
            if (tPDownloadParamData.getSecondaryM3u8List() != null) {
                hashMap.put("dl_param_vinfo_secondary_m3u8", tPDownloadParamData.getSecondaryM3u8List());
            }
            if (!b.a(tPDownloadParamData.getExtInfoMap())) {
                hashMap.putAll(tPDownloadParamData.getExtInfoMap());
            }
            hashMap.put("dl_param_adaptive_type", tPDownloadParamData.getSelfAdaption() ? 3 : 0);
            hashMap.put("dl_param_format_nodes", tPDownloadParamData.getDefInfoList());
            if (tPDownloadParamData.getPcdnUrlList() != null && !tPDownloadParamData.getPcdnUrlList().isEmpty()) {
                StringBuilder sb = new StringBuilder("");
                Iterator<String> it = tPDownloadParamData.getPcdnUrlList().iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(";");
                }
                if (sb.length() > 0) {
                    sb.deleteCharAt(sb.length() - 1);
                }
                TPLogUtil.i("TPProxyUtils", "pcdn url list: " + sb.toString());
                hashMap.put("dl_param_pcdn_urls", sb.toString());
            }
            if (tPDownloadParamData.getPcdnVtList() != null && !tPDownloadParamData.getPcdnVtList().isEmpty()) {
                StringBuilder sb2 = new StringBuilder("");
                Iterator<Integer> it2 = tPDownloadParamData.getPcdnVtList().iterator();
                while (it2.hasNext()) {
                    sb2.append(it2.next().intValue());
                    sb2.append(";");
                }
                if (sb2.length() > 0) {
                    sb2.deleteCharAt(sb2.length() - 1);
                }
                hashMap.put("dl_param_pcdn_vts", sb2.toString());
            }
            return new TPDownloadParam(arrayList2, f.a(tPDownloadParamData.getDlType()), hashMap);
        }
        ArrayList arrayList3 = new ArrayList(1);
        arrayList3.add(str);
        return new TPDownloadParam(arrayList3, 0, null);
    }
}
