package ren.yale.android.cachewebviewlib;

import android.text.TextUtils;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
class HttpCacheInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        String header = request.header(WebViewCacheInterceptor.KEY_CACHE);
        Response proceed = chain.proceed(request);
        if (!TextUtils.isEmpty(header)) {
            if (header.equals(CacheType.NORMAL.ordinal() + "")) {
                return proceed;
            }
        }
        return proceed.newBuilder().removeHeader("pragma").removeHeader("Cache-Control").header("Cache-Control", "max-age=3153600000").build();
    }
}
