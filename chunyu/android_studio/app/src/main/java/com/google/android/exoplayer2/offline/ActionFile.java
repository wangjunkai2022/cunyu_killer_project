package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.util.AtomicFile;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes4.dex */
final class ActionFile {
    private static final String DOWNLOAD_TYPE_DASH = "dash";
    private static final String DOWNLOAD_TYPE_HLS = "hls";
    private static final String DOWNLOAD_TYPE_PROGRESSIVE = "progressive";
    private static final String DOWNLOAD_TYPE_SS = "ss";
    private static final int VERSION = 0;
    private final AtomicFile atomicFile;

    public ActionFile(File file) {
        this.atomicFile = new AtomicFile(file);
    }

    public boolean exists() {
        return this.atomicFile.exists();
    }

    public void delete() {
        this.atomicFile.delete();
    }

    public DownloadRequest[] load() throws IOException {
        if (!exists()) {
            return new DownloadRequest[0];
        }
        InputStream inputStream = null;
        try {
            inputStream = this.atomicFile.openRead();
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            int readInt = dataInputStream.readInt();
            if (readInt <= 0) {
                int readInt2 = dataInputStream.readInt();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < readInt2; i++) {
                    try {
                        arrayList.add(readDownloadRequest(dataInputStream));
                    } catch (DownloadRequest.UnsupportedRequestException unused) {
                    }
                }
                return (DownloadRequest[]) arrayList.toArray(new DownloadRequest[0]);
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unsupported action file version: ");
            sb.append(readInt);
            throw new IOException(sb.toString());
        } finally {
            Util.closeQuietly(inputStream);
        }
    }

    private static DownloadRequest readDownloadRequest(DataInputStream dataInputStream) throws IOException {
        byte[] bArr;
        String readUTF = dataInputStream.readUTF();
        int readInt = dataInputStream.readInt();
        Uri parse = Uri.parse(dataInputStream.readUTF());
        boolean readBoolean = dataInputStream.readBoolean();
        int readInt2 = dataInputStream.readInt();
        String str = null;
        if (readInt2 != 0) {
            bArr = new byte[readInt2];
            dataInputStream.readFully(bArr);
        } else {
            bArr = null;
        }
        boolean z = true;
        boolean z2 = readInt == 0 && DOWNLOAD_TYPE_PROGRESSIVE.equals(readUTF);
        ArrayList arrayList = new ArrayList();
        if (!z2) {
            int readInt3 = dataInputStream.readInt();
            for (int i = 0; i < readInt3; i++) {
                arrayList.add(readKey(readUTF, readInt, dataInputStream));
            }
        }
        if (readInt >= 2 || (!DOWNLOAD_TYPE_DASH.equals(readUTF) && !DOWNLOAD_TYPE_HLS.equals(readUTF) && !DOWNLOAD_TYPE_SS.equals(readUTF))) {
            z = false;
        }
        if (!z && dataInputStream.readBoolean()) {
            str = dataInputStream.readUTF();
        }
        String generateDownloadId = readInt < 3 ? generateDownloadId(parse, str) : dataInputStream.readUTF();
        if (!readBoolean) {
            return new DownloadRequest.Builder(generateDownloadId, parse).setMimeType(inferMimeType(readUTF)).setStreamKeys(arrayList).setCustomCacheKey(str).setData(bArr).build();
        }
        throw new DownloadRequest.UnsupportedRequestException();
    }

    private static StreamKey readKey(String str, int i, DataInputStream dataInputStream) throws IOException {
        int i2;
        int i3;
        int i4;
        if ((DOWNLOAD_TYPE_HLS.equals(str) || DOWNLOAD_TYPE_SS.equals(str)) && i == 0) {
            i4 = 0;
            i3 = dataInputStream.readInt();
            i2 = dataInputStream.readInt();
        } else {
            i4 = dataInputStream.readInt();
            i3 = dataInputStream.readInt();
            i2 = dataInputStream.readInt();
        }
        return new StreamKey(i4, i3, i2);
    }

    private static String inferMimeType(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == 3680) {
            if (str.equals(DOWNLOAD_TYPE_SS)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode == 103407) {
            if (str.equals(DOWNLOAD_TYPE_HLS)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 3075986) {
            if (hashCode == 1131547531 && str.equals(DOWNLOAD_TYPE_PROGRESSIVE)) {
                c = 3;
            }
            c = 65535;
        } else {
            if (str.equals(DOWNLOAD_TYPE_DASH)) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            return MimeTypes.APPLICATION_MPD;
        }
        if (c != 1) {
            return c != 2 ? MimeTypes.VIDEO_UNKNOWN : MimeTypes.APPLICATION_SS;
        }
        return MimeTypes.APPLICATION_M3U8;
    }

    private static String generateDownloadId(Uri uri, String str) {
        return str != null ? str : uri.toString();
    }
}
