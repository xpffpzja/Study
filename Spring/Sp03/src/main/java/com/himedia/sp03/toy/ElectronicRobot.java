package com.himedia.sp03.toy;

// 구매와 동시에 동봉 또는 별도 구입한 새 배터리를 구입이후에 장착할 수 있는 기능이 있습니다.
// 배터리만 따로 교체할 수도 있음.

import com.himedia.sp03.battery.Battery;

public class ElectronicRobot {

    private Battery bat;

    // 최초 별도의 배터리를 장착하며 구입 & 사용.
    public ElectronicRobot(Battery bat) {
        this.bat = bat;

    }

    // 추후 새 배터리로 교체
    public void setBattery(Battery bat) {
        this.bat = bat;
    }
}
