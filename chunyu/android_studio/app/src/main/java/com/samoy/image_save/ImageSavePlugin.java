package com.samoy.image_save;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import androidx.exifinterface.media.ExifInterface;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ImageSavePlugin implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware, PluginRegistry.RequestPermissionsResultListener {
    private static final int REQ_CODE = 100;
    private ActivityPluginBinding activityPluginBinding;
    private Context applicationContext;
    private MethodCall call;
    private MethodChannel channel;
    private MethodChannel.Result result;

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.applicationContext = flutterPluginBinding.getApplicationContext();
        this.channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "image_save");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.applicationContext = null;
        this.channel.setMethodCallHandler(null);
        this.channel = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        this.call = methodCall;
        this.result = result;
        if (ActivityCompat.checkSelfPermission(this.applicationContext, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            methodCall(methodCall, result);
            return;
        }
        ActivityCompat.requestPermissions(this.activityPluginBinding.getActivity(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 100);
        this.activityPluginBinding.addRequestPermissionsResultListener(this);
    }

    private void methodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        byte[] bArr = (byte[]) methodCall.argument("imageData");
        String str = (String) methodCall.argument("imageName");
        String str2 = (String) methodCall.argument("albumName");
        Boolean bool = (Boolean) methodCall.argument("overwriteSameNameFile");
        String str3 = methodCall.method;
        int hashCode = str3.hashCode();
        if (hashCode == -989061777) {
            if (str3.equals("getImagesFromSandbox")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != -142109810) {
            if (hashCode == 163601886 && str3.equals("saveImage")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str3.equals("saveImageToSandbox")) {
                c = 1;
            }
            c = 65535;
        }
        if (c == 0) {
            saveImageCall(bArr, str, str2, bool);
        } else if (c == 1) {
            saveImageToSandboxCall(bArr, str);
        } else if (c != 2) {
            result.notImplemented();
        } else {
            getImagesFromSandboxCall();
        }
    }

    private void saveImageCall(byte[] bArr, String str, String str2, Boolean bool) {
        if (Build.VERSION.SDK_INT >= 29) {
            ContentResolver contentResolver = this.applicationContext.getContentResolver();
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentValues contentValues = new ContentValues();
            if (TextUtils.equals(contentValues.getAsString("_display_name"), str)) {
                MethodChannel.Result result = this.result;
                result.error(ExifInterface.GPS_MEASUREMENT_2D, "Duplicate image name", "The file '" + str + "' already exists");
            }
            contentValues.put("_display_name", str);
            contentValues.put("mime_type", URLConnection.getFileNameMap().getContentTypeFor(str));
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES + "/" + str2);
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert == null) {
                MethodChannel.Result result2 = this.result;
                result2.error(ExifInterface.GPS_MEASUREMENT_2D, "File not found", "The file '" + str + "' saves failed");
                return;
            }
            try {
                OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                openOutputStream.write(bArr);
                openOutputStream.flush();
                openOutputStream.close();
                this.result.success(true);
            } catch (IOException e) {
                MethodChannel.Result result3 = this.result;
                String message = e.getMessage();
                result3.error(ExifInterface.GPS_MEASUREMENT_2D, message, "The file '" + str + "' saves failed");
            }
            MediaScannerConnection.scanFile(this.applicationContext, new String[]{uri.getPath()}, new String[]{"images/*"}, null);
            return;
        }
        try {
            this.result.success(saveImage(bArr, str, str2, bool));
        } catch (IOException e2) {
            MethodChannel.Result result4 = this.result;
            String message2 = e2.getMessage();
            result4.error(ExifInterface.GPS_MEASUREMENT_2D, message2, "The file '" + str + "' already exists");
        }
    }

    private Boolean saveImage(byte[] bArr, String str, String str2, Boolean bool) throws IOException {
        if (str2 == null) {
            str2 = getApplicationName();
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), str2);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, str);
        if (bool.booleanValue() || !file2.exists()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                this.applicationContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file2.getAbsoluteFile())));
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        } else {
            throw new IOException("File already exists");
        }
    }

    private void saveImageToSandboxCall(byte[] bArr, String str) {
        saveImageToSandbox(bArr, str);
    }

    private void saveImageToSandbox(byte[] bArr, String str) {
        File externalFilesDir = this.applicationContext.getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        if (externalFilesDir == null) {
            this.result.error("-1", "No SD Card found.", "Couldn't obtain external storage.");
            return;
        }
        File file = new File(externalFilesDir.getPath());
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.close();
            this.applicationContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file2.getAbsoluteFile())));
            this.result.success(true);
        } catch (IOException e) {
            this.result.error("1", e.getMessage(), e.getCause());
        }
    }

    private void getImagesFromSandboxCall() {
        this.result.success(getImagesFromSandbox());
    }

    private List<byte[]> getImagesFromSandbox() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        File externalFilesDir = this.applicationContext.getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        if (!(externalFilesDir == null || (listFiles = externalFilesDir.listFiles()) == null)) {
            for (File file : listFiles) {
                try {
                    if (!file.isDirectory()) {
                        arrayList.add(getContent(file.getPath()));
                    }
                } catch (IOException e) {
                    this.result.error(ExifInterface.GPS_MEASUREMENT_2D, e.getMessage(), e.getCause());
                }
            }
        }
        return arrayList;
    }

    public byte[] getContent(String str) throws IOException {
        int read;
        File file = new File(str);
        long length = file.length();
        if (length > 2147483647L) {
            System.out.println("File too big...");
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[(int) length];
        int i = 0;
        while (i < bArr.length && (read = fileInputStream.read(bArr, i, bArr.length - i)) >= 0) {
            i += read;
        }
        if (i == bArr.length) {
            fileInputStream.close();
            return bArr;
        }
        throw new IOException("Could not completely read file " + file.getName());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityPluginBinding = activityPluginBinding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activityPluginBinding = null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z = false;
        if (iArr[0] == 0) {
            z = true;
        }
        if (z) {
            methodCall(this.call, this.result);
        } else {
            this.result.error("0", "Permission denied", null);
        }
        return z;
    }

    private String getApplicationName() {
        PackageManager packageManager;
        PackageManager.NameNotFoundException e;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = this.applicationContext.getPackageManager();
        } catch (PackageManager.NameNotFoundException e2) {
            e = e2;
            packageManager = null;
        }
        try {
            applicationInfo = packageManager.getApplicationInfo(this.applicationContext.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e3) {
            e = e3;
            e.printStackTrace();
            return (String) packageManager.getApplicationLabel(applicationInfo);
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }
}
