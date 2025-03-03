package com.facebook.cache.disk;

import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.WriterCallback;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public interface DiskStorage {

    /* loaded from: classes4.dex */
    public static class DiskDumpInfo {
        public List<DiskDumpInfoEntry> entries = new ArrayList();
        public Map<String, Integer> typeCounts = new HashMap();
    }

    /* loaded from: classes4.dex */
    public interface Entry {
        String getId();

        BinaryResource getResource();

        long getSize();

        long getTimestamp();
    }

    /* loaded from: classes4.dex */
    public interface Inserter {
        boolean cleanUp();

        BinaryResource commit(Object obj) throws IOException;

        void writeData(WriterCallback writerCallback, Object obj) throws IOException;
    }

    void clearAll() throws IOException;

    boolean contains(String str, Object obj) throws IOException;

    DiskDumpInfo getDumpInfo() throws IOException;

    Collection<Entry> getEntries() throws IOException;

    BinaryResource getResource(String str, Object obj) throws IOException;

    String getStorageName();

    Inserter insert(String str, Object obj) throws IOException;

    boolean isEnabled();

    void purgeUnexpectedResources();

    long remove(Entry entry) throws IOException;

    long remove(String str) throws IOException;

    boolean touch(String str, Object obj) throws IOException;

    /* loaded from: classes4.dex */
    public static class DiskDumpInfoEntry {
        public final String firstBits;
        public final String path;
        public final float size;
        public final String type;

        public DiskDumpInfoEntry(String str, String str2, float f, String str3) {
            this.path = str;
            this.type = str2;
            this.size = f;
            this.firstBits = str3;
        }
    }
}
