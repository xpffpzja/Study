package com.himedia.sp03.toy;

import com.himedia.sp03.battery.Battery;
import com.himedia.sp03.battery.ChargeBattery;
import com.himedia.sp03.battery.NormalBattery;

public class ElectronicCar {

    private Battery bat;

    public ElectronicCar() {
        bat = new NormalBattery();
        //bat = new ChargeBattery();
        // ChargeBattery를 사용할 수도 있지만 출시될때 내장되고 교체가 불가능 하므로
        // ChargeBattery 사용은 제외.
    }
}
