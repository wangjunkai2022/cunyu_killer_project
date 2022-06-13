package io.flutter.plugins.deviceinfo;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.provider.Settings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

/* loaded from: classes2.dex */
public class DeviceUuidFactory {
    protected static final String DEVICE_UUID_FILE_NAME = ".dev_id.txt";
    protected static final String KEY = "cyril'98";
    protected static final String PREFS_DEVICE_ID = "dev_id";
    protected static final String PREFS_FILE = "dev_id.xml";
    protected static UUID uuid;

    public DeviceUuidFactory(Context context) {
        if (uuid == null) {
            synchronized (DeviceUuidFactory.class) {
                if (uuid == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS_FILE, 0);
                    String string = sharedPreferences.getString(PREFS_DEVICE_ID, null);
                    if (string != null) {
                        uuid = UUID.fromString(string);
                    } else {
                        if (recoverDeviceUuidFromSD() != null) {
                            uuid = UUID.fromString(recoverDeviceUuidFromSD());
                        } else {
                            String string2 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                            try {
                                if ("9774d56d682e549c".equals(string2) || "0000000000000000".equals(string2)) {
                                    uuid = UUID.randomUUID();
                                    try {
                                        saveDeviceUuidToSD(EncryptUtils.encryptDES(uuid.toString(), KEY));
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                } else {
                                    uuid = UUID.nameUUIDFromBytes(string2.getBytes("utf8"));
                                    try {
                                        saveDeviceUuidToSD(EncryptUtils.encryptDES(uuid.toString(), KEY));
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            } catch (UnsupportedEncodingException e3) {
                                throw new RuntimeException(e3);
                            }
                        }
                        sharedPreferences.edit().putString(PREFS_DEVICE_ID, uuid.toString()).commit();
                    }
                }
            }
        }
    }

    private static String recoverDeviceUuidFromSD() {
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath());
            File file2 = new File(file, DEVICE_UUID_FILE_NAME);
            if (file.exists() && file2.exists()) {
                FileReader fileReader = new FileReader(file2);
                StringBuilder sb = new StringBuilder();
                char[] cArr = new char[100];
                while (true) {
                    int read = fileReader.read(cArr);
                    if (read <= 0) {
                        return UUID.fromString(EncryptUtils.decryptDES(sb.toString(), KEY)).toString();
                    }
                    sb.append(cArr, 0, read);
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void saveDeviceUuidToSD(String str) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), DEVICE_UUID_FILE_NAME);
        if (!file.exists()) {
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "utf-8");
                try {
                    outputStreamWriter.write(str);
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            } catch (UnsupportedEncodingException e3) {
                e3.printStackTrace();
            }
        }
    }

    public static UUID getUuid() {
        return uuid;
    }
}
