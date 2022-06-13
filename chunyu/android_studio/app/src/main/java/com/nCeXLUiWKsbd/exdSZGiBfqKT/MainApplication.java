package com.nCeXLUiWKsbd.exdSZGiBfqKT;

import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import dalvik.system.DexClassLoader;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class MainApplication extends Application {
    private static final String MAIN_APPLICATION = "android.app.Application";
    private Application mainApplication = this;

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        try {
            Object invokeStaticMethod = invokeStaticMethod("android.app.ActivityThread", "currentActivityThread", new Class[0], new Object[0]);
            WeakReference weakReference = (WeakReference) ((Map) getFieldObject("android.app.ActivityThread", invokeStaticMethod, "mPackages")).get(this.mainApplication.getPackageName());
            setFieldObject("android.app.LoadedApk", "mClassLoader", weakReference.get(), new DexClassLoader(eDv0CnXIu6rIh(), this.mainApplication.getDir("dex", 0).getAbsolutePath(), this.mainApplication.getApplicationInfo().nativeLibraryDir, (ClassLoader) getFieldObject("android.app.LoadedApk", weakReference.get(), "mClassLoader")));
            Object fieldObject = getFieldObject("android.app.ActivityThread", invokeStaticMethod, "mBoundApplication");
            Object fieldObject2 = getFieldObject("android.app.ActivityThread$AppBindData", fieldObject, "info");
            setFieldObject("android.app.LoadedApk", "mApplication", fieldObject2, null);
            ((List) getFieldObject("android.app.ActivityThread", invokeStaticMethod, "mAllApplications")).remove(getFieldObject("android.app.ActivityThread", invokeStaticMethod, "mInitialApplication"));
            ((ApplicationInfo) getFieldObject("android.app.LoadedApk", fieldObject2, "mApplicationInfo")).className = MAIN_APPLICATION;
            ((ApplicationInfo) getFieldObject("android.app.ActivityThread$AppBindData", fieldObject, "appInfo")).className = MAIN_APPLICATION;
            Application application = (Application) invokeMethod("android.app.LoadedApk", "makeApplication", fieldObject2, new Class[]{Boolean.TYPE, Instrumentation.class}, new Object[]{false, null});
            setFieldObject("android.app.ActivityThread", "mInitialApplication", invokeStaticMethod, application);
            for (Map.Entry entry : ((Map) getFieldObject("android.app.ActivityThread", invokeStaticMethod, "mProviderMap")).entrySet()) {
                setFieldObject("android.content.ContentProvider", "mContext", getFieldObject("android.app.ActivityThread$ProviderClientRecord", entry.getValue(), "mLocalProvider"), application);
            }
            application.onCreate();
        } catch (Exception e) {
            e.printStackTrace();
            super.onCreate();
        }
    }

    private String eDv0CnXIu6rIh() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(this.mainApplication.getApplicationInfo().sourceDir)));
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                break;
            }
            if (nextEntry.getName().equals("classes.dex")) {
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = zipInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            zipInputStream.closeEntry();
        }
        zipInputStream.close();
        byte[] bArr2 = new byte[4];
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr3 = new byte[byteArray.length];
        for (int i = 0; i < byteArray.length; i++) {
            bArr3[i] = (byte) (byteArray[i] ^ 255);
        }
        int length = bArr3.length;
        System.arraycopy(bArr3, length - 4, bArr2, 0, 4);
        int readInt = new DataInputStream(new ByteArrayInputStream(bArr2)).readInt();
        byte[] bArr4 = new byte[readInt];
        System.arraycopy(bArr3, (length - 4) - readInt, bArr4, 0, readInt);
        ZipInputStream zipInputStream2 = new ZipInputStream(new ByteArrayInputStream(bArr4));
        String str = null;
        while (true) {
            ZipEntry nextEntry2 = zipInputStream2.getNextEntry();
            if (nextEntry2 == null) {
                zipInputStream2.close();
                zipInputStream2.close();
                return str;
            }
            String name = nextEntry2.getName();
            if (name.startsWith("classes")) {
                String str2 = this.mainApplication.getCacheDir().getAbsolutePath() + File.separator + name;
                if (str == null) {
                    str = str2;
                } else {
                    str = str + File.pathSeparator + str2;
                }
                try {
                    byte[] bArr5 = new byte[1024];
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
                    while (true) {
                        int read2 = zipInputStream2.read(bArr5);
                        if (read2 == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr5, 0, read2);
                    }
                    fileOutputStream.close();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            zipInputStream2.closeEntry();
        }
    }

    private Object invokeStaticMethod(String str, String str2, Class[] clsArr, Object[] objArr) {
        try {
            return Class.forName(str).getMethod(str2, clsArr).invoke(null, objArr);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return null;
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    private Object invokeMethod(String str, String str2, Object obj, Class[] clsArr, Object[] objArr) {
        try {
            return Class.forName(str).getMethod(str2, clsArr).invoke(obj, objArr);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return null;
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    private Object getFieldObject(String str, Object obj, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
            return null;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private Object getStaticFieldObject(String str, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
            return null;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private void setFieldObject(String str, String str2, Object obj, Object obj2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
        } catch (SecurityException e5) {
            e5.printStackTrace();
        }
    }

    private void setStaticObject(String str, String str2, Object obj) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            declaredField.set(null, obj);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
        } catch (SecurityException e5) {
            e5.printStackTrace();
        }
    }
}
