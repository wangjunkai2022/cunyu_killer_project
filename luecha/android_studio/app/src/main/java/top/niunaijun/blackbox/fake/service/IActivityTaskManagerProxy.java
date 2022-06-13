package top.niunaijun.blackbox.fake.service;

import reflection.android.app.IActivityTaskManager;
import reflection.android.os.ServiceManager;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.ScanClass;

@ScanClass({ActivityManagerCommonProxy.class})
/* loaded from: classes4.dex */
public class IActivityTaskManagerProxy extends BinderInvocationStub {
    public static final String TAG = "ActivityTaskManager";

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IActivityTaskManagerProxy() {
        super(ServiceManager.getService.call("activity_task"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return IActivityTaskManager.Stub.asInterface.call(ServiceManager.getService.call("activity_task"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("activity_task");
    }
}
