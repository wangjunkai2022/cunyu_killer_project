package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.os.Build;
import android.webkit.WebSettings;
import com.google.android.exoplayer2.C;
import com.pichillilorenzo.flutter_inappwebview.Options;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class InAppWebViewOptions implements Options<InAppWebView> {
    public static final String LOG_TAG = "InAppWebViewOptions";
    public String appCachePath;
    public Integer disabledActionModeMenuItems;
    public WebSettings.LayoutAlgorithm layoutAlgorithm;
    public Integer mixedContentMode;
    public String regexToCancelSubFramesLoading;
    public Boolean useShouldOverrideUrlLoading = false;
    public Boolean useOnLoadResource = false;
    public Boolean useOnDownloadStart = false;
    public Boolean clearCache = false;
    public String userAgent = "";
    public String applicationNameForUserAgent = "";
    public Boolean javaScriptEnabled = true;
    public Boolean debuggingEnabled = false;
    public Boolean javaScriptCanOpenWindowsAutomatically = false;
    public Boolean mediaPlaybackRequiresUserGesture = true;
    public Integer minimumFontSize = 8;
    public Boolean verticalScrollBarEnabled = true;
    public Boolean horizontalScrollBarEnabled = true;
    public List<String> resourceCustomSchemes = new ArrayList();
    public List<Map<String, Map<String, Object>>> contentBlockers = new ArrayList();
    public Integer preferredContentMode = Integer.valueOf(PreferredContentModeOptionType.RECOMMENDED.toValue());
    public Boolean useShouldInterceptAjaxRequest = false;
    public Boolean useShouldInterceptFetchRequest = false;
    public Boolean incognito = false;
    public Boolean cacheEnabled = true;
    public Boolean transparentBackground = false;
    public Boolean disableVerticalScroll = false;
    public Boolean disableHorizontalScroll = false;
    public Boolean disableContextMenu = false;
    public Boolean supportZoom = true;
    public Integer textZoom = 100;
    public Boolean clearSessionCache = false;
    public Boolean builtInZoomControls = true;
    public Boolean displayZoomControls = false;
    public Boolean databaseEnabled = false;
    public Boolean domStorageEnabled = true;
    public Boolean useWideViewPort = true;
    public Boolean safeBrowsingEnabled = true;
    public Boolean allowContentAccess = true;
    public Boolean allowFileAccess = true;
    public Boolean allowFileAccessFromFileURLs = true;
    public Boolean allowUniversalAccessFromFileURLs = true;
    public Boolean blockNetworkImage = false;
    public Boolean blockNetworkLoads = false;
    public Integer cacheMode = -1;
    public String cursiveFontFamily = "cursive";
    public Integer defaultFixedFontSize = 16;
    public Integer defaultFontSize = 16;
    public String defaultTextEncodingName = "UTF-8";
    public String fantasyFontFamily = "fantasy";
    public String fixedFontFamily = "monospace";
    public Integer forceDark = 0;
    public Boolean geolocationEnabled = true;
    public Boolean loadWithOverviewMode = true;
    public Boolean loadsImagesAutomatically = true;
    public Integer minimumLogicalFontSize = 8;
    public Integer initialScale = 0;
    public Boolean needInitialFocus = true;
    public Boolean offscreenPreRaster = false;
    public String sansSerifFontFamily = C.SANS_SERIF_NAME;
    public String serifFontFamily = C.SANS_SERIF_NAME;
    public String standardFontFamily = C.SANS_SERIF_NAME;
    public Boolean saveFormData = true;
    public Boolean thirdPartyCookiesEnabled = true;
    public Boolean hardwareAcceleration = true;
    public Boolean supportMultipleWindows = false;
    public Integer overScrollMode = 1;
    public Boolean networkAvailable = null;
    public Integer scrollBarStyle = 0;
    public Integer verticalScrollbarPosition = 0;
    public Integer scrollBarDefaultDelayBeforeFade = null;
    public Boolean scrollbarFadingEnabled = true;
    public Integer scrollBarFadeDuration = null;
    public Map<String, Object> rendererPriorityPolicy = new HashMap();
    public Boolean useShouldInterceptRequest = false;
    public Boolean useOnRenderProcessGone = false;
    public Boolean disableDefaultErrorPage = false;

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public InAppWebViewOptions parse(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c = 65535;
                switch (key.hashCode()) {
                    case -2116596967:
                        if (key.equals("disableHorizontalScroll")) {
                            c = 22;
                            break;
                        }
                        break;
                    case -2095822429:
                        if (key.equals("scrollBarDefaultDelayBeforeFade")) {
                            c = 'F';
                            break;
                        }
                        break;
                    case -2020146208:
                        if (key.equals("useWideViewPort")) {
                            c = 31;
                            break;
                        }
                        break;
                    case -2014672109:
                        if (key.equals("allowFileAccessFromFileURLs")) {
                            c = '$';
                            break;
                        }
                        break;
                    case -1931277743:
                        if (key.equals("defaultFontSize")) {
                            c = ',';
                            break;
                        }
                        break;
                    case -1851090878:
                        if (key.equals("supportZoom")) {
                            c = 28;
                            break;
                        }
                        break;
                    case -1845480382:
                        if (key.equals("scrollbarFadingEnabled")) {
                            c = 'G';
                            break;
                        }
                        break;
                    case -1834028884:
                        if (key.equals("defaultTextEncodingName")) {
                            c = '-';
                            break;
                        }
                        break;
                    case -1746033750:
                        if (key.equals("needInitialFocus")) {
                            c = '8';
                            break;
                        }
                        break;
                    case -1712086669:
                        if (key.equals("useShouldOverrideUrlLoading")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1673892229:
                        if (key.equals("preferredContentMode")) {
                            c = 15;
                            break;
                        }
                        break;
                    case -1657552268:
                        if (key.equals("allowContentAccess")) {
                            c = '\"';
                            break;
                        }
                        break;
                    case -1626497241:
                        if (key.equals("fixedFontFamily")) {
                            c = '0';
                            break;
                        }
                        break;
                    case -1615103092:
                        if (key.equals("builtInZoomControls")) {
                            c = 26;
                            break;
                        }
                        break;
                    case -1607633676:
                        if (key.equals("javaScriptEnabled")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -1578962296:
                        if (key.equals("hardwareAcceleration")) {
                            c = '?';
                            break;
                        }
                        break;
                    case -1578507205:
                        if (key.equals("networkAvailable")) {
                            c = 'C';
                            break;
                        }
                        break;
                    case -1574470051:
                        if (key.equals("useShouldInterceptFetchRequest")) {
                            c = 17;
                            break;
                        }
                        break;
                    case -1480607106:
                        if (key.equals("loadsImagesAutomatically")) {
                            c = '5';
                            break;
                        }
                        break;
                    case -1455624881:
                        if (key.equals("resourceCustomSchemes")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case -1443655540:
                        if (key.equals("disabledActionModeMenuItems")) {
                            c = '.';
                            break;
                        }
                        break;
                    case -1423657812:
                        if (key.equals("incognito")) {
                            c = 18;
                            break;
                        }
                        break;
                    case -1321236988:
                        if (key.equals("overScrollMode")) {
                            c = 'B';
                            break;
                        }
                        break;
                    case -1146673624:
                        if (key.equals("domStorageEnabled")) {
                            c = 30;
                            break;
                        }
                        break;
                    case -1143245914:
                        if (key.equals("disableContextMenu")) {
                            c = 23;
                            break;
                        }
                        break;
                    case -1069908877:
                        if (key.equals("debuggingEnabled")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -1038715033:
                        if (key.equals("useShouldInterceptAjaxRequest")) {
                            c = 16;
                            break;
                        }
                        break;
                    case -1003454816:
                        if (key.equals("textZoom")) {
                            c = 24;
                            break;
                        }
                        break;
                    case -800676066:
                        if (key.equals("minimumFontSize")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case -767637403:
                        if (key.equals("layoutAlgorithm")) {
                            c = '3';
                            break;
                        }
                        break;
                    case -759238347:
                        if (key.equals("clearCache")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -742944736:
                        if (key.equals("transparentBackground")) {
                            c = 20;
                            break;
                        }
                        break;
                    case -728016272:
                        if (key.equals("allowUniversalAccessFromFileURLs")) {
                            c = '%';
                            break;
                        }
                        break;
                    case -710246074:
                        if (key.equals("databaseEnabled")) {
                            c = 29;
                            break;
                        }
                        break;
                    case -706772569:
                        if (key.equals("useShouldInterceptRequest")) {
                            c = 'J';
                            break;
                        }
                        break;
                    case -553792443:
                        if (key.equals("cacheMode")) {
                            c = ')';
                            break;
                        }
                        break;
                    case -443422049:
                        if (key.equals("horizontalScrollBarEnabled")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -435719349:
                        if (key.equals("scrollBarStyle")) {
                            c = 'D';
                            break;
                        }
                        break;
                    case -421090202:
                        if (key.equals("initialScale")) {
                            c = '7';
                            break;
                        }
                        break;
                    case -321425255:
                        if (key.equals("verticalScrollbarPosition")) {
                            c = 'E';
                            break;
                        }
                        break;
                    case -229178645:
                        if (key.equals("disableVerticalScroll")) {
                            c = 21;
                            break;
                        }
                        break;
                    case -227577491:
                        if (key.equals("javaScriptCanOpenWindowsAutomatically")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -225165915:
                        if (key.equals("offscreenPreRaster")) {
                            c = '9';
                            break;
                        }
                        break;
                    case -216514471:
                        if (key.equals("fantasyFontFamily")) {
                            c = '/';
                            break;
                        }
                        break;
                    case -158057575:
                        if (key.equals("rendererPriorityPolicy")) {
                            c = 'I';
                            break;
                        }
                        break;
                    case -98561827:
                        if (key.equals("sansSerifFontFamily")) {
                            c = ':';
                            break;
                        }
                        break;
                    case 57717170:
                        if (key.equals("regexToCancelSubFramesLoading")) {
                            c = 'A';
                            break;
                        }
                        break;
                    case 174479508:
                        if (key.equals("useOnDownloadStart")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 257886264:
                        if (key.equals("cursiveFontFamily")) {
                            c = '*';
                            break;
                        }
                        break;
                    case 273267153:
                        if (key.equals("mediaPlaybackRequiresUserGesture")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 296040698:
                        if (key.equals("blockNetworkImage")) {
                            c = '\'';
                            break;
                        }
                        break;
                    case 298870764:
                        if (key.equals("blockNetworkLoads")) {
                            c = '(';
                            break;
                        }
                        break;
                    case 311430650:
                        if (key.equals("userAgent")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 387230482:
                        if (key.equals("useOnRenderProcessGone")) {
                            c = 'K';
                            break;
                        }
                        break;
                    case 393481210:
                        if (key.equals("useOnLoadResource")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 397237599:
                        if (key.equals("cacheEnabled")) {
                            c = 19;
                            break;
                        }
                        break;
                    case 408799019:
                        if (key.equals("saveFormData")) {
                            c = '=';
                            break;
                        }
                        break;
                    case 590869196:
                        if (key.equals("applicationNameForUserAgent")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 760962753:
                        if (key.equals("mixedContentMode")) {
                            c = '!';
                            break;
                        }
                        break;
                    case 849171798:
                        if (key.equals("scrollBarFadeDuration")) {
                            c = 'H';
                            break;
                        }
                        break;
                    case 1138246185:
                        if (key.equals("allowFileAccess")) {
                            c = '#';
                            break;
                        }
                        break;
                    case 1156608422:
                        if (key.equals("appCachePath")) {
                            c = '&';
                            break;
                        }
                        break;
                    case 1301942064:
                        if (key.equals("standardFontFamily")) {
                            c = '<';
                            break;
                        }
                        break;
                    case 1320461707:
                        if (key.equals("displayZoomControls")) {
                            c = 27;
                            break;
                        }
                        break;
                    case 1344414299:
                        if (key.equals("geolocationEnabled")) {
                            c = '2';
                            break;
                        }
                        break;
                    case 1409728424:
                        if (key.equals("loadWithOverviewMode")) {
                            c = '4';
                            break;
                        }
                        break;
                    case 1474890029:
                        if (key.equals("safeBrowsingEnabled")) {
                            c = ' ';
                            break;
                        }
                        break;
                    case 1496887792:
                        if (key.equals("serifFontFamily")) {
                            c = ';';
                            break;
                        }
                        break;
                    case 1527546113:
                        if (key.equals("forceDark")) {
                            c = '1';
                            break;
                        }
                        break;
                    case 1583791742:
                        if (key.equals("disableDefaultErrorPage")) {
                            c = 'L';
                            break;
                        }
                        break;
                    case 1759079762:
                        if (key.equals("contentBlockers")) {
                            c = 14;
                            break;
                        }
                        break;
                    case 1774215812:
                        if (key.equals("supportMultipleWindows")) {
                            c = '@';
                            break;
                        }
                        break;
                    case 1793491907:
                        if (key.equals("defaultFixedFontSize")) {
                            c = '+';
                            break;
                        }
                        break;
                    case 1812525393:
                        if (key.equals("thirdPartyCookiesEnabled")) {
                            c = '>';
                            break;
                        }
                        break;
                    case 1956631083:
                        if (key.equals("minimumLogicalFontSize")) {
                            c = '6';
                            break;
                        }
                        break;
                    case 2011947505:
                        if (key.equals("verticalScrollBarEnabled")) {
                            c = 11;
                            break;
                        }
                        break;
                    case 2038327673:
                        if (key.equals("clearSessionCache")) {
                            c = 25;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        this.useShouldOverrideUrlLoading = (Boolean) value;
                        continue;
                    case 1:
                        this.useOnLoadResource = (Boolean) value;
                        continue;
                    case 2:
                        this.useOnDownloadStart = (Boolean) value;
                        continue;
                    case 3:
                        this.clearCache = (Boolean) value;
                        continue;
                    case 4:
                        this.userAgent = (String) value;
                        continue;
                    case 5:
                        this.applicationNameForUserAgent = (String) value;
                        continue;
                    case 6:
                        this.javaScriptEnabled = (Boolean) value;
                        continue;
                    case 7:
                        this.debuggingEnabled = (Boolean) value;
                        continue;
                    case '\b':
                        this.javaScriptCanOpenWindowsAutomatically = (Boolean) value;
                        continue;
                    case '\t':
                        this.mediaPlaybackRequiresUserGesture = (Boolean) value;
                        continue;
                    case '\n':
                        this.minimumFontSize = (Integer) value;
                        continue;
                    case 11:
                        this.verticalScrollBarEnabled = (Boolean) value;
                        continue;
                    case '\f':
                        this.horizontalScrollBarEnabled = (Boolean) value;
                        continue;
                    case '\r':
                        this.resourceCustomSchemes = (List) value;
                        continue;
                    case 14:
                        this.contentBlockers = (List) value;
                        continue;
                    case 15:
                        this.preferredContentMode = (Integer) value;
                        continue;
                    case 16:
                        this.useShouldInterceptAjaxRequest = (Boolean) value;
                        continue;
                    case 17:
                        this.useShouldInterceptFetchRequest = (Boolean) value;
                        continue;
                    case 18:
                        this.incognito = (Boolean) value;
                        continue;
                    case 19:
                        this.cacheEnabled = (Boolean) value;
                        continue;
                    case 20:
                        this.transparentBackground = (Boolean) value;
                        continue;
                    case 21:
                        this.disableVerticalScroll = (Boolean) value;
                        continue;
                    case 22:
                        this.disableHorizontalScroll = (Boolean) value;
                        continue;
                    case 23:
                        this.disableContextMenu = (Boolean) value;
                        continue;
                    case 24:
                        this.textZoom = (Integer) value;
                        continue;
                    case 25:
                        this.clearSessionCache = (Boolean) value;
                        continue;
                    case 26:
                        this.builtInZoomControls = (Boolean) value;
                        continue;
                    case 27:
                        this.displayZoomControls = (Boolean) value;
                        continue;
                    case 28:
                        this.supportZoom = (Boolean) value;
                        continue;
                    case 29:
                        this.databaseEnabled = (Boolean) value;
                        continue;
                    case 30:
                        this.domStorageEnabled = (Boolean) value;
                        continue;
                    case 31:
                        this.useWideViewPort = (Boolean) value;
                        continue;
                    case ' ':
                        this.safeBrowsingEnabled = (Boolean) value;
                        continue;
                    case '!':
                        this.mixedContentMode = (Integer) value;
                        continue;
                    case '\"':
                        this.allowContentAccess = (Boolean) value;
                        continue;
                    case '#':
                        this.allowFileAccess = (Boolean) value;
                        continue;
                    case '$':
                        this.allowFileAccessFromFileURLs = (Boolean) value;
                        continue;
                    case '%':
                        this.allowUniversalAccessFromFileURLs = (Boolean) value;
                        continue;
                    case '&':
                        this.appCachePath = (String) value;
                        continue;
                    case '\'':
                        this.blockNetworkImage = (Boolean) value;
                        continue;
                    case '(':
                        this.blockNetworkLoads = (Boolean) value;
                        continue;
                    case ')':
                        this.cacheMode = (Integer) value;
                        continue;
                    case '*':
                        this.cursiveFontFamily = (String) value;
                        continue;
                    case '+':
                        this.defaultFixedFontSize = (Integer) value;
                        continue;
                    case ',':
                        this.defaultFontSize = (Integer) value;
                        continue;
                    case '-':
                        this.defaultTextEncodingName = (String) value;
                        continue;
                    case '.':
                        this.disabledActionModeMenuItems = (Integer) value;
                        continue;
                    case '/':
                        this.fantasyFontFamily = (String) value;
                        continue;
                    case '0':
                        this.fixedFontFamily = (String) value;
                        continue;
                    case '1':
                        this.forceDark = (Integer) value;
                        continue;
                    case '2':
                        this.geolocationEnabled = (Boolean) value;
                        continue;
                    case '3':
                        setLayoutAlgorithm((String) value);
                        continue;
                    case '4':
                        this.loadWithOverviewMode = (Boolean) value;
                        continue;
                    case '5':
                        this.loadsImagesAutomatically = (Boolean) value;
                        continue;
                    case '6':
                        this.minimumLogicalFontSize = (Integer) value;
                        continue;
                    case '7':
                        this.initialScale = (Integer) value;
                        continue;
                    case '8':
                        this.needInitialFocus = (Boolean) value;
                        continue;
                    case '9':
                        this.offscreenPreRaster = (Boolean) value;
                        continue;
                    case ':':
                        this.sansSerifFontFamily = (String) value;
                        continue;
                    case ';':
                        this.serifFontFamily = (String) value;
                        continue;
                    case '<':
                        this.standardFontFamily = (String) value;
                        continue;
                    case '=':
                        this.saveFormData = (Boolean) value;
                        continue;
                    case '>':
                        this.thirdPartyCookiesEnabled = (Boolean) value;
                        continue;
                    case '?':
                        this.hardwareAcceleration = (Boolean) value;
                        continue;
                    case '@':
                        this.supportMultipleWindows = (Boolean) value;
                        continue;
                    case 'A':
                        this.regexToCancelSubFramesLoading = (String) value;
                        continue;
                    case 'B':
                        this.overScrollMode = (Integer) value;
                        continue;
                    case 'C':
                        this.networkAvailable = (Boolean) value;
                        continue;
                    case 'D':
                        this.scrollBarStyle = (Integer) value;
                        continue;
                    case 'E':
                        this.verticalScrollbarPosition = (Integer) value;
                        continue;
                    case 'F':
                        this.scrollBarDefaultDelayBeforeFade = (Integer) value;
                        continue;
                    case 'G':
                        this.scrollbarFadingEnabled = (Boolean) value;
                        continue;
                    case 'H':
                        this.scrollBarFadeDuration = (Integer) value;
                        continue;
                    case 'I':
                        this.rendererPriorityPolicy = (Map) value;
                        continue;
                    case 'J':
                        this.useShouldInterceptRequest = (Boolean) value;
                        continue;
                    case 'K':
                        this.useOnRenderProcessGone = (Boolean) value;
                        continue;
                    case 'L':
                        this.disableDefaultErrorPage = (Boolean) value;
                        continue;
                }
            }
        }
        return this;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("useShouldOverrideUrlLoading", this.useShouldOverrideUrlLoading);
        hashMap.put("useOnLoadResource", this.useOnLoadResource);
        hashMap.put("useOnDownloadStart", this.useOnDownloadStart);
        hashMap.put("clearCache", this.clearCache);
        hashMap.put("userAgent", this.userAgent);
        hashMap.put("applicationNameForUserAgent", this.applicationNameForUserAgent);
        hashMap.put("javaScriptEnabled", this.javaScriptEnabled);
        hashMap.put("debuggingEnabled", this.debuggingEnabled);
        hashMap.put("javaScriptCanOpenWindowsAutomatically", this.javaScriptCanOpenWindowsAutomatically);
        hashMap.put("mediaPlaybackRequiresUserGesture", this.mediaPlaybackRequiresUserGesture);
        hashMap.put("minimumFontSize", this.minimumFontSize);
        hashMap.put("verticalScrollBarEnabled", this.verticalScrollBarEnabled);
        hashMap.put("horizontalScrollBarEnabled", this.horizontalScrollBarEnabled);
        hashMap.put("resourceCustomSchemes", this.resourceCustomSchemes);
        hashMap.put("contentBlockers", this.contentBlockers);
        hashMap.put("preferredContentMode", this.preferredContentMode);
        hashMap.put("useShouldInterceptAjaxRequest", this.useShouldInterceptAjaxRequest);
        hashMap.put("useShouldInterceptFetchRequest", this.useShouldInterceptFetchRequest);
        hashMap.put("incognito", this.incognito);
        hashMap.put("cacheEnabled", this.cacheEnabled);
        hashMap.put("transparentBackground", this.transparentBackground);
        hashMap.put("disableVerticalScroll", this.disableVerticalScroll);
        hashMap.put("disableHorizontalScroll", this.disableHorizontalScroll);
        hashMap.put("disableContextMenu", this.disableContextMenu);
        hashMap.put("textZoom", this.textZoom);
        hashMap.put("clearSessionCache", this.clearSessionCache);
        hashMap.put("builtInZoomControls", this.builtInZoomControls);
        hashMap.put("displayZoomControls", this.displayZoomControls);
        hashMap.put("supportZoom", this.supportZoom);
        hashMap.put("databaseEnabled", this.databaseEnabled);
        hashMap.put("domStorageEnabled", this.domStorageEnabled);
        hashMap.put("useWideViewPort", this.useWideViewPort);
        hashMap.put("safeBrowsingEnabled", this.safeBrowsingEnabled);
        hashMap.put("mixedContentMode", this.mixedContentMode);
        hashMap.put("allowContentAccess", this.allowContentAccess);
        hashMap.put("allowFileAccess", this.allowFileAccess);
        hashMap.put("allowFileAccessFromFileURLs", this.allowFileAccessFromFileURLs);
        hashMap.put("allowUniversalAccessFromFileURLs", this.allowUniversalAccessFromFileURLs);
        hashMap.put("appCachePath", this.appCachePath);
        hashMap.put("blockNetworkImage", this.blockNetworkImage);
        hashMap.put("blockNetworkLoads", this.blockNetworkLoads);
        hashMap.put("cacheMode", this.cacheMode);
        hashMap.put("cursiveFontFamily", this.cursiveFontFamily);
        hashMap.put("defaultFixedFontSize", this.defaultFixedFontSize);
        hashMap.put("defaultFontSize", this.defaultFontSize);
        hashMap.put("defaultTextEncodingName", this.defaultTextEncodingName);
        hashMap.put("disabledActionModeMenuItems", this.disabledActionModeMenuItems);
        hashMap.put("fantasyFontFamily", this.fantasyFontFamily);
        hashMap.put("fixedFontFamily", this.fixedFontFamily);
        hashMap.put("forceDark", this.forceDark);
        hashMap.put("geolocationEnabled", this.geolocationEnabled);
        hashMap.put("layoutAlgorithm", getLayoutAlgorithm());
        hashMap.put("loadWithOverviewMode", this.loadWithOverviewMode);
        hashMap.put("loadsImagesAutomatically", this.loadsImagesAutomatically);
        hashMap.put("minimumLogicalFontSize", this.minimumLogicalFontSize);
        hashMap.put("initialScale", this.initialScale);
        hashMap.put("needInitialFocus", this.needInitialFocus);
        hashMap.put("offscreenPreRaster", this.offscreenPreRaster);
        hashMap.put("sansSerifFontFamily", this.sansSerifFontFamily);
        hashMap.put("serifFontFamily", this.serifFontFamily);
        hashMap.put("standardFontFamily", this.standardFontFamily);
        hashMap.put("saveFormData", this.saveFormData);
        hashMap.put("thirdPartyCookiesEnabled", this.thirdPartyCookiesEnabled);
        hashMap.put("hardwareAcceleration", this.hardwareAcceleration);
        hashMap.put("supportMultipleWindows", this.supportMultipleWindows);
        hashMap.put("regexToCancelSubFramesLoading", this.regexToCancelSubFramesLoading);
        hashMap.put("overScrollMode", this.overScrollMode);
        hashMap.put("networkAvailable", this.networkAvailable);
        hashMap.put("scrollBarStyle", this.scrollBarStyle);
        hashMap.put("verticalScrollbarPosition", this.verticalScrollbarPosition);
        hashMap.put("scrollBarDefaultDelayBeforeFade", this.scrollBarDefaultDelayBeforeFade);
        hashMap.put("scrollbarFadingEnabled", this.scrollbarFadingEnabled);
        hashMap.put("scrollBarFadeDuration", this.scrollBarFadeDuration);
        hashMap.put("rendererPriorityPolicy", this.rendererPriorityPolicy);
        hashMap.put("useShouldInterceptRequest", this.useShouldInterceptRequest);
        hashMap.put("useOnRenderProcessGone", this.useOnRenderProcessGone);
        hashMap.put("disableDefaultErrorPage", this.disableDefaultErrorPage);
        return hashMap;
    }

    public Map<String, Object> getRealOptions(InAppWebView inAppWebView) {
        Map<String, Object> map = toMap();
        if (inAppWebView != null) {
            WebSettings settings = inAppWebView.getSettings();
            map.put("userAgent", settings.getUserAgentString());
            map.put("javaScriptEnabled", Boolean.valueOf(settings.getJavaScriptEnabled()));
            map.put("javaScriptCanOpenWindowsAutomatically", Boolean.valueOf(settings.getJavaScriptCanOpenWindowsAutomatically()));
            map.put("mediaPlaybackRequiresUserGesture", Boolean.valueOf(settings.getMediaPlaybackRequiresUserGesture()));
            map.put("minimumFontSize", Integer.valueOf(settings.getMinimumFontSize()));
            map.put("verticalScrollBarEnabled", Boolean.valueOf(inAppWebView.isVerticalScrollBarEnabled()));
            map.put("horizontalScrollBarEnabled", Boolean.valueOf(inAppWebView.isHorizontalScrollBarEnabled()));
            map.put("textZoom", Integer.valueOf(settings.getTextZoom()));
            map.put("builtInZoomControls", Boolean.valueOf(settings.getBuiltInZoomControls()));
            map.put("supportZoom", Boolean.valueOf(settings.supportZoom()));
            map.put("displayZoomControls", Boolean.valueOf(settings.getDisplayZoomControls()));
            map.put("databaseEnabled", Boolean.valueOf(settings.getDatabaseEnabled()));
            map.put("domStorageEnabled", Boolean.valueOf(settings.getDomStorageEnabled()));
            map.put("useWideViewPort", Boolean.valueOf(settings.getUseWideViewPort()));
            if (Build.VERSION.SDK_INT >= 26) {
                map.put("safeBrowsingEnabled", Boolean.valueOf(settings.getSafeBrowsingEnabled()));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                map.put("mixedContentMode", Integer.valueOf(settings.getMixedContentMode()));
            }
            map.put("allowContentAccess", Boolean.valueOf(settings.getAllowContentAccess()));
            map.put("allowFileAccess", Boolean.valueOf(settings.getAllowFileAccess()));
            map.put("allowFileAccessFromFileURLs", Boolean.valueOf(settings.getAllowFileAccessFromFileURLs()));
            map.put("allowUniversalAccessFromFileURLs", Boolean.valueOf(settings.getAllowUniversalAccessFromFileURLs()));
            map.put("blockNetworkImage", Boolean.valueOf(settings.getBlockNetworkImage()));
            map.put("blockNetworkLoads", Boolean.valueOf(settings.getBlockNetworkLoads()));
            map.put("cacheMode", Integer.valueOf(settings.getCacheMode()));
            map.put("cursiveFontFamily", settings.getCursiveFontFamily());
            map.put("defaultFixedFontSize", Integer.valueOf(settings.getDefaultFixedFontSize()));
            map.put("defaultFontSize", Integer.valueOf(settings.getDefaultFontSize()));
            map.put("defaultTextEncodingName", settings.getDefaultTextEncodingName());
            if (Build.VERSION.SDK_INT >= 24) {
                map.put("disabledActionModeMenuItems", Integer.valueOf(settings.getDisabledActionModeMenuItems()));
            }
            map.put("fantasyFontFamily", settings.getFantasyFontFamily());
            map.put("fixedFontFamily", settings.getFixedFontFamily());
            if (Build.VERSION.SDK_INT >= 29) {
                map.put("forceDark", Integer.valueOf(settings.getForceDark()));
            }
            map.put("layoutAlgorithm", settings.getLayoutAlgorithm().name());
            map.put("loadWithOverviewMode", Boolean.valueOf(settings.getLoadWithOverviewMode()));
            map.put("loadsImagesAutomatically", Boolean.valueOf(settings.getLoadsImagesAutomatically()));
            map.put("minimumLogicalFontSize", Integer.valueOf(settings.getMinimumLogicalFontSize()));
            if (Build.VERSION.SDK_INT >= 23) {
                map.put("offscreenPreRaster", Boolean.valueOf(settings.getOffscreenPreRaster()));
            }
            map.put("sansSerifFontFamily", settings.getSansSerifFontFamily());
            map.put("serifFontFamily", settings.getSerifFontFamily());
            map.put("standardFontFamily", settings.getStandardFontFamily());
            map.put("saveFormData", Boolean.valueOf(settings.getSaveFormData()));
            map.put("supportMultipleWindows", Boolean.valueOf(settings.supportMultipleWindows()));
            map.put("overScrollMode", Integer.valueOf(inAppWebView.getOverScrollMode()));
            map.put("scrollBarStyle", Integer.valueOf(inAppWebView.getScrollBarStyle()));
            map.put("verticalScrollbarPosition", Integer.valueOf(inAppWebView.getVerticalScrollbarPosition()));
            map.put("scrollBarDefaultDelayBeforeFade", Integer.valueOf(inAppWebView.getScrollBarDefaultDelayBeforeFade()));
            map.put("scrollbarFadingEnabled", Boolean.valueOf(inAppWebView.isScrollbarFadingEnabled()));
            map.put("scrollBarFadeDuration", Integer.valueOf(inAppWebView.getScrollBarFadeDuration()));
            if (Build.VERSION.SDK_INT >= 26) {
                HashMap hashMap = new HashMap();
                hashMap.put("rendererRequestedPriority", Integer.valueOf(inAppWebView.getRendererRequestedPriority()));
                hashMap.put("waivedWhenNotVisible", Boolean.valueOf(inAppWebView.getRendererPriorityWaivedWhenNotVisible()));
                map.put("rendererPriorityPolicy", hashMap);
            }
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void setLayoutAlgorithm(java.lang.String r6) {
        /*
            r5 = this;
            if (r6 == 0) goto L_0x0054
            r0 = -1
            int r1 = r6.hashCode()
            r2 = -1986416409(0xffffffff8999b0e7, float:-3.699977E-33)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L_0x002d
            r2 = 1055046617(0x3ee2bbd9, float:0.4428394)
            if (r1 == r2) goto L_0x0023
            r2 = 1561826623(0x5d17953f, float:6.8266911E17)
            if (r1 == r2) goto L_0x0019
            goto L_0x0036
        L_0x0019:
            java.lang.String r1 = "TEXT_AUTOSIZING"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L_0x0036
            r0 = r3
            goto L_0x0036
        L_0x0023:
            java.lang.String r1 = "NARROW_COLUMNS"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L_0x0036
            r0 = 0
            goto L_0x0036
        L_0x002d:
            java.lang.String r1 = "NORMAL"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L_0x0036
            r0 = r4
        L_0x0036:
            if (r0 == 0) goto L_0x003d
            if (r0 == r4) goto L_0x0041
            if (r0 == r3) goto L_0x0045
            goto L_0x0054
        L_0x003d:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NARROW_COLUMNS
            r5.layoutAlgorithm = r6
        L_0x0041:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NORMAL
            r5.layoutAlgorithm = r6
        L_0x0045:
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 19
            if (r6 < r0) goto L_0x0050
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING
            r5.layoutAlgorithm = r6
            goto L_0x0054
        L_0x0050:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NORMAL
            r5.layoutAlgorithm = r6
        L_0x0054:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewOptions.setLayoutAlgorithm(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewOptions$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$webkit$WebSettings$LayoutAlgorithm = new int[WebSettings.LayoutAlgorithm.values().length];

        static {
            try {
                $SwitchMap$android$webkit$WebSettings$LayoutAlgorithm[WebSettings.LayoutAlgorithm.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$webkit$WebSettings$LayoutAlgorithm[WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$webkit$WebSettings$LayoutAlgorithm[WebSettings.LayoutAlgorithm.NARROW_COLUMNS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private String getLayoutAlgorithm() {
        if (this.layoutAlgorithm == null) {
            return null;
        }
        int i = AnonymousClass1.$SwitchMap$android$webkit$WebSettings$LayoutAlgorithm[this.layoutAlgorithm.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return "NARROW_COLUMNS";
            } else if (Build.VERSION.SDK_INT >= 19) {
                return "TEXT_AUTOSIZING";
            }
        }
        return "NORMAL";
    }
}
