package com.himedia.sp03;

import com.himedia.sp03.battery.ChargeBattery;
import com.himedia.sp03.battery.NormalBattery;
import com.himedia.sp03.toy.ElectronicCar;
import com.himedia.sp03.toy.ElectronicRobot;
import org.springframework.context.support.GenericXmlApplicationContext;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        // 일반 자바 문법의 클래스 사용
        ElectronicCar car1 = new ElectronicCar();

        NormalBattery nb1 = new NormalBattery();
        ChargeBattery cb1 = new ChargeBattery();
        ElectronicRobot robot1 = new ElectronicRobot(cb1);

        //==========================================

        GenericXmlApplicationContext ctx = new GenericXmlApplicationContext
                ("classpath:applicationContext.xml");

        ElectronicCar car2 = ctx.getBean("car", ElectronicCar.class);
        ElectronicRobot robot2 = ctx.getBean("robot", ElectronicRobot.class);
    }
}