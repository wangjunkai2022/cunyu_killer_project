package com.opensource.svgaplayer;

import android.net.http.HttpResponseCache;
import androidx.browser.trusted.sharing.ShareTarget;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import top.niunaijun.blackbox.core.system.user.BUserHandle;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
/* loaded from: classes2.dex */
final class SVGAParser$FileDownloader$resume$1 implements Runnable {
    final /* synthetic */ Ref.BooleanRef $cancelled;
    final /* synthetic */ Function1 $complete;
    final /* synthetic */ Function1 $failure;
    final /* synthetic */ URL $url;
    final /* synthetic */ SVGAParser.FileDownloader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SVGAParser$FileDownloader$resume$1(SVGAParser.FileDownloader fileDownloader, URL url, Ref.BooleanRef booleanRef, Function1 function1, Function1 function12) {
        this.this$0 = fileDownloader;
        this.$url = url;
        this.$cancelled = booleanRef;
        this.$complete = function1;
        this.$failure = function12;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            LogUtils.INSTANCE.info("SVGAParser", "================ svga file download start ================");
            if (HttpResponseCache.getInstalled() == null && !this.this$0.getNoCache()) {
                LogUtils.INSTANCE.error("SVGAParser", "SVGAParser can not handle cache before install HttpResponseCache. see https://github.com/yyued/SVGAPlayer-Android#cache");
                LogUtils.INSTANCE.error("SVGAParser", "在配置 HttpResponseCache 前 SVGAParser 无法缓存. 查看 https://github.com/yyued/SVGAPlayer-Android#cache ");
            }
            URLConnection openConnection = this.$url.openConnection();
            if (!(openConnection instanceof HttpURLConnection)) {
                openConnection = null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            if (httpURLConnection != null) {
                httpURLConnection.setConnectTimeout(BUserHandle.AID_CACHE_GID_START);
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection.setRequestProperty("Connection", "close");
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                Throwable th = null;
                InputStream inputStream2 = inputStream;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Throwable th2 = null;
                ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
                byte[] bArr = new byte[4096];
                while (true) {
                    if (this.$cancelled.element) {
                        LogUtils.INSTANCE.warn("SVGAParser", "================ svga file download canceled ================");
                        break;
                    }
                    int read = inputStream2.read(bArr, 0, 4096);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream2.write(bArr, 0, read);
                }
                if (this.$cancelled.element) {
                    LogUtils.INSTANCE.warn("SVGAParser", "================ svga file download canceled ================");
                    CloseableKt.closeFinally(byteArrayOutputStream, th2);
                    CloseableKt.closeFinally(inputStream, th);
                    return;
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream2.toByteArray());
                Throwable th3 = null;
                LogUtils.INSTANCE.info("SVGAParser", "================ svga file download complete ================");
                this.$complete.invoke(byteArrayInputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(byteArrayInputStream, th3);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(byteArrayOutputStream, th2);
                Unit unit3 = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStream, th);
            }
        } catch (Exception e) {
            LogUtils.INSTANCE.error("SVGAParser", "================ svga file download fail ================");
            LogUtils.INSTANCE.error("SVGAParser", "error: " + e.getMessage());
            e.printStackTrace();
            this.$failure.invoke(e);
        }
    }
}
