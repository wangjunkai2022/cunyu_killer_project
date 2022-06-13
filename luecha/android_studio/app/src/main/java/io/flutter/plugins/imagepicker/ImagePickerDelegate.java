package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.FileProvider;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ImagePickerDelegate implements PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {
    static final int REQUEST_CAMERA_IMAGE_PERMISSION = 2345;
    static final int REQUEST_CAMERA_VIDEO_PERMISSION = 2355;
    static final int REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY = 2342;
    static final int REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY = 2346;
    static final int REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY = 2352;
    static final int REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA = 2343;
    static final int REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA = 2353;
    private final Activity activity;
    private final ImagePickerCache cache;
    private CameraDevice cameraDevice;
    final File externalFilesDirectory;
    final String fileProviderName;
    private final FileUriResolver fileUriResolver;
    private final FileUtils fileUtils;
    private final ImageResizer imageResizer;
    private MethodCall methodCall;
    private Uri pendingCameraMediaUri;
    private MethodChannel.Result pendingResult;
    private final PermissionManager permissionManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface FileUriResolver {
        void getFullImagePath(Uri uri, OnPathReadyListener onPathReadyListener);

        Uri resolveFileProviderUriForFile(String str, File file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface OnPathReadyListener {
        void onPathReady(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface PermissionManager {
        void askForPermission(String str, int i);

        boolean isPermissionGranted(String str);

        boolean needRequestCameraPermission();
    }

    public ImagePickerDelegate(final Activity activity, File file, ImageResizer imageResizer, ImagePickerCache imagePickerCache) {
        this(activity, file, imageResizer, null, null, imagePickerCache, new PermissionManager() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.1
            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public boolean isPermissionGranted(String str) {
                return ActivityCompat.checkSelfPermission(activity, str) == 0;
            }

            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public void askForPermission(String str, int i) {
                ActivityCompat.requestPermissions(activity, new String[]{str}, i);
            }

            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public boolean needRequestCameraPermission() {
                return ImagePickerUtils.needRequestCameraPermission(activity);
            }
        }, new FileUriResolver() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.2
            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.FileUriResolver
            public Uri resolveFileProviderUriForFile(String str, File file2) {
                return FileProvider.getUriForFile(activity, str, file2);
            }

            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.FileUriResolver
            public void getFullImagePath(Uri uri, final OnPathReadyListener onPathReadyListener) {
                Activity activity2 = activity;
                String[] strArr = new String[1];
                strArr[0] = uri != null ? uri.getPath() : "";
                MediaScannerConnection.scanFile(activity2, strArr, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.2.1
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public void onScanCompleted(String str, Uri uri2) {
                        onPathReadyListener.onPathReady(str);
                    }
                });
            }
        }, new FileUtils());
    }

    ImagePickerDelegate(Activity activity, File file, ImageResizer imageResizer, MethodChannel.Result result, MethodCall methodCall, ImagePickerCache imagePickerCache, PermissionManager permissionManager, FileUriResolver fileUriResolver, FileUtils fileUtils) {
        this.activity = activity;
        this.externalFilesDirectory = file;
        this.imageResizer = imageResizer;
        this.fileProviderName = activity.getPackageName() + ".flutter.image_provider";
        this.pendingResult = result;
        this.methodCall = methodCall;
        this.permissionManager = permissionManager;
        this.fileUriResolver = fileUriResolver;
        this.fileUtils = fileUtils;
        this.cache = imagePickerCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCameraDevice(CameraDevice cameraDevice) {
        this.cameraDevice = cameraDevice;
    }

    CameraDevice getCameraDevice() {
        return this.cameraDevice;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveStateBeforeResult() {
        MethodCall methodCall = this.methodCall;
        if (methodCall != null) {
            this.cache.saveTypeWithMethodCallName(methodCall.method);
            this.cache.saveDimensionWithMethodCall(this.methodCall);
            Uri uri = this.pendingCameraMediaUri;
            if (uri != null) {
                this.cache.savePendingCameraMediaUriPath(uri);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void retrieveLostImage(MethodChannel.Result result) {
        int i;
        Map<String, Object> cacheMap = this.cache.getCacheMap();
        ImagePickerCache imagePickerCache = this.cache;
        ArrayList arrayList = (ArrayList) cacheMap.get("pathList");
        ArrayList arrayList2 = new ArrayList();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                ImagePickerCache imagePickerCache2 = this.cache;
                Double d = (Double) cacheMap.get("maxWidth");
                ImagePickerCache imagePickerCache3 = this.cache;
                Double d2 = (Double) cacheMap.get("maxHeight");
                ImagePickerCache imagePickerCache4 = this.cache;
                if (cacheMap.get("imageQuality") == null) {
                    i = 100;
                } else {
                    ImagePickerCache imagePickerCache5 = this.cache;
                    i = ((Integer) cacheMap.get("imageQuality")).intValue();
                }
                arrayList2.add(this.imageResizer.resizeImageIfNeeded(str, d, d2, Integer.valueOf(i)));
            }
            ImagePickerCache imagePickerCache6 = this.cache;
            cacheMap.put("pathList", arrayList2);
            ImagePickerCache imagePickerCache7 = this.cache;
            cacheMap.put("path", arrayList2.get(arrayList2.size() - 1));
        }
        if (cacheMap.isEmpty()) {
            result.success(null);
        } else {
            result.success(cacheMap);
        }
        this.cache.clear();
    }

    public void chooseVideoFromGallery(MethodCall methodCall, MethodChannel.Result result) {
        if (!setPendingMethodCallAndResult(methodCall, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchPickVideoFromGalleryIntent();
        }
    }

    private void launchPickVideoFromGalleryIntent() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("video/*");
        this.activity.startActivityForResult(intent, 2352);
    }

    public void takeVideoWithCamera(MethodCall methodCall, MethodChannel.Result result) {
        if (!setPendingMethodCallAndResult(methodCall, result)) {
            finishWithAlreadyActiveError(result);
        } else if (!needRequestCameraPermission() || this.permissionManager.isPermissionGranted("android.permission.CAMERA")) {
            launchTakeVideoWithCameraIntent();
        } else {
            this.permissionManager.askForPermission("android.permission.CAMERA", 2355);
        }
    }

    private void launchTakeVideoWithCameraIntent() {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        MethodCall methodCall = this.methodCall;
        if (!(methodCall == null || methodCall.argument("maxDuration") == null)) {
            intent.putExtra("android.intent.extra.durationLimit", ((Integer) this.methodCall.argument("maxDuration")).intValue());
        }
        if (this.cameraDevice == CameraDevice.FRONT) {
            useFrontCamera(intent);
        }
        File createTemporaryWritableVideoFile = createTemporaryWritableVideoFile();
        this.pendingCameraMediaUri = Uri.parse("file:" + createTemporaryWritableVideoFile.getAbsolutePath());
        Uri resolveFileProviderUriForFile = this.fileUriResolver.resolveFileProviderUriForFile(this.fileProviderName, createTemporaryWritableVideoFile);
        intent.putExtra("output", resolveFileProviderUriForFile);
        grantUriPermissions(intent, resolveFileProviderUriForFile);
        try {
            try {
                this.activity.startActivityForResult(intent, 2353);
            } catch (ActivityNotFoundException unused) {
                createTemporaryWritableVideoFile.delete();
                finishWithError("no_available_camera", "No cameras available for taking pictures.");
            }
        } catch (SecurityException e) {
            e.printStackTrace();
            finishWithError("no_available_camera", "No cameras available for taking pictures.");
        }
    }

    public void chooseImageFromGallery(MethodCall methodCall, MethodChannel.Result result) {
        if (!setPendingMethodCallAndResult(methodCall, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchPickImageFromGalleryIntent();
        }
    }

    public void chooseMultiImageFromGallery(MethodCall methodCall, MethodChannel.Result result) {
        if (!setPendingMethodCallAndResult(methodCall, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchMultiPickImageFromGalleryIntent();
        }
    }

    private void launchPickImageFromGalleryIntent() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        this.activity.startActivityForResult(intent, 2342);
    }

    private void launchMultiPickImageFromGalleryIntent() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        if (Build.VERSION.SDK_INT >= 18) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        intent.setType("image/*");
        this.activity.startActivityForResult(intent, 2346);
    }

    public void takeImageWithCamera(MethodCall methodCall, MethodChannel.Result result) {
        if (!setPendingMethodCallAndResult(methodCall, result)) {
            finishWithAlreadyActiveError(result);
        } else if (!needRequestCameraPermission() || this.permissionManager.isPermissionGranted("android.permission.CAMERA")) {
            launchTakeImageWithCameraIntent();
        } else {
            this.permissionManager.askForPermission("android.permission.CAMERA", 2345);
        }
    }

    private boolean needRequestCameraPermission() {
        PermissionManager permissionManager = this.permissionManager;
        if (permissionManager == null) {
            return false;
        }
        return permissionManager.needRequestCameraPermission();
    }

    private void launchTakeImageWithCameraIntent() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (this.cameraDevice == CameraDevice.FRONT) {
            useFrontCamera(intent);
        }
        File createTemporaryWritableImageFile = createTemporaryWritableImageFile();
        this.pendingCameraMediaUri = Uri.parse("file:" + createTemporaryWritableImageFile.getAbsolutePath());
        Uri resolveFileProviderUriForFile = this.fileUriResolver.resolveFileProviderUriForFile(this.fileProviderName, createTemporaryWritableImageFile);
        intent.putExtra("output", resolveFileProviderUriForFile);
        grantUriPermissions(intent, resolveFileProviderUriForFile);
        try {
            try {
                this.activity.startActivityForResult(intent, 2343);
            } catch (ActivityNotFoundException unused) {
                createTemporaryWritableImageFile.delete();
                finishWithError("no_available_camera", "No cameras available for taking pictures.");
            }
        } catch (SecurityException e) {
            e.printStackTrace();
            finishWithError("no_available_camera", "No cameras available for taking pictures.");
        }
    }

    private File createTemporaryWritableImageFile() {
        return createTemporaryWritableFile(".jpg");
    }

    private File createTemporaryWritableVideoFile() {
        return createTemporaryWritableFile(".mp4");
    }

    private File createTemporaryWritableFile(String str) {
        String uuid = UUID.randomUUID().toString();
        try {
            this.externalFilesDirectory.mkdirs();
            return File.createTempFile(uuid, str, this.externalFilesDirectory);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void grantUriPermissions(Intent intent, Uri uri) {
        for (ResolveInfo resolveInfo : this.activity.getPackageManager().queryIntentActivities(intent, 65536)) {
            this.activity.grantUriPermission(resolveInfo.activityInfo.packageName, uri, 3);
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z = iArr.length > 0 && iArr[0] == 0;
        if (i != 2345) {
            if (i != 2355) {
                return false;
            }
            if (z) {
                launchTakeVideoWithCameraIntent();
            }
        } else if (z) {
            launchTakeImageWithCameraIntent();
        }
        if (!z && (i == 2345 || i == 2355)) {
            finishWithError("camera_access_denied", "The user did not allow camera access.");
        }
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i == 2342) {
            handleChooseImageResult(i2, intent);
            return true;
        } else if (i == 2343) {
            handleCaptureImageResult(i2);
            return true;
        } else if (i == 2346) {
            handleChooseMultiImageResult(i2, intent);
            return true;
        } else if (i == 2352) {
            handleChooseVideoResult(i2, intent);
            return true;
        } else if (i != 2353) {
            return false;
        } else {
            handleCaptureVideoResult(i2);
            return true;
        }
    }

    private void handleChooseImageResult(int i, Intent intent) {
        if (i != -1 || intent == null) {
            finishWithSuccess(null);
        } else {
            handleImageResult(this.fileUtils.getPathFromUri(this.activity, intent.getData()), false);
        }
    }

    private void handleChooseMultiImageResult(int i, Intent intent) {
        if (i != -1 || intent == null) {
            finishWithSuccess(null);
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        if (intent.getClipData() != null) {
            for (int i2 = 0; i2 < intent.getClipData().getItemCount(); i2++) {
                arrayList.add(this.fileUtils.getPathFromUri(this.activity, intent.getClipData().getItemAt(i2).getUri()));
            }
        } else {
            arrayList.add(this.fileUtils.getPathFromUri(this.activity, intent.getData()));
        }
        handleMultiImageResult(arrayList, false);
    }

    private void handleChooseVideoResult(int i, Intent intent) {
        if (i != -1 || intent == null) {
            finishWithSuccess(null);
        } else {
            handleVideoResult(this.fileUtils.getPathFromUri(this.activity, intent.getData()));
        }
    }

    private void handleCaptureImageResult(int i) {
        if (i == -1) {
            FileUriResolver fileUriResolver = this.fileUriResolver;
            Uri uri = this.pendingCameraMediaUri;
            if (uri == null) {
                uri = Uri.parse(this.cache.retrievePendingCameraMediaUriPath());
            }
            fileUriResolver.getFullImagePath(uri, new OnPathReadyListener() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.3
                @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.OnPathReadyListener
                public void onPathReady(String str) {
                    ImagePickerDelegate.this.handleImageResult(str, true);
                }
            });
            return;
        }
        finishWithSuccess(null);
    }

    private void handleCaptureVideoResult(int i) {
        if (i == -1) {
            FileUriResolver fileUriResolver = this.fileUriResolver;
            Uri uri = this.pendingCameraMediaUri;
            if (uri == null) {
                uri = Uri.parse(this.cache.retrievePendingCameraMediaUriPath());
            }
            fileUriResolver.getFullImagePath(uri, new OnPathReadyListener() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.4
                @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.OnPathReadyListener
                public void onPathReady(String str) {
                    ImagePickerDelegate.this.handleVideoResult(str);
                }
            });
            return;
        }
        finishWithSuccess(null);
    }

    private void handleMultiImageResult(ArrayList<String> arrayList, boolean z) {
        if (this.methodCall != null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                String resizedImagePath = getResizedImagePath(arrayList.get(i));
                if (resizedImagePath != null && !resizedImagePath.equals(arrayList.get(i)) && z) {
                    new File(arrayList.get(i)).delete();
                }
                arrayList2.add(i, resizedImagePath);
            }
            finishWithListSuccess(arrayList2);
            return;
        }
        finishWithListSuccess(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleImageResult(String str, boolean z) {
        if (this.methodCall != null) {
            String resizedImagePath = getResizedImagePath(str);
            if (resizedImagePath != null && !resizedImagePath.equals(str) && z) {
                new File(str).delete();
            }
            finishWithSuccess(resizedImagePath);
            return;
        }
        finishWithSuccess(str);
    }

    private String getResizedImagePath(String str) {
        return this.imageResizer.resizeImageIfNeeded(str, (Double) this.methodCall.argument("maxWidth"), (Double) this.methodCall.argument("maxHeight"), (Integer) this.methodCall.argument("imageQuality"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoResult(String str) {
        finishWithSuccess(str);
    }

    private boolean setPendingMethodCallAndResult(MethodCall methodCall, MethodChannel.Result result) {
        if (this.pendingResult != null) {
            return false;
        }
        this.methodCall = methodCall;
        this.pendingResult = result;
        this.cache.clear();
        return true;
    }

    private void finishWithSuccess(String str) {
        MethodChannel.Result result = this.pendingResult;
        if (result == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            this.cache.saveResult(arrayList, null, null);
            return;
        }
        result.success(str);
        clearMethodCallAndResult();
    }

    private void finishWithListSuccess(ArrayList<String> arrayList) {
        MethodChannel.Result result = this.pendingResult;
        if (result == null) {
            this.cache.saveResult(arrayList, null, null);
            return;
        }
        result.success(arrayList);
        clearMethodCallAndResult();
    }

    private void finishWithAlreadyActiveError(MethodChannel.Result result) {
        result.error("already_active", "Image picker is already active", null);
    }

    private void finishWithError(String str, String str2) {
        MethodChannel.Result result = this.pendingResult;
        if (result == null) {
            this.cache.saveResult(null, str, str2);
            return;
        }
        result.error(str, str2, null);
        clearMethodCallAndResult();
    }

    private void clearMethodCallAndResult() {
        this.methodCall = null;
        this.pendingResult = null;
    }

    private void useFrontCamera(Intent intent) {
        if (Build.VERSION.SDK_INT >= 22) {
            intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
            if (Build.VERSION.SDK_INT >= 26) {
                intent.putExtra("android.intent.extra.USE_FRONT_CAMERA", true);
                return;
            }
            return;
        }
        intent.putExtra("android.intent.extras.CAMERA_FACING", 1);
    }
}
