package top.niunaijun.blackbox.fake.service;

import android.os.Process;
import android.os.storage.StorageVolume;
import java.lang.reflect.Method;
import reflection.android.os.ServiceManager;
import reflection.android.os.mount.IMountService;
import reflection.android.os.storage.IStorageManager;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes4.dex */
public class IStorageManagerProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IStorageManagerProxy() {
        super(ServiceManager.getService.call("mount"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        if (BuildCompat.isOreo()) {
            return IStorageManager.Stub.asInterface.call(ServiceManager.getService.call("mount"));
        }
        return IMountService.Stub.asInterface.call(ServiceManager.getService.call("mount"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("mount");
    }

    @ProxyMethod(name = "getVolumeList")
    /* loaded from: classes4.dex */
    public static class GetVolumeList extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr == null) {
                StorageVolume[] volumeList = BlackBoxCore.getBStorageManager().getVolumeList(Process.myUid(), null, 0, BActivityThread.getUserId());
                return volumeList == null ? method.invoke(obj, objArr) : volumeList;
            }
            try {
                if (BlackBoxCore.getBStorageManager().getVolumeList(((Integer) objArr[0]).intValue(), (String) objArr[1], ((Integer) objArr[2]).intValue(), BActivityThread.getUserId()) == null) {
                    return method.invoke(obj, objArr);
                }
                return method.invoke(obj, objArr);
            } catch (Throwable unused) {
                return method.invoke(obj, objArr);
            }
        }
    }
}
