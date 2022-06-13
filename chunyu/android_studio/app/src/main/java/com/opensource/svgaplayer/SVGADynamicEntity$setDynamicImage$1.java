package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import androidx.browser.trusted.sharing.ShareTarget;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import top.niunaijun.blackbox.core.system.user.BUserHandle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SVGADynamicEntity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class SVGADynamicEntity$setDynamicImage$1 implements Runnable {
    final /* synthetic */ String $forKey;
    final /* synthetic */ Handler $handler;
    final /* synthetic */ String $url;
    final /* synthetic */ SVGADynamicEntity this$0;

    public SVGADynamicEntity$setDynamicImage$1(SVGADynamicEntity sVGADynamicEntity, String str, Handler handler, String str2) {
        this.this$0 = sVGADynamicEntity;
        this.$url = str;
        this.$handler = handler;
        this.$forKey = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        URLConnection openConnection = new URL(this.$url).openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            openConnection = null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        if (httpURLConnection != null) {
            try {
                try {
                    httpURLConnection.setConnectTimeout(BUserHandle.AID_CACHE_GID_START);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpURLConnection.connect();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    Throwable th = null;
                    try {
                        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                        if (decodeStream != null) {
                            Boolean.valueOf(this.$handler.post(new Runnable(decodeStream, this) { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2
                                final /* synthetic */ Bitmap $it;
                                final /* synthetic */ SVGADynamicEntity$setDynamicImage$1 this$0;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.$it = r1;
                                    this.this$0 = r2;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.this$0.this$0.setDynamicImage(this.$it, this.this$0.$forKey);
                                }
                            }));
                        }
                        CloseableKt.closeFinally(inputStream, th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(inputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Unit unit = Unit.INSTANCE;
                }
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused) {
                }
            } catch (Throwable th4) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused2) {
                }
                throw th4;
            }
        }
    }
}
