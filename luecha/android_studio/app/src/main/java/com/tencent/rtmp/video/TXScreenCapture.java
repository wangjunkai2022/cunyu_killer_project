package com.tencent.rtmp.video;

import android.app.Activity;
import android.content.Intent;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Bundle;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.screencapture.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXScreenCapture {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TXScreenCaptureAssistantActivity extends Activity {
        private static final int REQUEST_CODE = 100;
        private static final String TAG = "TXScreenCaptureAssistantActivity";
        private MediaProjectionManager mMediaProjectionManager;

        @Override // android.app.Activity
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            TXCLog.i("TXScreenCaptureAssistantActivity", "onCreate " + this);
            requestWindowFeature(1);
            this.mMediaProjectionManager = (MediaProjectionManager) getApplicationContext().getSystemService("media_projection");
            try {
                startActivityForResult(this.mMediaProjectionManager.createScreenCaptureIntent(), 100);
            } catch (Exception e) {
                TXCLog.e("TXScreenCaptureAssistantActivity", "start permission activity failed. " + e);
                a.a(this).a((MediaProjection) null);
                finish();
            }
        }

        @Override // android.app.Activity
        public void onActivityResult(int i, int i2, Intent intent) {
            TXCLog.i("TXScreenCaptureAssistantActivity", "onActivityResult " + this);
            a.a(this).a(this.mMediaProjectionManager.getMediaProjection(i2, intent));
            finish();
        }

        @Override // android.app.Activity
        protected void onDestroy() {
            super.onDestroy();
            TXCLog.i("TXScreenCaptureAssistantActivity", "onDestroy " + this);
        }
    }
}
