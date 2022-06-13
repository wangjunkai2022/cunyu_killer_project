package com.netease.mobsec.e;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.umeng.analytics.pro.ai;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class h implements SensorEventListener {
    private SensorManager a;
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = "";
    private Sensor f;
    private Sensor g;
    private Sensor h;
    private Sensor i;
    private final Context j;

    public h(Context context) {
        this.j = context;
    }

    public void a() {
        SensorManager sensorManager = this.a;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
            this.a = null;
        }
    }

    public boolean b() {
        SensorManager sensorManager = (SensorManager) this.j.getSystemService(ai.ac);
        this.a = sensorManager;
        if (sensorManager == null) {
            return false;
        }
        Sensor defaultSensor = sensorManager.getDefaultSensor(1);
        this.f = defaultSensor;
        this.a.registerListener(this, defaultSensor, 3);
        Sensor defaultSensor2 = this.a.getDefaultSensor(3);
        this.g = defaultSensor2;
        this.a.registerListener(this, defaultSensor2, 3);
        Sensor defaultSensor3 = this.a.getDefaultSensor(9);
        this.h = defaultSensor3;
        this.a.registerListener(this, defaultSensor3, 3);
        Sensor defaultSensor4 = this.a.getDefaultSensor(5);
        this.i = defaultSensor4;
        this.a.registerListener(this, defaultSensor4, 3);
        return true;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.c;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor = sensorEvent.sensor;
        if (sensor != null) {
            if (sensor.getType() == 3) {
                float[] fArr = sensorEvent.values;
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = fArr[2];
                this.c = f + "," + f2 + "," + f3;
            } else if (sensorEvent.sensor.getType() == 1) {
                float[] fArr2 = sensorEvent.values;
                float f4 = fArr2[0];
                float f5 = fArr2[1];
                float f6 = fArr2[2];
                this.b = f4 + "," + f5 + "," + f6;
            } else if (sensorEvent.sensor.getType() == 5) {
                float f7 = sensorEvent.values[0];
                this.e = "" + f7;
            } else if (sensorEvent.sensor.getType() == 9) {
                float[] fArr3 = sensorEvent.values;
                float f8 = fArr3[0];
                float f9 = fArr3[1];
                float f10 = fArr3[2];
                this.d = f8 + "," + f9 + "," + f10;
            }
        }
    }
}
