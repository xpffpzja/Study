package com.himedia.sp03.battery;

public class NormalBattery implements Battery{

    int val;

    @Override
    public int getBatteryValue() {
        return val;
    }
}
