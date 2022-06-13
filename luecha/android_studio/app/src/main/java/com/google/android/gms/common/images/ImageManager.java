package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.internal.base.zal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class ImageManager {
    private static final Object zamg = new Object();
    private static HashSet<Uri> zamh = new HashSet<>();
    private static ImageManager zami;
    private final Context mContext;
    private final Handler mHandler = new zal(Looper.getMainLooper());
    private final ExecutorService zamj = Executors.newFixedThreadPool(4);
    private final zaa zamk = null;
    private final zak zaml = new zak();
    private final Map<zaa, ImageReceiver> zamm = new HashMap();
    private final Map<Uri, ImageReceiver> zamn = new HashMap();
    private final Map<Uri, Long> zamo = new HashMap();

    /* loaded from: classes2.dex */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    public static ImageManager create(Context context) {
        if (zami == null) {
            zami = new ImageManager(context, false);
        }
        return zami;
    }

    /* loaded from: classes2.dex */
    public static final class zaa extends LruCache<zab, Bitmap> {
        @Override // androidx.collection.LruCache
        protected final /* synthetic */ int sizeOf(zab zab, Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }

        @Override // androidx.collection.LruCache
        public final /* synthetic */ void entryRemoved(boolean z, zab zab, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, zab, bitmap, bitmap2);
        }
    }

    /* loaded from: classes2.dex */
    public final class zac implements Runnable {
        private final zaa zams;

        public zac(zaa zaa) {
            ImageManager.this = r1;
            this.zams = zaa;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zamm.get(this.zams);
            if (imageReceiver != null) {
                ImageManager.this.zamm.remove(this.zams);
                imageReceiver.zac(this.zams);
            }
            zab zab = this.zams.zamu;
            if (zab.uri == null) {
                this.zams.zaa(ImageManager.this.mContext, ImageManager.this.zaml, true);
                return;
            }
            Bitmap zaa = ImageManager.this.zaa(zab);
            if (zaa != null) {
                this.zams.zaa(ImageManager.this.mContext, zaa, true);
                return;
            }
            Long l = (Long) ImageManager.this.zamo.get(zab.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zams.zaa(ImageManager.this.mContext, ImageManager.this.zaml, true);
                    return;
                }
                ImageManager.this.zamo.remove(zab.uri);
            }
            this.zams.zaa(ImageManager.this.mContext, ImageManager.this.zaml);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zamn.get(zab.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageReceiver(zab.uri);
                ImageManager.this.zamn.put(zab.uri, imageReceiver2);
            }
            imageReceiver2.zab(this.zams);
            if (!(this.zams instanceof zad)) {
                ImageManager.this.zamm.put(this.zams, imageReceiver2);
            }
            synchronized (ImageManager.zamg) {
                if (!ImageManager.zamh.contains(zab.uri)) {
                    ImageManager.zamh.add(zab.uri);
                    imageReceiver2.zace();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private final class zab implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor zamr;

        public zab(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            ImageManager.this = r1;
            this.mUri = uri;
            this.zamr = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.zamr;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.mUri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.zamr.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new zad(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
                String valueOf2 = String.valueOf(this.mUri);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<zaa> zamp = new ArrayList<>();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ImageReceiver(Uri uri) {
            super(new zal(Looper.getMainLooper()));
            ImageManager.this = r2;
            this.mUri = uri;
        }

        public final void zab(zaa zaa) {
            Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zamp.add(zaa);
        }

        public final void zac(zaa zaa) {
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zamp.remove(zaa);
        }

        public final void zace() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.putExtra(Constants.EXTRA_URI, this.mUri);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zamj.execute(new zab(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes2.dex */
    private final class zad implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch zadq;
        private boolean zamt;

        public zad(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            ImageManager.this = r1;
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zamt = z;
            this.zadq = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.zamk != null) {
                if (this.zamt) {
                    ImageManager.this.zamk.evictAll();
                    System.gc();
                    this.zamt = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.zamk.put(new zab(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zamn.remove(this.mUri);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.zamp;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zaa zaa = (zaa) arrayList.get(i);
                    if (z) {
                        zaa.zaa(ImageManager.this.mContext, this.mBitmap, false);
                    } else {
                        ImageManager.this.zamo.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                        zaa.zaa(ImageManager.this.mContext, ImageManager.this.zaml, false);
                    }
                    if (!(zaa instanceof zad)) {
                        ImageManager.this.zamm.remove(zaa);
                    }
                }
            }
            this.zadq.countDown();
            synchronized (ImageManager.zamg) {
                ImageManager.zamh.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        zaa(new zac(imageView, uri));
    }

    public final void loadImage(ImageView imageView, int i) {
        zaa(new zac(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        zac zac2 = new zac(imageView, uri);
        zac2.zamw = i;
        zaa(zac2);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zaa(new zad(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zad zad2 = new zad(onImageLoadedListener, uri);
        zad2.zamw = i;
        zaa(zad2);
    }

    private final void zaa(zaa zaa2) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new zac(zaa2).run();
    }

    public final Bitmap zaa(zab zab2) {
        zaa zaa2 = this.zamk;
        if (zaa2 == null) {
            return null;
        }
        return zaa2.get(zab2);
    }
}
