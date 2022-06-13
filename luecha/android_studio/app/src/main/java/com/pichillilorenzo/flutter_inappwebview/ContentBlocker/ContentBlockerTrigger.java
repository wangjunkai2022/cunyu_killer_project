package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ContentBlockerTrigger {
    public List<String> ifDomain;
    public List<String> ifTopUrl;
    public List<String> loadType;
    public List<ContentBlockerTriggerResourceType> resourceType;
    public List<String> unlessDomain;
    public List<String> unlessTopUrl;
    public String urlFilter;
    public Boolean urlFilterIsCaseSensitive;
    public Pattern urlFilterPatternCompiled;

    public ContentBlockerTrigger(String str, Boolean bool, List<ContentBlockerTriggerResourceType> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6) {
        this.resourceType = new ArrayList();
        this.ifDomain = new ArrayList();
        this.unlessDomain = new ArrayList();
        this.loadType = new ArrayList();
        this.ifTopUrl = new ArrayList();
        this.unlessTopUrl = new ArrayList();
        this.urlFilter = str;
        this.urlFilterPatternCompiled = Pattern.compile(this.urlFilter);
        this.resourceType = list == null ? this.resourceType : list;
        boolean z = false;
        this.urlFilterIsCaseSensitive = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        this.ifDomain = list2 == null ? this.ifDomain : list2;
        this.unlessDomain = list3 == null ? this.unlessDomain : list3;
        if (!(!this.ifDomain.isEmpty() && !this.unlessDomain.isEmpty())) {
            this.loadType = list4 == null ? this.loadType : list4;
            if (this.loadType.size() <= 2) {
                this.ifTopUrl = list5 == null ? this.ifTopUrl : list5;
                this.unlessTopUrl = list6 == null ? this.unlessTopUrl : list6;
                if (!this.ifTopUrl.isEmpty() && !this.unlessTopUrl.isEmpty()) {
                    z = true;
                }
                if (z) {
                    throw new AssertionError();
                }
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static ContentBlockerTrigger fromMap(Map<String, Object> map) {
        String str = (String) map.get("url-filter");
        Boolean bool = (Boolean) map.get("url-filter-is-case-sensitive");
        List<String> list = (List) map.get("resource-type");
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str2 : list) {
                arrayList.add(ContentBlockerTriggerResourceType.fromValue(str2));
            }
        } else {
            arrayList.addAll(Arrays.asList(ContentBlockerTriggerResourceType.values()));
        }
        return new ContentBlockerTrigger(str, bool, arrayList, (List) map.get("if-domain"), (List) map.get("unless-domain"), (List) map.get("load-type"), (List) map.get("if-top-url"), (List) map.get("unless-top-url"));
    }
}
