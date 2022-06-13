package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaComposition;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class e extends d implements ITPMediaComposition {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private List<ITPMediaTrack> d = new ArrayList(1);
    private List<ITPMediaTrack> e = new ArrayList(1);
    private List<ITPMediaTrack> f = new ArrayList(1);

    private synchronized int d() {
        int i;
        i = this.a + 1;
        this.a = i;
        return i;
    }

    private synchronized int e() {
        int i;
        i = this.b + 1;
        this.b = i;
        return i;
    }

    private synchronized int f() {
        int i;
        i = this.c + 1;
        this.c = i;
        return i;
    }

    public long a() {
        List<ITPMediaTrack> list = this.d;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAVTrack() {
        g gVar;
        gVar = new g(f(), 1);
        this.f.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAudioTrack() {
        g gVar;
        gVar = new g(e(), 3);
        this.e.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addVideoTrack() {
        g gVar;
        gVar = new g(d(), 2);
        this.d.add(gVar);
        return gVar;
    }

    public long b() {
        List<ITPMediaTrack> list = this.e;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    long c() {
        List<ITPMediaTrack> list = this.f;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public List<ITPMediaTrack> getAllAVTracks() {
        return this.f;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllAudioTracks() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllVideoTracks() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public long getDurationMs() {
        if (!b.a(this.f)) {
            return c();
        }
        long b = b();
        long a = a();
        int i = (a > b ? 1 : (a == b ? 0 : -1));
        long j = i > 0 ? a : b;
        String str = f.a;
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -2046821033) {
            if (hashCode != -491658008) {
                if (hashCode == -472621683 && str.equals("base_video")) {
                    c = 0;
                }
            } else if (str.equals("base_audio")) {
                c = 1;
            }
        } else if (str.equals("base_longer")) {
            c = 2;
        }
        if (c != 0) {
            if (c == 1) {
                return b;
            }
            if (c != 2) {
                return j;
            }
            if (i <= 0) {
                return b;
            }
        }
        return a;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 4;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (Exception e) {
            TPLogUtil.e("TPMediaComposition", e);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public void release() {
        List<ITPMediaTrack> list = this.d;
        if (list != null) {
            list.clear();
            this.d = null;
        }
        List<ITPMediaTrack> list2 = this.e;
        if (list2 != null) {
            list2.clear();
            this.e = null;
        }
        List<ITPMediaTrack> list3 = this.f;
        if (list3 != null) {
            list3.clear();
            this.f = null;
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public boolean removeAVTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
            return this.f.remove(iTPMediaTrack);
        }
        throw new IllegalArgumentException("remove audio track , track is null .");
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized boolean removeAudioTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
        } else {
            throw new IllegalArgumentException("remove audio track , track is null .");
        }
        return this.e.remove(iTPMediaTrack);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized boolean removeVideoTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
        } else {
            throw new IllegalArgumentException("remove video track , track is null .");
        }
        return this.d.remove(iTPMediaTrack);
    }
}
