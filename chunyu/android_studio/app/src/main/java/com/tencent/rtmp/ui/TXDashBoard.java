package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.rtmp.TXLiveConstants;
import com.umeng.analytics.pro.ai;
import java.text.SimpleDateFormat;

/* loaded from: classes2.dex */
public class TXDashBoard extends LinearLayout {
    protected TextView a;
    protected TextView b;
    protected ScrollView c;
    protected StringBuffer d;
    protected int e;
    private final SimpleDateFormat f;
    private boolean g;

    public TXDashBoard(Context context) {
        this(context, null);
    }

    public TXDashBoard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new StringBuffer("");
        this.e = 3000;
        this.f = new SimpleDateFormat("HH:mm:ss.SSS");
        this.g = false;
        setOrientation(1);
        setVisibility(4);
    }

    public void setStatusTextSize(float f) {
        TextView textView = this.a;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        TextView textView = this.a;
        if (textView != null) {
            textView.setPadding(i, i2, i3, 0);
        }
        ScrollView scrollView = this.c;
        if (scrollView != null) {
            scrollView.setPadding(i, 0, i3, i4);
        }
    }

    public void setEventTextSize(float f) {
        TextView textView = this.b;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public void a(CharSequence charSequence) {
        TextView textView = this.a;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setLogMsgLenLimit(int i) {
        this.e = i;
    }

    public void setShowLevel(int i) {
        if (i == 0) {
            TextView textView = this.a;
            if (textView != null) {
                textView.setVisibility(4);
            }
            ScrollView scrollView = this.c;
            if (scrollView != null) {
                scrollView.setVisibility(4);
            }
            setVisibility(4);
        } else if (i != 1) {
            b();
            this.a.setVisibility(0);
            this.c.setVisibility(0);
            setVisibility(0);
        } else {
            b();
            this.a.setVisibility(0);
            this.c.setVisibility(4);
            setVisibility(0);
        }
    }

    private void b() {
        if (this.a == null) {
            this.a = new TextView(getContext());
            this.b = new TextView(getContext());
            this.c = new ScrollView(getContext());
            this.a.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            this.a.setTextColor(-49023);
            this.a.setTypeface(Typeface.MONOSPACE);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            this.c.setPadding(0, 10, 0, 0);
            this.c.setLayoutParams(layoutParams);
            this.c.setVerticalScrollBarEnabled(true);
            this.c.setScrollbarFadingEnabled(true);
            this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.b.setTextColor(-49023);
            this.c.addView(this.b);
            addView(this.a);
            addView(this.c);
            if (this.d.length() <= 0) {
                StringBuffer stringBuffer = this.d;
                stringBuffer.append("liteav sdk version:" + TXCCommonUtil.getSDKVersionStr() + "\n");
            }
            this.b.setText(this.d.toString());
        }
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = "[" + this.f.format(Long.valueOf(System.currentTimeMillis())) + "]" + str + "\n";
            if (this.d.length() <= 0) {
                this.d.append("liteav sdk version:" + TXCCommonUtil.getSDKVersionStr() + "\n");
            }
            while (this.d.length() > this.e) {
                int indexOf = this.d.indexOf("\n");
                if (indexOf == 0) {
                    indexOf = 1;
                }
                this.d = this.d.delete(0, indexOf);
            }
            StringBuffer stringBuffer = this.d;
            stringBuffer.append(str2);
            this.d = stringBuffer;
            TextView textView = this.b;
            if (textView != null) {
                textView.setText(this.d.toString());
            }
        }
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void a() {
        this.d.setLength(0);
        TextView textView = this.a;
        if (textView != null) {
            textView.setText("");
        }
        TextView textView2 = this.b;
        if (textView2 != null) {
            textView2.setText("");
        }
    }

    public void a(Bundle bundle, Bundle bundle2, int i) {
        String string;
        ScrollView scrollView;
        TextView textView;
        TextView textView2;
        if (!this.g && i != 2011 && i != 2012) {
            if (!(bundle == null || (textView2 = this.a) == null)) {
                textView2.setText(a(bundle));
            }
            if (this.d.length() <= 0) {
                StringBuffer stringBuffer = this.d;
                stringBuffer.append("liteav sdk version:" + TXCCommonUtil.getSDKVersionStr() + "\n");
            }
            if (bundle2 != null && (string = bundle2.getString(TXLiveConstants.EVT_DESCRIPTION)) != null && !string.isEmpty()) {
                a(i, string);
                TextView textView3 = this.b;
                if (textView3 != null) {
                    textView3.setText(this.d.toString());
                }
                if (getVisibility() == 0 && (scrollView = this.c) != null && (textView = this.b) != null) {
                    a(scrollView, textView);
                }
            }
        }
    }

    protected void a(int i, String str) {
        if (i != 1020) {
            String format = new SimpleDateFormat("HH:mm:ss.SSS").format(Long.valueOf(System.currentTimeMillis()));
            while (this.d.length() > this.e) {
                int indexOf = this.d.indexOf("\n");
                if (indexOf == 0) {
                    indexOf = 1;
                }
                this.d = this.d.delete(0, indexOf);
            }
            StringBuffer stringBuffer = this.d;
            stringBuffer.append("\n[" + format + "]" + str);
            this.d = stringBuffer;
        }
    }

    protected String a(Bundle bundle) {
        String str;
        if (!TextUtils.isEmpty(bundle.getString(TXLiveConstants.NET_STATUS_AUDIO_INFO))) {
            str = "AUDIO:" + bundle.getString(TXLiveConstants.NET_STATUS_AUDIO_INFO);
        } else {
            str = "";
        }
        return String.format("%-16s %-16s %-16s\n%-12s %-12s %-12s %-12s\n%-14s %-14s %-14s\n%-16s %-16s", "CPU:" + bundle.getString(TXLiveConstants.NET_STATUS_CPU_USAGE), "RES:" + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_WIDTH) + ProxyConfig.MATCH_ALL_SCHEMES + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_HEIGHT), "SPD:" + bundle.getInt(TXLiveConstants.NET_STATUS_NET_SPEED) + "Kbps", "JIT:" + bundle.getInt(TXLiveConstants.NET_STATUS_NET_JITTER), "FPS:" + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_FPS), "GOP:" + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_GOP) + ai.az, "ARA:" + bundle.getInt(TXLiveConstants.NET_STATUS_AUDIO_BITRATE) + "Kbps", "QUE:" + bundle.getInt(TXLiveConstants.NET_STATUS_AUDIO_CACHE) + " | " + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_CACHE) + "," + bundle.getInt(TXLiveConstants.NET_STATUS_V_SUM_CACHE_SIZE) + "," + bundle.getInt(TXLiveConstants.NET_STATUS_V_DEC_CACHE_SIZE) + " | " + bundle.getInt(TXLiveConstants.NET_STATUS_AV_RECV_INTERVAL) + "," + bundle.getInt(TXLiveConstants.NET_STATUS_AV_PLAY_INTERVAL) + "," + String.format("%.1f", Float.valueOf(bundle.getFloat(TXLiveConstants.NET_STATUS_AUDIO_CACHE_THRESHOLD))).toString(), "VRA:" + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_BITRATE) + "Kbps", "DRP:" + bundle.getInt(TXLiveConstants.NET_STATUS_AUDIO_DROP) + "|" + bundle.getInt(TXLiveConstants.NET_STATUS_VIDEO_DROP), "SVR:" + bundle.getString(TXLiveConstants.NET_STATUS_SERVER_IP), str);
    }

    private void a(ScrollView scrollView, View view) {
        if (scrollView != null && view != null) {
            int measuredHeight = view.getMeasuredHeight() - scrollView.getMeasuredHeight();
            if (measuredHeight < 0) {
                measuredHeight = 0;
            }
            scrollView.scrollTo(0, measuredHeight);
        }
    }
}
