package com.jaredrummler.truetypeparser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class TTFFile {
    private Map<TTFTableName, TTFDirTabEntry> dirTabs;
    private FontFileReader fontFile;
    private int weightClass;
    private final Set<String> familyNames = new HashSet();
    private String postScriptName = "";
    private String fullName = "";
    private String notice = "";
    private String subFamilyName = "";

    public static TTFFile open(File file) throws IOException {
        return open(new FileInputStream(file));
    }

    public static TTFFile open(InputStream inputStream) throws IOException {
        TTFFile tTFFile = new TTFFile();
        tTFFile.readFont(new FontFileReader(inputStream));
        return tTFFile;
    }

    TTFFile() {
    }

    public Set<String> getFamilyNames() {
        return this.familyNames;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getNotice() {
        return this.notice;
    }

    public String getPostScriptName() {
        return this.postScriptName;
    }

    public String getSubFamilyName() {
        return this.subFamilyName;
    }

    public int getWeightClass() {
        return this.weightClass;
    }

    private void readDirTabs() throws IOException {
        this.fontFile.readTTFLong();
        int readTTFUShort = this.fontFile.readTTFUShort();
        this.fontFile.skip(6);
        this.dirTabs = new HashMap();
        TTFDirTabEntry[] tTFDirTabEntryArr = new TTFDirTabEntry[readTTFUShort];
        for (int i = 0; i < readTTFUShort; i++) {
            tTFDirTabEntryArr[i] = new TTFDirTabEntry();
            this.dirTabs.put(TTFTableName.getValue(tTFDirTabEntryArr[i].read(this.fontFile)), tTFDirTabEntryArr[i]);
        }
        this.dirTabs.put(TTFTableName.TABLE_DIRECTORY, new TTFDirTabEntry(0, (long) this.fontFile.getCurrentPos()));
    }

    void readFont(FontFileReader fontFileReader) throws IOException {
        this.fontFile = fontFileReader;
        readDirTabs();
        if (this.dirTabs.get(TTFTableName.OS2) != null) {
            seekTab(this.fontFile, TTFTableName.OS2, 0);
            this.fontFile.readTTFUShort();
            this.fontFile.skip(2);
            this.weightClass = this.fontFile.readTTFUShort();
        }
        readName();
    }

    private void readName() throws IOException {
        String str;
        seekTab(this.fontFile, TTFTableName.NAME, 2);
        int currentPos = this.fontFile.getCurrentPos();
        int readTTFUShort = this.fontFile.readTTFUShort();
        int readTTFUShort2 = (this.fontFile.readTTFUShort() + currentPos) - 2;
        int i = currentPos + 4;
        while (true) {
            int i2 = readTTFUShort - 1;
            if (readTTFUShort > 0) {
                this.fontFile.seekSet((long) i);
                int readTTFUShort3 = this.fontFile.readTTFUShort();
                int readTTFUShort4 = this.fontFile.readTTFUShort();
                int readTTFUShort5 = this.fontFile.readTTFUShort();
                int readTTFUShort6 = this.fontFile.readTTFUShort();
                int readTTFUShort7 = this.fontFile.readTTFUShort();
                if ((readTTFUShort3 == 1 || readTTFUShort3 == 3) && (readTTFUShort4 == 0 || readTTFUShort4 == 1)) {
                    FontFileReader fontFileReader = this.fontFile;
                    fontFileReader.seekSet((long) (fontFileReader.readTTFUShort() + readTTFUShort2));
                    if (readTTFUShort3 == 3) {
                        str = this.fontFile.readTTFString(readTTFUShort7, readTTFUShort4);
                    } else {
                        str = this.fontFile.readTTFString(readTTFUShort7);
                    }
                    if (readTTFUShort6 != 0) {
                        if (readTTFUShort6 != 1) {
                            if (readTTFUShort6 != 2) {
                                if (readTTFUShort6 != 4) {
                                    if (readTTFUShort6 != 6) {
                                        if (readTTFUShort6 != 16) {
                                        }
                                    } else if (this.postScriptName.length() == 0) {
                                        this.postScriptName = str;
                                    }
                                } else if (this.fullName.length() == 0 || (readTTFUShort3 == 3 && readTTFUShort5 == 1033)) {
                                    this.fullName = str;
                                }
                            } else if (this.subFamilyName.length() == 0) {
                                this.subFamilyName = str;
                            }
                        }
                        this.familyNames.add(str);
                    } else if (this.notice.length() == 0) {
                        this.notice = str;
                    }
                }
                i += 12;
                readTTFUShort = i2;
            } else {
                return;
            }
        }
    }

    private boolean seekTab(FontFileReader fontFileReader, TTFTableName tTFTableName, long j) throws IOException {
        TTFDirTabEntry tTFDirTabEntry = this.dirTabs.get(tTFTableName);
        if (tTFDirTabEntry == null) {
            return false;
        }
        fontFileReader.seekSet(tTFDirTabEntry.getOffset() + j);
        return true;
    }
}
