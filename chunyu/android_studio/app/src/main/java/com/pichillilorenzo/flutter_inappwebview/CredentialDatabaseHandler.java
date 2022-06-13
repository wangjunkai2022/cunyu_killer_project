package com.pichillilorenzo.flutter_inappwebview;

import android.webkit.WebViewDatabase;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.Credential;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialContract;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.CredentialDatabase;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpace;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpaceContract;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class CredentialDatabaseHandler implements MethodChannel.MethodCallHandler {
    static final String LOG_TAG = "CredentialDatabaseHandler";
    public static MethodChannel channel;
    public static CredentialDatabase credentialDatabase;

    public CredentialDatabaseHandler(BinaryMessenger binaryMessenger) {
        channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappwebview_credential_database");
        channel.setMethodCallHandler(this);
        credentialDatabase = CredentialDatabase.getInstance(Shared.applicationContext);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1851697792:
                if (str.equals("clearAllAuthCredentials")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -410271914:
                if (str.equals("getHttpAuthCredentials")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 589173355:
                if (str.equals("removeHttpAuthCredential")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 998955721:
                if (str.equals("setHttpAuthCredential")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1084504936:
                if (str.equals("removeHttpAuthCredentials")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1930845769:
                if (str.equals("getAllAuthCredentials")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            ArrayList arrayList = new ArrayList();
            for (ProtectionSpace protectionSpace : credentialDatabase.protectionSpaceDao.getAll()) {
                ArrayList arrayList2 = new ArrayList();
                for (Credential credential : credentialDatabase.credentialDao.getAllByProtectionSpaceId(protectionSpace.id)) {
                    arrayList2.add(credential.toMap());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("protectionSpace", protectionSpace.toMap());
                hashMap.put("credentials", arrayList2);
                arrayList.add(hashMap);
            }
            result.success(arrayList);
        } else if (c == 1) {
            ArrayList arrayList3 = new ArrayList();
            for (Credential credential2 : credentialDatabase.getHttpAuthCredentials((String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT))) {
                arrayList3.add(credential2.toMap());
            }
            result.success(arrayList3);
        } else if (c == 2) {
            credentialDatabase.setHttpAuthCredential((String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT), (String) methodCall.argument(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME), (String) methodCall.argument(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD));
            result.success(true);
        } else if (c == 3) {
            credentialDatabase.removeHttpAuthCredential((String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT), (String) methodCall.argument(CredentialContract.FeedEntry.COLUMN_NAME_USERNAME), (String) methodCall.argument(CredentialContract.FeedEntry.COLUMN_NAME_PASSWORD));
            result.success(true);
        } else if (c == 4) {
            credentialDatabase.removeHttpAuthCredentials((String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT));
            result.success(true);
        } else if (c != 5) {
            result.notImplemented();
        } else {
            credentialDatabase.clearAllAuthCredentials();
            WebViewDatabase.getInstance(Shared.applicationContext).clearHttpAuthUsernamePassword();
            result.success(true);
        }
    }

    public void dispose() {
        channel.setMethodCallHandler(null);
    }
}
