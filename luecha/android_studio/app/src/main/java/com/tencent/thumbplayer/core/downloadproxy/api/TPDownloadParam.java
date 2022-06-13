package com.tencent.thumbplayer.core.downloadproxy.api;

import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPDownloadParam {
    private static final String FILE_NAME = "TPDownloadParam";
    private int dlType;
    private Map<String, Object> extInfoMap;
    private ArrayList<String> urlList;

    public TPDownloadParam(ArrayList<String> arrayList, int i, Map<String, Object> map) {
        this.urlList = arrayList;
        this.dlType = i;
        this.extInfoMap = map;
    }

    public ArrayList<String> getUrlList() {
        return this.urlList;
    }

    public void setUrlList(ArrayList<String> arrayList) {
        this.urlList = arrayList;
    }

    public void setDlType(int i) {
        this.dlType = i;
    }

    public Map<String, Object> getExtInfoMap() {
        return this.extInfoMap;
    }

    public void setExtInfoMap(Map<String, Object> map) {
        this.extInfoMap = map;
    }

    public String getCdnUrls() {
        if (this.urlList == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Map<String, Object> map = this.extInfoMap;
        boolean booleanValue = (map == null || !map.containsKey("dl_param_enable_expand_donwload_url")) ? false : ((Boolean) this.extInfoMap.get("dl_param_enable_expand_donwload_url")).booleanValue();
        for (int i = 0; i < this.urlList.size(); i++) {
            stringBuffer.append(this.urlList.get(i));
            if (booleanValue) {
                if (this.urlList.get(i).indexOf("?") > 0) {
                    stringBuffer.append("&cost=low");
                } else {
                    stringBuffer.append("?cost=low");
                }
            }
            stringBuffer.append(";");
        }
        if (stringBuffer.length() > 0) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    public int getDlType() {
        return this.dlType;
    }

    public String getVid() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_vid")) {
            return "";
        }
        return (String) this.extInfoMap.get("dl_param_vid");
    }

    public boolean isOffline() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_is_offline")) {
            return false;
        }
        return ((Boolean) this.extInfoMap.get("dl_param_is_offline")).booleanValue();
    }

    public boolean isAdaptive() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_adaptive_type") || ((Integer) this.extInfoMap.get("dl_param_adaptive_type")).intValue() <= 0) {
            return false;
        }
        return true;
    }

    public Map<String, String> getOfflinePlayExtraInfo() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_play_extra_info")) {
            return null;
        }
        return (Map) this.extInfoMap.get("dl_param_play_extra_info");
    }

    public String getPlayDefinition() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_play_definition")) {
            return "";
        }
        return (String) this.extInfoMap.get("dl_param_play_definition");
    }

    public String getFormat() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_current_format")) {
            return "";
        }
        return (String) this.extInfoMap.get("dl_param_current_format");
    }

    public String getKeyid() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_play_keyid")) {
            return "";
        }
        return (String) this.extInfoMap.get("dl_param_play_keyid");
    }

    public int getClipCount() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_play_clip_count")) {
            return 1;
        }
        return ((Integer) this.extInfoMap.get("dl_param_play_clip_count")).intValue();
    }

    public int getClipNo() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_play_clip_no")) {
            return 1;
        }
        return ((Integer) this.extInfoMap.get("dl_param_play_clip_no")).intValue();
    }

    public long getTotalDurationMS() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_file_duration")) {
            return 0;
        }
        return ((Long) this.extInfoMap.get("dl_param_file_duration")).longValue();
    }

    public String getSavaPath() {
        Map<String, Object> map = this.extInfoMap;
        if (map == null || map.isEmpty() || !this.extInfoMap.containsKey("dl_param_save_path")) {
            return "";
        }
        return (String) this.extInfoMap.get("dl_param_save_path");
    }

    public Object getExtInfo(String str) {
        Map<String, Object> map = this.extInfoMap;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public String getExtraJsonInfo() {
        Map<String, Object> map = this.extInfoMap;
        if (map != null && !map.isEmpty()) {
            try {
                HashMap hashMap = new HashMap();
                for (Map.Entry<String, Object> entry : this.extInfoMap.entrySet()) {
                    if (!entry.getKey().equalsIgnoreCase("dl_param_is_offline") && !entry.getKey().equalsIgnoreCase("dl_param_play_extra_info") && !entry.getKey().equalsIgnoreCase("dl_param_play_definition") && !entry.getKey().equalsIgnoreCase("dl_param_enable_expand_donwload_url")) {
                        hashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                return new JSONObject(hashMap).toString();
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadParam", 0, "tpdlnative", "getExtraJsonInfo failed, error:" + th.toString());
            }
        }
        return "";
    }

    private String getExtraFormatNodesJsonInfo(ArrayList<Map<String, Object>> arrayList) {
        if (arrayList == null) {
            return "[]";
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            for (int i = 0; i < arrayList.size(); i++) {
                Map<String, Object> map = arrayList.get(i);
                if (i == arrayList.size() - 1) {
                    stringBuffer.append(String.format("{\"dl_param_name\":\"%s\", \"dl_param_bitrate\":%s}", map.get("dl_param_name"), map.get("dl_param_bitrate")));
                } else {
                    stringBuffer.append(String.format("{\"dl_param_name\":\"%s\", \"dl_param_bitrate\":%s}, ", map.get("dl_param_name"), map.get("dl_param_bitrate")));
                }
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadParam", 0, "tpdlnative", "getExtraJsonInfo failed, error:" + th.toString());
            return "[]";
        }
    }

    private String getUrlHostNodesJsonInfo(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return "[]";
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            for (int i = 0; i < arrayList.size(); i++) {
                String str = arrayList.get(i);
                if (i == arrayList.size() - 1) {
                    stringBuffer.append(String.format("\"%s\"", str));
                } else {
                    stringBuffer.append(String.format("\"%s\", ", str));
                }
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadParam", 0, "tpdlnative", "getArrayListStr failed, error:" + th.toString());
            return "[]";
        }
    }
}
