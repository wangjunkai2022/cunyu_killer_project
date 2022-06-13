package com.example.flutterimagecompress.exif;

import android.content.Context;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

/* loaded from: classes4.dex */
public class ExifKeeper {
    private static List<String> attributes = Arrays.asList(ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_ISO_SPEED_RATINGS, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_WHITE_BALANCE, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_DATETIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL);
    private ExifInterface oldExif;

    public ExifKeeper(ExifInterface exifInterface) {
        this.oldExif = exifInterface;
    }

    public ExifKeeper(String str) throws IOException {
        this.oldExif = new ExifInterface(str);
    }

    public ExifKeeper(byte[] bArr) throws IOException {
        this.oldExif = new ExifInterface(new ByteArrayInputStream(bArr));
    }

    private static void copyExif(ExifInterface exifInterface, ExifInterface exifInterface2) {
        for (String str : attributes) {
            setIfNotNull(exifInterface, exifInterface2, str);
        }
        try {
            exifInterface2.saveAttributes();
        } catch (IOException unused) {
        }
    }

    private static void setIfNotNull(ExifInterface exifInterface, ExifInterface exifInterface2, String str) {
        if (exifInterface.getAttribute(str) != null) {
            exifInterface2.setAttribute(str, exifInterface.getAttribute(str));
        }
    }

    public ByteArrayOutputStream writeToOutputStream(Context context, ByteArrayOutputStream byteArrayOutputStream) {
        FileOutputStream fileOutputStream;
        Exception e;
        ByteArrayOutputStream byteArrayOutputStream2;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            String uuid = UUID.randomUUID().toString();
            File file = new File(context.getCacheDir(), uuid + ".jpg");
            fileOutputStream = new FileOutputStream(file);
            try {
                IOUtils.write(byteArrayOutputStream.toByteArray(), fileOutputStream);
                fileOutputStream.close();
                ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                copyExif(this.oldExif, exifInterface);
                exifInterface.saveAttributes();
                fileOutputStream.close();
                byteArrayOutputStream2 = new ByteArrayOutputStream();
                fileInputStream = new FileInputStream(file);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
        }
        try {
            IOUtils.copy(fileInputStream, byteArrayOutputStream2);
            fileInputStream.close();
            return byteArrayOutputStream2;
        } catch (Exception e4) {
            e = e4;
            fileInputStream2 = fileInputStream;
            Log.e("ExifDataCopier", "Error preserving Exif data on selected image: " + e);
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return byteArrayOutputStream;
        }
    }

    public void copyExifToFile(File file) {
        try {
            ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
            copyExif(this.oldExif, exifInterface);
            exifInterface.saveAttributes();
        } catch (IOException unused) {
        }
    }
}
