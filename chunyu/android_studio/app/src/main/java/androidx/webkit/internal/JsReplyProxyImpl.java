package androidx.webkit.internal;

import androidx.webkit.JsReplyProxy;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes4.dex */
public class JsReplyProxyImpl extends JsReplyProxy {
    private JsReplyProxyBoundaryInterface mBoundaryInterface;

    public JsReplyProxyImpl(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        this.mBoundaryInterface = jsReplyProxyBoundaryInterface;
    }

    public static JsReplyProxyImpl forInvocationHandler(InvocationHandler invocationHandler) {
        JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(JsReplyProxyBoundaryInterface.class, invocationHandler);
        return (JsReplyProxyImpl) jsReplyProxyBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return JsReplyProxyImpl.lambda$forInvocationHandler$0(JsReplyProxyBoundaryInterface.this);
            }
        });
    }

    public static /* synthetic */ Object lambda$forInvocationHandler$0(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) throws Exception {
        return new JsReplyProxyImpl(jsReplyProxyBoundaryInterface);
    }

    @Override // androidx.webkit.JsReplyProxy
    public void postMessage(String str) {
        if (WebViewFeatureInternal.getFeature("WEB_MESSAGE_LISTENER").isSupportedByWebView()) {
            this.mBoundaryInterface.postMessage(str);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
